# ----------------------------
# Set ICON to the png icon file name
# Set DESCRIPTION to display within a compatible shell
# ----------------------------

ICON        ?= iconc.png
DESCRIPTION ?= "C SDK Demo"

# ----------------------------

include $(CEDEV)/bos/include/.makefile

tilemap: src/tilemap/tilemap.csv
	cd src && cd tilemap && convbin --iformat csv -i tilemap.csv --compress zx7 -o tilemap.c --oformat c --name tilemap_map_compressed

