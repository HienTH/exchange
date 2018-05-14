-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th5 14, 2018 lúc 08:05 AM
-- Phiên bản máy phục vụ: 5.7.22-0ubuntu0.16.04.1
-- Phiên bản PHP: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `exchange`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add permission', 3, 'add_permission'),
(8, 'Can change permission', 3, 'change_permission'),
(9, 'Can delete permission', 3, 'delete_permission'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add coin', 7, 'add_coin'),
(20, 'Can change coin', 7, 'change_coin'),
(21, 'Can delete coin', 7, 'delete_coin'),
(22, 'Can add chenh lech', 8, 'add_chenhlech'),
(23, 'Can change chenh lech', 8, 'change_chenhlech'),
(24, 'Can delete chenh lech', 8, 'delete_chenhlech'),
(25, 'Can add match exchange', 9, 'add_matchexchange'),
(26, 'Can change match exchange', 9, 'change_matchexchange'),
(27, 'Can delete match exchange', 9, 'delete_matchexchange'),
(28, 'Can add exchange', 10, 'add_exchange'),
(29, 'Can change exchange', 10, 'change_exchange'),
(30, 'Can delete exchange', 10, 'delete_exchange'),
(31, 'Can add user', 11, 'add_user'),
(32, 'Can change user', 11, 'change_user'),
(33, 'Can delete user', 11, 'delete_user'),
(34, 'Can add type coin', 12, 'add_typecoin'),
(35, 'Can change type coin', 12, 'change_typecoin'),
(36, 'Can delete type coin', 12, 'delete_typecoin'),
(37, 'Can add user coin', 13, 'add_usercoin'),
(38, 'Can change user coin', 13, 'change_usercoin'),
(39, 'Can delete user coin', 13, 'delete_usercoin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'group'),
(3, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'general', 'chenhlech'),
(7, 'general', 'coin'),
(10, 'general', 'exchange'),
(9, 'general', 'matchexchange'),
(12, 'general', 'typecoin'),
(11, 'general', 'user'),
(13, 'general', 'usercoin'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-05-13 16:05:03.051234'),
(2, 'auth', '0001_initial', '2018-05-13 16:05:03.464345'),
(3, 'admin', '0001_initial', '2018-05-13 16:05:03.573592'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-05-13 16:05:03.618651'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-05-13 16:05:03.699535'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-05-13 16:05:03.740562'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-05-13 16:05:03.786394'),
(8, 'auth', '0004_alter_user_username_opts', '2018-05-13 16:05:03.807892'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-05-13 16:05:03.848786'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-05-13 16:05:03.852416'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-05-13 16:05:03.865954'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-05-13 16:05:03.955070'),
(13, 'general', '0001_initial', '2018-05-13 16:05:04.631719'),
(14, 'sessions', '0001_initial', '2018-05-13 16:05:04.667802'),
(15, 'general', '0002_exchange_status', '2018-05-13 16:23:24.636133');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `general_chenhlech`
--

CREATE TABLE `general_chenhlech` (
  `id` int(11) NOT NULL,
  `value` double NOT NULL,
  `fromtypecoin_id` int(11) NOT NULL,
  `totypecoin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `general_chenhlech`
--

INSERT INTO `general_chenhlech` (`id`, `value`, `fromtypecoin_id`, `totypecoin_id`) VALUES
(1, 12, 2, 3),
(3, 1, 2, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `general_coin`
--

CREATE TABLE `general_coin` (
  `id` int(11) NOT NULL,
  `price` double NOT NULL,
  `time` datetime(6) NOT NULL,
  `typecoin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `general_coin`
--

INSERT INTO `general_coin` (`id`, `price`, `time`, `typecoin_id`) VALUES
(1, 192409602.9, '2018-05-13 07:50:18.000000', 1),
(2, 16710552.16, '2018-05-13 07:50:18.000000', 2),
(3, 4608450.69, '2018-05-13 07:50:18.000000', 3),
(4, 22174.51, '2018-05-13 07:50:18.000000', 4),
(5, 192135156.78, '2018-05-13 08:52:41.000000', 1),
(6, 16734421.54, '2018-05-13 08:52:41.000000', 2),
(7, 4592286.36, '2018-05-13 08:52:41.000000', 3),
(8, 22145.65, '2018-05-13 08:52:41.000000', 4),
(9, 192157997.38, '2018-05-13 09:52:53.000000', 1),
(10, 16732432.42, '2018-05-13 09:52:53.000000', 2),
(11, 4592286.36, '2018-05-13 09:52:53.000000', 3),
(12, 22142.31, '2018-05-13 09:52:53.000000', 4),
(13, 191998227.11, '2018-05-14 07:54:40.000000', 1),
(14, 16746356.22, '2018-05-14 07:54:40.000000', 2),
(15, 4592286.36, '2018-05-14 07:54:40.000000', 3),
(16, 22144.13, '2018-05-14 07:54:40.000000', 4),
(17, 191975424.47, '2018-05-14 07:55:26.000000', 1),
(18, 16748345.34, '2018-05-14 07:55:26.000000', 2),
(19, 4593902.8, '2018-05-14 07:55:26.000000', 3),
(20, 22137.76, '2018-05-14 07:55:26.000000', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `general_exchange`
--

CREATE TABLE `general_exchange` (
  `id` int(11) NOT NULL,
  `fromcoin` int(11) NOT NULL,
  `tocoin` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `fromtypecoin_id` int(11) NOT NULL,
  `totypecoin_id` int(11) NOT NULL,
  `userid_id` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `general_exchange`
--

INSERT INTO `general_exchange` (`id`, `fromcoin`, `tocoin`, `time`, `fromtypecoin_id`, `totypecoin_id`, `userid_id`, `status`) VALUES
(1, 1, 1, '2018-05-13 16:17:39.000000', 1, 2, '6314826F0A', 0),
(2, 11, 10, '2018-05-13 16:18:51.000000', 4, 3, '6314826F0A', 0),
(3, 11, 100, '2018-05-13 16:18:59.000000', 1, 3, '6314826F0A', 0),
(4, 10, 100, '2018-05-13 16:19:08.000000', 2, 3, '6314826F0A', 0),
(5, 10, 100, '2018-05-13 16:19:56.000000', 3, 2, '5248CB4C2B', 0),
(6, 15, 16, '2018-05-13 16:20:05.000000', 3, 1, '5248CB4C2B', 0),
(7, 55, 16, '2018-05-13 16:20:10.000000', 3, 4, '5248CB4C2B', 0),
(8, 55, 16, '2018-05-13 16:24:14.000000', 1, 4, '5248CB4C2B', 0),
(10, 5, 16, '2018-05-13 18:44:16.000000', 2, 4, '5248CB4C2B', 0),
(11, 5, 16, '2018-05-13 18:48:41.000000', 2, 4, '5248CB4C2B', 0),
(12, 50, 16, '2018-05-13 18:48:50.000000', 2, 4, '5248CB4C2B', 0),
(13, 50, 6, '2018-05-13 18:49:26.000000', 2, 4, '5248CB4C2B', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `general_matchexchange`
--

CREATE TABLE `general_matchexchange` (
  `id` int(11) NOT NULL,
  `time` datetime(6) NOT NULL,
  `fromexchange_id` int(11) NOT NULL,
  `toexchange_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `general_typecoin`
--

CREATE TABLE `general_typecoin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `general_typecoin`
--

INSERT INTO `general_typecoin` (`id`, `name`) VALUES
(1, 'BTC'),
(2, 'ETH'),
(4, 'USDT'),
(3, 'XMR');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `general_user`
--

CREATE TABLE `general_user` (
  `id` varchar(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `general_user`
--

INSERT INTO `general_user` (`id`, `username`, `password`, `name`, `level`) VALUES
('5248CB4C2B', 'tuan', 'sha256$vACUFePs$448c1ed79b78a146104cef2688c89366a3d98010cf068b721cf2313296ae4383', 'Vu Quoc Tuan', 0),
('6314826F0A', 'hieu', 'sha256$XcCWRFUy$d159f2d18abe37c5f82f9c19eb9b736bd74e872c2a93c0b6a304a8cf22db6c27', 'Pham Trong Hieu', 0),
('8840716884', 'hien', 'sha256$9yA1b1U0$a3badc3a0cb44b73a6fd00d197b20bcb960b496033f720c51c8702074231b25a', 'Ha Duc Hien', 0),
('CD879BBD51', 'hiep', 'sha256$IsRypzoc$433030f4dcc256c98820d5dff646fdf2a3bd39a62928a23e1bfd0962ddfe69d6', 'Bach Ngoc Hiep', 0),
('D4AD333121', 'admin', 'sha256$aniMKcN1$3620fdc7abca0acfca7f9cdbcee446c5e353923a1ec9e59e78acca90efea8e7e', 'ADMIN', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `general_usercoin`
--

CREATE TABLE `general_usercoin` (
  `id` int(11) NOT NULL,
  `value` double NOT NULL,
  `coinid_id` int(11) NOT NULL,
  `userid_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `general_usercoin`
--

INSERT INTO `general_usercoin` (`id`, `value`, `coinid_id`, `userid_id`) VALUES
(1, 100, 1, '5248CB4C2B'),
(2, 150, 2, '5248CB4C2B'),
(3, 120, 3, '5248CB4C2B'),
(4, 90, 4, '5248CB4C2B'),
(5, 70, 1, '6314826F0A'),
(6, 230, 2, '6314826F0A'),
(7, 150, 3, '6314826F0A'),
(8, 180, 4, '6314826F0A'),
(9, 30, 1, '8840716884'),
(11, 300, 3, '8840716884'),
(12, 170, 4, '8840716884'),
(13, 100, 1, 'CD879BBD51'),
(14, 150, 2, 'CD879BBD51'),
(15, 50, 3, 'CD879BBD51'),
(16, 130, 4, 'CD879BBD51');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Chỉ mục cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Chỉ mục cho bảng `general_chenhlech`
--
ALTER TABLE `general_chenhlech`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `From_To` (`fromtypecoin_id`,`totypecoin_id`),
  ADD KEY `general_chenhlech_totypecoin_id_d25d85a5_fk_general_typecoin_id` (`totypecoin_id`);

--
-- Chỉ mục cho bảng `general_coin`
--
ALTER TABLE `general_coin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `general_coin_typecoin_id_75dcd5c8_fk_general_typecoin_id` (`typecoin_id`);

--
-- Chỉ mục cho bảng `general_exchange`
--
ALTER TABLE `general_exchange`
  ADD PRIMARY KEY (`id`),
  ADD KEY `general_exchange_fromtypecoin_id_3ff9b30c_fk_general_typecoin_id` (`fromtypecoin_id`),
  ADD KEY `general_exchange_totypecoin_id_fa1bc175_fk_general_typecoin_id` (`totypecoin_id`),
  ADD KEY `general_exchange_userid_id_288f0d74_fk_general_user_id` (`userid_id`);

--
-- Chỉ mục cho bảng `general_matchexchange`
--
ALTER TABLE `general_matchexchange`
  ADD PRIMARY KEY (`id`),
  ADD KEY `general_matchexchang_fromexchange_id_2dd0b2b8_fk_general_e` (`fromexchange_id`),
  ADD KEY `general_matchexchang_toexchange_id_a136781c_fk_general_e` (`toexchange_id`);

--
-- Chỉ mục cho bảng `general_typecoin`
--
ALTER TABLE `general_typecoin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `general_user`
--
ALTER TABLE `general_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `general_usercoin`
--
ALTER TABLE `general_usercoin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_TypeCoin` (`coinid_id`,`userid_id`),
  ADD KEY `general_usercoin_userid_id_291c62b0_fk_general_user_id` (`userid_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT cho bảng `general_chenhlech`
--
ALTER TABLE `general_chenhlech`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `general_coin`
--
ALTER TABLE `general_coin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT cho bảng `general_exchange`
--
ALTER TABLE `general_exchange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT cho bảng `general_matchexchange`
--
ALTER TABLE `general_matchexchange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `general_typecoin`
--
ALTER TABLE `general_typecoin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `general_usercoin`
--
ALTER TABLE `general_usercoin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `general_chenhlech`
--
ALTER TABLE `general_chenhlech`
  ADD CONSTRAINT `general_chenhlech_fromtypecoin_id_b0f80067_fk_general_t` FOREIGN KEY (`fromtypecoin_id`) REFERENCES `general_typecoin` (`id`),
  ADD CONSTRAINT `general_chenhlech_totypecoin_id_d25d85a5_fk_general_typecoin_id` FOREIGN KEY (`totypecoin_id`) REFERENCES `general_typecoin` (`id`);

--
-- Các ràng buộc cho bảng `general_coin`
--
ALTER TABLE `general_coin`
  ADD CONSTRAINT `general_coin_typecoin_id_75dcd5c8_fk_general_typecoin_id` FOREIGN KEY (`typecoin_id`) REFERENCES `general_typecoin` (`id`);

--
-- Các ràng buộc cho bảng `general_exchange`
--
ALTER TABLE `general_exchange`
  ADD CONSTRAINT `general_exchange_fromtypecoin_id_3ff9b30c_fk_general_typecoin_id` FOREIGN KEY (`fromtypecoin_id`) REFERENCES `general_typecoin` (`id`),
  ADD CONSTRAINT `general_exchange_totypecoin_id_fa1bc175_fk_general_typecoin_id` FOREIGN KEY (`totypecoin_id`) REFERENCES `general_typecoin` (`id`),
  ADD CONSTRAINT `general_exchange_userid_id_288f0d74_fk_general_user_id` FOREIGN KEY (`userid_id`) REFERENCES `general_user` (`id`);

--
-- Các ràng buộc cho bảng `general_matchexchange`
--
ALTER TABLE `general_matchexchange`
  ADD CONSTRAINT `general_matchexchang_fromexchange_id_2dd0b2b8_fk_general_e` FOREIGN KEY (`fromexchange_id`) REFERENCES `general_exchange` (`id`),
  ADD CONSTRAINT `general_matchexchang_toexchange_id_a136781c_fk_general_e` FOREIGN KEY (`toexchange_id`) REFERENCES `general_exchange` (`id`);

--
-- Các ràng buộc cho bảng `general_usercoin`
--
ALTER TABLE `general_usercoin`
  ADD CONSTRAINT `general_usercoin_coinid_id_a3f4ddda_fk_general_typecoin_id` FOREIGN KEY (`coinid_id`) REFERENCES `general_typecoin` (`id`),
  ADD CONSTRAINT `general_usercoin_userid_id_291c62b0_fk_general_user_id` FOREIGN KEY (`userid_id`) REFERENCES `general_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
