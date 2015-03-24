---
title: Contaminant Source Inventories--Existing Schema
author: Eric Goddard
date: \today
geometry: margin=1in
---

##Layers
###WaterPumpingStn
1. Name (str)


###WPS_parcels
1. PARCEL_TYP (float)
2. CALC_ACRE (float)
3. MAP (str)
4. PARCELID (str)
5. PARCELID2 (str)
6. CITY (str)
7. DISTRICT (str)
8. WARD (str)
9. D_BLOCK (str)
10. C_BLOCK (str)
11. D_INSERT (str)
12. C_INSERT (str)
13. PARCEL (str)
14. CODE (float)
15. IN_DATE (datetime)
16. EDITOR_NAM (str)
17. EDIT_DATE (datetime)
18. AREA (float)
19. LEN (float)


###CVL_WP4_CSI_2014_Complete
1. OBJECTID (int)
2. FAC_No (int)
3. FAC_Name (str)
4. Address (str)
5. Phone (str)
6. Prop_Type (str)
7. FAC_Type (str)
8. X (float)
9. Y (float)
10. CSI_Zone (int)
11. ENV_Data1 (str)
12. ENV_ID1 (str)
13. Comments (str)
14. FAC_Status (str)
15. Hyperlink (str)
16. Subtypes (int)
17. Date (datetime)
18. Parcel_ID (str)
19. Evnt_File (str)


###CVL_WP5_CSI_2014_Complete
1. OBJECTID (int)
2. FAC_No (int)
3. FAC_Name (str)
4. Address (str)
5. Phone (str)
6. Prop_Type (str)
7. FAC_Type (str)
8. X (float)
9. Y (float)
10. CSI_Zone (int)
11. ENV_Data1 (str)
12. Comments (str)
13. FAC_Status (str)
14. Hyperlink (str)
15. Subtypes (int)
16. Date (datetime)
17. Parcel_ID (str)
18. Envt_File (str)
19. ENV_ID1A (str)


###CVL_WP1_CSI_2014_Complete
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. Prop_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_Data2 (str)
12. ENV_ID2 (str)
13. ENV_Data3 (str)
14. ENV_ID3 (str)
15. ENV_Data4 (str)
16. ENV_ID4 (str)
17. Comments (str)
18. FAC_Status (str)
19. Hyperlink1 (str)
20. Hyperlink2 (str)
21. Subtypes (int)
22. Date (datetime)
23. Parcel_ID (str)
24. Envt_File (str)
25. ENV_ID1 (str)
26. ENV_Data5 (str)
27. ENV_ID5 (str)
28. Hyperlink3 (str)


###CVL_WP2_CSI_2014_Complete
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. Prop_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_ID1 (str)
12. ENV_Data2 (str)
13. ENV_ID2 (str)
14. ENV_Data3 (str)
15. ENV_ID3 (str)
16. ENV_Data4 (str)
17. ENV_ID4 (str)
18. ENV_Data5 (str)
19. ENV_ID5 (str)
20. Comments (str)
21. FAC_Status (str)
22. Hyperlink1 (str)
23. Hyperlink2 (str)
24. Hyperlink3 (str)
25. Subtypes (int)
26. Date (datetime)
27. Parcel_ID (str)
28. Envt_File (str)
29. ENV_Data6 (str)
30. ENV_ID6 (str)


###CVL_WP3_CSI_2014_Complete
1. OBJECTID (int)
2. FAC_No (int)
3. FAC_Name (str)
4. Address (str)
5. Phone (str)
6. Prop_Type (str)
7. FAC_Type (str)
8. X (float)
9. Y (float)
10. CSI_Zone (int)
11. ENV_Data1 (str)
12. ENV_ID1 (str)
13. Comments (str)
14. FAC_Status (str)
15. Hyperlink (str)
16. Subtypes (int)
17. Date (datetime)
18. Parcel_ID (str)
19. Envt_File (str)


