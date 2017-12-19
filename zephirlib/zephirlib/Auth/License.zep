/** .-------------------------------------------------------------------
 * |  Github: https://github.com/Tinywan
 * |  Blog: http://www.cnblogs.com/Tinywan
 * |-------------------------------------------------------------------
 * |  Author: Tinywan(SHaoBo Wan)
 * |  Date: 2017/7/20
 * |  Time: 16:25
 * |  Mail: Overcome.wan@Gmail.com
 * '-------------------------------------------------------------------*/
namespace ZephirLib\Auth;

class License
{
    // construct function
    public function __construct()
    {
        echo "License __construct";
    }

    // init
    public static function init()
    {
        return "Hello AmaiLib License! init";
    }

    // check auth_licence 检测 [1] -1:expired , 0:auth_license is error , 1:success
    public static function check(string service_uuid, string auth_license, int uid = 0, int rand = 0)
    {
        var private_key = "amailive";
        var expire_time = substr(auth_license, 0, 10);
        var current_time = time();
        var sequest_hash_value = substr(auth_license, -32);
        var res_hash_value = md5(service_uuid . "-" . expire_time . "-" . rand . "-" . uid . "-" . private_key);

        if expire_time < current_time {
            return -1;
        }

        if sequest_hash_value != res_hash_value {
            return 0;
        }
        return 1;
    }

    // 只有被实例化才会被调用的
    public function instance(){
        return "License instance function";
    }
}