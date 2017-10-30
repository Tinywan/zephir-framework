/** .-------------------------------------------------------------------
 * |  Github: https://github.com/Tinywan
 * |  Blog: http://www.cnblogs.com/Tinywan
 * |-------------------------------------------------------------------
 * |  Author: Tinywan(SHaoBo Wan)
 * |  Date: 2017/7/20
 * |  Time: 16:25
 * |  Mail: Overcome.wan@Gmail.com
 * |  功能： 定义一个Module抽象类
 * '-------------------------------------------------------------------*/
namespace ZephirLib\Base;
use ZephirLib\Auth\License;

abstract class AbstractModule
{
    protected service_uuid;
    protected auth_license;
    // 1 true , 0 false
    public auth_status = 0;

    /**
     * [1] 只有类被实例化的时候才会被调用，如果是静态方法则不会被调用哦
     * [2] 直接在每个公共封装方法的构造函数中调用既可以
     */
    public function __construct(string service_uuid, string auth_license)
    {
        let this->service_uuid = service_uuid;
        let this->auth_license = auth_license;
        var checkRes = License::check(this->service_uuid,this->auth_license);
        if checkRes == -1 {
            let this->auth_status = -1;
        }

        if checkRes == 0 {
            let this->auth_status = 0;
        }

        if checkRes == 1 {
            let this->auth_status = 1;
        }
    }

    // 获取权限状态
    abstract public function getAuthStatus();
}