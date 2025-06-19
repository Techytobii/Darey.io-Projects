> CAPSTONE PROJECT-WORDPRESS SITE ON AWS

>> VPC SETUP
I kickstarted my project by creating respective vps as directed in the project instructions, and they are represented in the snapshots below.

1. *![vpc-setup](./wordpressvpc-created.png)

2. *![routetable](publicroutetable.png)

3. *![routetable](privatertbedited.png)

>> PUBLIC AND PRIVATE SUBNET WITH NAT GATEWAY

The following snapshots shows how i created the private and public subnets for the project.

1. *![subnets](subnets-created.png)

2. *![natgw](Natgwcreated.png)

>> AWS MSQL RDS SETUP

I created a RDS database and setup the security group configuration and also the wordpress-rds connection, it is represented in the following snapshots below.

1. *![rds](mysql-rds.png)

2. *![rdsetup](rdscreated.png)

>> EFS SETUP FOR WORDPRESS  FILES

Created an efs file system and successfully mounted it to the wordpress instance and it is represented in the snapshots below.

1. *![efs](efs.png)

2. *![efsmounted](mount-efsfile.png)

>> WORDPRESS CONFIGURATION

The following snapshots shows ythe steps taken to successfully configure and create a Wordpress site on the terminal

1. first ssh into BastionHost
*![bastionssh](bastion-ssh.png)

2. then ssh into wordpress private server 
*![sshinprivate](ssh-into-private-subnet.png)

3. install apache 
*![apache](apache-installed.png)

4. install php 7.4
*![php7.4](install-php7.4.png)

5. install mysql5.7
*![mysql](mysql.png)

6. sudo yum install mysql-community-server -y
*![communityssql](communtiyserversql.png)

7. set permissions 
*![settingpermissions](settin-permissions.png)

8. Download Wordpress files 
*![wprdpressfiles](download-wordpress.png)

9. create the wp-config.php file
*![configfile](editconfigfile.png)

*![editconfigfile](editwp-config-php.png)

10. Restart the webserver 
*![webserver](restartservice.png)

>> BELOW ARE THE CHALLENGES ENCOUNTERED WHILE WORKING ON THIS PROJECT.

I was unable to create an application load balancer and auto scaling group.