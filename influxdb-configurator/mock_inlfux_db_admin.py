import requests

from pydantic_settings import BaseSettings

BUCKETS = ["realised/autogen", "forecast_latest/autogen"]


class MockInfluxDBAdmin:
    def __init__(self, config: BaseSettings) -> None:
        self._config = config
        self._headers = {
            "Authorization": f"Token {self._config.influxdb_token}",
            "Content-type": "application/json",
        }

    def reset_mock_influx_db(self) -> None:
        """Resets influxdb to initial conditions."""
        for bucket in BUCKETS:
            # Delete Buckets if exists
            self.delete_bucket(bucket)
            # Create new Buckets
            self.init_bucket(bucket)

    def init_bucket(self, bucket_name: str) -> None:
        """Creates a new bucket."""
        org_id = self._get_org_id(self._config.influx_organization)
        json_data = {
            "orgId": org_id,
            "name": bucket_name,
            "retentionRules": [
                {
                    "type": "infinite",
                    "shardGroupDurationSeconds": 168 * 3600,
                },
            ],
        }
        requests.post(
            f"{self._config.influxdb_host}:{self._config.influxdb_port}/api/v2/buckets",
            headers=self._headers,
            json=json_data,
        )

    def delete_bucket(self, bucket_name: str) -> None:
        """Delete target bucket."""
        try:
            bucket_id = self._get_bucket_id(bucket_name)
        except ValueError:
            print("Bucket does not exist.")
            return

        response = requests.delete(
            f"{self._config.influxdb_host}:{self._config.influxdb_port}/api/v2/buckets/{bucket_id}",
            headers=self._headers,
        )
        print(response.text)

    def _get_bucket_id(self, bucket_name: str) -> str:
        """Retrieves bucket ID for specific bucket."""

        parameters = {"name": bucket_name}

        buckets = requests.get(
            f"{self._config.influxdb_host}:{self._config.influxdb_port}/api/v2/buckets",
            params=parameters,
            headers=self._headers,
        )
        if buckets.status_code == 200:
            if len(buckets.json()["buckets"]) > 0:
                return buckets.json()["buckets"][0]["id"]
            else:
                raise ValueError("Bucket does not exist.")
        else:
            raise RuntimeError("Could not fetch Bucket ID")

    def _get_org_id(self, org_name: str) -> str:
        """Retrieves organization ID for specific organization."""

        parameters = {"org": org_name}

        orgs = requests.get(
            f"{self._config.influxdb_host}:{self._config.influxdb_port}/api/v2/orgs",
            params=parameters,
            headers=self._headers,
        )
        if orgs.status_code == 200:
            return orgs.json()["orgs"][0]["id"]
        else:
            raise RuntimeError("Could not fetch Org ID")
