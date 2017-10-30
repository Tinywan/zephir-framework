/** .-------------------------------------------------------------------
 * |  Github: https://github.com/Tinywan
 * |  Blog: http://www.cnblogs.com/Tinywan
 * |-------------------------------------------------------------------
 * |  Author: Tinywan(SHaoBo Wan)
 * |  Date: 2017/7/20
 * |  Time: 16:25
 * |  Mail: Overcome.wan@Gmail.com
 * |  功能： 视频编辑扩展模块
 * '-------------------------------------------------------------------*/
namespace ZephirLib\Module;
use ZephirLib\Base\AbstractModule;
use License\License;

class VideoEdit extends AbstractModule
{
    // [1] 必须的，继承父类构造方法
    final public function __construct(string service_uuid, string auth_license)
    {
        parent::__construct(service_uuid,auth_license);
    }

    // 获取权限状态
    public function getAuthStatus(){
        return $this->auth_status;
    }

    //--------------公共方法编写、方法必须是非静态方法 --------------------------------------------------------------------

    // json 格式化
    public static function jsonFormat(arr)
    {
        return json_encode(arr);
    }

    // 测试类
    public function init()
    {
        var res = [];
        if this->auth_status != 1 {
            let res = ["code":this->auth_status,"msg":"no permission to access"];
            return self::jsonFormat(res);
        }
        echo "VideoEdit init()";
    }


}