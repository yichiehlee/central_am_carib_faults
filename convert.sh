rm shapefile/central_am_caribbean_faults.*
ogr2ogr -f "ESRI Shapefile" shapefile/central_am_caribbean_faults.shp geojson/central_am_caribbean_faults.geojson 

rm geopackage/*.*
ogr2ogr -f "GPKG" geopackage/central_am_caribbean_faults.gpkg geojson/central_am_caribbean_faults.geojson

rm GMT/*.*
ogr2ogr -f "GMT" geopackage/central_am_caribbean_faults.gpkg geojson/central_am_caribbean_faults.geojson

rm KML/*.*
ogr2ogr -f "KML" geopackage/central_am_caribbean_faults.gpkg geojson/central_am_caribbean_faults.geojson
