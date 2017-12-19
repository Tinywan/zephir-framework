<?php

/** .-----------------------------------------------------------------------------------------------------------------
 * |  Github: https://github.com/Tinywan
 * |  Blog: http://www.cnblogs.com/Tinywan
 * |-------------------------------------------------------------------------------------------------------------------
 * |  Author: Tinywan(ShaoBo Wan)
 * |  DateTime: 2017/12/19 14:24
 * |  Mail: Overcome.wan@Gmail.com
 * |  Function: 创建一个auth_key
 * '------------------------------------------------------------------------------------------------------------------*/

/**
 * 生成 auth_license
 * 格式：auth_license=1507083010+604800-0-0-3d9fc802d0ef0de9c10a68a481847aea
 * @param $service_uuid 服务器的唯一 uuid
 * @param $expire_time  过期时间 min
 * @param string $private_key 扩展库的秘钥
 * @param int $rand 随机数
 * @param int $uid 用户信息
 * @return string               auth_key
 */
function license_create($service_uuid, $expire_time, $private_key = 'zephir-framework', $rand = 0, $uid = 0)
{
    $timestatmp = strtotime(date('Y-m-d H:i:s', strtotime($expire_time . " minute ")));
    $hash_value = md5($service_uuid . "-" . $timestatmp . "-" . $rand . "-" . $uid . "-" . $private_key);
    $auth_key = $timestatmp . '-' . $rand . '-' . $uid . '-' . $hash_value;
    return $auth_key;
}

$service_uuid = "45f05943-fe4d-4a45-8912-1d302cd930dc";
$expire_time = 720000;
$auth_license = license_create($service_uuid, $expire_time);
echo $auth_license;