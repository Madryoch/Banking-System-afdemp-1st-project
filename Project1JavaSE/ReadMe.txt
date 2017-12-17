The project lives in the zip file ATM.rar.

Installation Guide:
1) Unzip the file ATM.rar in a folder of your choice
2) Log on as root or any other account with GRANT PRIVILEGE and ACCOUNT CREATION rights on MySQL Shell on 3306 port
3) CREATE A DATABASE named afdemp_java_1 
4) Press Windows Key then type cmd and execute the program with administrator privileges(Right click -> Run As Administrator)
5) Navigate to the MySQL Installation Folder and under /bin subfolder
6) Type the following command: 
		
			mysql -u root -p afdemp_java_1<MyDB1.sql

7) You will be prompted for your root account password (or replace root in above command with a DB username with GRANT, 
   CREATE DATABASE and CREATE USER privileges)
8) Once the procedure is finished without any trouble execute proj1.bat by double clicking on it (it is located in Project1JavaSE Folder)
   in order to see the program in action. If all is done well it should work without any hiccups and once its execution ends, a file 
   should be created with all the transactions of the day. Same thing happens if you choose save option.