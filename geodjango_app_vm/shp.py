import geopandas as gpd
from shapely.geometry import Polygon

# Define the coordinates for the polygon
#coordinates = [(51.505, -0.09), (51.505, -0.08), (51.506, -0.08), (51.506, -0.09), (51.505, -0.09)]
coordinates = [(-0.09, 51.505), (-0.08, 51.505), (-0.08, 51.506), (-0.09, 51.506), (-0.09, 51.505)]


# Create a Shapely polygon from these coordinates
polygon = Polygon(coordinates)

# Create a GeoDataFrame
gdf = gpd.GeoDataFrame(index=[0], crs='EPSG:4326', geometry=[polygon])

# Save the GeoDataFrame as a shapefile
gdf.to_file("polygon_shapefile.shp")

print("Shapefile created successfully.")
