drop table if exists facilities cascade;
drop table if exists env_issues;
drop table if exists hyperlinks;
drop table if exists property_types;
drop table if exists facility_types;
drop table if exists wellhead_protection_zones;

create table facilities(
    ogc_fid serial not null primary key,
    wkb_geometry geometry(Point,2274),  
    facility_id text,
    facility_name text,
    whpa_id text,
    address text, 
    phone text, 
    property_type text, 
    facility_type text, 
    facility_status text, 
    csi_zone text, 
    "date" date,
    comments text);

create table env_issues(
    id serial not null primary key,
    env_id text,
    facility_id text,
    issue text,
    hyperlink text,
    comments text);

create table hyperlinks(
    id serial not null primary key,
    facility_id text,
    url text);

create table property_types(property_type text not null primary key);
create table facility_types(facility_type text not null primary key);

create table wellhead_protection_zones(
    ogc_fid serial not null primary key,
    whpa_id text, 
    well_field text,
    aquifer text, 
    wkb_geometry geometry(MultiPolygon,2274));

create index facilities_whpa_idx on facilities(whpa_id);
create unique index facilities_fac_idx on facilities(facility_id);
create index env_issues_idx on env_issues(env_id);
create index env_issues_fac_idx on env_issues(facility_id);
create index hyperlinks_fac_idx on hyperlinks(facility_id);

alter table env_issues add constraint env_facid_fk foreign key (facility_id) references facilities (facility_id);
alter table hyperlinks add constraint hyperlink_facid_fk foreign key (facility_id) references facilities (facility_id);


