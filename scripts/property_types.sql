select distinct prop_type from cvl_wp2_csi_2014_complete 
union 
    select distinct prop_type from cvl_wp5_csi_2014_complete 
union
    select distinct prop_type from cvl_wp4_csi_2014_complete
union 
    select distinct prop_type from cvl_wp1_csi_2014_complete
union 
    select distinct prop_type from cvl_wp3_csi_2014_complete
union
    select distinct prop_type from gtn_jhn_csi_2014_complete
union
    select distinct prop_type from blt_wp1_csi_2014_complete 
union 
    select distinct prop_type from blt_wp3_csi_2014_complete
union
    select distinct prop_type from blt_wp4_csi_2014_complete 
union
    select distinct prop_type from gtn_srn_csi_2014_complete
union
    select distinct prop_type from arlington_csi_2014_complete 
union 
    select distinct prop_type from lng_csi_2014_complete 
union
    select distinct prop_type from millington_csi_2014_complete 
union
    select distinct prop_type from lichterman_csi_2014_complete 
union
    select distinct prop_type from mallory_csi_2014_complete 
union 
    select distinct prop_type from blt_wp2_csi_2014_complete
union
    select distinct prop_type from palmer_csi_2014_well802_complete
union 
    select distinct prop_type from allen_csi_2014_complete 
union
    select distinct prop_type from sheahan_csi_2014_complete
union
    select distinct prop_type from mccord_csi_2014_complete 
union 
    select distinct prop_type from davis_csi_2014_complete 
order by prop_type;

