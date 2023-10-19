""""""
from openstef.tasks import create_basecase_forecast as task
from openstef_dbc.database import DataBase
from openstef_dbc.log import logging

from app_settings import AppSettings

Settings = AppSettings()

def main():
    # Initialize logging
    logging.configure_logging(loglevel=Settings.loglevel, runtime_env=Settings.env)
    # Initialize database connection
    database = DataBase(Settings)
    task.main(config=Settings, database=database)


if __name__ == "__main__":
    main()
