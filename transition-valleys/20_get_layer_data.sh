#!/usr/bin/env bash
jq .properties.urls.datalayer_view < 113474.geojson | sed s/\"//g > url_template
# this one took a while to find http://stackoverflow.com/questions/22589438/xargs-command-substitution-with-pipe-doesnt-work
jq .properties.datalayers[].id < 113474.geojson | xargs -I {} sed s/{pk}/{}/g url_template | xargs -I {} echo https://umap.openstreetmap.fr{} | xargs -I {} sh -c "wget {} -O \$( echo {} | sed -r -e 's/[^0-9]//g' ).geojson"

