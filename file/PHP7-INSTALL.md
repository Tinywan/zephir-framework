## PHP7 编译安装
####  配置
####  `configure`配置
```bash
./configure \
--prefix=/usr/local/php-7.1.11                      \
--with-config-file-path=/usr/local/php-7.1.11/etc   \
--with-zlib-dir                              \
--with-freetype-dir                          \
--enable-mbstring                            \
--with-libxml-dir=/usr                       \
--enable-soap                                \
--enable-calendar                            \
--with-curl                                  \
--with-mcrypt                                \
--with-zlib                                  \
--with-gd                                    \
--disable-rpath                              \
--enable-inline-optimization                 \
--with-bz2                                   \
--with-zlib                                  \
--enable-sockets                             \
--enable-sysvsem                             \
--enable-sysvshm                             \
--enable-pcntl                               \
--enable-mbregex                             \
--enable-exif                                \
--enable-bcmath                              \
--with-mhash                                 \
--enable-zip                                 \
--with-pcre-regex                            \
--with-pdo-mysql                             \
--with-mysqli                                \
--with-mysql-sock=/var/run/mysqld/mysqld.sock \
--with-jpeg-dir=/usr                         \
--with-png-dir=/usr                          \
--enable-gd-native-ttf                       \
--with-openssl                               \
--with-fpm-user=www-data                     \
--with-fpm-group=www-data                    \
--enable-ftp                                 \
--with-imap                                  \
--with-imap-ssl                              \
--with-kerberos                              \
--with-gettext                               \
--with-xmlrpc                                \
--with-xsl                                   \
--enable-opcache                             \
--enable-fpm
```

