layout: true
class: center, middle, inverse
---
#COMP 4115 Project:
##Contaminant Source Inventory database redesign
Eric Goddard  
github presentation: [http://egoddard.github.io/comp4115-project](http://egoddard.github.io/comp4115-project)  
github repo: [https://github.com/egoddard/comp4115-project](https://github.com/egoddard/comp4115-project)

---

layout: false
class: left, middle
#Outline
.left[
- Project Summary
- What I wanted to accomplish
- What I actually accomplished
- How I did it
]

---

class: center, inverse
#Summary
###When groundwater wells are drilled, the EPA requires creation of a wellhead protection plan. 
###Part of the protection plan includes maintaining an inventory of facilities with hazardous materials that could contaminate the well if a leak were to occur.

---

#What I wanted to accomplish
###1. Create a consolidated, normalized database design that will make it easier to update and generate annual reports.
--

###2. Migrate historical data into the new database. 
--

###3. Automate updating of the source regulatory data. 
--

###4. Automate the generation of reports.

---

class: center, middle
#What I actually completed

---

class: center
#1 - Normalization

---

class: center
##Turn this:  
<img src="./images/source_tables.png" height="500px" />

---

class: center
##Into this:
<img src="./images/normalized_schema.png" />

---

class: center
#2 - Migration
.left[
- 1,785 facilities in 24 separate tables

    - 72 unique fields

    - between 1 and 9 pairs of columns representing some kind of environmental issue

- 24 wellhead protection areas in 6 separate tables
]

##...into this relational schema:

---

background-image:url(./images/csi_schema.png)

---

class: center
##Turn this:
<img src="./images/env_fields_source.png" width="700px" />
--

##into this:
<img src="./images/env_issues.png" />

---

class: center
# 3 - Automating updates
<img src="http://cdn.someecards.com/someecards/usercards/1331933790126_6966892.png"/>

--

#Fail.

---

class: center
#4 - Automating reports
--

##AKA - creating lots of spreadsheets
--

<img src="http://cdn.someecards.com/someecards/usercards/1331933790126_6966892.png"/>



---

class: center
#How I did it
.left[
- Postgres + PostGIS
    - &#9829; arrays

    - for loops 

    - heavy use of the information_schema tables

- Python

    - Psycopg2

    - xlwt
]

---

class: center, middle, inverse
#The End
##Links
github presentation: [http://egoddard.github.io/comp4115-project](http://egoddard.github.io/comp4115-project)  
github repo: [https://github.com/egoddard/comp4115-project](https://github.com/egoddard/comp4115-project)


