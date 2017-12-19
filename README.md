# zephir-framework
使用Zephir给PHP写扩展

####   项目结构 <a name="目录结构" />

```bash
.
├── zephirlib                   -- 扩展库目录
│   ├── Auth
│   │   └── License.zep         -- 权限认证
│   ├── Base
│   │   ├── AbstractModule.zep  -- 模块抽象类
│   │   ├── Base.zep
│   │   └── Service.zep
│   ├── Db
│   │   └── Mysql.zep
│   └── Module                  -- 业务模块目录
│       ├── Category.zep
│       └── Edit.zep            
├── config.json                 -- 编译扩展配置文件
└── ext                         -- 编译生成的.so文件
```

####  依赖 <a name="编译环境" />
+   [安装PHP7](http://www.cnblogs.com/tinywan/p/6607395.html)
+   [安装zephir](https://github.com/phalcon/zephir)

    ```bash
    sudo apt-get install php7.1-dev gcc make re2c autoconf
    git clone https://github.com/phalcon/zephir.git
    cd zephir
    sudo ./install -c
    ```
+   [安装php-zephir-parser](https://github.com/phalcon/php-zephir-parser)

    ```bash
    git clone git://github.com/phalcon/php-zephir-parser.git
    cd php-zephir-parser
    // 最好指定配置文件位置，当然也可以直接做一个软连接
    sudo ./install --phpize /usr/local/php-7.1.9/bin/phpize --php-config /usr/local/php-7.1.9/bin/php-config
    ```
+   修改PHP.ini配置文件

    ```bash
    $ sudo find / -name zephir_parser.so
    /usr/local/php-7.1.9/lib/php/extensions/no-debug-non-zts-20160303/zephir_parser.so

    vim /usr/local/php-7.1.9/etc/php.ini 
    //添加以下内容
    [Zephir Parser]
    extension=zephir_parser.so

    //重启服务器
    sudo service php-fpm restart
    ```
+   配置检查  

  ![配置检查](https://github.com/Tinywan/zephir-framework/blob/master/file/Zephir-Parser.png)

####  安装框架 <a name="如何编译" />
+   1、下载:

    ```bash
    git clone https://github.com/Tinywan/zephir-framework.git
    ```
+   2、编译:

    ```bash
    cd zephir-framework/zephirlib
    zephir build
    Compiling...
    Installing...
    Extension installed!
    Add extension=zephirlib.so to your php.ini
    Don't forget to restart your web server
    ```
+   3、添加扩展到`php.ini`:

    ```bash
    extension=/usr/lib/php/20160303/zephirlib.so
    ```
+   4、重启`php-fpm`服务,查看扩展是否安装成功
    +   `sudo systemctl restart php-fpm.service` 
    +   ![Markdown](https://github.com/Tinywan/zephir-framework/blob/master/file/zephir_config_file1.png) 
+   5、错误解决
    +   编译错误

        ```bash
        root@iZ235mi4a64Z:~/zephir-framework/zephirlib# zephir build
        ────────────────────────────────────────────────────────────
          The Zephir Parser extension is not loaded.
          Note: Zephir no longer distributed with internal parser.
          
          To install latest stable Zephir Parser please refer to:
          https://github.com/phalcon/php-zephir-parser
        ────────────────────────────────────────────────────────────
        ```
    +   如何解决，查看命令行`（cli）`的配置文件，添加Zephir扩展

        ```bash
        $ php --ini
        Configuration File (php.ini) Path: /etc/php/7.1/cli
        Loaded Configuration File:         /etc/php/7.1/cli/php.ini
        Scan for additional .ini files in: /etc/php/7.1/cli/conf.d
        ...

        vim /etc/php/7.1/cli/php.ini  
        //添加以下内容
        [Zephir Parser]
        extension=/usr/local/php-7.1.9/lib/php/extensions/no-debug-non-zts-20160303/zephir_parser.so

        $ php -m | grep Zephir
        Zephir Parser
        ```
####  文档
+   [如何使用zephir编译一个扩展记录](http://www.cnblogs.com/tinywan/p/7753456.html) 
+   [关于PHP7如何安装调试工具Xdebug扩展以及Zephir的问题](http://www.cnblogs.com/tinywan/p/7447958.html) 
