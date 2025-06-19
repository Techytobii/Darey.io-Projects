# MarketPeak Ecommerce Project

The following is implemented in this project 

## 1.1 INITIALIZE GIT REPOSITORY

this is done using the following commands; mkdir MarketPeak_Ecommerce
cd MaeketPeak_Ecommerce
git init
And it is visually represented below
![initialiaze_git_repository](new_marketPeak\initialize_git_repository.png)

## 1.2 OBTAIN AND PREPARE THE E-COMMERCE WEBSITE TEMPLATE

the website template was downloaded from tooplate.com and saved in the downloads folder 

![ecommerce_template](new_marketPeak\ecommerce_template.png)

## 1.3 STAGE AND COMMIT THE TEMPLATE TO GIT 

this was executed using the following git commands 


git add .

git config --global user.name "myusername"

git config --global user.email "myemail@example.com"

git commit -m "Initial commit with basic e-commerce site structure"

![commit-ecommerce-template](new_marketPeak\commit-ecommerce-template.png)

## 1.4 PUSH THE CODE TO YOUR GITHUB REPOSITORY

"MarketPeak_Ecommerce" repository was created in my github account without initalizing it with a README, .gitignore,or license

![push-code-to-github1](new_marketPeak\push-code-to-github1.png)

the following command was used to push code to my git repository and represented in the snapshot below

git remote add origin https://github.com/my-git-username/MarketPeak_Ecommerce.git

![adding_remote_to_terminal](adding_remote_to_terminal.png)

Then the following command was used to push my code to my local repository content to Github

git push -u origin main
![git_push_origin](git_push_origin.png)

## 2 AWS DEPLOYMENT 

This was done by setting up an Amazon EC2 instance; as illustrated below 

## 2.1 SET UP AN AWS EC2 INSTANCE

![ec2_instance](ec2_instance.png)


## 2.2 CLONE THE REPOSITORY ON THE LINUX SERVER

![SSH-KEYGEN](ssh-keygen.png)

The ssh method was used to clone the git repository to the linux server 

git clone git@github.com:myusername/MarketPeak_Ecommerce
![clone-git-to-linuxserver](new_marketPeak\clone-git-to-linuxserver.png)

## 2.3 INSTALL A WEB SERVER ON EC2

The following command was used to install Apache(httpd) web server on the EC2 instance

sudo yum update -y

sudo yum install httpd -y

sudo systemctl start httpd

sudo systemctl enable httpd

![installed-httpd](new_marketPeak\installed-httpd.png)

## CONFIGURE HTTPD FOR WEBSITE 

the following commands was used to configure httpd for the website 

sudo rm -rf /var/www/html/*
sudo cp -r ~/MarketPeak_Ecommerce/* /var/www/html/

sudo systemctl reload httpd

![configure-httpd-for-website](new_marketPeak\configure-httpd-for-website.png)

![start$enablehttpd](new_marketPeak\start&enablehttpd.png)

## 2.5 ACCESS WEBSITE FROM BROWSER

this was where i face a minor challenge trying to access the website from the web browser as it took too long for it to load 

![publicip-took-too-long](new_marketPeak\publicip-took-too-long.png)

## 3 CONTINUOUS INTEGRATION AND DEVELOPMENT WORKFLOW

Step 1: creation of a development branch

the following command was used to create the development branch

git branch development
git checkout development


![created-development-branch](new_marketPeak\created-development-branch.png)

Step 2 to 5 was executed using the following commands and is illustrated in the snapshots below.

git add .

git commit -m "Add new features or fix bugs"

git checkout main
git merge development

git push origin main

git pull origin main

sudo systemctl reload httpd

![pullrequest-merge](new_marketPeak\pullrequest-merge.png)

![final-work](new_marketPeak\final-work.png)

