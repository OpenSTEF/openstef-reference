from datetime import datetime
from pathlib import Path
import pandas as pd

from openstf_dbc.data_interface import _DataInterface
from openstf_dbc.config.config import ConfigManager

PROJECT_ROOT = Path(__file__).parent.absolute()

extra_info_customers = {317:"Location_A",
313:"Location_C",321:"Location_B", 459:"Location_A"}


def load_load_data() -> bool:

    load_data = pd.read_csv(Path("data/realised_power.csv"), skipinitialspace=True)

    # print(load_data.columns)
    load_data["datetime"] = pd.to_datetime(load_data["datetime"], unit="s")
    load_data = load_data.rename(columns={" datetime": "datetime"}).set_index(
        "datetime"
    )
    load_data["output"] = load_data["output"].astype(float)
    load_data["created"] = load_data["created"].astype(float)

    most_recent_date = load_data.index.max().to_pydatetime()

    delta = datetime.utcnow() - most_recent_date

    load_data.index = load_data.index.shift(delta, freq=1)

    result = _DataInterface.get_instance().exec_influx_write(
        load_data.copy(),
        database="realised",
        measurement="power",
        tag_columns=["system"],
        field_columns=["output", "created"],
        time_precision="s",
    )

    return result, delta

def load_t_ahead_data(delta):

    data = pd.read_csv(Path("data/wide_forecast_tAheads_prediction.csv"), parse_dates=True, index_col=0)
    melted = data.melt(ignore_index=False)

    melted['field'] = melted['variable'].apply(lambda x: x.split('.')[1].split(' ')[0])
    melted['pid'] = melted['variable'].apply(lambda x: int(x.split('.')[1].split(' ')[2][:-1]))
    melted['tAhead'] = melted['variable'].apply(lambda x: int(x.split('.')[1].split(' ')[4]))
    melted = melted.iloc[:,1:]


    melted = melted.pivot_table(index=[melted.index, 'pid', 'tAhead'],
                  columns=['field'],
                  values=['value'])['value'].reset_index().set_index('Time')

    melted["customer"] = melted.pid.apply(lambda x: extra_info_customers[x])
    melted["type"] = 'demand'
    melted["quality"] = 'actual'


    tag_columns = ["pid", "customer", "type", "tAhead"]
    field_columns = [x for x in melted.columns if x not in tag_columns]

    melted.index = melted.index.shift(delta, freq=1)

    result = _DataInterface.get_instance().exec_influx_write(
        melted.copy().dropna(),
        database="forecast_latest",
        measurement="prediction_tAheads",
        tag_columns=tag_columns,
        field_columns=field_columns,
        time_precision="s",
    )

    return result

def load_weather_data(delta):
    data = pd.read_csv(Path("data/forecast_latest_weather.csv"), parse_dates=True, index_col=0)

    locations = ["Nijmegen", "Deelen", "Leeuwarden"]

    data.index = data.index.shift(delta,freq=1)

    for location in locations:

        data['input_city'] = location
        data['source'] = 'harm_arome'

        tag_columns = ['input_city', 'source']
        field_columns = [x for x in data.columns if x not in tag_columns]

        result = _DataInterface.get_instance().exec_influx_write(
            data.copy().dropna(),
            database="forecast_latest",
            measurement="weather",
            tag_columns=tag_columns,
            field_columns=field_columns,
            time_precision="s",
        )


if __name__ == "__main__":
    config = ConfigManager.load_project_config(project_root=PROJECT_ROOT).get_instance()
    _DataInterface(config)
    result, delta = load_load_data()
    load_t_ahead_data(delta)
    load_weather_data(delta)

