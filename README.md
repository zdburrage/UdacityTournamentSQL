# UdacityTournament SQL Files

This project creates a database and uses SQL and python code to manipulate data about matches between players, as well as creates a swiss pairing system for tournaments.

## Files
### tournament.py
The python code that manipulates and calls the SQL queries needed to implement the Swiss Pairing System

### tournament.sql
The SQL code that creates the Database, Tables, and Views for the Tournament database that should be ran first upon using this project

### tournament_test.py
The test suite for tournament.py taht validates all of the SQL and python code to make sure the pairing system works

## Instructions to run/test code
1. Clone or download a zip file of the repository at https://github.com/udacity/fullstack-nanodegree-vm
2. Download Vagrant - https://www.vagrantup.com/downloads.html
3. Download Virtual Box - https://www.virtualbox.org/wiki/Downloads
4. Open Terminal if on Mac, or Command Window if on Windows and go to the /vagrant directory of your cloned/downloaded repository
5. Enter the command "vagrant up"
6. Enter the command "vagrant ssh"
7. Change directories to the tournament folder - "cd /vagrant/tournament'
8. Enter the command "psql" to start the postgreSQL command editor
9. Enter the command "\i tournament.sql" which will create the database, tables, and views
10. Type "\c tournament" to connect to the database
11. Type "\q" to exit psql and go back to vagrant
12. Enter "python tournament_test.py" to run the tests and validate the code.

If everything was done right, the console should display a list of actions performed by the code and read "Success! All tests passed!"



