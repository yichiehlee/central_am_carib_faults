rm shapefile/central_am_caribbean.*
ogr2ogr -f "ESRI Shapefile" shapefile/central_am_caribbean.shp sqlite/central_am_caribbean.sqlite 
rm geojson/central_am_caribbean.geojson
ogr2ogr -f "GeoJSON" geojson/central_am_caribbean.geojson sqlite/central_am_caribbean.sqlite 
ogr2ogr -f "GMT" gmt/central_am_caribbean.gmt sqlite/central_am_caribbean.sqlite
ogr2ogr -f "KML" kml/central_am_caribbean.kml sqlite/central_am_caribbean.sqlite
