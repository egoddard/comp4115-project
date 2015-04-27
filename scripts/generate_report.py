import os
import xlwt
import psycopg2 as psql
from collections import namedtuple


Facility = namedtuple('Facility', ['facility_id', 'facility_name',
    'whpa_id', 'address', 'phone', 'property_type', 'facility_type',
    'facility_status', 'csi_zone', 'date', 'comments', 'location', 'urls',
    'issues'])
Header = namedtuple('Header', ['facility_id', 'facility_name', 'whpa_id',
    'address', 'phone', 'property_type', 'facility_type', 'facility_status',
    'csi_zone', 'date', 'comments', 'X', 'Y', 'urls', 'issues'])

def export_to_pdf(whpa, export_path):
    """
    Queries the csi database whpa_report view with the provided whpa and
    exports the results to a spreadsheet for reporting purposes.
    """
    wb = xlwt.Workbook()
    ws = wb.add_sheet(whpa)

    header = Header(*range(0, len(Header._fields)))

    for field, index in header._asdict().items():
        ws.write(0, index, field)

    with psql.connect("dbname=gwi_csi user=eric") as conn:
        with conn.cursor() as cur:
            cur.execute('SELECT facility_id, facility_name, whpa_id, address,\
                    phone, property_type, facility_type, facility_status,\
                    csi_zone, "date", comments, location, urls, issues\
                    from whpa_report WHERE facility_id LIKE %s',
                    ("%{}%".format(whpa),))

            row_index = 1

            for row in cur.fetchall():
                facility = Facility(*row)

                for field, value in facility._asdict().items():
                    if field == 'location':
                        x = float(facility.location.split(' ')[0].lstrip('POINT('))
                        y = float(facility.location.split(' ')[1].rstrip(')'))

                        ws.write(row_index, header.X, x)
                        ws.write(row_index, header.Y, y)
                    elif field == 'issues' and facility.issues is not None:
                        ws.write(row_index, header.issues, ", ".join(facility.issues))
                    else:
                        ws.write(row_index, getattr(header, field), value)
                row_index += 1

    wb.save(os.path.join(export_path, "{}.xlsx".format(whpa)))

def main():
    export_path = r"/home/eric/development/caeser/csi/test_output"
    whpas = ('allen', 'arlington', 'blt_wp1', 'blt_wp2', 'blt_wp3',
             'blt_wp4', 'cvl_wp1', 'cvl_wp2', 'cvl_wp3', 'cvl_wp4', 'cvl_wp5',
             'davis', 'gtn_jhn', 'gtn_srn', 'lichterman', 'lng', 'mallory',
             'mccord', 'millington', 'morton', 'palmer', 'palmer_802', 'shaw',
             'sheahan')

    for whpa in whpas:
        export_to_pdf(whpa, export_path)


if __name__ == '__main__':
    main()
