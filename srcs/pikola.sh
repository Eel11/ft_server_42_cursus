# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    init.sh                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eelaazmi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/07 05:11:22 by eelaazmi          #+#    #+#              #
#    Updated: 2020/02/07 05:11:26 by eelaazmi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

service nginx restart
service php7.3-fpm start
service mysql start

