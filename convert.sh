rm shapefile/central_am_caribbean_faults.*
ogr2ogr -f "ESRI Shapefile" shapefile/central_am_caribbean_faults.shp geojson/central_am_caribbean_faults.geojson 

rm geopackage/*.*
ogr2ogr -f "GPKG" geopackage/central_am_caribbean_faults.gpkg geojson/central_am_caribbean_faults.geojson

rm gmt/*.*
ogr2ogr -f "GMT" gmt/central_am_caribbean_faults.gmt geojson/central_am_caribbean_faults.geojson

rm kml/*.*
ogr2ogr -f "KML" kml/central_am_caribbean_faults.kml geojson/central_am_caribbean_faults.geojson
