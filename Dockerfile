# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eelaazmi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/07 05:09:44 by eelaazmi          #+#    #+#              #
#    Updated: 2020/02/07 05:09:49 by eelaazmi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update 
RUN apt-get install -y nginx vim mariadb-server mariadb-client wget dpkg gnupg lsb-release 
RUN apt-get install -y php php-fpm php-gd php-mysql php-cli php-curl php-json 


#Config phpmyadmin
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN mv phpMyAdmin-4.9.0.1-all-languages /var/www/html/phpMyAdmin
RUN rm phpMyAdmin-4.9.0.1-all-languages.tar.gz

#Config wordpress
RUN wget https://fr.wordpress.org/latest-fr_FR.tar.gz
RUN tar -zxvf latest-fr_FR.tar.gz
RUN mv wordpress /var/www/html/wordpress
RUN chown -R www-data:www-data /var/www/html/wordpress/
RUN chmod -R 755 /var/www/html/wordpress/
RUN rm latest-fr_FR.tar.gz
RUN rm var/www/html/index.nginx-debian.html && rm /var/www/html/wordpress/wp-config-sample.php
ADD ./srcs/wordpress ./etc/nginx/sites-available/wordpress
ADD ./srcs/wp-config.php ./var/www/html/wordpress/wp-config.php

#add all necessairy file 
ADD ./srcs/wordpress.sql /
ADD ./srcs/php.ini ./etc/php/7.3/fpm/php.ini
ADD ./srcs/default ./etc/nginx/sites-available/default

ADD ./srcs/create_database create_database

ADD ./srcs/localhost.crt /etc/ssl/certs/localhost.crt
ADD ./srcs/localhost.key /etc/ssl/private/localhost.key

#add all script 
ADD ./srcs/init.sh init.sh
ADD ./srcs/init_db.sh init_db.sh
ADD ./srcs/script.sh script.sh

#config ssl certification 
RUN openssl req -newkey rsa:2048 -nodes -keyout /etc/ssl/private/localhost.key -x509 -days 365 -out /etc/ssl/certs/localhost.crt -subj "/C=GB/ST=London/L=Fulham/O=Local/OU=Development/CN=local.dev/emailAddress=email@local.dev"

#run the script 
RUN sh Markov.sh
CMD ["bash", "./script.sh"]
