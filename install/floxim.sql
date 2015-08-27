-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 27 2015 г., 13:11
-- Версия сервера: 5.5.41-log
-- Версия PHP: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `wolarek_loc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `fx_component`
--

CREATE TABLE IF NOT EXISTS `fx_component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `description_en` text COMMENT 'Описание компонента',
  `group` varchar(64) NOT NULL DEFAULT 'Main',
  `icon` varchar(255) NOT NULL,
  `store_id` text,
  `parent_id` int(11) DEFAULT NULL,
  `item_name_en` varchar(45) DEFAULT NULL,
  `name_ru` varchar(255) DEFAULT NULL,
  `item_name_ru` varchar(255) DEFAULT NULL,
  `description_ru` text,
  `vendor` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Class_Group` (`group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=100 AUTO_INCREMENT=88 ;

--
-- Дамп данных таблицы `fx_component`
--

INSERT INTO `fx_component` (`id`, `keyword`, `name_en`, `description_en`, `group`, `icon`, `store_id`, `parent_id`, `item_name_en`, `name_ru`, `item_name_ru`, `description_ru`, `vendor`) VALUES
(1, 'floxim.user.user', 'User', '', '', '', 'component.user', 36, 'User', 'Пользователи', 'Пользователь', '', ''),
(19, 'floxim.main.text', 'Text', '', '', '', 'component.text', 36, 'text', 'Текст', 'Текст', '', ''),
(23, 'floxim.main.page', 'Page', '', '', '', NULL, 36, 'page', 'Страницы', 'Страница', '', ''),
(24, 'floxim.nav.section', 'Section', '', '', '', NULL, 23, '', 'Разделы', 'Раздел', '', ''),
(36, 'floxim.main.content', 'Content', '', 'Basic', '', NULL, 0, 'Content', 'Контент', 'Контент', NULL, ''),
(48, 'floxim.media.photo', 'Photo', '', '', '', NULL, 36, 'Photo', 'Фото', 'Фото', '', ''),
(49, 'floxim.blog.publication', 'Publication', '', '', '', NULL, 23, 'Publication', 'Публикации', 'Публикация', '', ''),
(50, 'floxim.blog.comment', 'Comment', NULL, '', '', NULL, 36, 'comment', 'Комментарии', 'Комментарий', '', ''),
(59, 'floxim.media.video', 'Video', NULL, '', '', NULL, 36, 'Video', 'Видео', 'Видео', '', ''),
(62, 'floxim.corporate.project', 'Project', NULL, '', '', NULL, 23, 'Project', 'Проекты', 'Проект', '', ''),
(63, 'floxim.corporate.vacancy', 'Vacancy', NULL, '', '', NULL, 23, 'Vacancy', 'Вакансии', 'Вакансия', '', ''),
(64, 'floxim.nav.classifier', 'Classifier', '', '', '', NULL, 23, 'Classifier', 'Классификаторы', 'Классификатор', '', ''),
(68, 'floxim.blog.news', 'News', NULL, '', '', NULL, 49, 'News', 'Новости', 'Новость', '', ''),
(69, 'floxim.corporate.person', 'Person', NULL, '', '', NULL, 23, 'Person', 'Персоналии', 'Персона', '', ''),
(70, 'floxim.corporate.contact', 'Contact', NULL, '', '', NULL, 36, 'Contact', 'Контакты', 'Контакт', '', ''),
(75, 'floxim.shop.product', 'Product', NULL, '', '', NULL, 23, 'Product', 'Продукты', 'Продукт', '', ''),
(77, 'floxim.main.linker', 'Linker', NULL, '', '', NULL, 36, 'Linker', 'Привязка', 'Привязка', '', ''),
(78, 'floxim.nav.tag', 'Tag', '', '', '', NULL, 64, 'Tag', 'Теги', 'Тег', '', ''),
(80, 'floxim.main.message_template', 'Message template', NULL, 'Main', '', NULL, 36, 'Message template', 'Шаблоны сообщений', 'Шаблон сообщения', '', ''),
(81, 'floxim.main.mail_template', 'Mail template', NULL, 'Main', '', NULL, 80, 'Mail template', 'Почтовые шаблоны', 'Почтовый шаблон', '', ''),
(82, 'floxim.nav.external_link', 'External link', NULL, 'Main', '', NULL, 24, NULL, 'Ссылка', NULL, NULL, ''),
(83, 'floxim.nav.page_alias', 'Page alias', NULL, 'Main', '', NULL, 24, NULL, 'Ярлык', NULL, NULL, ''),
(87, 'my.shop.product', 'My Product', NULL, 'Main', '', NULL, 75, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `fx_datatype`
--

CREATE TABLE IF NOT EXISTS `fx_datatype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(64) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `not_null` tinyint(1) NOT NULL DEFAULT '1',
  `default` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=204 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `fx_datatype`
--

INSERT INTO `fx_datatype` (`id`, `name`, `priority`, `searchable`, `not_null`, `default`) VALUES
(1, 'string', 1, 1, 1, 1),
(2, 'int', 2, 1, 1, 1),
(3, 'text', 3, 1, 1, 0),
(4, 'select', 4, 1, 1, 1),
(5, 'bool', 5, 1, 1, 1),
(6, 'file', 6, 0, 1, 0),
(7, 'float', 7, 1, 1, 1),
(8, 'datetime', 8, 1, 1, 1),
(9, 'color', 9, 1, 1, 1),
(11, 'image', 11, 0, 1, 0),
(13, 'link', 13, 1, 1, 0),
(14, 'multilink', 14, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fx_field`
--

CREATE TABLE IF NOT EXISTS `fx_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL DEFAULT '0',
  `keyword` char(64) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ru` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `format` text NOT NULL,
  `not_null` smallint(6) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `searchable` smallint(6) NOT NULL DEFAULT '1',
  `default` char(255) DEFAULT NULL,
  `type_of_edit` int(11) NOT NULL DEFAULT '1',
  `checked` tinyint(1) NOT NULL DEFAULT '1',
  `form_tab` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Checked` (`checked`),
  KEY `component_id` (`component_id`),
  KEY `TypeOfData_ID` (`type`),
  KEY `TypeOfEdit_ID` (`type_of_edit`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=95 AUTO_INCREMENT=325 ;

--
-- Дамп данных таблицы `fx_field`
--

INSERT INTO `fx_field` (`id`, `component_id`, `keyword`, `name_en`, `name_ru`, `type`, `format`, `not_null`, `priority`, `searchable`, `default`, `type_of_edit`, `checked`, `form_tab`) VALUES
(1, 1, 'name', 'Screen name', 'Отображаемое имя', 1, '', 0, 0, 1, '', 1, 1, 0),
(2, 1, 'avatar', 'Userpic', 'Аватар', 11, '', 0, 0, 0, '', 1, 1, 0),
(118, 19, 'text', 'Text', 'Текст', 3, '{"html":"1","nl2br":"0"}', 0, 0, 1, '', 1, 1, 0),
(153, 1, 'email', 'E-mail', '', 1, '', 0, 142, 1, NULL, 1, 1, 0),
(165, 23, 'url', 'URL', '', 1, '', 0, 2, 0, '', 1, 1, 0),
(190, 23, 'name', 'Name', 'Название', 1, '', 1, 1, 1, '', 1, 1, 0),
(191, 23, 'title', 'Title', 'Заголовок (title)', 1, '', 0, 158, 0, '', 1, 1, 0),
(196, 36, 'parent_id', 'Parent', 'Родитель', 13, '{"target":"36","prop_name":"parent","is_parent":"0","render_type":"select"}', 0, 0, 0, '', 2, 1, 0),
(203, 48, 'photo', 'Image', '', 11, '', 1, 168, 0, '', 1, 1, 0),
(204, 48, 'description', 'Description', '', 3, '{"html":"1","nl2br":"0"}', 0, 169, 0, '', 1, 1, 0),
(205, 48, 'copy', 'Copy', '', 1, '', 0, 170, 0, '', 1, 1, 0),
(212, 49, 'publish_date', 'Publish date', 'Дата публикации', 8, '', 0, 174, 0, 'now', 1, 1, 1),
(214, 49, 'image', 'Image', 'Изображение', 11, '', 0, 176, 0, '', 1, 1, 2),
(215, 49, 'text', 'Text', 'Текст', 3, '{"html":"1","nl2br":"0"}', 0, 177, 0, '', 1, 1, 3),
(216, 1, 'is_admin', 'Is admin?', 'Админ?', 5, '', 0, 178, 0, '0', 2, 1, 0),
(218, 50, 'comment_text', 'Comment Text', '', 3, '{"nl2br":"1"}', 1, 180, 0, '', 2, 1, 0),
(219, 50, 'publish_date', 'Publish Date', '', 8, '', 1, 181, 0, '', 2, 1, 0),
(220, 50, 'user_name', 'User Name', '', 1, '', 1, 182, 0, '', 2, 1, 0),
(221, 23, 'comments_counter', 'Comments counter', 'Число комментариев', 2, '', 0, 183, 0, '0', 3, 1, 0),
(222, 50, 'is_moderated', 'Moderated flag', '', 5, '', 0, 184, 0, '0', 2, 1, 0),
(230, 59, 'embed_html', 'Embed code or link', '', 3, '{"html":"0","nl2br":"0"}', 0, 187, 0, '', 1, 1, 0),
(231, 59, 'description', 'Description', '', 3, '{"html":"1","nl2br":"0"}', 0, 188, 0, '', 1, 1, 0),
(238, 62, 'image', 'Image', 'Изображение', 11, '', 0, 195, 0, '', 1, 1, 0),
(239, 62, 'client', 'Client', 'Клиент', 1, '', 0, 196, 0, '', 1, 1, 0),
(240, 62, 'short_description', 'Short Description', 'Короткое описание', 1, '', 0, 197, 0, '', 1, 1, 0),
(242, 62, 'date', 'Date', 'Дата', 8, '', 0, 199, 0, '', 1, 1, 0),
(244, 63, 'salary_from', 'Salary from', '', 2, '', 0, 201, 0, '', 1, 1, 0),
(245, 63, 'salary_to', 'Salary To', '', 2, '', 0, 202, 0, '', 1, 1, 0),
(246, 63, 'requirements', 'Requirements', '', 3, '{"html":"1","nl2br":"0"}', 0, 203, 0, '', 1, 1, 0),
(247, 63, 'responsibilities', 'Responsibilities', '', 3, '{"html":"1","nl2br":"0"}', 0, 204, 0, '', 1, 1, 0),
(248, 63, 'work_conditions', 'Work conditions', '', 3, '{"html":"1","nl2br":"0"}', 0, 205, 0, '', 1, 1, 0),
(253, 64, 'counter', 'Counter', '', 2, '', 0, 210, 0, '0', 3, 1, 0),
(257, 69, 'full_name', 'Full Name', '', 1, '', 0, 214, 0, '', 1, 1, 0),
(259, 69, 'department', 'Department', '', 1, '', 0, 216, 0, '', 1, 1, 0),
(260, 69, 'photo', 'Photo', '', 11, '', 0, 217, 0, '', 1, 1, 3),
(261, 69, 'short_description', 'Short Description', '', 1, '', 0, 218, 0, '', 1, 1, 0),
(263, 69, 'birthday', 'Birthday', '', 8, '', 0, 220, 0, '', 1, 1, 3),
(264, 70, 'value', 'Value', '', 1, '', 0, 222, 0, '', 1, 1, 0),
(265, 70, 'contact_type', 'Type', '', 1, '', 0, 221, 0, '', 1, 1, 0),
(269, 69, 'contacts', 'Contacts', '', 14, '{"render_type":"table","linking_field":"196","linking_datatype":"70"}', 0, 223, 0, '', 1, 1, 3),
(278, 75, 'short_description', 'Short Description', '', 3, '{"html":"1","nl2br":"0"}', 0, 232, 0, '', 1, 1, 0),
(279, 75, 'image', 'Image', '', 11, '', 0, 233, 0, '', 1, 1, 0),
(280, 75, 'price', 'Price', '', 2, '', 0, 234, 0, '', 1, 1, 0),
(289, 1, 'password', 'Password', 'Пароль', 1, '', 0, 243, 0, '', 1, 1, 0),
(290, 36, 'created', 'Creation date', 'Дата создания', 8, '', 0, 1, 0, '', 3, 1, 0),
(291, 36, 'user_id', 'User', 'Пользователь', 13, '{"target":"1","prop_name":"user","is_parent":"0","render_type":"livesearch"}', 0, 2, 0, '', 3, 1, 0),
(292, 36, 'site_id', 'Site', 'Сайт', 13, '{"target":"site","prop_name":"site","is_parent":"0","render_type":"livesearch"}', 0, 3, 0, '', 3, 1, 0),
(294, 77, 'linked_id', 'Linked content id', '', 13, '{"target":"36","prop_name":"content","is_parent":"0","render_type":"livesearch"}', 0, 247, 0, '', 1, 1, 0),
(295, 49, 'tags', 'Tags', 'Теги', 14, '{"render_type":"livesearch","linking_field":"196","linking_datatype":"77","mm_field":"294","mm_datatype":"78"}', 0, 248, 0, '', 1, 1, 0),
(300, 63, 'currency', 'Currency', '', 1, '', 0, 253, 0, 'USD', 1, 1, 0),
(304, 23, 'children', 'Children', 'Потомки', 14, '{"render_type":"livesearch","linking_field":"196","linking_datatype":"36"}', 0, 257, 0, '', 3, 1, 0),
(305, 63, 'image', 'Image', 'Изображение', 11, '', 0, 258, 0, '', 1, 1, 4),
(306, 23, 'description', 'Description', 'Описание', 3, '{"html":"1","nl2br":"0"}', 0, 259, 0, '', 1, 1, 0),
(307, 23, 'h1', 'H1', '', 1, '', 0, 260, 0, '', 1, 1, 0),
(314, 80, 'subject', 'Subject', 'Заголовок', 1, '', 0, 6, 0, '', 1, 1, 0),
(315, 80, 'message', 'Message', 'Сообщение', 3, '{"html":"1","nl2br":"0"}', 0, 7, 0, '', 1, 1, 0),
(316, 80, 'language_id', 'Language', 'Язык', 13, '{"target":"lang","prop_name":"language","is_parent":"0","render_type":"select"}', 0, 5, 0, '', 1, 1, 0),
(317, 80, 'keyword', 'Keyword', 'Ключевое слово', 1, '', 0, 4, 0, '', 1, 1, 0),
(318, 81, 'from', 'From', 'От кого', 1, '', 0, 265, 0, '', 1, 1, 0),
(319, 81, 'bcc', 'BCC', 'Скрытая копия', 1, '', 0, 266, 0, '', 1, 1, 0),
(320, 36, 'is_published', 'Is published?', 'Опубликовано?', 5, 'null', 0, 267, 0, '1', 1, 1, 0),
(321, 36, 'is_branch_published', 'Is branch published?', 'Ветка опубликована?', 5, 'null', 0, 268, 0, '1', 3, 1, 0),
(322, 82, 'external_url', 'URL', '', 1, 'null', 0, 269, 0, '', 1, 1, 0),
(323, 83, 'linked_page_id', 'Linked page', '', 13, '{"target":"23","prop_name":"linked_page","is_parent":"0","render_type":"livesearch"}', 0, 270, 0, '', 1, 1, 0),
(324, 36, 'type', 'Type', 'Тип', 1, '', 0, 0, 1, NULL, 3, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_blog_comment`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_blog_comment` (
  `id` int(11) NOT NULL,
  `comment_text` text,
  `publish_date` datetime DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `is_moderated` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_blog_news`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_blog_news` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_blog_publication`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_blog_publication` (
  `id` int(11) NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_corporate_contact`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_corporate_contact` (
  `id` int(11) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `contact_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_corporate_person`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_corporate_person` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_corporate_project`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_corporate_project` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_corporate_vacancy`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_corporate_vacancy` (
  `id` int(11) NOT NULL,
  `salary_from` int(11) DEFAULT NULL,
  `salary_to` int(11) DEFAULT NULL,
  `requirements` text,
  `responsibilities` text,
  `work_conditions` text,
  `currency` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_main_content`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_main_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT '0',
  `type` varchar(45) NOT NULL,
  `infoblock_id` int(11) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `materialized_path` varchar(255) NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `is_published` tinyint(4) DEFAULT NULL,
  `is_branch_published` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `materialized_path` (`materialized_path`,`level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=47 AUTO_INCREMENT=3089 ;

--
-- Дамп данных таблицы `fx_floxim_main_content`
--

INSERT INTO `fx_floxim_main_content` (`id`, `priority`, `created`, `last_updated`, `user_id`, `type`, `infoblock_id`, `site_id`, `parent_id`, `materialized_path`, `level`, `is_published`, `is_branch_published`) VALUES
(2367, 135, '2013-10-21 15:21:23', '2015-02-06 13:34:32', NULL, 'floxim.user.user', 0, NULL, NULL, '', 0, 1, 1),
(2635, 216, '2014-01-28 11:39:50', '2014-12-08 02:18:47', 2367, 'floxim.main.page', 0, 18, NULL, '', 0, 1, 1),
(2636, 218, '2014-01-28 11:39:50', '2015-01-23 15:50:55', 2367, 'floxim.main.page', 0, 18, 2635, '2635.', 1, 1, 1),
(2762, 284, '2014-05-04 13:43:11', '2015-02-09 00:58:10', 2367, 'floxim.main.mail_template', 0, 18, 0, '.', 1, 1, 1),
(3077, 0, '2015-08-26 10:27:39', '2015-08-26 14:27:39', 2367, 'floxim.nav.section', 498, 18, 2635, '2635.', 1, 1, 1),
(3078, 1, '2015-08-26 10:27:53', '2015-08-26 14:27:53', 2367, 'floxim.nav.section', 498, 18, 2635, '2635.', 1, 1, 1),
(3079, 2, '2015-08-26 10:28:31', '2015-08-26 14:28:31', 2367, 'floxim.nav.section', 498, 18, 2635, '2635.', 1, 1, 1),
(3080, 0, '2015-08-26 11:02:07', '2015-08-26 15:03:12', 2367, 'floxim.main.linker', 499, 18, 2635, '2635.', 1, 1, 1),
(3081, 1, '2015-08-26 11:02:07', '2015-08-26 15:03:12', 2367, 'floxim.main.linker', 499, 18, 2635, '2635.', 1, 1, 1),
(3082, 2, '2015-08-26 11:02:07', '2015-08-26 15:03:12', 2367, 'floxim.main.linker', 499, 18, 2635, '2635.', 1, 1, 1),
(3083, 0, '2015-08-26 11:22:58', '2015-08-26 15:22:58', 2367, 'my.shop.product', 501, 18, 3077, '2635.3077.', 2, 1, 1),
(3084, 1, '2015-08-26 11:23:29', '2015-08-26 15:23:29', 2367, 'my.shop.product', 501, 18, 3077, '2635.3077.', 2, 1, 1),
(3085, 2, '2015-08-26 11:24:21', '2015-08-26 15:24:21', 2367, 'my.shop.product', 501, 18, 3077, '2635.3077.', 2, 1, 1),
(3086, 0, '2015-08-26 11:26:18', '2015-08-26 15:26:18', 2367, 'my.shop.product', 501, 18, 3078, '2635.3078.', 2, 1, 1),
(3087, 1, '2015-08-26 11:26:53', '2015-08-26 15:26:53', 2367, 'my.shop.product', 501, 18, 3078, '2635.3078.', 2, 1, 1),
(3088, 0, '2015-08-26 11:28:06', '2015-08-26 15:28:06', 2367, 'my.shop.product', 501, 18, 3079, '2635.3079.', 2, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_main_linker`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_main_linker` (
  `id` int(11) NOT NULL,
  `linked_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fx_floxim_main_linker`
--

INSERT INTO `fx_floxim_main_linker` (`id`, `linked_id`) VALUES
(3080, 3078),
(3081, 3077),
(3082, 3079);

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_main_mail_template`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_main_mail_template` (
  `id` int(11) NOT NULL,
  `from` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fx_floxim_main_mail_template`
--

INSERT INTO `fx_floxim_main_mail_template` (`id`, `from`, `bcc`) VALUES
(2762, 'Floxim Robot <robot@floxim.org>', 'dubr.cola@gmail.com, dubrowsky@yandex.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_main_message_template`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_main_message_template` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text,
  `language_id` int(11) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fx_floxim_main_message_template`
--

INSERT INTO `fx_floxim_main_message_template` (`id`, `subject`, `message`, `language_id`, `keyword`) VALUES
(2762, 'Your new password on {$site.name}', '<p>\r\n	Hello, {$user.name}!\r\n</p>\r\n<p>\r\n	Your new password is <strong>{$password}</strong>\r\n</p>\r\n<hr>\r\n<p>\r\n	Best regards, {$site.name} administration.\r\n</p>', 1, 'user.password_recover');

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_main_page`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_main_page` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `comments_counter` int(11) DEFAULT NULL,
  `description` text,
  `h1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=62;

--
-- Дамп данных таблицы `fx_floxim_main_page`
--

INSERT INTO `fx_floxim_main_page` (`id`, `url`, `name`, `title`, `comments_counter`, `description`, `h1`) VALUES
(2635, '/', 'Home', NULL, 0, NULL, NULL),
(2636, '/404', 'Page not found', NULL, 0, NULL, NULL),
(3077, '/Turntables', 'Turntables', '', 0, '', ''),
(3078, '/Music-instruments', 'Music instruments', '', 0, '', ''),
(3079, '/Accessories', 'Accessories', '', 0, '', ''),
(3083, '/Test-one', 'Test one', '', 0, '', ''),
(3084, '/Test-two', 'Test two', '', 0, '', ''),
(3085, '/Test-also', 'Test also', '', 0, '', ''),
(3086, '/Guitar', 'Guitar', '', 0, '', ''),
(3087, '/Banjo', 'Banjo', '', 0, '', ''),
(3088, '/Tuner', 'Tuner', '', 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_main_text`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_main_text` (
  `id` int(11) NOT NULL,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1199;

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_media_photo`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_media_photo` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` text,
  `copy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_media_video`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_media_video` (
  `id` int(11) NOT NULL,
  `embed_html` text,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_nav_classifier`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_nav_classifier` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_nav_external_link`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_nav_external_link` (
  `id` int(11) NOT NULL,
  `external_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_nav_page_alias`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_nav_page_alias` (
  `id` int(11) NOT NULL,
  `linked_page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_nav_section`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_nav_section` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=7;

--
-- Дамп данных таблицы `fx_floxim_nav_section`
--

INSERT INTO `fx_floxim_nav_section` (`id`) VALUES
(3077),
(3078),
(3079);

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_nav_tag`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_nav_tag` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_shop_product`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_shop_product` (
  `id` int(11) NOT NULL,
  `short_description` text,
  `image` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fx_floxim_shop_product`
--

INSERT INTO `fx_floxim_shop_product` (`id`, `short_description`, `image`, `price`) VALUES
(3083, '', '/floxim_files/content/18/my.shop.product/image/fzgsbm10w_L0.jpg', 155),
(3084, '', '/floxim_files/content/18/my.shop.product/image/SME-Turntables-London-700x500.jpg', 23),
(3085, '', '/floxim_files/content/18/my.shop.product/image/sl110decca3kl4.jpg', 1234),
(3086, '', '/floxim_files/content/18/my.shop.product/image/Partitura-guitarra-1-1.jpg', 323),
(3087, '', '/floxim_files/content/18/my.shop.product/image/brownsville_01.jpg', 121),
(3088, '', '/floxim_files/content/18/my.shop.product/image/AROMA_20AT-300B_01-300x300.jpg', 223);

-- --------------------------------------------------------

--
-- Структура таблицы `fx_floxim_user_user`
--

CREATE TABLE IF NOT EXISTS `fx_floxim_user_user` (
  `id` int(11) NOT NULL,
  `email` char(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `registration_code` varchar(45) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `forum_messages` int(11) NOT NULL DEFAULT '0',
  `pa_balance` double NOT NULL DEFAULT '0',
  `auth_hash` varchar(50) NOT NULL DEFAULT '',
  `is_admin` tinyint(4) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `User_ID` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=104;

--
-- Дамп данных таблицы `fx_floxim_user_user`
--

INSERT INTO `fx_floxim_user_user` (`id`, `email`, `login`, `name`, `registration_code`, `avatar`, `forum_messages`, `pa_balance`, `auth_hash`, `is_admin`, `password`) VALUES
(2367, 'test@test.com', '', 'Admin', NULL, NULL, 0, 0, '', 1, '17DwgJKpcR/Ms');

-- --------------------------------------------------------

--
-- Структура таблицы `fx_infoblock`
--

CREATE TABLE IF NOT EXISTS `fx_infoblock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_infoblock_id` int(11) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL,
  `page_id` int(10) unsigned NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `params` text NOT NULL,
  `scope` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=210 AUTO_INCREMENT=504 ;

--
-- Дамп данных таблицы `fx_infoblock`
--

INSERT INTO `fx_infoblock` (`id`, `parent_infoblock_id`, `site_id`, `page_id`, `checked`, `name`, `controller`, `action`, `params`, `scope`) VALUES
(345, 0, 18, 2635, 1, '', 'layout', 'show', '[]', '{"pages":"descendants","page_type":""}'),
(360, 0, 18, 2635, 1, 'Navigation / breadcrumbs', 'floxim.nav.section', 'breadcrumbs', '{"header_only":"0","hide_on_index":"0"}', '{"pages":"children","page_type":"","visibility":"all"}'),
(399, 345, 18, 2635, 1, '', 'layout', 'show', '[]', '{"pages":"this","page_type":""}'),
(400, 0, 18, 2635, 1, 'What we do', 'floxim.nav.section', 'list_filtered', '{"conditions":{"new_1":{"name":"parent_id","operator":"=","value":["2638"]},"new_2":{"name":"infoblock_id","operator":"=","value":["346"]}},"submenu":"none","extra_infoblocks":false}', '{"pages":"this","page_type":"","visibility":"all"}'),
(431, 0, 18, 2635, 1, 'Text', 'floxim.main.text', 'list_infoblock', '{"parent_type":"current_page_id"}', '{"pages":"this","page_type":"","visibility":"all"}'),
(439, 0, 18, 2635, 1, 'News by tag', 'floxim.blog.news', 'list_by_tag', '{"limit":false,"pagination":"0","sorting":"publish_date","sorting_dir":"desc"}', '{"pages":"children","page_type":"floxim.nav.tag","visibility":"all"}'),
(480, 345, 18, 2635, 1, '', 'layout', 'show', '[]', '{"pages":"children","page_type":"floxim.blog.news"}'),
(498, 0, 18, 2635, 1, 'Menu', 'floxim.nav.section', 'list_infoblock', '[]', '{"pages":"descendants","page_type":"","visibility":"null"}'),
(499, 0, 18, 2635, 1, 'Section selected', 'floxim.nav.section', 'list_selected', '[]', '{"pages":"this","page_type":"","visibility":"null"}'),
(501, 0, 18, 2635, 1, 'New block with My Product', 'my.shop.product', 'list_infoblock', '{"limit":false,"sorting":"manual","sorting_dir":"asc","parent_type":"current_page_id"}', '{"pages":"children","page_type":"floxim.nav.section","visibility":"null"}'),
(502, 0, 18, 3077, 1, 'my.shop.product record', 'my.shop.product', 'record', '', '{"pages":"children","page_type":"my.shop.product"}'),
(503, 0, 18, 2635, 1, '', 'my.shop.product', 'list_by_parent', '{"limit":false,"pagination":"undefined","sorting":"created","sorting_dir":"asc"}', '{"pages":"this","page_type":"","visibility":"null"}');

-- --------------------------------------------------------

--
-- Структура таблицы `fx_infoblock_visual`
--

CREATE TABLE IF NOT EXISTS `fx_infoblock_visual` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `infoblock_id` int(10) unsigned NOT NULL,
  `layout_id` int(10) unsigned NOT NULL,
  `wrapper` varchar(255) NOT NULL,
  `wrapper_visual` text NOT NULL,
  `template` varchar(255) NOT NULL,
  `template_visual` text NOT NULL,
  `area` varchar(50) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `infoblock_id` (`infoblock_id`,`layout_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=138 AUTO_INCREMENT=656 ;

--
-- Дамп данных таблицы `fx_infoblock_visual`
--

INSERT INTO `fx_infoblock_visual` (`id`, `infoblock_id`, `layout_id`, `wrapper`, `wrapper_visual`, `template`, `template_visual`, `area`, `priority`) VALUES
(417, 345, 12, '', '', 'theme.floxim.phototeam:one_column', '{"phone":"8 (800) 123 63 45","logo":"","two_column_header":"\\n                Yes, we can!","one_column_header":"\\n                Our news","logo_name":"Tab Test","icon_408":"\\/floxim_files\\/content\\/18\\/visual\\/icon_login_active.png","icon_409":"\\/floxim_files\\/content\\/18\\/visual\\/icon_login_on.png","email":"info@phototeam.loc"}', '', 1),
(432, 360, 12, '', '', 'theme.floxim.phototeam:breadcrumbs', '', 'breadcrumbs-area', 1),
(471, 399, 12, '', '', 'theme.floxim.phototeam:index', '', '', 11),
(472, 400, 12, '', '', 'theme.floxim.phototeam:side_menu', '{"unstylized":"0","blyat":"\\u0412\\u043e\\u0442 \\u043e\\u0445\\u0443\\u0435\\u043d\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e:","ept":"\\u0411\\u043b\\u044f,","ept_2652":"\\u0412\\u0440\\u0435\\u0434\\u043d\\u044b\\u0439","ept_2654":"\\u041a\\u043b\\u0435\\u0432\\u044b\\u0439","ept_2658":"\\u041a\\u0440\\u0430\\u0441\\u0438\\u0432\\u044b\\u0435"}', 'grid_sidebar_410', 2),
(599, 431, 12, '', '', 'text:list', '', 'sidebar_430', 1),
(607, 439, 12, '', '', 'theme.floxim.phototeam:featured_news_list', '', 'main_column', 1),
(646, 480, 12, '', '', 'theme.floxim.phototeam:one_column', '', '', 14),
(651, 498, 12, '', 'null', 'theme.floxim.phototeam:main_menu', 'null', 'top_nav', 1),
(652, 499, 12, 'theme.floxim.phototeam:titled_block', '{"header":"Tab data is loaded with AJAX"}', 'my.shop.product:nav_tabs', 'null', 'main_column', 2),
(654, 501, 12, '', 'null', 'theme.floxim.phototeam:featured_list', 'null', 'main_column', 3),
(655, 503, 12, '', 'null', 'theme.floxim.phototeam:featured_list', 'null', 'tab_data', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `fx_lang`
--

CREATE TABLE IF NOT EXISTS `fx_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(100) NOT NULL,
  `native_name` varchar(100) NOT NULL,
  `lang_code` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lang_code` (`lang_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `fx_lang`
--

INSERT INTO `fx_lang` (`id`, `en_name`, `native_name`, `lang_code`) VALUES
(1, 'English', 'English', 'en'),
(9, 'Russian', 'Русский', 'ru');

-- --------------------------------------------------------

--
-- Структура таблицы `fx_lang_string`
--

CREATE TABLE IF NOT EXISTS `fx_lang_string` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dict` varchar(45) DEFAULT NULL,
  `string` text,
  `lang_en` text,
  `lang_ru` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1140 ;

--
-- Дамп данных таблицы `fx_lang_string`
--

INSERT INTO `fx_lang_string` (`id`, `dict`, `string`, `lang_en`, `lang_ru`) VALUES
(1, 'component_section', 'Show path to the current page', 'Show path to the current page', 'Отображает путь до текущей страницы в структуре сайта'),
(2, 'component_section', 'Bread crumbs', 'Bread crumbs', 'Хлебные крошки'),
(3, 'component_section', 'Subsection', 'Subsection', 'Подраздел'),
(4, 'component_section', 'Show for all items', 'Show for all items', 'Показывать у всех'),
(5, 'component_section', 'Show for the active item', 'Show for the active item', 'Показывать у активного'),
(6, 'component_section', 'Don''t show', 'Don''t show', 'Не показывать'),
(7, 'component_section', 'Subsections', 'Subsections', 'Подразделы'),
(8, 'component_section', 'Navigation', 'Navigation', 'Меню'),
(9, 'system', 'File is not writable', 'File is not writable', 'Не могу произвести запись в файл'),
(10, 'controller_component', 'Show entries by filter', 'Show entries by filter', 'Выводит записи по произвольному фильтру'),
(11, 'controller_component', 'Show entries from the specified section', 'Show entries from the specified section', 'Выводит список записей из указанного раздела'),
(12, 'controller_component', 'List', 'List', 'Список'),
(13, 'controller_component', 'Show single entry', 'Show single entry', 'Выводит отдельную запись'),
(14, 'controller_component', 'Entry', 'Entry', 'Запись'),
(15, 'controller_component', 'From specified section', 'From specified section', 'Указать раздел явно'),
(16, 'controller_component', 'From all sections', 'From all sections', 'Из любого раздела'),
(17, 'controller_component', 'Choose section', 'Choose section', 'Выбрать родителя'),
(18, 'controller_component', 'Random', 'Random', 'Произвольный'),
(19, 'controller_component', 'The infoblock owner section', 'The infoblock owner section', 'Страница, куда прицеплен инфоблок'),
(20, 'controller_component', 'Current page', 'Current page', 'Текущая страница'),
(21, 'controller_component', 'Parent', 'Parent', 'Родитель'),
(22, 'controller_component', 'Ascending', 'Ascending', 'По возрастанию'),
(23, 'controller_component', 'Descending', 'Descending', 'По убыванию'),
(24, 'controller_component', 'Order', 'Order', 'Порядок'),
(25, 'controller_component', 'Sorting', 'Sorting', 'Сортировка'),
(26, 'controller_component', 'Manual', 'Manual', 'Ручная'),
(27, 'controller_component', 'Created', 'Created', 'Дата создания'),
(28, 'controller_component', 'Show pagination?', 'Show pagination?', 'Разбивать на страницы?'),
(29, 'controller_component', 'How many entries to display', 'How many entries to display', 'Сколько выводить'),
(30, 'controller_layout', 'Sign in', 'Sign in', 'Вход'),
(31, 'system', 'Add infoblock', 'Add infoblock', 'Добавить инфоблок'),
(32, 'system', 'Link', 'Link', 'Ссылка'),
(33, 'system', 'Picture', 'Picture', 'Картинка'),
(34, 'system', 'Elements', 'Elements', 'Элементы'),
(35, 'system', 'Classifier', 'Classifier', 'Классификатор'),
(36, 'system', 'Manually', 'Manually', 'Вручную'),
(37, 'system', 'Source', 'Source', 'Источник'),
(38, 'system', 'Show like', 'Show like', 'Показывать как'),
(39, 'system', 'Current file:', 'Current file:', 'Текущий файл:'),
(40, 'system', 'replace newline to br', 'Replace newline with &lt;br /&gt;', 'заменять перенос строки на br'),
(41, 'system', 'allow HTML tags', 'Allow HTML tags', 'разрешить html-теги'),
(42, 'system', 'Related type', 'Related type', 'Связанный тип'),
(43, 'system', 'Bind value to the parent', 'Bind value to the parent', 'Привязать значение к родителю'),
(44, 'system', 'Key name for the property', 'Key name for the property', 'Ключ для свойства'),
(45, 'system', 'Links to', 'Links to', 'Куда ссылается'),
(46, 'system', 'Enter the name of the site', 'Enter the name of the site', 'Укажите название сайта'),
(47, 'system', 'Priority', 'Priority', 'Приоритет'),
(49, 'system', 'This keyword is used by the component', 'This keyword is used by the component', 'Такой keyword уже используется компоненте'),
(50, 'system', 'Keyword can only contain letters, numbers, symbols, "hyphen" and "underscore"', 'Keyword can only contain letters, numbers, symbols, "hyphen" and "underscore"', 'Keyword может содержать только буквы, цифры, символы "дефис" и "подчеркивание"'),
(51, 'system', 'Specify component keyword', 'Specify component keyword', 'Укажите keyword компонента'),
(52, 'system', 'Component name can not be empty', 'Component name can not be empty', 'Название компонента не может быть пустым'),
(53, 'system', 'Specify field description', 'Specify field description', 'Укажите описание поля'),
(54, 'system', 'This field already exists', 'This field already exists', 'Такое поле уже существует'),
(55, 'system', 'This field is reserved', 'This field is reserved', 'Данное поле зарезервировано'),
(56, 'system', 'Field name can contain only letters, numbers, and the underscore character', 'Field name can contain only letters, numbers, and the underscore character', 'Имя поля может содержать только латинские буквы, цифры и знак подчеркивания'),
(57, 'system', 'name', 'name', 'название'),
(58, 'system', 'Specify field name', 'Specify field name', 'Укажите название поля'),
(59, 'system', 'This keyword is used by widget', 'This keyword is used by widget', 'Такой keyword уже используется в виджете'),
(60, 'system', 'Keyword can contain only letters and numbers', 'Keyword can contain only letters and numbers', 'Keyword может сожержать только буквы и цифры'),
(61, 'system', 'Enter the keyword of widget', 'Enter the keyword of widget', 'Укажите keyword виджета'),
(62, 'system', 'Specify the name of the widget', 'Specify the name of the widget', 'Укажите название виджета'),
(63, 'system', 'You are about to install:', 'You are about to install:', 'Вы собираетесь установить:'),
(64, 'system', 'Preview', 'Preview', 'Превью'),
(65, 'system', 'Layout', 'Layout', 'Макет'),
(66, 'system', 'Show when the site is off', 'Show when the site is off', 'Показывать, когда сайт выключен'),
(67, 'system', 'Cover Page', 'Cover Page', 'Титульная страница'),
(68, 'system', 'Prevent indexing', 'Prevent indexing', 'Запретить индексирование'),
(69, 'system', 'The contents of robots.txt', 'The contents of robots.txt', 'Содержимое robots.txt'),
(70, 'system', 'Site language', 'Site language', 'Язык сайта'),
(71, 'system', 'Aliases', 'Aliases', 'Зеркала'),
(72, 'system', 'Domain', 'Domain', 'Домен'),
(73, 'system', 'Site name', 'Site name', 'Название сайта'),
(74, 'system', 'Enabled', 'Enabled', 'Включен'),
(75, 'system', 'System', 'System', 'Системные'),
(76, 'system', 'Main', 'Main', 'Основные'),
(77, 'system', 'any', 'any', 'любое'),
(78, 'system', 'vertical', 'vertical', 'вертикальное'),
(79, 'system', 'Menu', 'Menu', 'Меню'),
(80, 'system', 'Direction', 'Direction', 'Направление'),
(81, 'system', 'Required', 'Required', 'Обязательный'),
(82, 'system', 'Block', 'Block', 'Блок'),
(83, 'system', 'Blocks', 'Blocks', 'Блоки'),
(84, 'system', 'Sites', 'Sites', 'Сайты'),
(85, 'system', 'Design', 'Design', 'Дизайн'),
(86, 'system', 'Settings', 'Settings', 'Настройки'),
(87, 'system', 'Site map', 'Site map', 'Карта сайта'),
(88, 'system', 'Site not found', 'Site not found', 'Сайт не найден'),
(89, 'system', 'Page not found', 'Page not found', 'Страница не найдена'),
(90, 'system', 'Error creating a temporary file', 'Error creating a temporary file', 'Ошибка при создании временного файла'),
(91, 'system', 'Create a new site', 'Create a new site', 'Добавление нового сайта'),
(92, 'system', 'Add new site', 'Add new site', 'Новый сайт'),
(93, 'system', 'New', 'New', 'Новый'),
(94, 'system', 'Export', 'Export', 'Экспорт'),
(95, 'system', 'for mobile devices', 'for mobile devices', 'для мобильный устройств'),
(96, 'system', 'Language:', 'Language:', 'Язык:'),
(97, 'system', 'Description', 'Description', 'Описание'),
(98, 'system', 'Group', 'Group', 'Группа'),
(99, 'system', 'Another group', 'Another group', 'Другая группа'),
(100, 'system', 'Name of entity created by the component', 'Name of entity created by the component', 'Название сущности, создаваемой компонентом'),
(101, 'system', 'Component name', 'Component name', 'Название компонента'),
(102, 'system', 'Keyword:', 'Keyword:', 'Ключевое слово:'),
(103, 'system', '--no--', '--no--', '--нет--'),
(104, 'system', 'Parent component', 'Parent component', 'Компонент-родитель'),
(105, 'system', 'default', 'default', 'по умолчанию'),
(106, 'system', 'Components', 'Components', 'Компоненты'),
(107, 'system', 'Widgets', 'Widgets', 'Виджеты'),
(108, 'system', 'Keyword', 'Keyword', 'Ключевое слово'),
(109, 'system', 'File', 'File', 'Файл'),
(110, 'system', 'Fields', 'Fields', 'Поля'),
(111, 'system', 'Install from FloximStore', 'Install from FloximStore', 'установить с FloximStore'),
(112, 'system', 'import', 'import', 'импортировать'),
(113, 'system', 'Layout of inside page', 'Layout of inside page', 'Макет внутренней страницы'),
(114, 'system', 'Cover Page Layout', 'Cover Page Layout', 'Макет титульной страницы'),
(115, 'system', 'Sign out', 'Sign out', 'Выход'),
(116, 'system', 'Apply the current', 'Apply the current', 'Применить текущий'),
(117, 'system', 'Colors', 'Colors', 'Расцветка'),
(118, 'system', 'Layout not found', 'Layout not found', 'Макет не найден'),
(119, 'system', 'Enter the layout name', 'Enter the layout name', 'Укажите название макета'),
(120, 'system', 'Layout name', 'Layout name', 'Название макета'),
(121, 'system', 'Export to file', 'Export to file', 'Экспортировать в файл'),
(122, 'system', 'No files', 'No files', 'Нет файлов'),
(123, 'system', 'Layouts', 'Layouts', 'Макеты'),
(124, 'system', 'Unable to create directory', 'Unable to create directory', 'Не удалось создать каталог'),
(125, 'system', 'Adding a layout design', 'Adding a layout design', 'Добавление макета дизайна'),
(126, 'system', 'Import layout design', 'Import layout design', 'Импорт макета дизайна'),
(127, 'system', 'empty', 'empty', 'пустой'),
(128, 'system', 'Used on', 'Used on', 'Используется на сайтах'),
(129, 'system', 'Repeated', 'Repeated', 'Повторено'),
(130, 'system', 'Cancelled', 'Cancelled', 'Отменено'),
(131, 'system', 'Header sent', 'Header sent', 'Посылаемый заголовок'),
(132, 'system', 'New url', 'New url', 'Новый url'),
(133, 'system', 'Old url', 'Old url', 'Старый url'),
(134, 'system', 'Changing the transfer rule', 'Changing the transfer rule', 'Изменение правила переадресации'),
(135, 'system', 'Adding forwarding rules', 'Adding forwarding rules', 'Добавление правила переадресации'),
(136, 'system', 'Header', 'Header', 'Заголовок'),
(137, 'system', 'Layouts can not be deleted', 'Layouts can not be deleted', 'Удалять лейауты нельзя!'),
(138, 'system', 'Unbind/Hide', 'Unbind/Hide', 'Отвязать/скрыть'),
(139, 'system', 'Delete', 'Delete', 'Удалить'),
(140, 'system', 'The infoblock contains some content', 'The infoblock contains some content', 'Инфоблок содержит контент'),
(141, 'system', 'items. What should we do with them?', 'items. What should we do with them?', ' шт. Что с ним делать?'),
(142, 'system', 'I am REALLY shure', 'I am REALLY shure', 'Будет удалено куча всего, я понимаю последствия'),
(143, 'system', 'Block wrapper template', 'Block wrapper template', 'Оформление блока'),
(144, 'system', 'Template', 'Template', 'Шаблон'),
(145, 'system', 'Auto select', 'Auto select', 'Автовыбор'),
(146, 'system', 'With no wrapper', 'With no wrapper', 'Без оформления'),
(147, 'system', 'On the page and it''s children', 'On the page and it''s children', 'На этой и на вложенных'),
(148, 'system', 'Only on children', 'Only on children', 'Только на вложенных страницах'),
(149, 'system', 'Only on the page', 'Only on the page', 'Только на этой странице'),
(150, 'system', 'Page', 'Page', 'Страница'),
(151, 'system', 'On all pages', 'On all pages', 'На всех страницах'),
(152, 'system', 'Remove this rule', 'Remove this rule', 'Удалить это правило'),
(153, 'system', 'Create a new rule', 'Create a new rule', 'Создать новое правило'),
(154, 'system', 'Update', 'Update', 'Обновить'),
(155, 'system', 'Create', 'Create', 'Создать'),
(156, 'system', 'Page layout', 'Page layout', 'Выбор шаблона страницы'),
(157, 'system', 'Infoblock settings', 'Infoblock settings', 'Настройка инфоблока'),
(158, 'system', 'Where to show', 'Where to show', 'Где показывать'),
(159, 'system', 'How to show', 'How to show', 'Как показывать'),
(160, 'system', 'Block name', 'Block name', 'Название блока'),
(161, 'system', 'What to show', 'What to show', 'Что показывать'),
(162, 'system', 'Widget', 'Widget', 'Виджет'),
(163, 'system', 'Next', 'Next', 'Продолжить'),
(164, 'system', 'Install from Store', 'Install from Store', 'Установить с Store'),
(165, 'system', 'Adding infoblock', 'Adding infoblock', 'Добавление инфоблока'),
(166, 'system', 'Type', 'Type', 'Тип'),
(167, 'system', 'Action', 'Action', 'Действие'),
(169, 'system', 'Component', 'Component', 'Компонент'),
(170, 'system', 'Single entry', 'Single entry', 'Отдельный объект'),
(171, 'system', 'Mirror', 'Mirror', 'Mirror'),
(173, 'system', 'Change password', 'Change password', 'Сменить пароль'),
(175, 'system', 'Download from FloximStore', 'Download from FloximStore', 'Скачать с FloximStore'),
(176, 'system', 'Download file', 'Download file', 'Cкачать файл'),
(177, 'system', 'Upload file', 'Upload file', 'Закачать файл'),
(178, 'system', 'Permissions', 'Permissions', 'Права'),
(179, 'system', 'Select parent block', 'Select parent block', 'выделить блок'),
(180, 'system', 'Site layout', 'Site layout', 'Сменить макет сайта'),
(181, 'system', 'Page design', 'Page design', 'Дизайн страницы'),
(182, 'system', 'Development', 'Development', 'Разработка'),
(183, 'system', 'Administration', 'Administration', 'Администрирование'),
(184, 'system', 'Tools', 'Tools', 'Инструменты'),
(185, 'system', 'Users', 'Users', 'Пользователи'),
(186, 'system', 'Site', 'Site', 'Сайт'),
(187, 'system', 'Management', 'Management', 'Управление'),
(188, 'system', 'Default value', 'Default value', 'Значение по умолчанию'),
(189, 'system', 'Field can be used for searching', 'Field can be used for searching', 'Возможен поиск по полю'),
(191, 'system', 'Field not found', 'Field not found', 'Поле не найдено'),
(192, 'system', 'Field is available for', 'Field is available for', 'Поле доступно'),
(193, 'system', 'anybody', 'anybody', 'всем'),
(194, 'system', 'admins only', 'admins only', 'только админам'),
(195, 'system', 'nobody', 'nobody', 'никому'),
(196, 'system', 'Field type', 'Field type', 'Тип поля'),
(197, 'system', 'Field keyword', 'Field keyword', 'Название на латинице'),
(199, 'system', 'New widget', 'New widget', 'Новый виджет'),
(200, 'system', 'Widget size', 'Widget size', 'Размер виджета'),
(201, 'system', 'Mini Block', 'Mini Block', 'Миниблок'),
(202, 'system', 'Narrow', 'Narrow', 'Узкий'),
(203, 'system', 'Wide', 'Wide', 'Широкий'),
(204, 'system', 'Narrowly wide', 'Narrowly wide', 'Узко-широкий'),
(205, 'system', 'Icon to be used', 'Icon to be used', 'Используемая иконка'),
(206, 'system', 'This icon is used by default', 'This icon is used by default', 'эта иконка используется по умолчанию'),
(207, 'system', 'This icon is icon.png file in the directory widget', 'This icon is icon.png file in the directory widget', 'эта иконка находится в файле icon.png в директории виджета'),
(208, 'system', 'This icon is selected from a list of icons', 'This icon is selected from a list of icons', 'эта иконка выбрана из списка иконок'),
(209, 'system', 'Enter the widget name', 'Enter the widget name', 'Введите название виджета'),
(210, 'system', 'Specify the name', 'Specify the name', 'Укажите название'),
(211, 'system', 'Edit User Group', 'Edit User Group', 'Изменение группы пользователей'),
(212, 'system', 'Add User Group', 'Add User Group', 'Добавление группы пользователей'),
(213, 'system', 'New Group', 'New Group', 'Новая группа'),
(214, 'system', 'Assign the right director', 'Assign the right director', 'Присвоить право директора'),
(215, 'system', 'The first version has just the right director', 'The first version has just the right director', 'В первой версии есть только право Директор'),
(216, 'system', 'There are no rules', 'There are no rules', 'Нет никак прав'),
(217, 'system', 'Permission', 'Permission', 'Право'),
(218, 'system', 'Content edit', 'Content edit', 'Редактирование контента'),
(219, 'system', 'Avatar', 'Avatar', 'Аватар'),
(220, 'system', 'Nick', 'Nick', 'Имя на сайте'),
(221, 'system', 'Confirm password', 'Confirm password', 'Пароль еще раз'),
(222, 'system', 'Password', 'Password', 'Пароль'),
(223, 'system', 'Login', 'Login', 'Логин'),
(224, 'system', 'Groups', 'Groups', 'Группы'),
(225, 'system', 'Passwords do not match', 'Passwords do not match', 'Пароли не совпадают'),
(226, 'system', 'Password can''t be empty', 'Password can''t be empty', 'Пароль не может быть пустым'),
(227, 'system', 'Fill in with the login', 'Fill in with the login', 'Заполните поле с логином'),
(228, 'system', 'Please select at least one group', 'Please select at least one group', 'Выберите хотя бы одну группу'),
(229, 'system', 'Add User', 'Add User', 'Добавление пользователя'),
(230, 'system', 'publications in', 'publications in', 'публикации в'),
(231, 'system', 'Select objects', 'Select objects', 'Выберите объекты'),
(232, 'system', 'publish:', 'publish:', 'опубликовал:'),
(234, 'system', 'friends, send message', 'friends, send message', 'друзья, отправить сообщение'),
(235, 'system', 'registred:', 'registred:', 'зарегистрирован:'),
(236, 'system', 'Activity', 'Activity', 'Активность'),
(237, 'system', 'Registration data', 'Registration data', 'Регистрационные данные'),
(238, 'system', 'Rights management', 'Rights management', 'Управление правами'),
(239, 'system', 'Password and verification do not match.', 'Password and verification do not match.', 'Пароль и подтверждение не совпадают.'),
(240, 'system', 'Password is too short. The minimum length of the password', 'Password is too short. The minimum length of the password', 'Пароль слишком короткий. Минимальная длина пароля'),
(241, 'system', 'Enter the password', 'Enter the password', 'Введите пароль.'),
(242, 'system', 'This login is already in use', 'This login is already in use', 'Такой логин уже используется'),
(243, 'system', 'Error: can not find information block with users.', 'Error: can not find information block with users.', 'Ошибка: не найден инфоблок с пользователями.'),
(244, 'system', 'Self-registration is prohibited.', 'Self-registration is prohibited.', 'Самостоятельная регистрация запрещена.'),
(245, 'system', 'Can not find <? ​​Php class file', 'Can not find <? ​​Php class file', 'Не могу найти <?php в файле класса'),
(246, 'system', 'Syntax error in the component class', 'Syntax error in the component class', 'Синтаксическая ошибка в классе компонента'),
(247, 'system', 'Syntax error in function', 'Syntax error in function', 'Синтаксическая ошибка в функции'),
(248, 'system', 'Profile', 'Profile', 'Профиль'),
(249, 'system', 'User not found', 'User not found', 'Пользователь не найден'),
(250, 'system', 'List not found', 'List not found', 'Список не найден'),
(252, 'system', 'Widget not found', 'Widget not found', 'Виджет не найден'),
(253, 'system', 'Component not found', 'Component not found', 'Компонент не найден'),
(254, 'system', 'Modules', 'Modules', 'Модули'),
(255, 'system', 'All sites', 'Sites', 'Список сайтов'),
(256, 'system', 'Unable to connect to server', 'Unable to connect to server', 'Не удалось соединиться с сервером'),
(257, 'system', 'Override the settings in the class', 'Override the settings in the class', 'Переопределите метод settings в своем классе'),
(258, 'system', 'Configuring the', 'Configuring the', 'Настройка модуля'),
(260, 'system', 'Saved', 'Saved', 'Сохранено'),
(261, 'system', 'Could not open file!', 'Could not open file!', 'Не получилось открыть файл!'),
(262, 'system', 'Error when downloading a file', 'Error when downloading a file', 'Ошибка при закачке файла'),
(263, 'system', 'Enter the file', 'Enter the file', 'Укажите файл'),
(264, 'system', 'Not all fields are transferred!', 'Not all fields are transferred!', 'Не все поля переданы!'),
(265, 'system', 'Error Deleting File', 'Error Deleting File', 'Ошибка при удалении файла'),
(266, 'system', 'Error when changing the name', 'Error when changing the name', 'Ошибка при изменении имени'),
(267, 'system', 'Error when permission', 'Error when permission', 'Ошибка при изменении прав доступа'),
(268, 'system', 'Set permissions', 'Set permissions', 'Задайте права доступа'),
(269, 'system', 'Enter the name', 'Enter the name', 'Укажите имя'),
(270, 'system', 'Edit the file/directory', 'Edit the file/directory', 'Правка файла/директории'),
(271, 'system', 'View the contents', 'View the contents', 'Просмотр содержимого'),
(272, 'system', 'Execution', 'Execution', 'Выполнение'),
(273, 'system', 'Writing', 'Writing', 'Запись'),
(274, 'system', 'Reading', 'Reading', 'Чтение'),
(275, 'system', 'Permissions for the rest', 'Permissions for the rest', 'Права для остальных'),
(276, 'system', 'Permissions for the group owner', 'Permissions for the group owner', 'Права для группы-владельца'),
(277, 'system', 'Permissions for the user owner', 'Permissions for the user owner', 'Права для пользователя-владельца'),
(278, 'system', 'Do not pass the file name!', 'Do not pass the file name!', 'Не передано имя файла!'),
(279, 'system', 'An error occurred while creating the file/directory', 'An error occurred while creating the file/directory', 'Ошибка при создании файла/каталога'),
(280, 'system', 'Not all fields are transferred', 'Not all fields are transferred', 'Не все поля переданы'),
(281, 'system', 'Enter the name of the file/directory', 'Enter the name of the file/directory', 'Укажите имя файла/каталога'),
(282, 'system', 'Create a new file/directory', 'Create a new file/directory', 'Создание нового файла/директории'),
(283, 'system', 'Name of file/directory', 'Name of file/directory', 'Имя файла/каталога'),
(284, 'system', 'What we create', 'What we create', 'Что создаём'),
(285, 'system', 'directory', 'directory', 'каталог'),
(286, 'system', 'Writing to file failed', 'Writing to file failed', 'Не удалась запись в файл'),
(287, 'system', 'Reading of file failed', 'Reading of file failed', 'Не удалось прочитать файл!'),
(288, 'system', 'Gb', 'Gb', 'Гб'),
(289, 'system', 'Mb', 'Mb', 'Мб'),
(290, 'system', 'Kb', 'Kb', 'Кб'),
(291, 'system', 'byte', 'byte', 'байт'),
(292, 'system', 'Parent directory', 'Parent directory', 'родительский каталог'),
(293, 'system', 'Size', 'Size', 'Размер'),
(294, 'system', 'File-manager', 'File-manager', 'Файл-менеджер'),
(295, 'system', 'Invalid action', 'Invalid action', 'Неверное действие'),
(296, 'system', 'Invalid user id', 'Invalid user id', 'Неверный id пользователя'),
(297, 'system', 'Invalid code', 'Invalid code', 'Неверный код'),
(298, 'system', 'Your account has been created.', 'Your account has been created.', 'Ваш аккаунт активирован.'),
(299, 'system', 'Your e-mail address is confirmed. Wait for the verification and account activation by the administrator.', 'Your e-mail address is confirmed. Wait for the verification and account activation by the administrator.', 'Ваш адрес e-mail подтвержден. Дождитесь проверки и активации учетной записи администратором.'),
(300, 'system', 'Invalid confirmation code registration.', 'Invalid confirmation code registration.', 'Неверный код подтверждения регистрации.'),
(301, 'system', 'Not passed the verification code registration.', 'Not passed the verification code registration.', 'Не передан код подтверждения регистрации.'),
(302, 'system', 'Action after the first authorization', 'Action after the first authorization', 'Действие после первой авторизации'),
(303, 'system', 'Group, which gets the user after login', 'Group, which gets the user after login', 'Группы, куда попадет пользователь после авторизации'),
(304, 'system', 'Facebook data', 'Facebook data', 'Данные facebook'),
(305, 'system', 'User fields', 'User fields', 'Поля пользователя'),
(306, 'system', 'Complies fields', 'Complies fields', 'Соответсвие полей'),
(307, 'system', 'enable authentication with facebook', 'enable authentication with facebook', 'включить авторизацию через facebook'),
(308, 'system', 'Twitter data', 'Twitter data', 'Данные twiiter'),
(309, 'system', 'enable authentication with twitter', 'enable authentication with twitter', 'включить авторизацию через твиттер'),
(310, 'system', 'The minimum length of the password must be an integer.', 'The minimum length of the password must be an integer.', 'Минимальная длина пароля должна быть целым числом.'),
(311, 'system', 'The time during which the user is online, can be an integer greater than 0.', 'The time during which the user is online, can be an integer greater than 0.', 'Время, в течение которого пользователь считается online, должно быть целым числом больше 0.'),
(312, 'system', 'nvalid address format of e-mail.', 'nvalid address format of e-mail.', 'Неверный формат адреса e-mail.'),
(313, 'system', 'You have not selected any of the member.', 'You have not selected any of the member.', 'Вы не выбрали ни одной группы для зарегистрированных пользователей.'),
(314, 'system', 'HTML-letter', 'HTML-letter', 'HTML-письмо'),
(315, 'system', 'Letter body', 'Letter body', 'Тело письма'),
(316, 'system', 'Letter header', 'Letter header', 'Заголовок письма'),
(317, 'system', 'Restore the default form', 'Restore the default form', 'Восстановить форму по умолчанию'),
(318, 'system', 'Component "Private Messages"', 'Component "Private Messages"', 'Компонент "Личные сообщения"'),
(319, 'system', 'Component "Users"', 'Component "Users"', 'Компонент "Пользователи"'),
(320, 'system', 'Allow users to add enemies', 'Allow users to add enemies', 'Разрешить добавлять пользователей во враги'),
(321, 'system', 'Friends and enemies', 'Friends and enemies', 'Друзья и враги'),
(322, 'system', 'Allow users to add as friend', 'Allow users to add as friend', 'Разрешить добавлять пользователей в друзья'),
(323, 'system', 'Notify the user by e-mail about the new message', 'Notify the user by e-mail about the new message', 'Оповещать пользователя по e-mail о новом сообщении'),
(324, 'system', 'Private messages', 'Private messages', 'Личные сообщения'),
(325, 'system', 'Allow to send private messages', 'Allow to send private messages', 'Разрешить отправлять личные сообщения'),
(326, 'system', 'User authentication after the confirm', 'User authentication after the confirm', 'Авторизация пользователя сразу после подтверждения'),
(327, 'system', 'E-mail the administrator to send alerts', 'E-mail the administrator to send alerts', 'E-mail администратора для отсылки оповещений'),
(328, 'system', 'Send a letter to the manager when a user logs', 'Send a letter to the manager when a user logs', 'Отправлять письмо администратору при регистрации пользователя'),
(329, 'system', 'Moderated by the administrator', 'Moderated by the administrator', 'Премодерация администратором'),
(330, 'system', 'Require confirmation by e-mail', 'Require confirmation by e-mail', 'Требовать подтверждение через e-mail'),
(331, 'system', 'Group to which the user will get after registration', 'Group to which the user will get after registration', 'Группы, куда попадёт пользователь после регистрации'),
(332, 'system', 'Enable self-registration', 'Enable self-registration', 'Разрешить самостоятельную регистрацию'),
(333, 'system', 'Registration', 'Registration', 'Регистрация'),
(334, 'system', 'Bind users to sites', 'Bind users to sites', 'Привязывать пользователей к сайтам'),
(335, 'system', 'Deny yourself to recover your password', 'Deny yourself to recover your password', 'Запретить самостоятельно восстанавливать пароль'),
(336, 'system', 'General Settings', 'General Settings', 'Общие настройки'),
(337, 'system', 'Do not show the form of a failed login attempt', 'Do not show the form of a failed login attempt', 'Не показывать форму при неудачной попытке авторизации'),
(338, 'system', 'Restored', 'Restored', 'Восстановлено'),
(339, 'system', 'Nonexistent tab!', 'Nonexistent tab!', 'Несуществующая вкладка!'),
(340, 'system', 'Login through external services', 'Login through external services', 'Авторизация через внешние сервисы'),
(341, 'system', 'Email templates', 'Email templates', 'Шаблоны писем'),
(342, 'system', 'General', 'General', 'Общие'),
(343, 'system', 'Password restore', 'Password restore', 'Восстановление пароля'),
(344, 'system', 'Registration confirm', 'Registration confirm', 'Подтверждение регистрации'),
(345, 'system', 'Now you will be taken to the login page.', 'Now you will be taken to the login page.', 'Сейчас вы будете переброшены на страницу авторизации.'),
(346, 'system', 'Click here if you do not want to wait.', 'Click here if you do not want to wait.', 'Нажмите, если не хотите ждать.'),
(347, 'system', 'Login via twitter disabled', 'Login via twitter disabled', 'Авторизация через twitter запрещена'),
(348, 'system', 'Login via facebook disabled', 'Login via facebook disabled', 'Авторизация через facebook запрещена'),
(349, 'system', 'FX_ADMIN_FIELD_STRING', 'String', 'Строка'),
(350, 'system', 'FX_ADMIN_FIELD_INT', 'Integer', 'Целое число'),
(352, 'system', 'FX_ADMIN_FIELD_SELECT', 'Options list', 'Список'),
(353, 'system', 'FX_ADMIN_FIELD_BOOL', 'Boolean', 'Логическая переменная'),
(354, 'system', 'FX_ADMIN_FIELD_FILE', 'File', 'Файл'),
(355, 'system', 'FX_ADMIN_FIELD_FLOAT', 'Float number', 'Дробное число'),
(356, 'system', 'FX_ADMIN_FIELD_DATETIME', 'Date and time', 'Дата и время'),
(357, 'system', 'FX_ADMIN_FIELD_COLOR', 'Color', 'Цвет'),
(359, 'system', 'FX_ADMIN_FIELD_IMAGE', 'Image', 'Изображение'),
(360, 'system', 'FX_ADMIN_FIELD_MULTISELECT', 'Multiple select', 'Мультисписок'),
(361, 'system', 'FX_ADMIN_FIELD_LINK', 'Link to another object', 'Связь с другим объектом'),
(362, 'system', 'FX_ADMIN_FIELD_MULTILINK', 'Multiple link', 'Множественная связь'),
(363, 'system', 'FX_ADMIN_FIELD_TEXT', 'Text', 'Текст'),
(375, 'system', 'add', 'add', 'добавить'),
(376, 'system', 'edit', 'edit', 'Редактировать'),
(377, 'system', 'on', 'on', 'on'),
(378, 'system', 'off', 'off', 'off'),
(381, 'system', 'Render type', 'Render type', 'Render type'),
(382, 'system', 'Live search', 'Live search', 'Live search'),
(383, 'system', 'Simple select', 'Simple select', 'Simple select'),
(384, 'system', '-Any-', '-Any-', 'Любой'),
(385, 'system', 'Only on pages of type', 'Only on pages of type', 'Только на страницах типа'),
(386, 'system', '-- choose something --', '-- choose something --', '-- выберите вариант --'),
(387, 'component_section', 'Show only header?', 'Show only header?', 'Показывать только заголовок?'),
(388, 'component_section', 'Hide on the index page', 'Hide on the index page', 'Скрыть на главной?'),
(389, 'system', 'Welcome to Floxim.CMS, please sign in', 'Welcome to Floxim.CMS, please sign in', 'Welcome to Floxim.CMS, please sign in'),
(390, 'system', 'Editing ', 'Editing ', 'Редактируем'),
(391, 'system', 'Fields table', 'Fields table', 'Fields table'),
(392, 'system', 'Adding new ', 'Adding new ', 'Adding new '),
(393, 'controller_component', 'New infoblock', 'New infoblock', 'Новый инфоблок'),
(394, 'controller_component', 'Infoblock for the field', 'Infoblock for the field', 'Инфоблок для поля '),
(396, 'system', 'Name of an entity created by the component', 'Name of an entity created by the component', 'Название сущности, создаваемой компонентом'),
(397, 'system', 'Component actions', 'Component actions', 'Component actions'),
(398, 'system', 'Templates', 'Templates', 'Шаблоны'),
(402, 'system', 'Save', 'Save', 'Сохранить'),
(403, 'system', 'Used', 'Used', 'Used'),
(404, 'component_section', 'Nesting level', 'Nesting level', 'Уровень вложенности'),
(405, 'component_section', '2 levels', '2 levels', '2 уровня'),
(406, 'component_section', '3 levels', '3 levels', '3 уровня'),
(407, 'component_section', 'Current level +1', 'Current level +1', 'Текущий +1'),
(408, 'component_section', 'No limit', 'No limit', 'Без ограничения'),
(409, 'system', 'Cancel', 'Cancel', 'Отменить'),
(410, 'system', 'Redo', 'Redo', 'Вернуть'),
(411, 'system', 'More', 'More', 'Еще'),
(412, 'system', 'Patches', NULL, 'Патчи'),
(413, 'system', 'Update check failed', NULL, 'Проверка обновлений завершилась неудачей'),
(414, 'system', 'Installing patch %s...', NULL, 'Устанавливаем патч %s...'),
(415, 'content', 'Current Floxim version:', NULL, 'Текущая версия Floxim:'),
(433, 'system', 'Название компонента (по-русски)', 'Название компонента (по-русски)', 'Название компонента'),
(439, 'system', 'Add new component', 'Add new component', 'Добавить новый компонент'),
(440, 'system', 'Add new Components', 'Add new Components', 'Добавить новые компоненты'),
(441, 'system', 'Add new widget', 'Add new widget', 'Создать новый виджет'),
(442, 'system', 'Add new field', 'Add new field', 'Создать новое поле'),
(443, 'system', 'Keyword (название папки с макетом)', 'Keyword (название папки с макетом)', 'Ключевое слово'),
(444, 'system', 'Layout keyword', 'Layout keyword', 'Ключевое слово лейаута'),
(445, 'system', 'Add new layout', 'Add new layout', 'Создать новый лейаут'),
(446, 'system', 'Finish', 'Finish', 'Закончить'),
(447, 'system', 'Keyword can only contain letters, numbers, symbols, \\"hyphen\\" and \\"underscore\\"', 'Keyword can only contain letters, numbers, symbols, \\"hyphen\\" and \\"underscore\\"', NULL),
(452, 'controller_component', 'Limit', 'Limit', 'Ограничение'),
(453, 'controller_component', 'Conditoins', 'Conditoins', 'Условия'),
(454, 'controller_component', 'Conditions', 'Conditions', 'Условия'),
(455, 'controller_component', 'Infoblock page', 'Infoblock page', 'Страница инфоблока'),
(456, 'system', 'I am REALLY sure', 'I am REALLY sure', 'Я действительно уверен'),
(457, 'component_section', 'Source infoblock', 'Source infoblock', 'Инфоблок-источник'),
(459, 'system', 'Email', 'Email', 'E-mail'),
(460, 'system', 'Edit User', 'Edit User', 'Редактировать пользователя'),
(462, 'system', 'Admin', 'Admin', 'Админ'),
(463, 'system', 'Fill in email', 'Fill in email', 'Заполните e-mail'),
(464, 'system', 'Add new user', 'Add new user', 'Создать нового пользователя'),
(465, 'system', 'Fill in correct email', 'Fill in correct email', 'Укажите корректный e-mail'),
(466, 'system', 'Fill in name', 'Fill in name', 'Укажите название'),
(467, 'system', 'Ununique email', 'Ununique email', 'Неуникальный e-mail'),
(470, 'controller_component', 'Selected', 'Selected', 'Выбраны'),
(477, 'controller_component', 'Count entries', 'Count entries', 'Число записей'),
(484, 'system', 'Block wrapper', 'Block wrapper', 'Оформление блока'),
(485, 'system', 'Template2', 'Template2', 'Шаблон2'),
(486, 'system', 'NOW() by default', 'NOW() by default', 'СЕЙЧАС по умолчанию'),
(487, 'system', 'Languages', 'Languages', 'Языки'),
(488, 'system', 'Add new language', 'Add new language', 'Создать новый язык'),
(492, 'system', 'Language name', 'Language name', 'Название языка (по-английски)'),
(493, 'system', 'Enter english language name', 'Enter english language name', 'Укажите название языка на английском'),
(494, 'system', 'Native language name', 'Native language name', 'Самоназвание языка'),
(495, 'system', 'Enter native language name', 'Enter native language name', 'Укажите самоназвание языка'),
(496, 'system', 'Language code', 'Language code', 'Код языка'),
(497, 'system', 'Enter language code', 'Enter language code', 'Укажите код языка'),
(498, 'system', 'Create a new language', 'Create a new language', 'Создать новый язык'),
(499, 'system', 'Naitive name', 'Naitive name', 'Оригинальное название'),
(500, 'component_section', 'Add subsection to', 'Add subsection to', 'Добавить подраздел в...'),
(501, 'system', 'Language', 'Language', 'Язык'),
(503, 'system', 'Inherited from', 'Inherited from', 'Унаследовано от'),
(504, 'system', 'Editable', 'Editable', 'Редактируемое'),
(505, 'system', 'No', 'No', 'Нет'),
(506, 'system', 'Yes', 'Yes', 'Да'),
(507, 'system', 'Inherited', 'Inherited', 'Унаследовано'),
(753, 'system', 'Logs', 'Logs', 'Логи'),
(754, 'system', 'Request', 'Request', 'Запрос'),
(755, 'system', 'Date', 'Date', 'Дата'),
(756, 'system', 'Time', 'Time', 'Время'),
(757, 'system', 'Entries', 'Entries', 'Записи'),
(758, 'system', 'Delte', 'Delte', 'Удалить'),
(759, 'system', 'Delete all', 'Delete all', 'Удалить все'),
(761, 'component_section', 'Breadcrumbs', 'Breadcrumbs', 'Хлебные крошки'),
(762, 'controller_component', 'Add items to', 'Add items to', 'Добавлять записи в'),
(763, 'controller_component', 'Bind items to', 'Bind items to', 'Привязывать записи к'),
(764, 'widget_blockset', 'Block set', 'Block set', 'Набор блоков'),
(765, 'controller_component', 'Paginate?', 'Paginate?', 'Постраничный вывод?'),
(901, 'system', 'Fake infoblock data', 'Fake infoblock data', 'Здесь будут данные инфоблока'),
(994, 'system', 'Layout settings', 'Layout settings', 'Настройки лейаута'),
(995, 'system', 'Edit current page', 'Edit current page', 'Редактировать текущую страницу'),
(996, 'system', 'Use wider rule', 'Use wider rule', 'Использовать более широкое правило'),
(997, 'system', 'Drop current rule and use the wider one', 'Drop current rule and use the wider one', 'Удалить текущее правило и использовать более общее'),
(998, 'system', 'For admin only', 'For admin only', 'Только для администратора'),
(999, 'system', 'Count items', 'Count items', 'Количество объектов'),
(1000, 'system', 'Count', 'Count', 'Сколько'),
(1019, 'widget_grid', 'Two columns', 'Two columns', 'Две колонки'),
(1021, 'system', 'Language strings', 'Language strings', 'Языковые строки'),
(1025, 'system', 'Key', 'Key', 'Ключ'),
(1026, 'system', 'Value', 'Value', 'Значение'),
(1028, 'system', 'Dictionary', 'Dictionary', 'Словарь'),
(1029, 'system', 'String', 'String', 'Строка'),
(1050, 'component_section', 'Menu', 'Menu', 'Меню'),
(1051, 'system', 'settings', 'settings', 'Настройки'),
(1052, 'system', 'delete', 'delete', 'Удалить'),
(1053, 'system', 'Import', 'Import', 'Импортировать'),
(1054, 'system', 'Edit', 'Edit', 'Редактировать'),
(1055, 'system', 'Edit strings', 'Edit strings', 'Редактировать строки'),
(1056, 'system', 'Current Floxim version:', 'Current Floxim version:', 'Текущая версия Floxim:'),
(1057, 'system', 'Name', 'Name', 'Название'),
(1058, 'system', 'Edit user', 'Edit user', 'Редактировать пользователя'),
(1059, 'system', 'All pages', 'All pages', 'Все страницы'),
(1060, 'system', 'All pages of type %s', 'All pages of type %s', 'Все страницы типа %s'),
(1061, 'system', '%s children only', '%s children only', 'Только потомки %s'),
(1062, 'system', '%s and children', '%s and children', '%s и потомки'),
(1063, 'system', '%s only', '%s only', 'Только %s'),
(1064, 'system', 'Scope', 'Scope', 'Где показывать'),
(1065, 'system', '%s children of type %s', '%s children of type %s', 'Потомки %s типа %s'),
(1066, 'system', 'Add', 'Add', 'Добавить'),
(1067, 'controller_component', 'by filter', 'by filter', 'по фильтру'),
(1068, 'system', 'Console', 'Console', 'Консоль'),
(1069, 'system', 'Apply', 'Apply', 'Применить'),
(1070, 'system', 'Execute', 'Execute', 'Выполнить'),
(1071, 'component_user', 'New %s password', 'New %s password', 'Новый пароль на %s'),
(1072, 'component_user', 'Hello, %s! Your new password: %s', 'Hello, %s! Your new password: %s', 'Здравствуйте, %s! Ваш новый пароль: %s'),
(1073, 'system', 'Add user', 'Add user', 'Добавить пользователя'),
(1074, 'system', 'Version', 'Version', 'Версия'),
(1075, 'system', 'Previous', 'Previous', 'Предыдущий'),
(1076, 'system', 'Status', 'Status', 'Статус'),
(1077, 'system', 'Install', 'Install', 'Установить'),
(1078, 'system', 'User name', 'User name', 'Имя пользователя'),
(1079, 'system', 'Items', 'Items', 'Объекты'),
(1080, 'system', 'Unable to save essence "lang_string"', 'Unable to save essence "lang_string"', 'Не удается сохранить языковую строку'),
(1081, 'system', 'HTML code snippet', 'HTML code snippet', 'Фрагмент HTML-кода'),
(1082, 'system', 'Is admin?', 'Is admin?', 'Администратор?'),
(1083, 'system', 'Is multi-language field?', 'Is multi-language field?', 'Многоязычное поле?'),
(1084, 'system', 'Nane', 'Nane', NULL),
(1085, 'system', 'Field name', 'Field name', 'Название поля'),
(1086, 'controller_component', 'Auto', 'Auto', 'Автоматически'),
(1087, 'controller_component', 'Group by parent', 'Group by parent', 'Группировать по родителю'),
(1088, 'system', ' by tag', ' by tag', 'по тегу'),
(1089, 'system', 'Standard', 'Standard', 'Стандартный'),
(1090, 'system', 'Local', 'Local', NULL),
(1091, 'system', 'Page infoblocks', 'Page infoblocks', 'Инфоблоки страницы'),
(1092, 'system', 'Visibility', 'Visibility', 'Видимость'),
(1093, 'system', 'Area', 'Area', 'Область'),
(1094, 'system', '%d items', '%d items', '%d элементов'),
(1095, 'component_section', 'Add subsection', 'Add subsection', 'Добавить подраздел'),
(1096, 'system', 'Wrapper', 'Wrapper', 'Оформление'),
(1097, 'system', 'Linking field', 'Linking field', NULL),
(1098, 'system', 'Linked datatype', 'Linked datatype', NULL),
(1099, 'system', 'Unable to save entity "LangString"', 'Unable to save entity "LangString"', NULL),
(1100, 'system', 'Vendor', 'Vendor', 'Вендор'),
(1101, 'controller_component', 'Target infoblock', 'Target infoblock', NULL),
(1102, 'controller_component', 'After submission...', 'After submission...', 'После отправки...'),
(1103, 'system', 'Refresh page', 'Refresh page', 'Обновить страницу'),
(1104, 'system', 'Go to the created page', 'Go to the created page', 'Перейти к созданной странице'),
(1105, 'system', 'Go to the parent page', 'Go to the parent page', 'Перейти к родительской странице'),
(1106, 'system', 'After login', 'After login', 'После входа'),
(1107, 'system', 'Refresh current page', 'Refresh current page', 'Обновить текущую страницу'),
(1108, 'system', 'Redirect to homepage', 'Redirect to homepage', 'Перейти на главную'),
(1109, 'system', 'Redirect to custom URL...', 'Redirect to custom URL...', 'Перейти к указанному URL'),
(1110, 'system', 'Target URL', 'Target URL', 'URL назначения'),
(1111, 'system', 'The content contains some descendants', 'The content contains some descendants', 'Объект имеет потомков'),
(1112, 'system', 'items. These items will be removed.', 'items. These items will be removed.', 'штук. Они будут удалены.'),
(1113, 'system', 'after', 'after', 'после'),
(1114, 'system', 'before', 'before', 'перед'),
(1115, 'system', 'Delete infoblock', 'Delete infoblock', 'Удалить блок'),
(1116, 'system', 'Unable to save entity "langstring"', 'Unable to save entity "langstring"', NULL),
(1117, 'system', 'Please enter valid e-mail adress!', 'Please enter valid e-mail adress!', 'Укажите допустимый e-mail'),
(1118, 'system', 'Select', 'Select', 'Выбрать');
INSERT INTO `fx_lang_string` (`id`, `dict`, `string`, `lang_en`, `lang_ru`) VALUES
(1119, 'system', 'Change theme', 'Change theme', NULL),
(1120, 'system', 'View', 'View', NULL),
(1121, 'system', 'Login after registration', 'Login after registration', NULL),
(1122, 'controller_component', 'New block with %s', 'New block with %s', NULL),
(1123, 'controller_component', '%s by filter', '%s by filter', NULL),
(1124, 'controller_component', '%s selected', '%s selected', NULL),
(1125, 'controller_component', 'Allow doubles', 'Allow doubles', NULL),
(1126, 'floxim.main.user', 'Login form', 'Login form', NULL),
(1127, 'floxim.main.user', 'After login', 'After login', NULL),
(1128, 'floxim.main.user', 'Greet and logout widget', 'Greet and logout widget', NULL),
(1129, 'floxim.main.user', 'Recover password form', 'Recover password form', NULL),
(1130, 'floxim.main.user', 'Registration form', 'Registration form', NULL),
(1131, 'system', 'Remember me', 'Remember me', NULL),
(1132, 'system', 'Log in', 'Log in', NULL),
(1133, 'controller_component', 'Neighbour %s', 'Neighbour %s', NULL),
(1134, 'system', 'Selected entries', 'Selected entries', NULL),
(1135, 'system', 'Infoblock', 'Infoblock', NULL),
(1136, 'system', 'Section', 'Section', NULL),
(1137, 'system', 'Design settings', 'Design settings', NULL),
(1138, 'system', 'Is abstract?', 'Is abstract?', NULL),
(1139, 'system', 'Delete this infoblock', 'Delete this infoblock', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `fx_layout`
--

CREATE TABLE IF NOT EXISTS `fx_layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=64 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `fx_layout`
--

INSERT INTO `fx_layout` (`id`, `keyword`, `name`) VALUES
(12, 'floxim.phototeam', 'Photo Team');

-- --------------------------------------------------------

--
-- Структура таблицы `fx_module`
--

CREATE TABLE IF NOT EXISTS `fx_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `installed` tinyint(4) NOT NULL DEFAULT '0',
  `inside_admin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `Checked` (`checked`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=68 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `fx_module`
--

INSERT INTO `fx_module` (`id`, `name`, `keyword`, `description`, `installed`, `inside_admin`, `checked`) VALUES
(1, 'FX_MODULE_AUTH', 'auth', 'FX_MODULE_AUTH_DESCRIPTION', 1, 1, 1),
(3, 'FX_MODULE_FORUM', 'forum', 'FX_MODULE_FORUM_DESCRIPTION', 1, 1, 1),
(4, 'FX_MODULE_FILEMANAGER', 'filemanager', 'FX_MODULE_FILEMANAGER_DESCRIPTION', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `fx_my_shop_product`
--

CREATE TABLE IF NOT EXISTS `fx_my_shop_product` (
  `id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fx_my_shop_product`
--

INSERT INTO `fx_my_shop_product` (`id`) VALUES
(3083),
(3084),
(3085),
(3086),
(3087),
(3088);

-- --------------------------------------------------------

--
-- Структура таблицы `fx_option`
--

CREATE TABLE IF NOT EXISTS `fx_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `autoload` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `autoload` (`autoload`),
  KEY `keyword` (`keyword`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `fx_option`
--

INSERT INTO `fx_option` (`id`, `keyword`, `name`, `value`, `autoload`) VALUES
(1, 'fx.version', 'Current Floxim version', '0.1.1', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `fx_patch`
--

CREATE TABLE IF NOT EXISTS `fx_patch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` char(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `fx_patch`
--

INSERT INTO `fx_patch` (`id`, `to`, `created`, `description`, `from`, `status`, `url`) VALUES
(20, '0.1.1', '2013-08-19 15:24:17', 'Test patch', '0.1.0', 'installed', 'http://floxim.org/getfloxim/patches/0.1.0-0.1.1/patch_0.1.1.zip');

-- --------------------------------------------------------

--
-- Структура таблицы `fx_patch_migration`
--

CREATE TABLE IF NOT EXISTS `fx_patch_migration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `fx_patch_migration`
--

INSERT INTO `fx_patch_migration` (`id`, `name`, `created`) VALUES
(1, 'm20140808_062932', '2014-08-13 04:36:44'),
(2, 'm20140812_050811', '2014-08-13 04:36:44'),
(3, 'm20141208_084116', '2014-12-09 07:49:48');

-- --------------------------------------------------------

--
-- Структура таблицы `fx_session`
--

CREATE TABLE IF NOT EXISTS `fx_session` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `site_id` int(10) unsigned NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `last_activity_time` int(11) NOT NULL DEFAULT '0',
  `ip` bigint(11) NOT NULL DEFAULT '0',
  `remember` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `User_ID` (`user_id`),
  KEY `session_key` (`session_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=126 AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `fx_session`
--

INSERT INTO `fx_session` (`id`, `session_key`, `user_id`, `site_id`, `start_time`, `last_activity_time`, `ip`, `remember`) VALUES
(23, '71ee45ba782994921ade852361a4f077', 2367, 0, 1440598787, 1440669523, 2130706433, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fx_site`
--

CREATE TABLE IF NOT EXISTS `fx_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `domain` varchar(128) NOT NULL,
  `layout_id` int(11) NOT NULL DEFAULT '0',
  `color` int(11) NOT NULL DEFAULT '0' COMMENT 'Расцветка',
  `mirrors` text NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `checked` smallint(6) NOT NULL DEFAULT '0',
  `index_page_id` int(11) NOT NULL DEFAULT '0',
  `error_page_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `robots` text,
  `disallow_indexing` int(11) DEFAULT '0',
  `type` enum('useful','mobile') NOT NULL DEFAULT 'useful' COMMENT 'Тип сайта: обычный или мобильный',
  `language` varchar(255) NOT NULL DEFAULT 'en',
  `offline_text` varchar(255) DEFAULT NULL,
  `store_id` text,
  PRIMARY KEY (`id`),
  KEY `Checked` (`checked`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=292 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `fx_site`
--

INSERT INTO `fx_site` (`id`, `parent_id`, `name`, `domain`, `layout_id`, `color`, `mirrors`, `priority`, `checked`, `index_page_id`, `error_page_id`, `created`, `last_updated`, `robots`, `disallow_indexing`, `type`, `language`, `offline_text`, `store_id`) VALUES
(18, 0, 'The Photo Team', 'wolarek.loc', 12, 0, '', 4, 1, 2635, 2636, '2014-01-28 11:39:50', '2015-08-26 14:19:39', '', 0, 'useful', 'en', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `fx_url_alias`
--

CREATE TABLE IF NOT EXISTS `fx_url_alias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `site_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `is_original` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `url` (`url`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=208 ;

--
-- Дамп данных таблицы `fx_url_alias`
--

INSERT INTO `fx_url_alias` (`id`, `url`, `site_id`, `page_id`, `is_original`) VALUES
(1, '/', 18, 2635, 1),
(2, '/404', 18, 2636, 1),
(42, '/woo', 18, 2776, 1),
(43, '/Athletics-2', 18, 2776, 0),
(199, '/Turntables', 18, 3077, 1),
(200, '/Music-instruments', 18, 3078, 1),
(201, '/Accessories', 18, 3079, 1),
(202, '/Test-one', 18, 3083, 1),
(203, '/Test-two', 18, 3084, 1),
(204, '/Test-also', 18, 3085, 1),
(205, '/Guitar', 18, 3086, 1),
(206, '/Banjo', 18, 3087, 1),
(207, '/Tuner', 18, 3088, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `fx_widget`
--

CREATE TABLE IF NOT EXISTS `fx_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_en` varchar(255) NOT NULL,
  `name_ru` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `description_en` text,
  `description_ru` text NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '1',
  `vendor` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=111 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `fx_widget`
--

INSERT INTO `fx_widget` (`id`, `name_en`, `name_ru`, `keyword`, `description_en`, `description_ru`, `checked`, `vendor`) VALUES
(4, 'Block set', 'Набор блоков', 'floxim.layout.blockset', '', '', 1, ''),
(8, 'Grid', 'Сетка', 'floxim.layout.grid', NULL, '', 1, ''),
(9, 'Сustom code', '', 'floxim.layout.custom_code', NULL, '', 1, ''),
(10, 'Map', '', 'floxim.corporate.map', NULL, '', 1, 'std');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
