"""App and API settings."""
import os
from typing import Union, Optional

# from pydantic_settings import BaseSettings
from pydantic import Field
from pydantic_settings import BaseSettings


class AppSettings(BaseSettings):
    """Global app and API settings.

    Define your default values here.
    Values can be overriden by ENV variables with the same name (case-insensitive).

    If you want all ENV variables to have a certain prefix and still be parsed into
    these AppSettings, you can set the `env_prefix` variable below.

    For example: if `env_prefix = "KTP_"`,
    then the env variable `KTP_LOG_LEVEL` will be parsed to `AppSettings.log_level`.

    Check the docs for more information: https://pydantic-docs.helpmanual.io/usage/settings/

    """

    loglevel: str = "DEBUG"

    class Config:
        # Set a prefix to all ENV variables.
        env_prefix = ""
        env_file = ".env"  # .env file should be at base of repo

    # Config map
    teams_alert_url: str = Field("http://localhost", description="Teams alert url.")
    teams_monitoring_url: str = Field(
        "http://localhost", description="Teams monitoring url."
    )

    api_url: str = Field("http://localhost", description="")
    api_username: str = Field("", description="API username.")
    api_password: str = Field("", description="API password.")
    api_admin_username: str = Field("", description="API admin username.")
    api_admin_password: str = Field("", description="API admin password.")

    sql_db_host: str = Field("localhost", description="MySQL host.")
    sql_db_port: str = Field("3306", description="MySQL port.")
    sql_db_database_name: str = Field("tst_icarus", description="MySQL database name.")
    sql_db_username: str = Field("root", description="MySQL username.")
    sql_db_password: str = Field("root", description="MySQL password.")

    known_zero_flatliners: list = Field(
        [], description="List of pids with known zero flatflines."
    )
    influxdb_host: str = Field("http://localhost", description="InfluxDB host.")
    influxdb_port: str = Field("8086", description="InfluxDB port.")
    influxdb_username: str = Field("myusername", description="InfluxDB username.")
    influxdb_password: str = Field("passwordpasswordpassword", description="InfluxDB password.")

    influx_organization: str = Field("myorg", description="InfluxDB organization.")
    influxdb_token: str = Field("mytoken", description="InfluxDB token.")

    externally_posted_forecasts_pids: Optional[list] = None

    proxies: Union[dict[str, str], None] = None

    paths_webroot: str = Field(
        "./nginx/volumes/data/icarus/visuals",
        description="Webroot path.",
    )
    paths_mlflow_tracking_uri: str = Field(
        "http://localhost:8099", description="MLflow tracking uri path."
    )
    paths_artifact_folder: str = Field(
        "./nginx/volumes/data/icarus/visuals/trained_models",
        description="Artifact folder path.",
    )

    dashboard_url: str = Field("", description="Dashboard URL.")
    dashboard_trained_models_url: str = Field(
        "", description="Dashboard trained models URL."
    )

    # DEPLOYMENT and ENVIRONMENT Settings
    env: str = Field("local", description="Environment (local or container)")
