-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 17 2018 г., 13:59
-- Версия сервера: 10.1.34-MariaDB
-- Версия PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `astron`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-12-17 08:07:08', '2018-12-17 08:07:08');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Пароль', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Токен восстановления', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Аватар', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Роль', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Дата создания', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Дата создания', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Отображаемое имя', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Роль', 1, 1, 1, 1, 1, 1, NULL, 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'parent_id', 'select_dropdown', 'Родитель', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Сортировка', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 4),
(27, 4, 'slug', 'text', 'Slug (ЧПУ)', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 0, 0, 0, NULL, 6),
(29, 4, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(31, 5, 'author_id', 'text', 'Автор', 1, 0, 1, 1, 0, 1, NULL, 2),
(32, 5, 'category_id', 'text', 'Категория', 1, 0, 1, 1, 1, 0, NULL, 3),
(33, 5, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, NULL, 4),
(34, 5, 'excerpt', 'text_area', 'Отрывок', 1, 0, 1, 1, 1, 1, NULL, 5),
(35, 5, 'body', 'rich_text_box', 'Содержимое', 1, 0, 1, 1, 1, 1, NULL, 6),
(36, 5, 'image', 'image', 'Изображение Сообщения', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug (ЧПУ)', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(40, 5, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 0, 0, 0, NULL, 12),
(42, 5, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 13),
(43, 5, 'seo_title', 'text', 'SEO Название', 0, 1, 1, 1, 1, 1, NULL, 14),
(44, 5, 'featured', 'checkbox', 'Рекомендовано', 1, 1, 1, 1, 1, 1, NULL, 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(46, 6, 'author_id', 'text', 'Автор', 1, 0, 0, 0, 0, 0, '{}', 2),
(47, 6, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 3),
(48, 6, 'excerpt', 'text_area', 'Отрывок', 0, 0, 1, 1, 1, 1, '{}', 4),
(49, 6, 'body', 'text_area', 'Содержимое', 0, 0, 1, 1, 1, 1, '{}', 5),
(50, 6, 'slug', 'text', 'Slug (ЧПУ)', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(53, 6, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 0, 0, 0, '{}', 10),
(55, 6, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, '{}', 11),
(56, 6, 'image', 'image', 'Изображение Статьи', 0, 1, 1, 1, 1, 1, '{}', 12);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'Пользователь', 'Пользователи', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(2, 'menus', 'menus', 'Меню', 'Меню', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(3, 'roles', 'roles', 'Роль', 'Роли', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(4, 'categories', 'categories', 'Категория', 'Категории', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(5, 'posts', 'posts', 'Сообщение', 'Сообщения', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(6, 'pages', 'pages', 'Статья', 'Статьи', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-17 08:07:08', '2018-12-17 10:23:13');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(2, 'Main_menu', '2018-12-17 08:12:06', '2018-12-17 08:12:44');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Панель управления', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-12-17 08:07:07', '2018-12-17 08:07:07', 'voyager.dashboard', NULL),
(2, 1, 'Медиа', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-12-17 08:07:07', '2018-12-17 08:07:07', 'voyager.media.index', NULL),
(3, 1, 'Пользователи', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-12-17 08:07:07', '2018-12-17 08:07:07', 'voyager.users.index', NULL),
(4, 1, 'Роли', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-12-17 08:07:07', '2018-12-17 08:07:07', 'voyager.roles.index', NULL),
(5, 1, 'Инструменты', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-12-17 08:07:07', '2018-12-17 08:07:07', NULL, NULL),
(6, 1, 'Конструктор Меню', '', '_self', 'voyager-list', NULL, 5, 10, '2018-12-17 08:07:07', '2018-12-17 08:07:07', 'voyager.menus.index', NULL),
(7, 1, 'База данных', '', '_self', 'voyager-data', NULL, 5, 11, '2018-12-17 08:07:07', '2018-12-17 08:07:07', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2018-12-17 08:07:07', '2018-12-17 08:07:07', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2018-12-17 08:07:07', '2018-12-17 08:07:07', 'voyager.bread.index', NULL),
(10, 1, 'Настройки', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-12-17 08:07:07', '2018-12-17 08:07:07', 'voyager.settings.index', NULL),
(11, 1, 'Категории', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-12-17 08:07:08', '2018-12-17 08:07:08', 'voyager.categories.index', NULL),
(12, 1, 'Статьи', '', '_self', 'voyager-news', NULL, NULL, 6, '2018-12-17 08:07:08', '2018-12-17 08:07:08', 'voyager.posts.index', NULL),
(13, 1, 'Страницы', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-12-17 08:07:08', '2018-12-17 08:07:08', 'voyager.pages.index', NULL),
(14, 2, 'Главная', '/', '_self', NULL, '#000000', NULL, 1, '2018-12-17 08:13:18', '2018-12-17 10:18:24', NULL, ''),
(15, 2, 'Специальности', 'spetsialnosti', '_self', NULL, '#000000', NULL, 2, '2018-12-17 08:14:58', '2018-12-17 10:18:24', NULL, ''),
(16, 2, 'Вузы Украины', 'vuzi', '_self', NULL, '#000000', NULL, 3, '2018-12-17 10:17:43', '2018-12-17 10:18:24', NULL, ''),
(17, 2, 'Форма', 'forma', '_self', NULL, '#000000', NULL, 15, '2018-12-17 10:18:58', '2018-12-17 10:18:58', NULL, ''),
(18, 2, 'Контакты', 'contacts', '_self', NULL, '#000000', NULL, 16, '2018-12-17 10:19:20', '2018-12-17 10:19:20', NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-12-17 08:07:08', '2018-12-17 08:07:08');
INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Главная страница', NULL, '<header>\r\n    <div class=\"contenttline margintopmax\">\r\n        <div class=\"contentt\">\r\n            <div class=\"h1block\">\r\n                <h1 class=\"margintopbottommid paddingtopbottommid center cd-headline letters type\">Создаём <span class=\"cd-words-wrapper waiting\" style=\"font-weight:300;\"><b class=\"is-visible\">хорошие</b><b>продающие</b><b>быстрые</b></span> сайты уже 8 лет</h1>\r\n            </div>\r\n            <div class=\"textpodh1\">\r\n                <p>Знаем 14 секретов успешного создания и продвижения сайта Харьков ! Креативные решения, современный IT технологии, профессиональная команда - только самые высокие результаты для наших клиентов !!!</p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</header>\r\n<section>\r\n    <div class=\"videorol1 paddingbottommax\">\r\n        <video muted autoplay loop class=\"lazy\">\r\n            <data-src src=\"video/video-fon-1.webm\" type=\"video/webm\"></data-src>\r\n            <data-src src=\"video/video-fon-1.mp4\" type=\"video/mp4\"></data-src>\r\n        </video>\r\n        <div class=\"contenttline videodiv1\">\r\n            <div class=\"contentt zagoll\">\r\n                <h2 class=\"titleewhite\">При создании сайта в Харькове мы предлагаем</h2>\r\n                <div class=\"chetireblokadiv\">\r\n                    <div class=\"chetirebloka seriyback chetirebloka1 center\">\r\n                        <img class=\"krug200 lazyy\" data-src=\"images/sozdanie-saitov-kharkov-consalting.jpg\" alt=\"создание сайтов Харьков консалтинг\" />\r\n                        <h3 class=\"titleewhite\">Исследование и<br>анализ рынка</h3>\r\n                        <hr class=\"style-one\">\r\n                        <p>Разработка ключевых\r\n                            <br>слов для создания сайта</p>\r\n                        <hr class=\"style-one\">\r\n                        <p>Мониторинг ресурсов\r\n                            <br>конкурентов и партнёров</p>\r\n                        <hr class=\"style-one\">\r\n                        <p>Анализ перспектив\r\n                            <br>развития в интернете</p>\r\n                    </div>\r\n                    <div class=\"chetirebloka seriyback center\">\r\n                        <img class=\"krug200 lazyy\" data-src=\"images/sozdanie-saitov-kharkov-dizain.jpg\" alt=\"создание сайтов Харьков дизайн\" />\r\n                        <h3 class=\"titleewhite\">Эксклюзивный<br>дизайн сайта</h3>\r\n                        <hr class=\"style-one\">\r\n                        <p>Брендинг, логотип\r\n                            <br>разработка интерфейсов</p>\r\n                        <hr class=\"style-one\">\r\n                        <p>Адаптация web сайта\r\n                            <br>под телефон и планшет</p>\r\n                        <hr class=\"style-one\">\r\n                        <p>Создание доступного\r\n                            <br>и понятного дизайна</p>\r\n                    </div>\r\n                    <div class=\"chetirebloka seriyback center\">\r\n                        <img class=\"krug200 lazyy\" data-src=\"images/sozdanie-saitov-kharkov-razrabotka.jpg\" alt=\"создание сайтов Харьков web\" />\r\n                        <h3 class=\"titleewhite\">Вёрстка и web<br>разработка</h3>\r\n                        <hr class=\"style-one\">\r\n                        <p>Разработка продающих\r\n                            <br>интернет ресурсов</p>\r\n                        <hr class=\"style-one\">\r\n                        <p>Программирование\r\n                            <br>на php, js, html, css</p>\r\n                        <hr class=\"style-one\">\r\n                        <p>Тестирование готовых\r\n                            <br>решений и программ</p>\r\n                    </div>\r\n                    <div class=\"chetirebloka seriyback center\">\r\n                        <img class=\"krug200 lazyy\" data-src=\"images/sozdanie-saitov-kharkov-raskrutka.jpg\" alt=\"создание сайтов Харьков seo\" />\r\n                        <h3 class=\"titleewhite\">Internet<br>marketing</h3>\r\n                        <hr class=\"style-one\">\r\n                        <p>Продвижение и seo\r\n                            <br>оптимизация</p>\r\n                        <hr class=\"style-one\">\r\n                        <p>Социальные сети\r\n                            <br>и google analytics</p>\r\n                        <hr class=\"style-one\">\r\n                        <p>AddWords и Яндекс\r\n                            <br>директ компании</p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n<section>\r\n    <div class=\"contenttline\">\r\n        <h2 class=\"semantics_info\">Основные услуги</h2>\r\n        <div class=\"contentt\">\r\n            <div class=\"contenttblock\">\r\n                <div class=\"divright\">\r\n                    <h3>Создание сайтов, от лендинг страницы до магазина</h3>\r\n                    <p>Мы знаем 14 секретов успешного <mark>создания сайта</mark> ! За многие годы успешной работы на рынке веб дизайна наша веб студия приобрела огромнейший опыт, что позволяет нам разрабатывать сайты быстро и эффективно, но самое главное ваш сайт будет действительно работать и приносить вам деньги, а не бесполезно болтаться в интернете.</p>\r\n                </div>\r\n                <div class=\"divleftvideo\">\r\n                    <video muted autoplay class=\"lazyy\" style=\"width: 100%\">\r\n                        <data-src src=\"video/sozdanie-saitov-kharkov-web-razrabotka.webm\" type=\"video/webm\"></data-src>\r\n                        <data-src src=\"video/sozdanie-saitov-kharkov-web-razrabotka.mp4\" type=\"video/mp4\"></data-src>\r\n                    </video>\r\n                </div>\r\n            </div>\r\n            <div class=\"contenttblock\">\r\n                <div class=\"divleft\">\r\n                    <h3>Оптимизация сайта под экраны мобильных устройств</h3>\r\n                    <p>Немаловажно в нынешнее время <mark>корректная работа на экранах смартфонов</mark> и планшетов. Если вам нужно создать сайт с адаптивным дизайном в Харькове, наши специалисты, используя самые передовые технологии, смогут гарантировать правильное отображение контента на всех существующих устройствах.</p>\r\n                </div>\r\n                <div class=\"divrightvideo\">\r\n                    <video muted autoplay class=\"lazyy\" style=\"width: 100%\">\r\n                        <data-src src=\"video/sozdanie-saitov-kharkov-mobile.webm\" type=\"video/webm\"></data-src>\r\n                        <data-src src=\"video/sozdanie-saitov-kharkov-mobile.mp4\" type=\"video/mp4;\"></data-src>\r\n                    </video>\r\n                </div>\r\n            </div>\r\n            <div class=\"contenttblock\">\r\n                <div class=\"divright\">\r\n                    <h3>Делаем сайты с эксклюзивным интерфейсом и дизайном</h3>\r\n                    <p>Невозможно разработать сайт, который будет успешно работать и продавать на шаблоне! <mark>Проектирование дружественного интерфейса</mark> и уникального оформления - задача наших опытных дизайнеров. Всё это позволит вашему покупателю быстро найти интересующую его информацию или услугу. Помните, что мы занимаемся разработкой сайтов не для вас, а для вашего клиента!</p>\r\n                </div>\r\n                <div class=\"divleftvideo\">\r\n                    <video muted autoplay class=\"lazyy\" style=\"width: 100%\">\r\n                        <data-src src=\"video/sozdanie-saitov-kharkov-gr-design.webm\" type=\"video/webm\"></data-src>\r\n                        <data-src src=\"video/sozdanie-saitov-moskva-seo.mp4\" type=\"video/mp4;\"></data-src>\r\n                    </video>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n<section>\r\n    <div class=\"videorol2\">\r\n        <video muted autoplay loop class=\"lazy\">\r\n            <data-src src=\"video/video-fon-22.webm\" type=\"video/webm\"></data-src>\r\n            <data-src src=\"video/video-fon-2.mp4\" type=\"video/mp4\"></data-src>\r\n        </video>\r\n        <div class=\"contenttline videodiv2\">\r\n            <div class=\"contentt zagoll\">\r\n                <h2>О нашей компании в цифрах</h2>\r\n                <div id=\"counter\">\r\n                    <div class=\"chetireblokadiv\">\r\n                        <div class=\"chetirebloka center\">\r\n                            <img class=\"krug240 lazyy\" data-src=\"images/sozdanie-saitov-kharkov-opit-raboti.jpg\" alt=\"создание сайтов 8 лет опыт работы\" />\r\n                            <div class=\"counter\">\r\n                                <span class=\"counter-value\" data-count=\"8\">0</span>\r\n                            </div>\r\n                            <div class=\"chetireblokatext\">\r\n                                <h3>Лет на рынке<br>создания сайтов<br>в Харькове</h3>\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"chetirebloka center\">\r\n                            <img class=\"krug240 lazyy\" data-src=\"images/sozdanie-saitov-kharkov-kolichestvo-saitov.jpg\" alt=\"количество сделанных сайтов\" />\r\n                            <div class=\"counter\">\r\n                                <span class=\"counter-value\" data-count=\"184\">0</span>\r\n                            </div>\r\n                            <div class=\"chetireblokatext\">\r\n                                <h3>Разработанных<br>сайтов и <br>магазинов</h3>\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"chetirebloka center\">\r\n                            <img class=\"krug240 lazyy\" data-src=\"images/sozdanie-saitov-kharkov-seo-saiti.jpg\" alt=\"много seo оптимизированных ресурсов\" />\r\n                            <div class=\"counter\">\r\n                                <span class=\"counter-value\" data-count=\"270\">0</span>\r\n                            </div>\r\n                            <div class=\"chetireblokatext\">\r\n                                <h3>оптимизированных<br>и раскрученный<br>web ресурсов</h3>\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"chetirebloka center\">\r\n                            <img class=\"krug240 lazyy\" data-src=\"images/sozdanie-saitov-kharkov-html-code.jpg\" alt=\"код HTML\" />\r\n                            <div class=\"counter\">\r\n                                <span class=\"counter-value\" data-count=\"999\">0</span><span style=\"color: #fa8d3c;font-size: 2.5em;text-align: center;font-weight: 300;margin-right: 20px;\">+</span>\r\n                            </div>\r\n                            <div class=\"chetireblokatext\">\r\n                                <h3>Строчек кода<br>HTML, CSS, PHP, JS<br>написано</h3>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n\r\n\r\n<section>\r\n    <div class=\"contenttline paddingtopbottommid\">\r\n        <h2 class=\"margintopbottommid titlee center\">Смотреть видео</h2><div class=\"sprite zakarluch marginbottommin\"></div>\r\n        <div class=\"contentt margintopbottommax\">\r\n            <div class=\"middiv center paddingbottommid\">\r\n                <p>В этом видео мы постарались объяснить, что же это за условия <br>такие интересные по созданию сайтов в Харькове</p>\r\n            </div>\r\n            <div class=\"bigvideorolik\">\r\n                <video muted autoplay controls class=\"lazyy\" id=\"video1\" style=\"width: 100%; display: block; margin: 0 auto;\">\r\n                    <data-src src=\"video/sozdanie-saitov-kharkov-glavnij-rolik.webm\" type=\"video/webm\"></data-src>\r\n                    <data-src src=\"video/sozdanie-saitov-kharkov-glavnij-rolik.mp4\" type=\"video/mp4\"></data-src>\r\n                </video>\r\n                <script>\r\n                    var vid = document.getElementById(\"video1\");\r\n                    function disableMute() { document.getElementById(\"mute-video\").classList.add(\"hidden\");\r\n                        vid.muted = false;\r\n                    }\r\n                </script>\r\n                <button style=\"width: 114px;padding: 10px;margin: 45px auto 0px auto;display: block;background-color: #ff889a;border-width: 0px;cursor: pointer;color: white;\" id=\"mute-video\" onclick=\"disableMute()\" type=\"button\"><img class=\"lazyyy\" data-src=\"video/volume-on.gif\">Включить звук</button>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n\r\n\r\n<section>\r\n    <div class=\"videorol3 paddingbottommax\">\r\n        <video muted autoplay loop class=\"lazy\">\r\n            <data-src src=\"video/video-fon-3.webm\" type=\"video/webm\"></data-src>\r\n            <data-src src=\"video/video-fon-3.mp4\" type=\"video/mp4\"></data-src>\r\n        </video>\r\n        <div class=\"contenttline videodiv3\">\r\n            <div class=\"contentt zagoll\">\r\n                <h2 class=\"titleewhite\">Мы гордимся, что 80% клиентов приходят к нам по рекомендациям</h2>\r\n                <div class=\"divprichini\" style=\"overflow: hidden;\">\r\n                    <div class=\"prichini notAnimated animateBlock leftAlign left\">\r\n                        <h3>01</h3>\r\n                        <h4>Полный цикл создания сайтов в Харькове</h4>\r\n                        <p>От разработки идеи, до проектирования самого ресурса и выведения в топ поисковиков.</p>\r\n                    </div>\r\n                    <div class=\"prichini\">\r\n                        <h3>02</h3>\r\n                        <h4>Прозрачный прайс лист с фиксированной ценой</h4>\r\n                        <p>Никаких лишних платежей которые появляются в конце создания сайта</p>\r\n                    </div>\r\n                    <div class=\"prichini notAnimated animateBlock leftAlign right\">\r\n                        <h3>03</h3>\r\n                        <h4>Чистый код, который любят поисковики</h4>\r\n                        <p>Мы делаем web сайты, исключительно с валидным и грамотным кодом</p>\r\n                    </div>\r\n                    <div class=\"prichini notAnimated animateBlock leftAlign left\">\r\n                        <h3>04</h3>\r\n                        <h4>Лучшая команда IT специалистов</h4>\r\n                        <p>У нас работают только мастера своего дела и как следствие отличные результаты.</p>\r\n                    </div>\r\n                    <div class=\"prichini\">\r\n                        <h3>05</h3>\r\n                        <h4>Защита сайта от хакерских атак </h4>\r\n                        <p>Безопасность вашего сайта мы ставим превыше всего и убережём вас от неприятных ситуаций</p>\r\n                    </div>\r\n                    <div class=\"prichini notAnimated animateBlock leftAlign right\">\r\n                        <h3>06</h3>\r\n                        <h4>Круглосуточная тех. поддержка</h4>\r\n                        <p>Мы не бросаем наших клиентов, а всегда оказываем помощь по работе с сайтом</p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n\r\n\r\n\r\n\r\n\r\n<section>\r\n    <div class=\"contenttline\">\r\n        <div class=\"contentt zagoll paddingtopmax\">\r\n            <h2>Этапы создания сайта:</h2>\r\n            <div class=\"contenttetapi paddingtopbottommid\">\r\n\r\n\r\n                <div class=\"contenttetapi1 notAnimated animateBlock leftAlign right\">\r\n                    <img class=\"contentetapiimg lazyy\" data-src=\"images/sozdanie-saitov-kharkov-etap-01.jpg\" alt=\"создание сайта встреча с клиентом\" />\r\n                    <h3>Встреча</h3>\r\n                    <p class=\"etapi\">Мы встречаемся или у нас в офисе или наш менеджер подъезжает к вам. Если вы из другого города или страны, мы общаемся при помощи видеосвязи в scype или viber. </p>\r\n                </div>\r\n                <div class=\"contenttetapi2 notAnimated animateBlock leftAlign right\">\r\n                    <img class=\"contentetapiimg lazyy\" data-src=\"images/sozdanie-saitov-kharkov-etap-04.jpg\" alt=\"планирование при разработке сайта\" />\r\n                    <h3>Планирование </h3>\r\n                    <p class=\"etapi\">Без подробного плана, результаты создания сайта будут плачевными, поэтому мы обсуждаем весь функционал и фиксируем всё это на бумаге в виде прототипа вашего будущего сайта.</p>\r\n                </div>\r\n                <div class=\"contenttetapi3 notAnimated animateBlock leftAlign left\">\r\n                    <img class=\"contentetapiimg lazyy\" data-src=\"images/sozdanie-saitov-kharkov-etap-02.jpg\" alt=\"дизайн и создание грамотного кода\" />\r\n                    <h3>Дизайн, создание</h3>\r\n                    <p class=\"etapi\">На основе прототипа наши специалисты изготавливают дизайн, который согласуется с вами, после чего программисты занимаются разработкой сайта согласно тех. заданию.</p>\r\n                </div>\r\n                <div class=\"contenttetapi4 notAnimated animateBlock leftAlign right\">\r\n                    <img class=\"contentetapiimg lazyy\" data-src=\"images/sozdanie-saitov-kharkov-etap-03.jpg\" alt=\"тестирование готового ресурса\" />\r\n                    <h3>Тестирование</h3>\r\n                    <p class=\"etapi\">Очень важный этап разработки сайта, мы проверяем все модули и приложение, крайне важно выявить все ошибки и баги, что бы в последствии всё работало без осложнений.</p>\r\n                </div>\r\n                <div class=\"contenttetapi5 notAnimated animateBlock leftAlign right\">\r\n                    <img class=\"contentetapiimg lazyy\" data-src=\"images/sozdanie-saitov-kharkov-etap-05.jpg\" alt=\"запуск проекта\" />\r\n                    <h3>Запуск</h3>\r\n                    <p class=\"etapi\">Когда всё согласовано и протестировано, мы размещаем сайт на вашем домене и хостинге. В дальнейшем вы можете продолжить с нами сотрудничество на предмет продвижения сайта</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n\r\n\r\n\r\n\r\n<section>\r\n    <div class=\"contenttline paddingbottommid\" style=\"overflow:auto;\">\r\n        <h2 class=\"stoimosth2\"><span style=\"color: #2f2f2f;\">Стои</span>мость</h2>\r\n        <div class=\"stoimost\">\r\n            <h3>1</h3>\r\n            <h4>Цена на создание сайта:</h4>\r\n            <ul class=\"leaderss\">\r\n                <li><span>Сайт на готовой CMS (WordPress, Joomla и тд.)</span><span>350 у.е.</span></li>\r\n                <li><span>Написание CMS под вас</span><span>от 1500 у.е</span></li>\r\n                <li><span>Простая вёрстка по вашему дизайну</span><span>150 у.е.</span></li>\r\n                <li><span>Сложная вёрстка по вашему дизайну</span><span>300 у.е.</span></li>\r\n                <li><span>Индивидуальный дизайн сайта с вёрсткой</span><span>750 у.е.</span></li>\r\n                <li><span>Адаптация под телефоны и планшеты</span><span>99 у.е.</span></li>\r\n                <li><span>Внутренняя SEO оптимизация </span><span>149 у.е.</span></li>\r\n                <li><span>Продвижение в поиске </span><span>от 100 до &#8734;</span></li>\r\n                <li><span>Создание анимационного видеоролика</span><span>150 у.е.</span></li>\r\n                <li><span>Создание логотипа</span><span>от 20 у.е.</span></li>\r\n                <li><span>Перенос сайта на хостинг с тонкой настройкой</span><span>от 30 у.е.</span></li>\r\n\r\n            </ul>\r\n            <p style=\"font-size: 0.9em;z-index:99999; margin: 11% 3% 11% 20px;font-style: italic;\">\r\n                Разумеется, что это не полный прайс лист на создание сайта, всё сугубо индивидуально и точную цену можно будет озвучить тогда, когда мы поймём чего вы хотите. Так что вот телефон <span style=\"font-size: 1.1em;font-style: normal;font-weight:600;\"> &#9742; <a style=\"z-index:99; color:#333!important;\r\n					text-decoration: none;\" href=\"tel:+380952045758\"> +38 (095) 204-57-58 </a></span> - звоните в любое время, не стесняйтесь и спрашивайте.\r\n            </p>\r\n        </div>\r\n        <div class=\"stoimost2\">\r\n            <h3>2</h3>\r\n            <h4>Цена на создание магазина:</h4>\r\n            <ul class=\"leaders\">\r\n                <li><span>На готовой CMS(Opencart стандартный дизайн)</span><span>399 у.е.</span></li>\r\n                <li><span>Написание CMS магазина под вас</span><span>от 1500 у.е</span></li>\r\n                <li><span>Индивидуальный дизайн магазина с вёрсткой</span><span>750 у.е.</span></li>\r\n                <li><span>Внутренняя SEO оптимизация </span><span>149 у.е.</span></li>\r\n                <li><span>Продвижение в поиске </span><span>от 100 до &#8734;</span></li>\r\n                <li><span>Перенос сайта на хостинг с тонкой настройкой</span><span>от 30 у.е.</span></li>\r\n                <li><span>Подключение оплаты приват 24</span><span>50 у.е.</span></li>\r\n                <li><span>Наполнение товарами</span><span>3 грн. позиция</span></li>\r\n                <li><span>Синхронизация с 1c</span><span>99 у.е.</span></li>\r\n                <li><span>Создание логотипа</span><span>от 20 у.е.</span></li>\r\n                <li><span>Перенос сайта на хостинг с тонкой настройкой</span><span>от 30 у.е.</span></li>\r\n\r\n            </ul>\r\n            <p style=\"font-size: 0.9em;margin: 11% 3% 11% 20px;font-style: italic;color: #ececec;\">\r\n                Это не полный прайс лист на создание интернет магазина, всё сугубо индивидуально, более подробная информация и полный список цен по данной тематике, смотрите на странице <a href=\"sozdanie-internet-magazina-kharkov.html\">создание магазина</a>\r\n            </p>\r\n        </div>\r\n    </div>\r\n</section>\r\n\r\n<section class=\"contenttline paddingtopbottommid\">\r\n    <h2 class=\"margintopbottommid center\">Минимальные сроки создания сайта Харьков</h2>\r\n    <video autoplay muted class=\"lazyy\" style=\" width: 20%; display: block; margin: 0 auto;\">\r\n        <data-src src=\"video/sozdanie-saitov-moskva-vremia-sozdania.webm\" type=\"video/webm\"></data-src>\r\n        <data-src src=\"video/sozdanie-saitov-moskva-vremia-sozdania.mp4\" type=\"video/mp4\"></data-src>\r\n    </video>\r\n    <div class=\"contentt margintopbottommax\">\r\n        <div class=\"middiv center paddingbottommid\">\r\n            <p>В среднем грамотный ресурс<br>разрабатывается 1 месяц</p>\r\n        </div>\r\n    </div>\r\n</section>\r\n\r\n<section>\r\n    <div class=\"videorol4 contenttline paddingbottommax \">\r\n        <video muted autoplay loop class=\"lazy\">\r\n            <data-src src=\"video/video-fon-4.webm\" type=\"video/webm\"></data-src>\r\n            <data-src src=\"video/video-fon-4.mp4\" type=\"video/mp4\"></data-src>\r\n        </video>\r\n        <div class=\"videodiv4\">\r\n            <div class=\"contentt zagoll\" style=\"overflow:hidden;\">\r\n                <div class=\"piatpriemeshestvright notAnimated animateBlock leftAlign right\">\r\n                    <div class=\"piatpriemeshestvrightnamber\"><span>1</span></div>\r\n                    <h3>Предоплата и создание сайта</h3>\r\n                    <p>вносится <span> 25%</span> когда готов дизайн, ещё <span> 25%</span></p>\r\n                </div>\r\n                <div class=\"piatpriemeshestvleft notAnimated animateBlock leftAlign left\">\r\n                    <div class=\"piatpriemeshestvleftnamber\"><span>2</span></div>\r\n                    <h3>Основная сумма оплаты</h3>\r\n                    <p>когда сайт сделан<span> 50%</span></p>\r\n                </div>\r\n                <div class=\"piatpriemeshestvright notAnimated animateBlock leftAlign right\">\r\n                    <div class=\"piatpriemeshestvrightnamber\"><span>3</span></div>\r\n                    <h3>Домен и хостинг </h3>\r\n                    <p>покупаются отдельно от <span> 700 грн.</span> в год</p>\r\n                </div>\r\n                <div class=\"piatpriemeshestvleft notAnimated animateBlock leftAlign left\">\r\n                    <div class=\"piatpriemeshestvleftnamber\"><span>4</span></div>\r\n                    <h3>Продвижение сайта в поиске</h3>\r\n                    <p>цена от -<span> 1500 грн. </span>в месяц</p>\r\n                </div>\r\n                <div class=\"piatpriemeshestvright notAnimated animateBlock leftAlign right\">\r\n                    <div class=\"piatpriemeshestvrightnamber\"><span>5</span></div>\r\n                    <h3>Круглосуточная тех поддержка </h3>\r\n                    <p>цена -<span> 0 грн.</span></p>\r\n                </div>\r\n            </div>\r\n            <h4 class=\"margintopmax paddingtopbottommin titleewhite center\" style=\"font-weight: 300;line-height: 1.4em;letter-spacing: 0em;\">При заказе сайта заключаем официальный договор<br> оплата на счёт, или наличными</h4>\r\n        </div>\r\n    </div>\r\n</section>\r\n<section>\r\n    <div class=\"videorol10 paddingbottommax\">\r\n        <video muted autoplay loop class=\"lazy\">\r\n            <data-src src=\"video/video-fon-93.webm\" type=\"video/webm\"></data-src>\r\n            <data-src src=\"video/video-fon-93.mp4\" type=\"video/mp4\"></data-src>\r\n        </video>\r\n        <div class=\"contenttline videodiv10\">\r\n            <div class=\"contentt zagoll\">\r\n                <h2>Некоторые из наших работ:</h2>\r\n                <div class=\"contenttportfolio paddingtopmid\">\r\n\r\n                    <div class=\"vieww view-third \"> <img class=\"lazyy\" data-src=\"images/sozdanie-saitov-kharkov-portfolio-formula.jpg\" alt=\"создание сайтов Харьков пример работы номер четыре\" />\r\n                        <div class=\"mask \">\r\n                            <h2>Сайт стоматологии</h2>\r\n                            <p>Презентационный сайт стоматологической клиники almadent.com.ua был спроектирован и создан с под конкретные задачи Использовались новые технологии css3 для отображения фотографий и самой страницы. Сделать сайт Харьков под ключ вы сможете в нашей web студии. </p><a href=\"https://almadent.com.ua/\" target=\"_blank\" title=\"сайт откроется в новом окне вашего браузера\" class=\"info\">Перейти на сайт</a> </div>\r\n                    </div>\r\n\r\n                    <div class=\"vieww view-third \"> <img class=\"lazyy\" data-src=\"images/sozdanie-saitov-kharkov-portfolio-sklad.jpg\" alt=\"создание сайтов Харьков пример работы номер шесть\" />\r\n                        <div class=\"mask \">\r\n                            <h2>Сайт салона красоты</h2>\r\n                            <p>Около 2 лет назад мы разрабатывали сайт для салона красоты Ларин. На сегодняшний момент дизайн этого ресурса остается актуальным. Сайт отвечает всем современным требованиями HTML и прекрасно проходит проверку на валидность. На сайте представлен каталог услуг и цены даннаго салона</p><a href=\"https://salon-larin.com.ua/\" target=\"_blank\" title=\"сайт откроется в новом окне вашего браузера\" rel=\"nofollow\" class=\"info\">Перейти на сайт</a> </div>\r\n                    </div>\r\n                    <div class=\"vieww view-third \"> <img class=\"lazyy\" data-src=\"images/sozdanie-saitov-kharkov-portfolio-poli.jpg\" alt=\"создание сайтов Харьков пример работы номер один\" />\r\n                        <div class=\"mask \">\r\n                            <h2>Сайт компании</h2>\r\n                            <p>Разработкой сайта www.polipro.com.ua занималась наша компания. Нами был в кратчайшие сроки изготовлен и запущен максимально информативный сайт,без каких либо излишеств с понятным, грамотным дизайном и исчерпывающей информацией о виды деятельности заказчика создать сайт Харьков. </p><a href=\"http://polipro.com.ua\" target=\"_blank\" title=\"сайт откроется в новом окне вашего браузера\" rel=\"nofollow\" class=\"info\">Перейти на сайт</a> </div>\r\n                    </div>\r\n                    <div class=\"vieww view-third \"> <img class=\"lazyy\" data-src=\"images/sozdanie-saitov-kharkov-portfolio-watch.jpg\" alt=\"создание сайтов Харьков пример работы номер два\" />\r\n                        <div class=\"mask \">\r\n                            <h2>Интернет магазин</h2>\r\n                            <p> В процессе создание сайтов watchmag.com.ua, была поставлена задача переноса более двух тысяч позиций с фотографиями, ценами и описаниями на более современный и быстрый магазинный движок. Наша веб студия справилась с поставленной задачей в кратчайшие сроки.</p><a href=\"http://watchmag.com.ua/japan-watch/Citizen\" target=\"_blank\" title=\"сайт откроется в новом окне вашего браузера\" rel=\"nofollow\" class=\"info\">Перейти на сайт</a> </div>\r\n                    </div>\r\n\r\n\r\n\r\n                    <div class=\"vieww view-third \"> <img class=\"lazyy\" data-src=\"images/sozdanie-saitov-kharkov-portfolio-georg.jpg\" alt=\"создание сайтов Харьков пример работы номер восемь\" />\r\n                        <div class=\"mask \">\r\n                            <h2>Магазин - каталог</h2>\r\n                            <p>Данный ресурс разрабатывался под конкретную задачу - это продвижение по ключевым словам, для этого было принято решение - сделать удобный интернет магазин для максимального улучшения поведенческого фактора.</p><a href=\"https://georgin.com.ua\" target=\"_blank\" title=\"сайт откроется в новом окне вашего браузера\" rel=\"nofollow\" class=\"info\">Перейти на сайт</a> </div>\r\n                    </div>\r\n                    <div class=\"vieww view-third \"> <img class=\"lazyy\" data-src=\"images/sozdanie-saitov-kharkov-portfolio-csv.jpg\" alt=\"создание сайтов Харьков пример работы номер девять\" />\r\n                        <div class=\"mask \">\r\n                            <h2>Сайт компании-магазин</h2>\r\n                            <p>Разработка данного сайта происходила несколько лет назад. Строгий дизайн и понятный интерфейс - это была основная задача, которую нам поставил заказчик. В предельно короткие сроки мы изготовили и протестировали данный web ресурс</p><a href=\"https://vals-pack.com/\" target=\"_blank\" title=\"сайт откроется в новом окне вашего браузера\" rel=\"nofollow\" class=\"info\">Перейти на сайт</a> </div>\r\n                    </div>\r\n\r\n\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n\r\n<section>\r\n    <div class=\"contenttline margintopmax\">\r\n\r\n        <div class=\"contentt paddingbottommid zagoll\">\r\n\r\n            <h2 class=\"semantics_info\">Отзывы наших клиентов</h2>\r\n\r\n\r\n            <div class=\"container otzivi\">\r\n                <div class=\"row\">\r\n                    <div class=\"col-md-8\">\r\n                        <div id=\"testimonial-slider\" class=\"owl-carousel\">\r\n                            <div class=\"testimonial\">\r\n                                <div class=\"testimonial-content\">\r\n                                    <div class=\"pic\">\r\n                                        <img class=\"lazyyy\" data-src=\"images/sozdanie-saitov-kharkov-klient-julia.jpg\" alt=\"клиент студии разработки сайтов Максим\" />\r\n                                    </div>\r\n                                    <p class=\"description\">\r\n                                        Результатом довольна. Ребята сделали красивый сайт и в кратчайшие сроки. Спасибо было очень приятно работать.\r\n                                    </p>\r\n                                </div>\r\n                                <div class=\"content\">\r\n                                    <h3 class=\"title\">Юлия</h3>\r\n                                    <span class=\"post\">- дизайнер интерьеров.</span>\r\n                                </div>\r\n                            </div>\r\n                            <div class=\"testimonial\">\r\n                                <div class=\"testimonial-content\">\r\n                                    <div class=\"pic\">\r\n                                        <img class=\"lazyyy\" data-src=\"images/sozdanie-saitov-kharkov-klient4.jpg\" alt=\"клиент студии разработки сайтов Максим\" />\r\n                                    </div>\r\n                                    <p class=\"description\">\r\n                                        Удобный получился сайт. Обратился в веб студию за разработкой сайта и видео ролика - всё сделали на отлично.\r\n                                    </p>\r\n                                </div>\r\n                                <div class=\"content\">\r\n                                    <h3 class=\"title\">Максим</h3>\r\n                                    <span class=\"post\">- директор Ekobord</span>\r\n                                </div>\r\n                            </div>\r\n                            <div class=\"testimonial\">\r\n                                <div class=\"testimonial-content\">\r\n                                    <div class=\"pic\">\r\n                                        <img class=\"lazyyy\" data-src=\"images/sozdanie-saitov-kharkov-klient2.jpg\" alt=\"клиент студии разработки сайтов Максим\" />\r\n                                    </div>\r\n                                    <p class=\"description\">\r\n                                        Удобный получился сайт. Так же доволен результатом раскрутки \"свадебный фотограф Харьков\" - 2е место.\r\n                                    </p>\r\n                                </div>\r\n                                <div class=\"content\">\r\n                                    <h3 class=\"title\">Антон</h3>\r\n                                    <span class=\"post\">- фотограф kravsov.com</span>\r\n                                </div>\r\n                            </div>\r\n                            <div class=\"testimonial\">\r\n                                <div class=\"testimonial-content\">\r\n                                    <div class=\"pic\">\r\n                                        <img class=\"lazyyy\" data-src=\"images/sozdanie-saitov-kharkov-klient3.jpg\" alt=\"клиент студии разработки сайтов Максим\" />\r\n                                    </div>\r\n                                    <p class=\"description\">\r\n                                        Спасибо за клиентов. Обратился за сайтом по ремонту - всё сделали как обещали и вывели в топ за 4-е месяца.\r\n                                    </p>\r\n                                </div>\r\n                                <div class=\"content\">\r\n                                    <h3 class=\"title\">Сергей</h3>\r\n                                    <span class=\"post\">- ремонт квартир</span>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n\r\n        </div>\r\n    </div>\r\n</section>\r\n\r\n<section>\r\n    <div class=\"contenttline paddingbottommax videorol7\">\r\n        <video muted autoplay loop class=\"lazy\">\r\n            <data-src src=\"video/video-fon-7.webm\" type=\"video/webm\"></data-src>\r\n            <data-src src=\"video/video-fon-7.mp4\" type=\"video/mp4\"></data-src>\r\n        </video>\r\n        <div class=\"videodiv7\">\r\n            <div class=\"contentt paddingbottommax zagoll\">\r\n                <h2 class=\"titleewhite\">Это мы</h2>\r\n                <div class=\"contenttlineblock-eto-mi-img\">\r\n                    <div>\r\n                        <video class=\"lazyy avatars\" muted autoplay>\r\n                            <data-src src=\"video/Professional4.webm\" type=\"video/webm\"></data-src>\r\n                            <data-src src=\"video/Professional4.mp4\" type=\"video/mp4;\"></data-src>\r\n                        </video>\r\n                        <p class=\"imena\">Антон</p>\r\n                    </div>\r\n                    <div>\r\n                        <video class=\"lazyy avatars\" muted autoplay>\r\n                            <data-src src=\"video/dima.webm\" type=\"video/webm\"></data-src>\r\n                            <data-src src=\"video/dima.mp4\" type=\"video/mp4;\"></data-src>\r\n                        </video>\r\n                        <p class=\"imena\">Дима</p>\r\n                    </div>\r\n                    <div>\r\n                        <video class=\"lazyy avatars\" muted autoplay>\r\n                            <data-src src=\"video/olga.webm\" type=\"video/webm\"></data-src>\r\n                            <data-src src=\"video/olga.mp4\" type=\"video/mp4;\"></data-src>\r\n                        </video>\r\n                        <p class=\"imena\">Оля</p>\r\n                    </div>\r\n                    <div>\r\n                        <video class=\"lazyy avatars\" muted autoplay>\r\n                            <data-src src=\"video/vika3.webm\" type=\"video/webm\"></data-src>\r\n                            <data-src src=\"video/vika.mp4\" type=\"video/mp4;\"></data-src>\r\n                        </video>\r\n                        <p class=\"imena\">Вика</p>\r\n                    </div>\r\n                    <div>\r\n                        <video class=\"lazyy avatars\" muted autoplay>\r\n                            <data-src src=\"video/igor.webm\" type=\"video/webm\"></data-src>\r\n                            <data-src src=\"video/igor.mp4\" type=\"video/mp4;\"></data-src>\r\n                        </video>\r\n                        <p class=\"imena\">Игорь</p>\r\n                    </div>\r\n                    <div>\r\n                        <video class=\"lazyy avatars\" muted autoplay>\r\n                            <data-src src=\"video/maks.webm\" type=\"video/webm\"></data-src>\r\n                            <data-src src=\"video/maks2.mp4\" type=\"video/mp4;\"></data-src>\r\n                        </video>\r\n                        <p class=\"imena\">Макс</p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n\r\n\r\n\r\n\r\n<section>\r\n    <div class=\"contenttline margintopbottommax\" >\r\n        <div class=\"middiv\">\r\n            <div id=\"accordion\">\r\n\r\n                <h3>А вы делаете сайты на шаблонах ?</h3>\r\n                <div>\r\n                    <p>Уже давно наша студия не использует шаблоны для создания сайтов. Мы разрабатываем веб ресурсы с индивидуальным дизайном, ведь в шаблонном сайте невозможно рассказать всю информацию о Вашем виде деятельности и доступно донести посетителям о всех преимуществах работы с Вами. Что такое индивидуальный дизайн сайта - смотрите в ролике справа.</p>\r\n                    <a class=\"bla-1\" href=\"https://www.youtube.com/watch?v=oKH91qnJsWc&\">\r\n                        <video muted autoplay loop class=\"lazyyy\">\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-unikalnij-dizaiv.webm\" type=\"video/webm\"></data-src>\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-unikalnij-dizaiv.mp4\" type=\"video/mp4\"></data-src>\r\n                        </video>\r\n                    </a>\r\n                </div>\r\n                <h3>Мне нужно чтобы сайт работал также и не телефоне. Вы такое делаете?</h3>\r\n                <div>\r\n                    <p>Адаптивный дизайн - это один из обязательных пунктов создания сайта в нашей компании. Если ресурс не будет работать на телефонах и планшетах - то про первую страницу в поиске можно смело забыть. Поисковые системы очень не любят отсуцтвие поддержки вёрстки для мобильных устройств. Что такое адаптивный дизайн - смотрите в ролике справа.</p>\r\n                    <a class=\"bla-1\" href=\"https://www.youtube.com/watch?v=bd85AiQhwfE\">\r\n                        <video muted autoplay loop class=\"lazyyy\">\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-adaptive2.webm\" type=\"video/webm\"></data-src>\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-adaptive2.mp4\" type=\"video/mp4\"></data-src>\r\n                        </video>\r\n                    </a>\r\n                </div>\r\n                <h3>Вы занимаетесь продвижением созданных у вас сайтов и почём?</h3>\r\n                <div>\r\n                    <p>Продвижение сайта в поиске - это очень неоднозначный вопрос. Безусловно мы этим занимаемся и без особого труда выведем разработанный у нас сайт в лидеры. Для этого может хватить и внутренней SEO оптимизации, а может будет нужно делать что-то ещё. Всё зависит от конкуренции по Вашим ключивым словам. Что такое SEO оптимизация - смотрите в ролике справа.</p>\r\n                    <a class=\"bla-1\" href=\"https://www.youtube.com/watch?v=s4AYCTlfy0E\">\r\n                        <video muted autoplay loop class=\"lazyyy\">\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-seo.webm\" type=\"video/webm\"></data-src>\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-seo.mp4\" type=\"video/mp4\"></data-src>\r\n                        </video>\r\n                    </a>\r\n                </div>\r\n                <h3>Я не понимаю что такое домен и хостинг - помогите разобраться.</h3>\r\n                <div>\r\n                    <p>Вам и не надо особо в этом разбираться, мы всё сделаем за Вас. Купим домен, хостин и при завершении работ всё переоформим на Вас, что бы Вы были единственным обладателем сайта. Доступ будет сделан по аналогу приват 24, то есть без смс никто кроме Вас зайти не сможет. Что такое домен и хостинг - смотрите в ролике справа.</p>\r\n                    <a class=\"bla-1\" href=\"https://www.youtube.com/watch?v=IdaX9wmSTa0\">\r\n                        <video muted autoplay loop class=\"lazyyy\">\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-hosting.webm\" type=\"video/webm\"></data-src>\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-hosting.mp4\" type=\"video/mp4\"></data-src>\r\n                        </video>\r\n                    </a>\r\n                </div>\r\n                <h3>Как вообще происходит создание сайта у вас и какие этапы?</h3>\r\n                <div>\r\n                    <p>Вы вносите предоплату 10% от суммы разработки сайта, после чего мы рисуем прототип (чёрно-белый чертёж) и согласуем все тексты и расположение модулей с Вами. После этого дизайнеры разрабатывают дизайн в фотошопе на основе прототипа, как всё готово и Вас устраивает - сайт верстается и выкладывается на тестовый домен для полного согласования и тестирования. Вы вносите оставшиеся 90% суммы и мы запускаем проект.</p>\r\n                    <a class=\"bla-1\" href=\"https://www.youtube.com/watch?v=HOovnggiIvY\">\r\n                        <video muted autoplay loop class=\"lazyyy\">\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-etapi.webm\" type=\"video/webm\"></data-src>\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-etapi.mp4\" type=\"video/mp4\"></data-src>\r\n                        </video>\r\n                    </a>\r\n                </div>\r\n\r\n                <h3>Говорят что можно интегрировать facebook с сайтом ?</h3>\r\n                <div>\r\n                    <p>Это очень полезный функционал для сайта со многих сторон, во первых Вы можете напрямую общаться с вашими клиентами, во вторых это увеличивает время нахождения пользователя на Вашем ресурсе, что очень благотворно сказывается на SEO результатах, улучшая так называемый поведенческий фактор.</p>\r\n                    <a class=\"bla-1\" href=\"https://www.youtube.com/watch?v=_6lxRtK0Apw\">\r\n                        <video muted autoplay loop class=\"lazyyy\">\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-otzivi.webm\" type=\"video/webm\"></data-src>\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-otzivi.mp4\" type=\"video/mp4\"></data-src>\r\n                        </video>\r\n                    </a>\r\n                </div>\r\n                <h3>Вы снимаете видеоролики для сайта ?</h3>\r\n                <div>\r\n                    <p>Да - мы можем сделать анимационный ролик в специализированных программах или выехать к вам в офис или производство и сделать классический видеоролик с озвучкой и наложением музыки. Продолжительность видео должно быть 1-2 минуты. Подробнее о видеороликах - смотрите в видео обзоре справа.</p>\r\n                    <a class=\"bla-1\" href=\"https://www.youtube.com/watch?v=X7V4-r-NWWQ\">\r\n                        <video muted autoplay loop class=\"lazyyy\">\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-rolik.webm\" type=\"video/webm\"></data-src>\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-rolik.mp4\" type=\"video/mp4\"></data-src>\r\n                        </video>\r\n                    </a>\r\n                </div>\r\n\r\n\r\n\r\n                <h3>Мне нужно сделать сайт каталог с товарами. Таким занимаетесь?</h3>\r\n                <div>\r\n                    <p>Мы можем разработать как полноценный интернет магазин, так и сайт каталог. Количество товаров в каталоге неограниченно, цену за каждую единицу продукции можно указывать или нет. Так же у каждого товара будет фотография и описание, можно добавить кнопку скачать полный прайс. Подробнее о сайте каталоге - смотрите в видео обзоре справа.</p>\r\n                    <a class=\"bla-1\" href=\"https://www.youtube.com/watch?v=eFU9IZh5w4Q\">\r\n                        <video muted autoplay loop class=\"lazyyy\">\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-katalog.webm\" type=\"video/webm\"></data-src>\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-katalog.mp4\" type=\"video/mp4\"></data-src>\r\n                        </video>\r\n                    </a>\r\n                </div>\r\n                <h3>Я хочу что бы мой сайт был на нескольких языках.</h3>\r\n                <div>\r\n                    <p>Лишний раз подумайте над этим. Ведь если делать правильную мультиязычность - это дублировать ваш основной ресурс на другой поддомен и язык. Желательно его SEO оптимизировать под ту страну на каком языке вы собираетесь делать сайт. Это очень трудоёмкий и не всегда нужный функционал при разработке сайта в Харькове.</p>\r\n                    <a class=\"bla-1\" href=\"https://www.youtube.com/watch?v=CmS53xqldB0\">\r\n                        <video muted autoplay loop class=\"lazyyy\">\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-jaziki.webm\" type=\"video/webm\"></data-src>\r\n                            <data-src src=\"video/sozdanie-saitov-kharkov-jaziki.mp4\" type=\"video/mp4\"></data-src>\r\n                        </video>\r\n                    </a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n<section>\r\n    <div class=\"videorol9 paddingbottommax\">\r\n        <video muted autoplay loop class=\"lazy\">\r\n            <data-src src=\"video/video-fon-93.webm\" type=\"video/webm\"></data-src>\r\n            <data-src src=\"video/video-fon-93.mp4\" type=\"video/mp4\"></data-src>\r\n        </video>\r\n        <div class=\"contenttline videodiv9\">\r\n            <div class=\"contentt\">\r\n                <div class=\"aktsiaforma\">\r\n                    <div class=\"sidebarForm\">\r\n                        <h2>Акция !!!</h2>\r\n                        <p class=\"white\">Заполни форму до <span style=\"color:#ff6200;font-size:1.2em;letter-spacing:0.06em;\"> $dd </span> и получи бесплатное подключение сайта к Google.</p>\r\n\r\n                        <form action=\"#\" method=\"post\" id=\"cForm2\">\r\n                            <div class=\"input\"><span style=\"color: #ff9600; margin-left: -15px;\">&#9913;</span>\r\n                                <input value=\"\" id=\"posName\" type=\"text\" placeholder=\"Ваше имя\"> </div>\r\n                            <div class=\"input\"><span style=\"color: #ff9600; margin-left: -15px;\">&#9913;</span>\r\n                                <input value=\"\" id=\"posPhone\" type=\"text\" placeholder=\"контактный телефон\"> </div>\r\n                            <div class=\"input\"><span style=\"color: #ff9600; margin-left: -15px;\">&#9913;</span>\r\n                                <input value=\"\" id=\"posMail\" type=\"text\" placeholder=\"почта\"> </div>\r\n                            <div class=\"input\">\r\n                                <input value=\"\" id=\"posSite\" type=\"text\" placeholder=\"Ваш сайт,  если есть\"> </div>\r\n\r\n                            <div>	<span style=\"color: #ff9600; margin-left: -15px;\">&#9913;</span>\r\n                                <select name=\"select2\" id=\"posText\">\r\n                                    <option disabled selected>Выберите тип сайта</option>\r\n                                    <option>Визитка</option>\r\n                                    <option>Лендинг</option>\r\n                                    <option>Сайт компании</option>\r\n                                    <option>Магазин</option>\r\n                                    <option>Портал</option>\r\n\r\n                                </select>\r\n                            </div>\r\n\r\n                            <div class=\"biggg\">\r\n\r\n\r\n                                <textarea id=\"posKom\" placeholder=\"Комментарий\"></textarea>\r\n\r\n                            </div>\r\n                            <div style=\"width:313px;margin:0px auto;\" id=\"loadBar\"></div>\r\n                            <button type=\"button\" id=\"send\">Отправить заявку</button>\r\n                            <p class=\"sogl\">Нажимая кнопку \"Отправить заявку\", я даю свое согласие на обработку персональных данных и принимаю <a href=\"soglashenie.html\"  target=\"_blank\">Пользовательское соглашение</a></p>\r\n                        </form>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n<section>\r\n    <h2 class=\"semantics_info\">Сайт Гуд web студии задайте вопрос с комментарием</h2>\r\n    <div class=\"contenttline\">\r\n        <div class=\"middiv paddingtopbottommid\">\r\n            <div class=\"vkblock scrollable-section\" data-section-title=\"Вопросы - ответы\">\r\n                <script>\r\n                    function loadAPI() {\r\n                        var js = document.createElement(\'script\');\r\n                        js.src = \"//connect.facebook.net/ru_RU/sdk.js#xfbml=1&version=v2.10&appId=198541273995524\";\r\n                        document.body.appendChild(js);\r\n                    }\r\n                    window.onscroll = function() {\r\n                        var rect = document.getElementById(\'comments\').getBoundingClientRect();\r\n                        if (rect.top < window.innerHeight) {\r\n                            loadAPI();\r\n                            window.onscroll = null;\r\n                        }\r\n                    }\r\n                </script>\r\n                <div id=\"fb-root\"></div>\r\n                <div id=\"comments\" class=\"fb-comments\" data-href=\"https://www.razrabotka-saitov.com/\" data-numposts=\"5\" data-colorscheme=\"light\" data-width=\"auto\"></div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>', NULL, '22', 'rtghntrgy', 'th treg реу', 'ACTIVE', '2018-12-17 10:50:05', '2018-12-17 10:51:44');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(2, 'browse_bread', NULL, '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(3, 'browse_database', NULL, '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(4, 'browse_media', NULL, '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(5, 'browse_compass', NULL, '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(6, 'browse_menus', 'menus', '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(7, 'read_menus', 'menus', '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(8, 'edit_menus', 'menus', '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(9, 'add_menus', 'menus', '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(10, 'delete_menus', 'menus', '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(11, 'browse_roles', 'roles', '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(12, 'read_roles', 'roles', '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(13, 'edit_roles', 'roles', '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(14, 'add_roles', 'roles', '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(15, 'delete_roles', 'roles', '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(16, 'browse_users', 'users', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(17, 'read_users', 'users', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(18, 'edit_users', 'users', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(19, 'add_users', 'users', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(20, 'delete_users', 'users', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(21, 'browse_settings', 'settings', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(22, 'read_settings', 'settings', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(23, 'edit_settings', 'settings', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(24, 'add_settings', 'settings', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(25, 'delete_settings', 'settings', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(26, 'browse_categories', 'categories', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(27, 'read_categories', 'categories', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(28, 'edit_categories', 'categories', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(29, 'add_categories', 'categories', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(30, 'delete_categories', 'categories', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(31, 'browse_posts', 'posts', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(32, 'read_posts', 'posts', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(33, 'edit_posts', 'posts', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(34, 'add_posts', 'posts', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(35, 'delete_posts', 'posts', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(36, 'browse_pages', 'pages', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(37, 'read_pages', 'pages', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(38, 'edit_pages', 'pages', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(39, 'add_pages', 'pages', '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(40, 'delete_pages', 'pages', '2018-12-17 08:07:08', '2018-12-17 08:07:08');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-12-17 08:07:08', '2018-12-17 08:07:08'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-12-17 08:07:08', '2018-12-17 08:07:08');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Администратор', '2018-12-17 08:07:07', '2018-12-17 08:07:07'),
(2, 'user', 'Обычный Пользователь', '2018-12-17 08:07:07', '2018-12-17 08:07:07');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Название Сайта', 'Название Сайта', '', 'text', 1, 'Site'),
(2, 'site.description', 'Описание Сайта', 'Описание Сайта', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Логотип Сайта', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Фоновое Изображение для Админки', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Название Админки', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Описание Админки', 'Добро пожаловать в Voyager. Пропавшую Админку для Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Загрузчик Админки', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Иконка Админки', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (используется для панели администратора)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$dMGv7FqlzTc1z6E.eWpzCOeQSI8LdAFRchFA1sTGEBhacJ3c20nW.', 'nW8673KEiEbWsWOXuEGTvGMA7nVfSywJBlJIfduahN1qA4Iy5vDUql4m289m', NULL, '2018-12-17 08:07:08', '2018-12-17 08:07:08');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
