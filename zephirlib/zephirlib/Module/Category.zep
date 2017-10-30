/** .-------------------------------------------------------------------
 * |  Github: https://github.com/Tinywan
 * |  Blog: http://www.cnblogs.com/Tinywan
 * |-------------------------------------------------------------------
 * |  Author: Tinywan(SHaoBo Wan)
 * |  Date: 2017/7/20
 * |  Time: 16:25
 * |  Mail: Overcome.wan@Gmail.com
 * |  Created by PhpStorm.
 * '-------------------------------------------------------------------*/
namespace ZephirLib\Module;

class Category
{
    // 构造函数执行成功后会执行这个方法，否则不会执行的
    public function init(){
        echo "License::Check success <br/>";
    }

    public function check(){
        echo "category init = ";
    }
}