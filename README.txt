This project is an attempt to leanrn SQL basics

I have also implemented SQL using SQLite Python library
to solve some problems that were intresting for me

Current status of the projects:
1)mailBox: The first project is an implementation to read the data about the
e-mails form some users anf work on the large text fiel to parse the data 
and create an SQL database out of it.

2)tracks: The second deals with the XML files generated from my i-tunes
The objective was to come up with a logical data model and implement 
it using SQLite and python to quickly access the data and generate a 
Relational database model

3) courses: This is a project to implement manz to many realtion in the 
database. The data is read using a JSON file ehich has information about the
Student Name, courses and the level (student :0 or Tutot: 1).
The objective was to capture that a student can be entolled in sifferent course and may 
aslo be a tutor in some course
The example is a good exercise to prectise many to many relation in Relational Databases

4) geodata_dataMining: This is an extensive project to get a raw data about the 
name of locations. There locations are then searched using the Google geocode API.
The data is stored in a database. The stored data is then parsed and cleaned 
to get meaningful data. Finally the GoogleMap API is ised to plot the locations
onto GoogleMap