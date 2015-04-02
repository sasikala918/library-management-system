											Library Management System
											-------------------------
		
To execute and run this application you have to follow several steps.

	Step 1:
			Download this application from the github.
	Step 2:
			Download tomcat server from this link. "http://www.softpedia.com/dyn-postdownload.php/56b8041085a8f95c677a037c0194787b/551c1e90/2f06d/0/2"
	Step 3:
			Install the tomcat server in your system.
	Step 4:
			Download the MySQl server from this link. "https://dev.mysql.com/get/Downloads/MySQL-5.5/mysql-5.5.42-winx64.msi"
	Step 5:
			Install the MySQL server in your system.
	Step 6:
			Open the browser and type this url "localhost/phpmyadmin" and press enter.
			Yow will get one admin page.(Note : user name for phpmyadmin is "root" and password is ""(no paassword))
	Step 7:
			Select the English language from the language list.
	Step 8:
			Press the option databases on the admin page than you will get one input field type "lms" (database name) and press "create".
	Step 9:
			Open the database "lms" from the left side panel. Press "import" on the top panel in that lms database. You will get browse option than browse the file lms.sql from the LMS folder you have downloaded. All the tables in the lms database will be imported to your lms database.
	Step 10: 
			After that open the "lib" folder in the tomcat server.
			Copy jar file "mysql-connector-java-5.0.4-bin.jar" and past it in the lib folder.
	Step 11:
			Restart the server.
	Step 12:
			Copy the LMS folder and past it into ROOT folder in tomcat server.
			ROOT folder Path: Tomcat->webapps->ROOT.
	Step 13:
			Open the browser and type the url localhost:8080/LMS/web/index.jsp and press enter you will get LMS (Library Management System) home page.
			
	There are 3 types of users in this application:
		
		1. Students or Teachers
		2. Admin Users
		3. Library Managers
		
		
		1. Students or Teachers:
			These users have register in this application after registration they have to login and use services provided by the application.
		
		2. Admin User:
			Admin user need not register in this application because this application by default include 3 admin users.
			Their usenames and passwords are given below.
			Username		Password
			LA201510000		LA201510000
			LA201510001		LA201510001
			LA201510002		LA201510002
			
			With these details admin can login and use services. Admin will add library managers and give username and password to library manager.
		
		3. Library Manager:
			With the username given by admin library manager can login into the application and password for library manager is username itself.
			After login the library manager can use services in the application.
