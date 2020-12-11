import pandas as pd
import matplotlib.pyplot as plt
import descartes
import geopandas as gpd
import folium
from shapely.geometry import Point, Polygon


pd.set_option('display.max_columns', None)
map = gpd.read_file('counties/counties.shp')

data = pd.read_csv('../WildFires.csv')
crs = {'init': 'epsg:4326'}
data.head()

lat = data["AVGLat"]

print("mapcrs: " + map.crs["init"])
map = map.to_crs(epsg=4326)

print("mapcrs: " + map.crs["init"])

#print(type(map))

lo = data["AVGLong"]

#lo = {-119, -118}
#lat = {32, 33}

#map.crs = crs

fig,ax = plt.subplots(figsize = (15,15))



map.plot(ax = ax)

geometry = [Point(xy) for xy in zip(lo,lat)]
geometry[:3]

geo_df = gpd.GeoDataFrame(geometry = geometry, crs = crs)

#geo_df = gpd.tools.sjoin(geo_df, map, how="left")
#combined_map = map[["STATE_NAME", "geometry"]]
#print(combined_map)

geometry = map["geometry"];

#combined_map = combined_map.dissolve(by='STATE_NAME')
#print(map)



cali_mask = geo_df.within(geometry[0])
#cali_mask = geo_df.within(combined_map["California"])
#cali_mask.append(geo_df.within(geometry[1]))
#cali_mask = [];



####geo_df = geo_df.loc[cali_mask]


print(geo_df)
print(geo_df.crs["init"])

g = geo_df.plot(ax = ax, markersize = 20, color = 'red',marker = '.',label = 'Wild Fires')

plt.show();

map_osm = folium.Map(data=geo_df.to_json(), location=[40.803626,-124.166140])
#map_osm.apply(lambda row:folium.CircleMarker(location=[]).add_to(map_osm), axis=1)
map_osm.save('map.html')