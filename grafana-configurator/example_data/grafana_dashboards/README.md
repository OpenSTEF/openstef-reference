# Dashboards

This directory can contain the `.json` files of the dashboards.
These can be extracted from an existing Grafana instance using the 'save as json' option.
In order for the import to work, some properties need to be modified:

```
{
  ...
  "uid": null
  "id": null
  "version"
}
```
