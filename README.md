Active Faults of Central America and the Caribbean
==================================================

https://doi.org/10.13117/central-america-caribbean-active-faults

Central America and the Caribbean contain both rapidly-slipping faults and a 
large pulation, leading to great seismic hazard and risk. As part of the 
[CCARA] project, and to fill in a critical gap in the [GEM Global Active 
Faults][gaf] project, we have made a database of active faults in the region 
for use in seismic hazard analysis, earth science research, and education.

The database is a collection of fault traces in GIS vector formats, with 
associated metadata (attributes) for each structure describing the fault's 
geometry, kinematics, slip rates and other pertinent characteristics. The 
individual structures are mapped anew for this project based on interpretations 
of the literature and other datasets (e.g., digital topography data, earthquake 
catalogs, and GPS velocities). References for each structure are contained in 
the metadata, and a list of all references used is given in the repository.


## Data Format

### Data Table
Attribute            | Data Type | Description                  | Example
---------------------|-----------|------------------------------|------------
dip                  | tuple     | Dip                           | (40,30,50)
dip_dir             | string    | Dip direction                 |         W 
downthrown_side_id | string    | direction of downthrown side  |        NE 
average_rake        | tuple     | Slip rake of fault            | (45,25,55)
slip_type           | string    | Kinematic type                | Sinistral  
strike_slip_rate   | tuple     | Strike slip rate on fault   |(1.5,0.5,2.5)
dip_slip_rate      | tuple     | Dip slip rate               |(1.5,0.5,2.5)
vert_slip_rate     | tuple     | Vertial slip rate           |(1.5,0.5,2.5)
shortening_rate     | tuple     | Horizontal shortening rate  |(1.5,0.5,2.5)
accuracy            | integer   | Denominator of map scale    |       40000
activity_confidence | integer   | Certainty of neotectonic activity |     1 
exposure_quality    | integer   | How well exposed (visible) fault is |   2 
epistemic_quality   | integer   | Certainty that fault exists here |      1 
last_movement       | string    | Date of last earthquake       |     1865  
name                 | string    | Name of fault zone            | Polochic  
fz_name             | string    | Name of fault zone    | Motagua-Polochic   
reference            | string    | Paper used        | Rogers and Mann, 2007 
notes                | string    | Any relevant info | May be creeping
ogc_fid              | integer   | ID used by GIS    |                    8
catalog_id           | string    | Global ID         |               CCARA_8

### Data Types

There are three main data types used in the GAF attribute table, `tuple`, 
`integer` and `string`.

A `tuple` is a 3-[tuple] of real (floating-point or integer) numbers 
representing continuous random variables such as slip rate. The tuple has the 
format `(most-likely, min, max)`. In some instances where there is no estimated 
uncertainty in the parameter of interest, the tuple may be simply given as 
`(most-likely,,)`; this is most common for the dip of purely strike-slip 
faults. In typed databases it is actually represented by a string, so the 
parentheses and commas will be preserved.  `Rake` is in Aki-Richards 
convention. All slip rate fields except `shortening_rate` describe the slip 
rate or component on the actual fault, and are in magnitudes, i.e. are always 
positive. `shortening_rate` describes the horizontal contraction rate (heave) 
of a fault (such as a GPS measurement); this is not the dip slip rate. 
Extension across a fault is negative.

An `Integer` is used as a categorical variable in this database, typically to 
denote the relative epistemic uncertainty in a parameter.  `1` is most certain, 
`2` is moderately uncertain, and `3` is highly uncertain.  The other uses of 
`Integer` types are for table indices in many constituent datasets, and in the 
`accuracy` attribute which denotes the denominator of the map scale during 
fault mapping and digitization; for example, a fault that was mapped in GIS at 
a 1/40,000 (or 1:40,000) scale will have an accuracy of `40000`.

`String`s are for textual data.


## File Formats

The fault database is provided in a variety of GIS vector file formats. The 
version of record is the GeoJSON file, as changes in this file are tracked with 
git. The other versions are produced from this file via a script. QGIS users 
may use the GeoJSON file with the least friction; the GMT and KML formats work 
well in the GMT and Google Earth platforms, respectively, though metadata may 
be lost. The ShapeFile format suffers from truncation of attribute names and 
possibly text fields. ESRI users are suggested to use the GeoPackage format.


# Other information

This project is funded by USAID as part of the CCARA project. A publication 
describing the work is forthcoming.

User reviews and revisions, and any additional feedback, are highly encouraged. 
Ideally contributions can be made by editing the GeoJSON file (hopefully in 
QGIS for maximum compatibility) and submitting a pull request. However we can 
work to accommodate most types of revision or addition.  Please make an issue 
or email Richard Styron (richard dot h dot styron at gmail dot com).
