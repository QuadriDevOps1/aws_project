# Prerequisites
#
- GIT Download - https://git-scm.com/downloads
- Visual studio code download - https://code.visualstudio.com/download
- Choco install using powershell admin - https://chocolatey.org/install#individual
- AWS Cli install - choco install awscli
- JDK 1.8 or later - choco install jdk8
- Maven 3 or later - choco install maven
- MySQL 5.6 or later 

# Technologies 
- Spring MVC
- Spring Security
- Spring Data JPA
- Maven
- JSP
- MySQL
# Database
Here,we used Mysql DB 
MSQL DB Installation Steps for Linux ubuntu 14.04:
- $ sudo apt-get update
- $ sudo apt-get install mysql-server

Then look for the file :
- /src/main/resources/accountsdb
- accountsdb.sql file is a mysql dump file.we have to import this dump to mysql db server
- > mysql -u <user_name> -p accounts < accountsdb.sql


