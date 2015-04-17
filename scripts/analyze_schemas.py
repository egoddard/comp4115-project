# Examine
import fiona

CSI_GDB = r"data/CSI_2014_Complete.gdb"
unique_fields = set()
count = 1

with open("csi_fields.md", 'w') as f:
    f.write("---\ntitle: Contaminant Source Inventories--Existing Schema\n")
    f.write("author: Eric Goddard\n")
    f.write("date: \\today\n")
    f.write("geometry: margin=1in\n---\n\n")
    f.write("##Layers\n")
    with fiona.drivers():
        for layername in fiona.listlayers(CSI_GDB):
            f.write("###{layer}\n".format(layer=layername))

            with fiona.open(CSI_GDB, layer=layername, driver="FileGDB") as src:
                unique_fields.update(key.upper() for key in \
                        src.schema['properties'].keys())
                field_num = 1
                for field in src.schema['properties']:
                    f.write("{f}. {field} ({type})\n".format(f=field_num,
                        field=field, type=src.schema['properties'][field]))
                    field_num += 1
                f.write("\n\n")


    f.write("## Unique Fields  \n")
    for field in sorted(unique_fields):
        f.write("{c}. {f}\n".format(c=count, f=field))
        count += 1

