""""""
from openstef.tasks import split_forecast as task
from openstef_dbc.database import DataBase
from openstef_dbc.log import logging

from app_settings import AppSettings

Settings = AppSettings()

extra_info_customers = {
    317: "Location_A",
    313: "Location_C",
    321: "Location_B",
    459: "Location_A",
}


def main():
    # Initialize logging
    logging.configure_logging(loglevel=Settings.loglevel, runtime_env=Settings.env)
    # Initialize database connection
    database = DataBase(Settings)
    task.main(config=Settings, database=database)


if __name__ == "__main__":
    main()