###BLT_WP4_CSI_2014_Complete
1. OBJECTID (int)
2. FAC_No (int)
3. FAC_Name (str)
4. Address (str)
5. Phone (str)
6. Prop_Type (str)
7. FAC_Type (str)
8. X (float)
9. Y (float)
10. CSI_Zone (int)
11. ENV_Data1 (str)
12. ENV_Data2 (str)
13. Comment_ (str)
14. FAC_Status (str)
15. Hyperlink (str)
16. Subtype (int)
17. Date (datetime)
18. Parcel_ID (str)
19. ENV_File (str)
20. ENV_IDa (str)
21. ENV_ID2a (str)
22. Hyperlink2 (str)


###BLT_WP3_CSI_2014_Complete
1. OBJECTID (int)
2. FAC_No (int)
3. FAC_Name (str)
4. Address (str)
5. Phone (str)
6. Prop_Type (str)
7. FAC_Type (str)
8. X (float)
9. Y (float)
10. CSI_Zone (int)
11. ENV_Data1 (str)
12. ENV_ID1 (str)
13. Comment_ (str)
14. FAC_Status (str)
15. Hyperlink (str)
16. Subtype (int)
17. Date (datetime)
18. ENV_File (str)
19. Parcel_ID (str)


###BLT_WP1_CSI_2014_Complete
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. Prop_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_Data2 (str)
12. ENV_ID2 (str)
13. Comment_ (str)
14. FAC_Status (str)
15. Hyperlink (str)
16. Subtypes (int)
17. Date (datetime)
18. ENV_File (str)
19. Parcel_ID (str)
20. ENV_ID1a (str)


###LNG_CSI_2014_Complete
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. PROP_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (str)
10. ENV_Data1 (str)
11. ENV_ID1 (str)
12. ENV_Data2 (str)
13. ENV_ID2 (float)
14. ENV_Data3 (str)
15. ENV_ID3 (str)
16. ENV_Data4 (str)
17. ENV_ID4 (str)
18. Comments (str)
19. FAC_Status (str)
20. Hyperlink1 (str)
21. Hyperlink2 (str)
22. Hyperlink3 (str)
23. Subtype (int)
24. Date (datetime)
25. Parcel_ID (str)
26. Envt_file (str)


###Arlington_CSI_2014_Complete
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. Prop_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_ID1 (str)
12. ENV_Data2 (str)
13. ENV_ID2 (int)
14. Comments (str)
15. FAC_Status (str)
16. Hyperlink (str)
17. Subtype (int)
18. Date (datetime)
19. Parcel_ID (str)
20. ENVT_File (str)


###GTN_JHN_CSI_2014_Complete
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. Prop_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_Data2 (str)
12. ENV_ID2 (str)
13. Comments (str)
14. FAC_Status (str)
15. Hyperlink1 (str)
16. Subtype (int)
17. Date (datetime)
18. Parcel_ID (str)
19. Envt_File (str)
20. ENV_ID1 (str)
21. Hyperlink2 (str)


###GTN_SRN_CSI_2014_Complete
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. Prop_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_ID1 (str)
12. ENV_Data2 (str)
13. ENV_ID2 (str)
14. ENV_Data3 (str)
15. ENV_ID3 (str)
16. Comments (str)
17. FAC_Status (str)
18. Hyperlink (str)
19. Subtypes (int)
20. Date (datetime)
21. Envt_File (str)
22. Parcel_ID (str)


###Palmer_CSI_2014
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. Prop_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_ID1 (int)
12. ENV_Data2 (str)
13. Comments (str)
14. FAC_Status (str)
15. Hyperlink (str)
16. Subtype (int)
17. Date (datetime)
18. ParcelID (str)
19. Envt_File (str)
20. ENV_ID2A (str)


###Shaw_CSI_2014
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. Prop_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_ID1 (float)
12. ENV_Data2 (str)
13. ENV_ID2 (int)
14. ENV_Data3 (str)
15. ENV_ID3 (str)
16. Comments (str)
17. Fac_Status (str)
18. Hyperlink (str)
19. Subtype (int)
20. Date (datetime)
21. Parcel_ID (str)
22. Envt_File (str)
23. ENV_Data4 (str)
24. ENV_ID4 (str)
25. Hyperlink2 (str)


