<?php
/** .-----------------------------------------------------------------------------------------------------------------
 * |  Github: https://github.com/Tinywan
 * |  Blog: http://www.cnblogs.com/Tinywan
 * |-------------------------------------------------------------------------------------------------------------------
 * |  Author: Tinywan(ShaoBo Wan)
 * |  DateTime: 2017/12/19 14:24
 * |  Mail: Overcome.wan@Gmail.com
 * |  Function: .so 文件授权验证
 * '------------------------------------------------------------------------------------------------------------------*/

/**
 *
 * @param $service_uuid 服务器的唯一机器码uuid
 * @param $auth_license 授权码auth_key
 * @param int $rand     随机数，默认：0
 * @param int $uid      用户信息，默认：0
 * @return bool
 */
function license_check($service_uuid, $auth_license, $rand = 0, $uid = 0)
{
    $private_key = 'zephir-framework';
    $expire_time = substr($auth_license, 0, 10);
    $current_time = time();
    if ($expire_time < $current_time) return false;
    $sequest_hash_value = substr($auth_license, -32);
    $res_hash_value = md5($service_uuid . '-' . $expire_time . '-' . $rand . '-' . $uid . '-' . $private_key);
    if ($sequest_hash_value != $res_hash_value) return false;
    return true;
}

$service_uuid = "13c7c8e1-3ac2-41a6-95dc-ff954b431bbf";
$auth_license = "1501402071-0-0-eabfb0fb52c429d4fa037585f7afd512";
$res = license_check($service_uuid, $auth_license);
var_dump($res);