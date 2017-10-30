# zephir-framework
+   使用Zephir给PHP写扩展

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
│   └── Module                  -- 扩展模块目录
│       ├── Category.zep
│       └── Edit.zep            -- 具体模块类
├── config.json
└── ext                         -- 编译生成的.so文件

```  

####  依赖 <a name="编译环境" />
+   [zephir](https://github.com/phalcon/zephir)
+   [php-zephir-parser](https://github.com/phalcon/php-zephir-parser)
####  文档
+   [如何使用zephir编译一个扩展记录](http://www.cnblogs.com/tinywan/p/7753456.html) 
