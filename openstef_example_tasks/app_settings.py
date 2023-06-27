"""App and API settings."""
import os
from typing import Union

from pydantic import BaseSettings, Field


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
    teams_alert_url: str = Field("http://localhost", description="Teams alert url."
    )
    teams_monitoring_url: str = Field("http://localhost", description="Teams monitoring url."
    )
    
    api_url: str = Field("http://localhost", description="")
    api_username: str = Field("", description="API username."
    )
    api_password: str = Field(
        "", description="API password."
    )
    api_admin_username: str = Field(
       "", description="API admin username."
    )
    api_admin_password: str = Field(
        "", description="API admin password."
    )

    mysql_host: str = Field("localhost", description="MySQL host.")
    mysql_port: str = Field("3306", description="MySQL port.")
    mysql_database_name: str = Field("tst_icarus", description="MySQL database name.")
    mysql_username: str = Field(
        "root", description="MySQL username."
    )
    mysql_password: str = Field(
        "root", description="MySQL password."
    )

    influxdb_host: str = Field("http://localhost", description="InfluxDB host.")
    influxdb_port: str = Field("8086", description="InfluxDB port.")
    influxdb_username: str = Field("admin", description="InfluxDB username."
    )
    influxdb_password: str = Field(
        "admin", description="InfluxDB password."
    )
    
    influx_organization: str = Field(
        "myorg", description="InfluxDB organization."
    )
    influxdb_token: str = Field(
        "mytoken", description="InfluxDB token."
    )
    
    externally_posted_forecasts_pids: list = None
    
    proxies: Union[dict[str, str], None] = None

    paths_webroot: str = Field("./nginx/volumes/data/icarus/visuals", description="Webroot path.")
    paths_mlflow_tracking_uri: str = Field("http://localhost:8099", description="MLflow tracking uri path.")
    paths_artifact_folder: str = Field("./nginx/volumes/data/icarus/visuals/trained_models", description="Artifact folder path.")

    dashboard_url: str = Field("", description="Dashboard URL.")
    dashboard_trained_models_url: str = Field("", description="Dashboard trained models URL.")
    
    # DEPLOYMENT and ENVIRONMENT Settings
    env: str = Field("local", description="Environment (local or container)")