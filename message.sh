#!/bin/bash
#Install Apache HTTP Web Server
sudo yum install -y httpd
#Enable & Start Apache web server
sudo systemctl enable httpd
sudo systemctl start httpd
#navigate to the html folder that apache creates on install
cd /var/www/html
#Change permissions
sudo chown -R $USER:$USER /var/www/html/
echo "<html> <body> <h1> Hello World! Level Up Gold Team! </h1> </body> </html>" >> /var/www/html/index.html

