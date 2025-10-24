from typing import Union

from pydantic import Field
from pydantic_settings import BaseSettings


class AppSettings(BaseSettings):
    """Global app and API settings.

    Define your default values here.
    Values can be overriden by ENV variables with the same name (case-insensitive).

    If you want all ENV variables to have a certain prefix and still be parsed into
    these AppSettings, you can set the `env_prefix` variable below.

    Check the docs for more information: https://pydantic-docs.helpmanual.io/usage/settings/

    In the code, you can access these variables like this:
        >>> from configuration import AppSettings
        >>> print(Settings.app_name)
    """

    # DEPLOYMENT and ENVIRONMENT Settings

    loglevel: str = "INFO"

    class Config:
        # Set a prefix to all ENV variables.
        env_prefix = ""
        env_file = ".env"  # .env file should be at base of repo

    api_url: str = Field("localhost", description="")
    api_username: str = Field("username", description="API username.")
    api_password: str = Field("admin", description="API password.")
    api_admin_username: str = Field("username", description="API admin username.")
    api_admin_password: str = Field("admin", description="API admin password.")

    sql_db_host: str = Field("localhost", description="MySQL host.")
    sql_db_port: str = Field("3307", description="MySQL port.")
    sql_db_database_name: str = Field("tst_icarus", description="MySQL database name.")
    sql_db_username: str = Field("root", description="MySQL username.")
    sql_db_password: str = Field("root", description="MySQL password.")

    influxdb_host: str = Field("http://influxdb", description="InfluxDB host.")
    influxdb_port: str = Field("8086", description="InfluxDB port.")
    influxdb_username: str = Field("myusername", description="InfluxDB username.")
    influxdb_password: str = Field(
        "passwordpasswordpassword", description="InfluxDB password."
    )
    influxdb_token: str = Field("mytoken", description="InfluxDB admin token.")
    influx_organization: str = Field("myorg", description="InfluxDB organization.")

    proxies: Union[dict[str, str], None] = None