###Morton_CSI_2014
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. PROP_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_ID1 (float)
12. ENV_Data2 (str)
13. ENV_ID2 (int)
14. ENV_Data3 (str)
15. ENV_ID3 (str)
16. Comments (str)
17. FAC_Status (str)
18. Hyperlink (str)
19. Subtype (int)
20. Date (datetime)
21. Parcel_ID (str)
22. ENV_File (str)
23. ENV_Data4 (str)
24. ENV_ID4 (str)


###Mallory_CSI_2014_Complete
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. Prop_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_ID1 (str)
12. ENV_Data2 (str)
13. ENV_Data3 (str)
14. ENV_ID3 (str)
15. ENV_Data4 (str)
16. ENV_ID4 (str)
17. ENV_Data5 (str)
18. ENV_ID5 (str)
19. Comments (str)
20. FAC_Status (str)
21. Hyperlink1 (str)
22. Subtype (int)
23. Date (datetime)
24. Entv_File (str)
25. Parcel_ID (str)
26. ENV_ID2A (str)
27. ENV_Data6 (str)
28. ENV_ID6 (str)
29. Hyperlink2 (str)
30. ENV_Data7 (str)
31. ENV_ID7 (str)


###Lichterman_CSI_2014_Complete
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. Prop_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_Data2 (str)
12. ENV_ID2 (str)
13. ENV_Data3 (str)
14. ENV_Data4 (str)
15. ENV_Data5 (str)
16. Comments (str)
17. FAC_Status (str)
18. Hyperlink1 (str)
19. Hyperlink2 (str)
20. Subtype (int)
21. Date (datetime)
22. Envt_File (str)
23. Parcel_ID (str)
24. ENV_ID1A (str)
25. ENV_ID3A (str)
26. ENV_ID4A (str)
27. ENV_ID5A (str)


###Millington_CSI_2014_Complete
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. Prop_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_ID1 (str)
12. ENV_Data2 (str)
13. ENV_ID2 (str)
14. ENV_Data3 (str)
15. ENV_ID3 (str)
16. ENV_Data4 (str)
17. ENV_ID4 (str)
18. ENV_Data5 (str)
19. ENV_ID5 (str)
20. ENV_Data6 (str)
21. ENV_ID6 (str)
22. Comments (str)
23. FAC_Status (str)
24. Hyperlink1 (str)
25. Hyperlink2 (str)
26. Hyperlink3 (str)
27. Subtype (int)
28. Date (datetime)
29. Parcel_ID (str)
30. ENV_File (str)
31. ENV_Data7 (str)
32. ENV_ID7a (str)
33. ENV_Data8 (str)
34. ENV_ID8 (str)
35. ENV_Data9 (str)
36. ENV_ID9 (str)


###BLT_WP2_CSI_2014_Complete
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. Prop_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_Data2 (str)
12. ENV_Data3 (str)
13. ENV_ID3 (str)
14. Comment_ (str)
15. FAC_Status (str)
16. Hyperlink1 (str)
17. Hyperlink2 (str)
18. Subtype (int)
19. Date (datetime)
20. ENV_File (str)
21. Parcel_ID (str)
22. ENV_ID1a (str)
23. ENV_ID2a (str)


###Palmer_CSI_2014_Well802_Complete
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. Prop_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_Data2 (str)
12. Comments (str)
13. FAC_Status (str)
14. Hyperlink (str)
15. Subtype (int)
16. Date (datetime)
17. ParcelID (str)
18. Envt_File (str)
19. ENVID1 (str)
20. ENVID2 (str)


###Davis_CSI_2014_Complete
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. Prop_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_ID1 (str)
12. ENV_Data2 (str)
13. ENV_ID2 (float)
14. ENV_Data3 (str)
15. ENV_Data4 (str)
16. ENV_ID4 (str)
17. Comment_ (str)
18. FAC_Status (str)
19. Hyperlink (str)
20. Subtype (int)
21. ENV_File (str)
22. Parcel_ID (str)
23. ENV_Data5 (str)
24. ENV_ID5 (str)
25. Hyperlink2 (str)
26. Date (datetime)
27. ENV_ID3A (str)


