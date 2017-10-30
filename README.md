# zephir-framework
使用Zephir给PHP写扩展

####   项目结构 <a name="目录结构" />

```javascript
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
+   [zephir](https://github.com/phalcon/zephir)
+   [php-zephir-parser](https://github.com/phalcon/php-zephir-parser)
####  编译 <a name="如何编译" />
+   1、下载:

    ```bash
    git clone https://github.com/Tinywan/zephir-framework.git
    ```
+   2、编译:

    ```bash
    zephir build
    Compiling...
    Installing...
    Extension installed!
    Add extension=zephirlib.so to your php.ini
    Don't forget to restart your web server
    ```
+   3、添加扩展到`php.ini`:

    ```bash
    extension=zephirlib.so
    ```  
+   4、重启`php-fpm`服务,查看扩展是否安装成功
    +   `sudo service php-fpm restart` 
    +  ![Markdown](https://github.com/Tinywan/zephir-framework/blob/master/file/zephir_config_file.png)  
####  文档
+   [如何使用zephir编译一个扩展记录](http://www.cnblogs.com/tinywan/p/7753456.html) 
+   [关于PHP7如何安装调试工具Xdebug扩展以及Zephir的问题](http://www.cnblogs.com/tinywan/p/7447958.html) 
