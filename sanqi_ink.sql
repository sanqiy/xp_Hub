-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2023-09-01 20:31:42
-- 服务器版本： 5.7.43-log
-- PHP 版本： 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `sanqi_ink`
--

-- --------------------------------------------------------

--
-- 表的结构 `mb_config`
--

CREATE TABLE `mb_config` (
  `config_id` int(5) NOT NULL COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数配置表';

--
-- 转存表中的数据 `mb_config`
--

INSERT INTO `mb_config` (`config_id`, `config_name`, `config_key`, `config_value`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
(1, '网站名称', 'webname', '我的域名', '', NULL, '', NULL, NULL),
(100, '管理员账号', 'admin_name', 'admin123', '', NULL, '', NULL, NULL),
(101, '管理员密码', 'password', 'admin123', '', NULL, '', NULL, NULL),
(102, '信息1', 'info_1', '<h2>订单信息</h2>\n    <p>订单号：202308319527</p>\n    <p>日 期：2023年8月31日</p>\n    <p>客 户：San Qi</p>\n', '', NULL, '', NULL, NULL),
(103, '信息2', 'info_2', '<h2>商店信息</h2>\n    <p>域名列表</p>\n    <p>地 址：Sanqi.ink</p>\n    <p>邮 箱：tender5420@foxmail.com</p>', '', NULL, '', NULL, NULL),
(104, '信息3', 'info_3', '<h2>购物提示</h2>\n    <p>1. 请保留好您的小票，作为商品保修和退换货的凭证。</p>\n    <p>2. 如需退换货，请在购买后的7天内前往本店办理，超时恕不受理。</p>\n    <p>3. 商品出售后，请妥善保管好发票和商品，避免损坏影响售后服务。</p>\n    <p>4. 如有任何问题，请及时联系我们的客服，我们将竭诚为您服务。</p>', '', NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `mb_domains`
--

CREATE TABLE `mb_domains` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `domain_name` varchar(255) NOT NULL COMMENT '域名',
  `price` decimal(10,2) NOT NULL COMMENT '价格',
  `platform` varchar(255) DEFAULT NULL COMMENT '域名所属平台',
  `description` text COMMENT '域名介绍',
  `platform_url` varchar(255) DEFAULT NULL COMMENT '售卖平台URL',
  `status` enum('available','sold','reserved') NOT NULL,
  `comment` varchar(255) DEFAULT NULL COMMENT '备注',
  `order_number` int(11) DEFAULT NULL COMMENT '排序号',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='域名列表';

--
-- 转存表中的数据 `mb_domains`
--

INSERT INTO `mb_domains` (`id`, `domain_name`, `price`, `platform`, `description`, `platform_url`, `status`, `comment`, `order_number`, `created_at`) VALUES
(56, 'xaacn.com', '0.00', '阿里云', '许安安，夏安安', 'http://xaacn.com', 'reserved', NULL, 0, '2023-08-31 14:37:18'),
(57, '121381.xyz', '0.00', '阿里云', '爱情公寓---12138', 'http://121381.xyz', 'reserved', NULL, 0, '2023-08-31 14:37:47'),
(58, 'sanqi.ink', '1.00', '阿里云', '三七，神奇', 'http://sanqi.ink', 'reserved', NULL, 0, '2023-08-31 14:38:08'),
(59, 'kkik.net', '0.00', '谷歌域名', '双字母', 'http://kkik.net', 'reserved', NULL, 0, '2023-08-31 14:38:37'),
(60, 'daiim.cn', '0.00', '腾讯云', '', 'http://daiim.cn', 'reserved', NULL, 0, '2023-08-31 14:38:52'),
(61, 'wcwc.top', '10.00', '西部数据', '卧槽', 'http://wcwc.top', 'available', NULL, 0, '2023-08-31 14:39:05');

--
-- 转储表的索引
--

--
-- 表的索引 `mb_config`
--
ALTER TABLE `mb_config`
  ADD PRIMARY KEY (`config_id`);

--
-- 表的索引 `mb_domains`
--
ALTER TABLE `mb_domains`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `mb_config`
--
ALTER TABLE `mb_config`
  MODIFY `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键', AUTO_INCREMENT=105;

--
-- 使用表AUTO_INCREMENT `mb_domains`
--
ALTER TABLE `mb_domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
