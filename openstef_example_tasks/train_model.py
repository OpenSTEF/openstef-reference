""""""
from datetime import datetime, timezone
from pathlib import Path


from openstef.tasks.train_model import train_model_task
from openstef.enums import ModelType
from openstef_dbc.database import DataBase
from openstef_dbc.log import logging
from openstef.tasks.utils.predictionjobloop import PredictionJobLoop
from openstef.tasks.utils.taskcontext import TaskContext

from app_settings import AppSettings

Settings = AppSettings()

TRAIN_PERIOD_DAYS = 120
MAXIMUM_MODEL_AGE = 7

def main():
    # Initialize logging
    logging.configure_logging(loglevel=Settings.loglevel, runtime_env=Settings.env)
    # Initialize database connection
    database = DataBase(Settings)


    if database is None or Settings is None:
        raise RuntimeError(
            "Please specifiy a Settings object and/or database connection object. These"
            " can be found in the openstef-dbc package."
        )

    model_type = [ml.value for ml in ModelType]

    taskname = Path(__file__).name.replace(".py", "")
    datetime_now = datetime.now(tz=timezone.utc)
    with TaskContext(taskname, Settings, database) as context:
        PredictionJobLoop(context, model_type=model_type).map(
            train_model_task, context, datetime_end=datetime_now, train_period_days=TRAIN_PERIOD_DAYS, maximum_model_age=MAXIMUM_MODEL_AGE
        )

if __name__ == "__main__":
    main()
