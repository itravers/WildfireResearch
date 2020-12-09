import pandas as pd
import matplotlib.pyplot as plt
import descartes
import geopandas as gpd
from shapely.geometry import Point, Polygon

map = gpd.read_file('counties/counties.shp')

data = pd.read_csv('../WildFires.csv')
crs = {'init': 'epsg:4326'}
data.head()

lat = data["AVGLat"]

print("mapcrs: " + map.crs["init"])
map = map.to_crs(epsg=4326)

print("mapcrs: " + map.crs["init"])

lo = data["AVGLong"]

#lo = {-119, -118}
#lat = {32, 33}

#map.crs = crs

fig,ax = plt.subplots(figsize = (15,15))



map.plot(ax = ax)

geometry = [Point(xy) for xy in zip(lo,lat)]
geometry[:3]

geo_df = gpd.GeoDataFrame(geometry = geometry, crs = crs)

#geo_df.crs = crs
#geo_df = gpd.GeoDataFrame(geometry = geometry)
print(geo_df)
print(geo_df.crs["init"])

g = geo_df.plot(ax = ax, markersize = 20, color = 'red',marker = '*',label = 'Delhi')

plt.show();
