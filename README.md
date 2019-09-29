# Online College Certificate Generation

This is the Diploma and Engineering Final Year Project.

## Getting Started

To run this project You need MySQL Database and eclipse with tomcat server. 

### Prerequisites

You should have MySql database installed in System with Java and eclipse

### Installing

1. Before importing project You need to install and Config Tomcat in eclipse For more information [see](https://help.eclipse.org/neon/index.jsp?topic=%2Forg.eclipse.stardust.docs.wst%2Fhtml%2Fwst-integration%2Fconfiguration.html).


2. You can configure Database Password and other properties in /web-inf/spring/appServelet/Servelet-context.xml as shown bellow

```
<beans:bean id="dataSource"
        class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close">
        <beans:property name="driverClassName"
            value="com.mysql.jdbc.Driver" />
        <beans:property name="url"
            value="jdbc:mysql://127.0.0.1:3306/test" />
        <beans:property name="username" value="root" />
        <beans:property name="password" value="root" />
    </beans:bean>
```
3. After all configuration Run project in Eclipse.

## Project Brief Information
  This Project is final year Project for diploma and engineering student. This Project help student to learn the basics about Spring web-MVC and hibernate. College Student Online Certificate Generation Project can be used by the College to Manage Students Data and save human efforts of creating certificates. This Project helps to track record of certificate and maintain college rules.
  
  1. Counting and Keep Track of how many certificates has been printed.
  2. Leaving Certificate of student can only be created if he is in last year.
  3. Bonafide cannot be created of Drop out Students.
  4. LC will be Created for first time only copy of lc is created after that.
  
## Snap-Shots
![Image of Yaktocat](https://github.com/tusharchaudhari30/Student-Certificate/blob/master/snapshot-student/homepage.png)

# About
 For More information and help in Project Mail me blazeric30@gmail.com
  
  
