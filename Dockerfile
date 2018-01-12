FROM php:7.1-fpm
RUN pecl install swoole && docker-php-ext-enable swoole
RUN pecl install seaslog && docker-php-ext-enable seaslog
RUN pecl install redis && docker-php-ext-enable redis
RUN docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql
RUN docker-php-ext-install mysqli && docker-php-ext-enable php_mysqli
#RUN pecl install xhprof && docker-php-ext-enable xhprof
#RUN pecl install pthreads && docker-php-ext-enable pthreads
#RUN pecl install php_mysql && docker-php-ext-enable php_mysql
#RUN pecl install tideways && docker-php-ext-enable tideways
#RUN pecl install mongodb && docker-php-ext-enable mongodb