###Allen_CSI_2014_Complete
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. Prop_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_Data2 (str)
12. ENV_Data3 (str)
13. ENV_Data4 (str)
14. ENV_ID4 (str)
15. ENV_Data5 (str)
16. ENV_ID5 (str)
17. ENV_Data6 (str)
18. ENV_ID6 (str)
19. Comments (str)
20. FAC_Status (str)
21. Hyperlink1 (str)
22. Hyperlink2 (str)
23. Hyperlink3 (str)
24. Subtype (int)
25. Date (datetime)
26. Parcel_ID (str)
27. Envt_File (str)
28. ENV_ID1a (str)
29. ENV_ID2A (str)
30. ENV_ID3A (str)
31. ENV_Data7 (str)
32. ENV_ID7 (str)
33. ENV_Data8 (str)
34. ENV_ID8 (str)
35. ENV_Data9 (str)
36. ENV_ID9 (str)


###Sheahan_CSI_2014_Complete
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. PROP_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_Data2 (str)
12. ENV_Data3 (str)
13. ENV_Data4 (str)
14. Comments (str)
15. FAC_Status (str)
16. Hyperlink (str)
17. Subtype (int)
18. Date (datetime)
19. Parcel_ID (str)
20. Envt_File (str)
21. ENV_ID1A (str)
22. ENV_ID2A (str)
23. ENV_ID3A (str)
24. ENV_ID4A (str)
25. Hyperlink2 (str)


###McCord_CSI_2014_Complete
1. FAC_No (int)
2. FAC_Name (str)
3. Address (str)
4. Phone (str)
5. PROP_Type (str)
6. FAC_Type (str)
7. X (float)
8. Y (float)
9. CSI_Zone (int)
10. ENV_Data1 (str)
11. ENV_Data2 (str)
12. ENV_Data3 (str)
13. ENV_ID3 (str)
14. ENV_Data4 (str)
15. ENV_ID4 (str)
16. Comments (str)
17. FAC_Status (str)
18. Hyperlink (str)
19. Subtype (int)
20. Date (datetime)
21. ENV_File (str)
22. Parcel_ID (str)
23. ENV_ID1a (str)
24. ENV_ID2a (str)


## Unique Fields  
1. ADDRESS
2. AREA
3. CALC_ACRE
4. CITY
5. CODE
6. COMMENTS
7. COMMENT_
8. CSI_ZONE
9. C_BLOCK
10. C_INSERT
11. DATE
12. DISTRICT
13. D_BLOCK
14. D_INSERT
15. EDITOR_NAM
16. EDIT_DATE
17. ENTV_FILE
18. ENVID1
19. ENVID2
20. ENVT_FILE
21. ENV_DATA1
22. ENV_DATA2
23. ENV_DATA3
24. ENV_DATA4
25. ENV_DATA5
26. ENV_DATA6
27. ENV_DATA7
28. ENV_DATA8
29. ENV_DATA9
30. ENV_FILE
31. ENV_ID1
32. ENV_ID1A
33. ENV_ID2
34. ENV_ID2A
35. ENV_ID3
36. ENV_ID3A
37. ENV_ID4
38. ENV_ID4A
39. ENV_ID5
40. ENV_ID5A
41. ENV_ID6
42. ENV_ID7
43. ENV_ID7A
44. ENV_ID8
45. ENV_ID9
46. ENV_IDA
47. EVNT_FILE
48. FAC_NAME
49. FAC_NO
50. FAC_STATUS
51. FAC_TYPE
52. HYPERLINK
53. HYPERLINK1
54. HYPERLINK2
55. HYPERLINK3
56. IN_DATE
57. LEN
58. MAP
59. NAME
60. OBJECTID
61. PARCEL
62. PARCELID
63. PARCELID2
64. PARCEL_ID
65. PARCEL_TYP
66. PHONE
67. PROP_TYPE
68. SUBTYPE
69. SUBTYPES
70. WARD
71. X
72. Y
