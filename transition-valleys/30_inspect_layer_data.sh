#!/usr/bin/env bash
jq .properties.datalayers[].id < 113474.geojson | xargs -I {} echo {}.geojson | xargs -L 1 jq keys
