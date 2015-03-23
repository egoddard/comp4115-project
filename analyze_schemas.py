# Examine
import pprint
import fiona

csi_gdb = r"/media/eric/data_egoddard/work/CSI/CSI_2014_Complete.gdb"
unique_fields = set()
count = 1

with open("csi_fields.md", 'w') as f:
    f.write("##Layers\n")
    with fiona.drivers():
        for layername in fiona.listlayers(csi_gdb):
            f.write("###{layer}\n| Field Name | Field Type |\n|:---:|:---:|\n"
                    .format(layer=layername)) 
            with fiona.open(csi_gdb, layer=layername, driver="FileGDB") as src: 
                unique_fields.update(key.upper() for key in \
                        src.schema['properties'].keys())
                for field in src.schema['properties']:
                    f.write("| {field} | {type} |\n".format(field=field,
                        type=src.schema['properties'][field]))

    f.write("## Unique Fields  \n")
    for field in sorted(unique_fields):
        f.write("{c}. {f}  \n".format(c=count,f=field))
        count += 1

