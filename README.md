Setup dev environment on mac

1. Download and install java 8.0
2. Download and install Springsource Tool Suite (STS) latest version
3. Download and install msql community server 5.5.x dmg file
4. Optionally install MySQLWorkbench to use the GUI to view the database
5. Download and unzip/install Tomcat 6.0
6. Download and install maven as per instructions on download page
7. Checkout code from github (fork https://github.com/serenapotts/lifeforachild). Commit and use pull requests to merge to the main codebase.
8. Open STS
9. File --> Import
10. Select General --> Existing projects from workspace and select the checkout directory
11. Right click on lifeforachild in project window, maven —> update project
12. Make sure Project --> Build All, successfully runs (Java 8 has some )
13. In Server window, Right Click, New —> Apache —> select Tomcat 6.0 and point to tomcat install directory
14. start mysql: 
either start in System Preferences --> MySQL OR 
cd /usr/local/mysql/bin
sudo ./mysqld_safe
15. run setupDB.bat script to initialise DB:
cd lifeforachild/src/main/resources/sql
./setupDB.bat
16. create the file settings.txt with a random 16 character string to use as the encryption key in /<user.home>/lifeforachild/settings.txt
17. Start the tomcat server
18. Go to localhost:8080/lifeforachild in browser

To run tests install firefox selenium hq plugin
Run test suite in /src/main/webapp/selenium an ensure all pass before committing


