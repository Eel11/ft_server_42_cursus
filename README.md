# ft_server_42_cursus

Docker , nginx , phpmyadmin , mysql , wordpress
------------------------------------------------

Final grade :  100/100
----------------------

# Description:
-----------
ft_server is a project that asks you to run a server on Debian Buster through Docker with a Wordpress, Phpmyadmin and Mysql runnning.

# Usage:
------

#Build image : 
docker build -t ft_server .

#Run image :
docker run -it -p 80:80 -p 443:443 ft_server

# SSL auto-certificate is created
# MySQL is automatically created
# phpmyadmin is automatically created
# Wordpress is automatically setup
