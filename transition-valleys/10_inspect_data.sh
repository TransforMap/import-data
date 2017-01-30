#!/usr/bin/env bash

head 113474.geojson
jq 'keys' < 113474.geojson
jq .properties < 113474.geojson
jq .properties.datalayers < 113474.geojson
jq .properties.datalayers[].id < 113474.geojson
jq .properties.urls < 113474.geojson
jq .properties.urls.datalayer_view < 113474.geojson
