-- All-in-One WP Migration SQL Dump

-- https://servmask.com/

--

-- Host: localhost

-- Database: cloudbooks-db

-- Class: Ai1wm_Database_Mysqli

--

DROP TABLE IF EXISTS `SERVMASK_PREFIX_commentmeta`;

CREATE TABLE
    `SERVMASK_PREFIX_commentmeta` (
        `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
        `meta_key` varchar(255) DEFAULT NULL,
        `meta_value` longtext DEFAULT NULL,
        PRIMARY KEY (`meta_id`),
        KEY `comment_id` (`comment_id`),
        KEY `meta_key` (`meta_key`(191))
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_comments`;

CREATE TABLE
    `SERVMASK_PREFIX_comments` (
        `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
        `comment_author` tinytext NOT NULL,
        `comment_author_email` varchar(100) NOT NULL DEFAULT '',
        `comment_author_url` varchar(200) NOT NULL DEFAULT '',
        `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
        `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `comment_content` text NOT NULL,
        `comment_karma` int(11) NOT NULL DEFAULT 0,
        `comment_approved` varchar(20) NOT NULL DEFAULT '1',
        `comment_agent` varchar(255) NOT NULL DEFAULT '',
        `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
        `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
        `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
        PRIMARY KEY (`comment_ID`),
        KEY `comment_post_ID` (`comment_post_ID`),
        KEY `comment_approved_date_gmt` (
            `comment_approved`,
            `comment_date_gmt`
        ),
        KEY `comment_date_gmt` (`comment_date_gmt`),
        KEY `comment_parent` (`comment_parent`),
        KEY `comment_author_email` (`comment_author_email`(10))
    ) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

START TRANSACTION;

INSERT INTO
    `SERVMASK_PREFIX_comments`
VALUES (
        1,
        1,
        'Um comentarista do WordPress',
        'wapuu@wordpress.example',
        'https://br.wordpress.org/',
        '',
        '2023-10-21 23:47:19',
        '2023-10-22 02:47:19',
        'Oi, isto é um comentário.\nPara iniciar a moderar, editar e excluir comentários, visite a tela Comentários no painel.\nOs avatares dos comentaristas vêm do <a href=\"https://br.gravatar.com/\">Gravatar</a>.',
        0,
        '1',
        '',
        'comment',
        0,
        0
    );

COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_links`;

CREATE TABLE
    `SERVMASK_PREFIX_links` (
        `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `link_url` varchar(255) NOT NULL DEFAULT '',
        `link_name` varchar(255) NOT NULL DEFAULT '',
        `link_image` varchar(255) NOT NULL DEFAULT '',
        `link_target` varchar(25) NOT NULL DEFAULT '',
        `link_description` varchar(255) NOT NULL DEFAULT '',
        `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
        `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
        `link_rating` int(11) NOT NULL DEFAULT 0,
        `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `link_rel` varchar(255) NOT NULL DEFAULT '',
        `link_notes` mediumtext NOT NULL,
        `link_rss` varchar(255) NOT NULL DEFAULT '',
        PRIMARY KEY (`link_id`),
        KEY `link_visible` (`link_visible`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_options`;

CREATE TABLE
    `SERVMASK_PREFIX_options` (
        `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `option_name` varchar(191) NOT NULL DEFAULT '',
        `option_value` longtext NOT NULL,
        `autoload` varchar(20) NOT NULL DEFAULT 'yes',
        PRIMARY KEY (`option_id`),
        UNIQUE KEY `option_name` (`option_name`),
        KEY `autoload` (`autoload`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 369 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

START TRANSACTION;

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        1,
        'siteurl',
        'http://cloudbooks.onlab.click',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        2,
        'home',
        'http://cloudbooks.onlab.click',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        3,
        'blogname',
        'CloudBooks',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (4, 'blogdescription', '', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        5,
        'users_can_register',
        '0',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        6,
        'admin_email',
        'dev.isaque21@gmail.com',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (7, 'start_of_week', '0', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        8,
        'use_balanceTags',
        '0',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (9, 'use_smilies', '1', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        10,
        'require_name_email',
        '1',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        11,
        'comments_notify',
        '1',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        12,
        'posts_per_rss',
        '10',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        13,
        'rss_use_excerpt',
        '0',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        14,
        'mailserver_url',
        'mail.example.com',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        15,
        'mailserver_login',
        'login@example.com',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        16,
        'mailserver_pass',
        'password',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        17,
        'mailserver_port',
        '110',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        18,
        'default_category',
        '1',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        19,
        'default_comment_status',
        'open',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        20,
        'default_ping_status',
        'open',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        21,
        'default_pingback_flag',
        '0',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        22,
        'posts_per_page',
        '10',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        23,
        'date_format',
        'j \\d\\e F \\d\\e Y',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (24, 'time_format', 'H:i', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        25,
        'links_updated_date_format',
        'j \\d\\e F \\d\\e Y, H:i',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        26,
        'comment_moderation',
        '0',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        27,
        'moderation_notify',
        '1',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        28,
        'permalink_structure',
        '/%year%/%monthnum%/%day%/%postname%/',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        29,
        'rewrite_rules',
        'a:119:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:8:\"books/?$\";s:25:\"index.php?post_type=books\";s:38:\"books/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=books&feed=$matches[1]\";s:33:\"books/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=books&feed=$matches[1]\";s:25:\"books/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=books&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:31:\"books/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"books/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"books/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"books/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"books/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"books/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"books/(.+?)/embed/?$\";s:38:\"index.php?books=$matches[1]&embed=true\";s:24:\"books/(.+?)/trackback/?$\";s:32:\"index.php?books=$matches[1]&tb=1\";s:44:\"books/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?books=$matches[1]&feed=$matches[2]\";s:39:\"books/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?books=$matches[1]&feed=$matches[2]\";s:32:\"books/(.+?)/page/?([0-9]{1,})/?$\";s:45:\"index.php?books=$matches[1]&paged=$matches[2]\";s:39:\"books/(.+?)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?books=$matches[1]&cpage=$matches[2]\";s:28:\"books/(.+?)(?:/([0-9]+))?/?$\";s:44:\"index.php?books=$matches[1]&page=$matches[2]\";s:54:\"book-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?book_category=$matches[1]&feed=$matches[2]\";s:49:\"book-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?book_category=$matches[1]&feed=$matches[2]\";s:30:\"book-category/([^/]+)/embed/?$\";s:46:\"index.php?book_category=$matches[1]&embed=true\";s:42:\"book-category/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?book_category=$matches[1]&paged=$matches[2]\";s:24:\"book-category/([^/]+)/?$\";s:35:\"index.php?book_category=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=32&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (30, 'hack_file', '0', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        31,
        'blog_charset',
        'UTF-8',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (32, 'moderation_keys', '', 'no');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        33,
        'active_plugins',
        'a:0:{}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (34, 'category_base', '', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        35,
        'ping_sites',
        'http://rpc.pingomatic.com/',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        36,
        'comment_max_links',
        '2',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (37, 'gmt_offset', '0', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        38,
        'default_email_category',
        '1',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (39, 'recently_edited', '', 'no');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (40, 'template', '', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (41, 'stylesheet', '', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        42,
        'comment_registration',
        '0',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        43,
        'html_type',
        'text/html',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (44, 'use_trackback', '0', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        45,
        'default_role',
        'subscriber',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        46,
        'db_version',
        '55853',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        47,
        'uploads_use_yearmonth_folders',
        '1',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (48, 'upload_path', '', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (49, 'blog_public', '0', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        50,
        'default_link_category',
        '2',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        51,
        'show_on_front',
        'page',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (52, 'tag_base', '', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (53, 'show_avatars', '1', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (54, 'avatar_rating', 'G', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        55,
        'upload_url_path',
        '',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        56,
        'thumbnail_size_w',
        '150',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        57,
        'thumbnail_size_h',
        '150',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        58,
        'thumbnail_crop',
        '1',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        59,
        'medium_size_w',
        '300',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        60,
        'medium_size_h',
        '300',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        61,
        'avatar_default',
        'mystery',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        62,
        'large_size_w',
        '1024',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        63,
        'large_size_h',
        '1024',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        64,
        'image_default_link_type',
        'none',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        65,
        'image_default_size',
        '',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        66,
        'image_default_align',
        '',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        67,
        'close_comments_for_old_posts',
        '0',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        68,
        'close_comments_days_old',
        '14',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        69,
        'thread_comments',
        '1',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        70,
        'thread_comments_depth',
        '5',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (71, 'page_comments', '0', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        72,
        'comments_per_page',
        '50',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        73,
        'default_comments_page',
        'newest',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        74,
        'comment_order',
        'asc',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        75,
        'sticky_posts',
        'a:0:{}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        76,
        'widget_categories',
        'a:3:{i:1;a:1:{s:5:\"title\";s:10:\"Categories\";}i:2;a:1:{s:5:\"title\";s:10:\"Categories\";}s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        77,
        'widget_text',
        'a:4:{i:1;a:2:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:1407:\"<a href=\"#\" class=\"logo\"><img src=\"http://cloudbooks.onlab.click/wp-content/plugins/ecommerce-companion/inc/themes/retailsy/assets/images/footerlogo.png\"></a>\r\n                            <div class=\"textwidget\">\r\n                                <p class=\"about-template\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt\r\n                                    quas recusandae\r\n                                    explicabo\r\n                                    voluptatibus dolor esse voluptates,.</p>\r\n                                <aside class=\"widget widget_social_widget\">\r\n                                    <ul>\r\n                                        <li><a href=\"#\" class=\"active\"><i class=\"fa fa-facebook\"></i><i class=\"fa fa-facebook\"></i></a></li>\r\n                                        <li><a href=\"#\"><i class=\"fa fa-twitter\"></i><i class=\"fa fa-twitter\"></i></a></li>\r\n                                        <li><a href=\"#\"><i class=\"fa fa-instagram\"></i><i class=\"fa fa-instagram\"></i></a></li>\r\n                                        <li><a href=\"#\"><i class=\"fa fa-linkedin\"></i><i class=\"fa fa-linkedin\"></i></a></li>\r\n                                        <li><a href=\"#\"><i class=\"fa fa-google-plus\"></i><i class=\"fa fa-google-plus\"></i></a></li>\r\n                                    </ul>\r\n                                </aside>\r\n                            </div>\";}i:2;a:1:{s:5:\"title\";s:12:\"Recent Posts\";}i:3;a:1:{s:5:\"title\";s:10:\"Categories\";}s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        78,
        'widget_rss',
        'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        79,
        'uninstall_plugins',
        'a:0:{}',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        80,
        'timezone_string',
        'America/Sao_Paulo',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        81,
        'page_for_posts',
        '0',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        82,
        'page_on_front',
        '32',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        83,
        'default_post_format',
        '0',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        84,
        'link_manager_enabled',
        '0',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        85,
        'finished_splitting_shared_terms',
        '1',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (86, 'site_icon', '0', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        87,
        'medium_large_size_w',
        '768',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        88,
        'medium_large_size_h',
        '0',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        89,
        'wp_page_for_privacy_policy',
        '3',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        90,
        'show_comments_cookies_opt_in',
        '1',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        91,
        'admin_email_lifespan',
        '1713494839',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (92, 'disallowed_keys', '', 'no');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        93,
        'comment_previously_approved',
        '1',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        94,
        'auto_plugin_theme_update_emails',
        'a:0:{}',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        95,
        'auto_update_core_dev',
        'enabled',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        96,
        'auto_update_core_minor',
        'enabled',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        97,
        'auto_update_core_major',
        'enabled',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        98,
        'wp_force_deactivated_plugins',
        'a:0:{}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        99,
        'initial_db_version',
        '55853',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        100,
        'SERVMASK_PREFIX_user_roles',
        'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (101, 'fresh_site', '0', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (102, 'WPLANG', 'pt_BR', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (103, 'user_count', '1', 'no');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        104,
        'widget_block',
        'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        105,
        'sidebars_widgets',
        'a:8:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:8:\"search-2\";i:2;s:6:\"text-2\";i:3;s:6:\"text-3\";i:4;s:12:\"categories-2\";i:5;s:7:\"block-2\";i:6;s:7:\"block-3\";i:7;s:7:\"block-4\";i:8;s:7:\"block-5\";i:9;s:7:\"block-6\";}s:19:\"wbg-gallery-sidebar\";a:0:{}s:27:\"retailsy-header-above-first\";a:0:{}s:28:\"retailsy-header-above-second\";a:0:{}s:24:\"retailsy-sidebar-primary\";a:3:{i:0;s:8:\"search-1\";i:1;s:14:\"recent-posts-1\";i:2;s:10:\"archives-1\";}s:22:\"retailsy-footer-widget\";a:4:{i:0;s:6:\"text-1\";i:1;s:12:\"categories-1\";i:2;s:10:\"archives-1\";i:3;s:8:\"search-1\";}s:28:\"retailsy-woocommerce-sidebar\";a:0:{}s:13:\"array_version\";i:3;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        106,
        'cron',
        'a:6:{i:1698623239;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1698625920;a:4:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1698634039;a:6:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1698709298;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1699152440;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        107,
        'widget_pages',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        108,
        'widget_calendar',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        109,
        'widget_archives',
        'a:3:{i:1;a:1:{s:5:\"title\";s:8:\"Archives\";}i:2;a:1:{s:5:\"title\";s:8:\"Archives\";}s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        110,
        'widget_media_audio',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        111,
        'widget_media_image',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        112,
        'widget_media_gallery',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        113,
        'widget_media_video',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        114,
        'widget_meta',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        115,
        'widget_search',
        'a:3:{i:1;a:1:{s:5:\"title\";s:6:\"Search\";}i:2;a:1:{s:5:\"title\";s:6:\"Search\";}s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        116,
        'widget_recent-posts',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        117,
        'widget_recent-comments',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        118,
        'widget_tag_cloud',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        119,
        'widget_nav_menu',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        120,
        'widget_custom_html',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        121,
        '_transient_wp_core_block_css_files',
        'a:2:{s:7:\"version\";s:5:\"6.3.2\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        123,
        'theme_mods_twentytwentythree',
        'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698281408;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        124,
        'recovery_keys',
        'a:0:{}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        125,
        'https_detection_errors',
        'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:26:\"Requisição HTTPS falhou.\";}}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        142,
        '_site_transient_timeout_php_check_e03393d2256a9f8210df62b783317554',
        '1698712193',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        143,
        '_site_transient_php_check_e03393d2256a9f8210df62b783317554',
        'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        144,
        '_transient_health-check-site-status-result',
        '{\"good\":17,\"recommended\":5,\"critical\":1}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        147,
        '_site_transient_timeout_browser_ac61c259b412df784ffd75475c7a865e',
        '1698712320',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        148,
        '_site_transient_browser_ac61c259b412df784ffd75475c7a865e',
        'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"118.0.0.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        156,
        'can_compress_scripts',
        '1',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        165,
        'finished_updating_comment_type',
        '1',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        166,
        'recently_activated',
        'a:0:{}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        171,
        'fs_active_plugins',
        'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:25:\"wp-books-gallery/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:6:\"2.5.12\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1698107792;s:11:\"plugin_path\";s:37:\"wp-books-gallery/wp-books-gallery.php\";}}s:7:\"abspath\";s:14:\"/var/www/html/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:37:\"wp-books-gallery/wp-books-gallery.php\";s:8:\"sdk_path\";s:25:\"wp-books-gallery/freemius\";s:7:\"version\";s:6:\"2.5.12\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1698107792;}}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (172, 'fs_debug_mode', '', 'yes');

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        173,
        'fs_accounts',
        'a:5:{s:21:\"id_slug_type_path_map\";a:1:{i:8841;a:3:{s:4:\"slug\";s:16:\"wp-books-gallery\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:37:\"wp-books-gallery/wp-books-gallery.php\";}}s:11:\"plugin_data\";a:1:{s:16:\"wp-books-gallery\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:37:\"wp-books-gallery/wp-books-gallery.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1698107792;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:6:\"2.5.12\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"4.5.8\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";N;s:4:\"host\";s:22:\"cloudbooks.onlab.click\";s:9:\"server_ip\";s:10:\"10.0.1.138\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1698107792;s:7:\"version\";s:5:\"4.5.8\";}s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1698107800;s:7:\"version\";s:5:\"4.5.8\";}}}s:13:\"file_slug_map\";a:1:{s:37:\"wp-books-gallery/wp-books-gallery.php\";s:16:\"wp-books-gallery\";}s:7:\"plugins\";a:1:{s:16:\"wp-books-gallery\";O:9:\"FS_Plugin\":24:{s:2:\"id\";s:4:\"8841\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_0a8ec2eb28cd4919f2bed771a51da\";s:10:\"secret_key\";N;s:16:\"parent_plugin_id\";N;s:5:\"title\";s:23:\"WordPress Books Gallery\";s:4:\"slug\";s:16:\"wp-books-gallery\";s:12:\"premium_slug\";s:24:\"wp-books-gallery-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:37:\"wp-books-gallery/wp-books-gallery.php\";s:7:\"version\";s:5:\"4.5.8\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:17:\"opt_in_moderation\";N;}}s:9:\"unique_id\";s:32:\"b0b2705852004da5417d217c2f770ddc\";}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        174,
        'fs_api_cache',
        'a:0:{}',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        215,
        'current_theme',
        'Ecommerce Bookshop',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        216,
        'theme_mods_retailsy',
        'a:15:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";s:0:\"\";s:14:\"browse_cat_ttl\";s:47:\"<i class=\"fa fa-list-ul\"></i> Browse Categories\";s:15:\"hdr_contact_ttl\";s:14:\"+12 348 567 90\";s:15:\"hdr_contact_url\";s:1:\"#\";s:9:\"blog2_ttl\";s:12:\"Latest Blogs\";s:12:\"hdr_cart_ttl\";s:4:\"Cart\";s:13:\"hs_browse_cat\";b:0;s:17:\"hs_product_search\";b:0;s:16:\"hide_show_sticky\";b:0;s:16:\"header_textcolor\";s:6:\"ffffff\";s:10:\"logo_width\";s:40:\"{\"desktop\":30,\"tablet\":140,\"mobile\":140}\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698282656;s:4:\"data\";a:4:{s:24:\"retailsy-sidebar-primary\";a:3:{i:0;s:8:\"search-1\";i:1;s:14:\"recent-posts-1\";i:2;s:10:\"archives-1\";}s:22:\"retailsy-footer-widget\";a:4:{i:0;s:6:\"text-1\";i:1;s:12:\"categories-1\";i:2;s:10:\"archives-1\";i:3;s:8:\"search-1\";}s:27:\"retailsy-header-above-first\";a:1:{i:0;s:13:\"info-widget-3\";}s:28:\"retailsy-header-above-second\";a:1:{i:0;s:15:\"social_widget-2\";}}}}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        217,
        'theme_switched',
        '',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        218,
        'downloaded_font_files',
        'a:57:{s:79:\"https://fonts.gstatic.com/s/greatvibes/v18/RWmMoKWR9v4ksMfaWd_JN9XKiaQ6DQ.woff2\";s:80:\"/var/www/html/wp-content//fonts/great-vibes/RWmMoKWR9v4ksMfaWd_JN9XKiaQ6DQ.woff2\";s:79:\"https://fonts.gstatic.com/s/greatvibes/v18/RWmMoKWR9v4ksMfaWd_JN9XLiaQ6DQ.woff2\";s:80:\"/var/www/html/wp-content//fonts/great-vibes/RWmMoKWR9v4ksMfaWd_JN9XLiaQ6DQ.woff2\";s:76:\"https://fonts.gstatic.com/s/greatvibes/v18/RWmMoKWR9v4ksMfaWd_JN9XFiaQ.woff2\";s:77:\"/var/www/html/wp-content//fonts/great-vibes/RWmMoKWR9v4ksMfaWd_JN9XFiaQ.woff2\";s:76:\"https://fonts.gstatic.com/s/poppins/v20/pxiAyp8kv8JHgFVrJJLmE0tDMPKzSQ.woff2\";s:76:\"/var/www/html/wp-content//fonts/poppins/pxiAyp8kv8JHgFVrJJLmE0tDMPKzSQ.woff2\";s:76:\"https://fonts.gstatic.com/s/poppins/v20/pxiAyp8kv8JHgFVrJJLmE0tMMPKzSQ.woff2\";s:76:\"/var/www/html/wp-content//fonts/poppins/pxiAyp8kv8JHgFVrJJLmE0tMMPKzSQ.woff2\";s:73:\"https://fonts.gstatic.com/s/poppins/v20/pxiAyp8kv8JHgFVrJJLmE0tCMPI.woff2\";s:73:\"/var/www/html/wp-content//fonts/poppins/pxiAyp8kv8JHgFVrJJLmE0tCMPI.woff2\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmv1pVFteOcEg.woff2\";s:77:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmv1pVFteOcEg.woff2\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmv1pVGdeOcEg.woff2\";s:77:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmv1pVGdeOcEg.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmv1pVF9eO.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmv1pVF9eO.woff2\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLm21lVFteOcEg.woff2\";s:77:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLm21lVFteOcEg.woff2\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLm21lVGdeOcEg.woff2\";s:77:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLm21lVGdeOcEg.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLm21lVF9eO.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLm21lVF9eO.woff2\";s:73:\"https://fonts.gstatic.com/s/poppins/v20/pxiGyp8kv8JHgFVrJJLucXtAKPY.woff2\";s:73:\"/var/www/html/wp-content//fonts/poppins/pxiGyp8kv8JHgFVrJJLucXtAKPY.woff2\";s:73:\"https://fonts.gstatic.com/s/poppins/v20/pxiGyp8kv8JHgFVrJJLufntAKPY.woff2\";s:73:\"/var/www/html/wp-content//fonts/poppins/pxiGyp8kv8JHgFVrJJLufntAKPY.woff2\";s:70:\"https://fonts.gstatic.com/s/poppins/v20/pxiGyp8kv8JHgFVrJJLucHtA.woff2\";s:70:\"/var/www/html/wp-content//fonts/poppins/pxiGyp8kv8JHgFVrJJLucHtA.woff2\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmg1hVFteOcEg.woff2\";s:77:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmg1hVFteOcEg.woff2\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmg1hVGdeOcEg.woff2\";s:77:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmg1hVGdeOcEg.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmg1hVF9eO.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmg1hVF9eO.woff2\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmr19VFteOcEg.woff2\";s:77:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmr19VFteOcEg.woff2\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmr19VGdeOcEg.woff2\";s:77:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmr19VGdeOcEg.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmr19VF9eO.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmr19VF9eO.woff2\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmy15VFteOcEg.woff2\";s:77:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmy15VFteOcEg.woff2\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmy15VGdeOcEg.woff2\";s:77:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmy15VGdeOcEg.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmy15VF9eO.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmy15VF9eO.woff2\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLm111VFteOcEg.woff2\";s:77:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLm111VFteOcEg.woff2\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLm111VGdeOcEg.woff2\";s:77:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLm111VGdeOcEg.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLm111VF9eO.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLm111VF9eO.woff2\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLm81xVFteOcEg.woff2\";s:77:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLm81xVFteOcEg.woff2\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLm81xVGdeOcEg.woff2\";s:77:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLm81xVGdeOcEg.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLm81xVF9eO.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLm81xVF9eO.woff2\";s:73:\"https://fonts.gstatic.com/s/poppins/v20/pxiGyp8kv8JHgFVrLPTucXtAKPY.woff2\";s:73:\"/var/www/html/wp-content//fonts/poppins/pxiGyp8kv8JHgFVrLPTucXtAKPY.woff2\";s:73:\"https://fonts.gstatic.com/s/poppins/v20/pxiGyp8kv8JHgFVrLPTufntAKPY.woff2\";s:73:\"/var/www/html/wp-content//fonts/poppins/pxiGyp8kv8JHgFVrLPTufntAKPY.woff2\";s:70:\"https://fonts.gstatic.com/s/poppins/v20/pxiGyp8kv8JHgFVrLPTucHtA.woff2\";s:70:\"/var/www/html/wp-content//fonts/poppins/pxiGyp8kv8JHgFVrLPTucHtA.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLFj_Z11lFc-K.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLFj_Z11lFc-K.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLFj_Z1JlFc-K.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLFj_Z1JlFc-K.woff2\";s:72:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLFj_Z1xlFQ.woff2\";s:72:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLFj_Z1xlFQ.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDz8Z11lFc-K.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLDz8Z11lFc-K.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDz8Z1JlFc-K.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLDz8Z1JlFc-K.woff2\";s:72:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDz8Z1xlFQ.woff2\";s:72:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLDz8Z1xlFQ.woff2\";s:70:\"https://fonts.gstatic.com/s/poppins/v20/pxiEyp8kv8JHgFVrJJbecmNE.woff2\";s:70:\"/var/www/html/wp-content//fonts/poppins/pxiEyp8kv8JHgFVrJJbecmNE.woff2\";s:70:\"https://fonts.gstatic.com/s/poppins/v20/pxiEyp8kv8JHgFVrJJnecmNE.woff2\";s:70:\"/var/www/html/wp-content//fonts/poppins/pxiEyp8kv8JHgFVrJJnecmNE.woff2\";s:68:\"https://fonts.gstatic.com/s/poppins/v20/pxiEyp8kv8JHgFVrJJfecg.woff2\";s:68:\"/var/www/html/wp-content//fonts/poppins/pxiEyp8kv8JHgFVrJJfecg.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLGT9Z11lFc-K.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLGT9Z11lFc-K.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLGT9Z1JlFc-K.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLGT9Z1JlFc-K.woff2\";s:72:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLGT9Z1xlFQ.woff2\";s:72:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLGT9Z1xlFQ.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLEj6Z11lFc-K.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLEj6Z11lFc-K.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLEj6Z1JlFc-K.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLEj6Z1JlFc-K.woff2\";s:72:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLEj6Z1xlFQ.woff2\";s:72:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLEj6Z1xlFQ.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLCz7Z11lFc-K.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLCz7Z11lFc-K.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLCz7Z1JlFc-K.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLCz7Z1JlFc-K.woff2\";s:72:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLCz7Z1xlFQ.woff2\";s:72:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLCz7Z1xlFQ.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDD4Z11lFc-K.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLDD4Z11lFc-K.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDD4Z1JlFc-K.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLDD4Z1JlFc-K.woff2\";s:72:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDD4Z1xlFQ.woff2\";s:72:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLDD4Z1xlFQ.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLBT5Z11lFc-K.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLBT5Z11lFc-K.woff2\";s:74:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLBT5Z1JlFc-K.woff2\";s:74:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLBT5Z1JlFc-K.woff2\";s:72:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLBT5Z1xlFQ.woff2\";s:72:\"/var/www/html/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLBT5Z1xlFQ.woff2\";}',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        230,
        'retailsy_media_id',
        'a:12:{i:0;i:20;i:1;i:21;i:2;i:22;i:3;i:23;i:4;i:24;i:5;i:25;i:6;i:26;i:7;i:27;i:8;i:28;i:9;i:29;i:10;i:30;i:11;i:31;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        234,
        'category_children',
        'a:2:{i:3;a:1:{i:0;i:4;}i:5;a:1:{i:0;i:6;}}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        235,
        'SERVMASK_PREFIX_calendar_block_has_published_posts',
        '1',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        236,
        'item_details_page',
        'Done',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        237,
        'widget_social_widget',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        238,
        'widget_info_widget',
        'a:1:{s:12:\"_multiwidget\";i:1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        254,
        'theme_mods_twentytwentyone',
        'a:1:{s:18:\"custom_css_post_id\";i:-1;}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        256,
        'theme_mods_twentytwentytwo',
        'a:5:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:6:{s:19:\"wbg-gallery-sidebar\";a:11:{s:4:\"name\";s:21:\"Books Gallery Sidebar\";s:2:\"id\";s:19:\"wbg-gallery-sidebar\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:7:\"sidebar\";s:13:\"before_widget\";s:50:\"<div id=\"%1$s\" class=\"widget %2$s single-sidebar\">\";s:12:\"after_widget\";s:6:\"</div>\";s:12:\"before_title\";s:43:\"<div class=\"title\"><h3 class=\"wbg-sidebar\">\";s:11:\"after_title\";s:11:\"</h3></div>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:27:\"retailsy-header-above-first\";a:11:{s:4:\"name\";s:31:\"Área do widget de cabeçalho 1\";s:2:\"id\";s:27:\"retailsy-header-above-first\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h5 class=\"widget-title\">\";s:11:\"after_title\";s:18:\"<span></span></h5>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:28:\"retailsy-header-above-second\";a:11:{s:4:\"name\";s:31:\"Área do widget de cabeçalho 2\";s:2:\"id\";s:28:\"retailsy-header-above-second\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h5 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h5>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:24:\"retailsy-sidebar-primary\";a:11:{s:4:\"name\";s:32:\"Área do Widget da Barra Lateral\";s:2:\"id\";s:24:\"retailsy-sidebar-primary\";s:11:\"description\";s:26:\"Área de widgets primária\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:38:\"<h4 class=\"widget-title\"><span></span>\";s:11:\"after_title\";s:5:\"</h4>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:22:\"retailsy-footer-widget\";a:11:{s:4:\"name\";s:17:\"Widget de rodapé\";s:2:\"id\";s:22:\"retailsy-footer-widget\";s:11:\"description\";s:17:\"Widget de rodapé\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:75:\"<div class=\"col-lg-3 col-md-6 col-12\"><aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:14:\"</aside></div>\";s:12:\"before_title\";s:25:\"<h2 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:28:\"retailsy-woocommerce-sidebar\";a:11:{s:4:\"name\";s:27:\"Área do Widget WooCommerce\";s:2:\"id\";s:28:\"retailsy-woocommerce-sidebar\";s:11:\"description\";s:44:\"Esta área de widget para WooCommerce Widget\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h4 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h4>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698282843;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:8:\"search-2\";i:2;s:6:\"text-2\";i:3;s:6:\"text-3\";i:4;s:12:\"categories-2\";i:5;s:7:\"block-2\";i:6;s:7:\"block-3\";i:7;s:7:\"block-4\";i:8;s:7:\"block-5\";i:9;s:7:\"block-6\";}s:19:\"wbg-gallery-sidebar\";a:0:{}s:27:\"retailsy-header-above-first\";a:0:{}s:28:\"retailsy-header-above-second\";a:0:{}s:24:\"retailsy-sidebar-primary\";a:3:{i:0;s:8:\"search-1\";i:1;s:14:\"recent-posts-1\";i:2;s:10:\"archives-1\";}s:22:\"retailsy-footer-widget\";a:4:{i:0;s:6:\"text-1\";i:1;s:12:\"categories-1\";i:2;s:10:\"archives-1\";i:3;s:8:\"search-1\";}s:28:\"retailsy-woocommerce-sidebar\";a:0:{}}}}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        259,
        'theme_mods_ecommerce-bookshop',
        'a:3:{s:18:\"custom_css_post_id\";i:56;s:37:\"author_writer_tp_body_layout_settings\";s:4:\"Full\";s:16:\"background_color\";s:6:\"ffffff\";}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        260,
        'theme_switch_menu_locations',
        'a:0:{}',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        261,
        'theme_switched_via_customizer',
        '',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        262,
        'customize_stashed_theme_mods',
        'a:0:{}',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        284,
        '_site_transient_timeout_browser_e3f8101c41b40572973227d0a64620d0',
        '1698965316',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        285,
        '_site_transient_browser_e3f8101c41b40572973227d0a64620d0',
        'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"118.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        339,
        '_site_transient_timeout_available_translations',
        '1698601685',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        340,
        '_site_transient_available_translations',
        'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.6\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.6/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-20 14:52:12\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.23\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.23/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-17 09:27:56\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.24\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.24/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-26 18:08:30\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-16 10:44:14\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.3/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-18 13:58:36\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-13 05:44:31\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-18 09:36:50\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-12 12:32:40\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-08 09:52:35\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.3.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-18 08:19:14\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-12 18:16:41\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.3.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-12 18:16:33\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-08 09:49:50\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.3/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-28 11:25:18\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-22 00:24:59\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-28 15:58:51\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-07 10:32:51\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-03 07:25:21\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-28 15:57:23\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-20 08:57:43\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-31 02:13:04\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.3/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-03-14 22:16:37\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.3/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.8\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.8/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.8\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.8/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.14\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.14/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-17 16:18:36\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.19\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.19/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-26 01:50:26\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-22 13:44:03\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-05 10:16:58\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-15 17:16:26\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-12 23:13:21\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-18 14:24:18\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-29 15:42:01\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-15 23:14:34\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-17 15:15:59\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.23\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.23/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.3/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-12 23:41:33\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-09 07:20:47\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.2/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.31\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.31/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-05-28 22:06:16\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.3/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-17 12:06:18\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-05 16:40:26\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.3/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-06 09:35:55\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-27 12:42:32\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.24\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.24/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-25 18:45:51\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-13 01:54:01\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.24\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.24/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.0.6\";s:7:\"updated\";s:19:\"2023-05-19 07:40:56\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.6/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.3/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.24\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.24/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.19\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.19/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.4\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.4/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-13 00:53:29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-14 15:26:14\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-29 06:43:10\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3.2/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.1.4\";s:7:\"updated\";s:19:\"2022-11-24 03:51:58\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.4/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-01 07:05:22\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.6\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.6/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-13 08:36:49\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-05 01:27:19\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.24\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.24/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.13\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.13/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.36\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.36/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-12 23:32:44\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-18 12:10:13\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-10 16:26:11\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-29 11:56:04\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.3.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-26 05:48:07\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.23\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.23/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-20 04:59:22\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.32\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.32/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-18 18:23:14\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-28 12:14:59\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.3.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-21 12:17:05\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-27 11:36:32\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-18 09:54:29\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-20 06:29:06\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.14\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.14/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-23 12:34:38\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-11 16:19:53\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-27 05:53:56\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-21 10:39:13\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.8\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.8/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-13 08:42:34\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.16\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.16/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.36\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.36/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.8\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.8/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.23\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.23/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-14 17:48:14\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.24\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.24/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.1.4\";s:7:\"updated\";s:19:\"2023-03-04 10:46:30\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.14\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.14/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-07-15 15:30:50\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-12 21:22:49\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-17 16:55:53\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        341,
        '_site_transient_timeout_community-events-083dc13e1340a2ed902988e2459028f7',
        '1698634472',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        342,
        '_site_transient_community-events-083dc13e1340a2ed902988e2459028f7',
        'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:12:\"186.235.99.0\";}s:6:\"events\";a:0:{}}',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        343,
        '_transient_timeout_feed_b85365aa61afaf3d4189819a6f57c4c4',
        '1698634473',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        344,
        '_transient_feed_b85365aa61afaf3d4189819a6f57c4c4',
        'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:52:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n\n \n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:8:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Blog | WordPress.org Brasil\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://br.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Oct 2023 10:47:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"pt-BR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=6.4-alpha-56702\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"image\";a:1:{i:0;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:3:\"url\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://s.w.org/favicon.ico?2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Blog | WordPress.org Brasil\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://br.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"width\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"32\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"height\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"32\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"WordPress 6.4 Release Candidate 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://br.wordpress.org/2023/10/25/wordpress-6-4-release-candidate-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Oct 2023 10:47:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:12:\"Lançamentos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"6.4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=2892\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:343:\"O segundo release candidate (RC2) para o WordPress 6.4 já está disponível! Esta versão do software WordPress está em desenvolvimento. Por favor, não instale, execute ou teste esta versão do WordPress em sites de produção ou de missão crítica. Em vez disso, é recomendável que você avalie o RC2 em um servidor de teste e [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Andre Ribeiro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7159:\"\n<p>O segundo release candidate (RC2) para o WordPress 6.4 já está disponível!</p>\n\n\n\n<p><strong>Esta versão do software WordPress está em desenvolvimento</strong>. Por favor, não instale, execute ou teste esta versão do WordPress em sites de produção ou de missão crítica. Em vez disso, é recomendável que você avalie o RC2 em um servidor de teste e site.</p>\n\n\n\n<p>O WordPress 6.4 está <a href=\"https://make.wordpress.org/core/6-4/\">programado para lançamento</a> em <strong>7 de novembro de 2023</strong>, o que está ha duas semanas a partir de hoje. Se você ainda não o experimentou, agora é a hora.</p>\n\n\n\n<p>Você pode testar o WordPress 6.4 RC2 de três maneiras:</p>\n\n\n\n<ol>\n<li><strong>Plugin:</strong> Instale e ative o plugin <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> em uma instalação do WordPress (selecione o canal “Bleeding edge” e o fluxo “Beta/RC Only”).</li>\n\n\n\n<li><strong>Baixe diretamente</strong> : Baixe e instale a <a href=\"https://wordpress.org/wordpress-6.4-RC2.zip\">versão RC2 (zip)</a>.</li>\n\n\n\n<li><strong>Linha de comando </strong>: Use o seguinte comando <a href=\"https://make.wordpress.org/cli/\">WP-CLI:</a><br><code>wp core update --version=6.4-RC2</code></li>\n</ol>\n\n\n\n<p><a href=\"https://br.wordpress.org/2023/10/17/wordpress-6-4-release-candidate-1/\">Leia o anúncio do RC1</a> para mais informações e confira o <a href=\"https://make.wordpress.org/core/\">blog Make WordPress Core</a> para <a href=\"https://make.wordpress.org/core/tag/6-4/\">posts relacionadas a versão 6.4</a>. Se você estiver procurando por notas técnicas detalhadas sobre novos recursos e melhorias, o <a href=\"https://make.wordpress.org/core/2023/10/23/wordpress-6-4-field-guide/\"><strong>guia de campo do WordPress 6.4</strong></a> é para você.</p>\n\n\n\n<p>A versão 6.4 do WordPress é trazida a você por uma <a href=\"https://make.wordpress.org/core/2023/06/05/wordpress-6-4-development-cycle/\">equipe de gêneros sub-representados</a> para aumentar a participação e a parceria com aqueles que se identificam como gêneros sub-representados no projeto de código aberto WordPress.</p>\n\n\n\n<h2 class=\"wp-block-heading\">O que há de novo na versão RC2?</h2>\n\n\n\n<p>Agradecemos a todos que testaram os lançamentos beta e RC. Desde que a versão RC1 foi lançada em 17 de outubro, houve mais de 25 erros resolvidos. Você pode procurar os detalhes técnicos para todas as atualizações recentes usando estes links:</p>\n\n\n\n<ul>\n<li><a href=\"https://github.com/WordPress/gutenberg/commits/wp/6.4\">Tíquetes do GitHub para a versão 6.4</a></li>\n\n\n\n<li><a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=10%2F18%2F2023..10%2F24%2F2023&amp;milestone=6.4&amp;col=id&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=priority&amp;order=id\">Tíquetes fechados do Trac desde a versão RC1</a></li>\n\n\n\n<li><a href=\"https://github.com/WordPress/twentytwentyfour/commits/\">Tíquetes do GitHub para o tema Twenty Twenty-Four</a></li>\n</ul>\n\n\n\n<h2 class=\"wp-block-heading\">Como contribuir?</h2>\n\n\n\n<p>O WordPress é um software de código aberto possibilitado pela comunidade de pessoas que colaboram e contribuem para o seu desenvolvimento. Os recursos abaixo descrevem uma variedade de maneiras pelas quais você pode ajudar, independentemente de sua experiência técnica.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Envolva-se nos testes</h3>\n\n\n\n<p>O teste de erros é fundamental para o desenvolvimento do software e garantir sua qualidade. Também é uma maneira significativa para qualquer um contribuir, quer você tenha experiência ou não. <a href=\"https://make.wordpress.org/test/2023/09/26/help-test-wordpress-6-4/\">Confira este guia</a> para obter instruções detalhadas sobre o teste de erros no WordPress 6.4.</p>\n\n\n\n<p>Se você encontrar um problema, informe-o na <a href=\"https://wordpress.org/support/forum/alphabeta/\">área Alpha / Beta</a> dos fóruns de suporte ou diretamente ao <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac</a> se você estiver confortável escrevendo um relatório de bug reprodutível. Você também pode verificar seu problema em relação a uma lista de <a href=\"https://core.trac.wordpress.org/tickets/major\">erros conhecidos</a>.</p>\n\n\n\n<p>Curioso sobre os lançamentos de testes em geral? Acompanhe as <a href=\"https://make.wordpress.org/test/\">iniciativas</a> de <a href=\"https://make.wordpress.org/test/\">teste em Make Core</a> e junte-se ao <a href=\"https://wordpress.slack.com/messages/core-test/\">canal de teste central</a> no <a href=\"https://wordpress.slack.com/\">Slack do WordPress</a>.</p>\n\n\n\n<p>Curioso sobre os testes de lançamentos em geral? Acompanhe as <a href=\"https://make.wordpress.org/test/\">iniciativas de teste</a> no <a href=\"https://make.wordpress.org/test/\">Make WordPress Core</a> e junte-se ao <a href=\"https://wordpress.slack.com/messages/core-test/\">canal #core-test</a> no <a href=\"https://wordpress.slack.com/\">Slack do WordPress</a>.</p>\n\n\n\n<h3 class=\"wp-block-heading\">A recompensa de vulnerabilidade dobra durante as versões Beta/RC</h3>\n\n\n\n<p>Durante a fase de lançamento do WordPress 6.4, a <a href=\"https://make.wordpress.org/security/2023/06/28/doubling-the-bounties-for-wordpress-6-3-beta/\">recompensa monetária por relatar novas vulnerabilidades de segurança não lançadas é dobrada</a>. Siga as práticas de divulgação responsável, conforme detalhado nas práticas e políticas de segurança do projeto descritas na <a href=\"https://hackerone.com/wordpress\">página do HackerOne</a> e no <a href=\"https://wordpress.org/about/security/\">white paper de segurança</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Aos desenvolvedores de plugins e temas</h2>\n\n\n\n<p>Você desenvolve plugins e temas? Seus produtos desempenham um papel fundamental na extensão da funcionalidade e valor do WordPress para usuários de todos os tipos em todo o mundo. É provável que você já tenha testado seus temas e plugins mais recentes com o WordPress 6.4 nas versões Beta. Com o RC2, concluirá seus testes e atualizará a versão “Tested up to” no arquivo readme.txt do plugin ou tema para a versão 6.4.</p>\n\n\n\n<p>Se você encontrar problemas de compatibilidade, envie informações detalhadas para o <a href=\"https://wordpress.org/support/forum/alphabeta/\">fórum de suporte</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Traduza o WordPress</h2>\n\n\n\n<p><a href=\"https://translate.wordpress.org/projects/wp/dev/pt-br/default/\">Ajude-nos a traduzir o WordPress para o português!</a> O lançamento dessa versão também significa que <a href=\"https://make.wordpress.org/polyglots/handbook/glossary/#hard-freeze\">novas strings para a tradução</a> da versão 6.4 serão evitadas.</p>\n\n\n\n<p><em>Agradecemos aos seguintes colaboradores por colaborarem neste post:</em> <em><a href=\"https://profiles.wordpress.org/meher/\">@meher</a>, <a href=\"https://profiles.wordpress.org/rmartinezduque/\">@rmartinezduque</a>, <a href=\"https://profiles.wordpress.org/michelleames/\">@michelleames</a> e <a href=\"https://profiles.wordpress.org/cbringmann/\">@cbringmann</a></em>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"WordPress 6.4 Release Candidate 1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://br.wordpress.org/2023/10/17/wordpress-6-4-release-candidate-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Oct 2023 19:34:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:12:\"Lançamentos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"6.4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=2859\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:348:\"O primeiro release candidate (RC1) para WordPress 6.4 já está disponível! Esta versão do WordPress está em desenvolvimento. Não instale, execute ou teste esta versão do WordPress em sites de produção ou de missão crítica. Em vez disso, é recomendável avaliar o RC1 em um servidor e site de teste. Alcançar esta fase do ciclo [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Andre Ribeiro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:12500:\"\n<p>O primeiro release candidate (RC1) para WordPress 6.4 já está disponível!</p>\n\n\n\n<p><strong>Esta versão do WordPress está em desenvolvimento</strong>. <strong>Não instale, execute ou teste esta versão do WordPress em sites de produção ou de missão crítica</strong>. Em vez disso, é recomendável avaliar o RC1 em um servidor e site de teste.</p>\n\n\n\n<span id=\"more-2859\"></span>\n\n\n\n<p>Alcançar esta fase do ciclo de lançamento é um marco importante. Embora os release candidates sejam considerados prontos para lançamento, os testes continuam vitais para garantir que tudo no WordPress 6.4 seja o melhor possível.</p>\n\n\n\n<p>Você pode testar o WordPress 6.4 RC1 de três maneiras:</p>\n\n\n\n<p><strong>Opção 1:</strong> Instale e ative o plug-in <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> (selecione o canal “Bleeding edge” e o fluxo “Beta/RC Only”).</p>\n\n\n\n<p><strong>Opção 2:</strong> Baixe direto a <a href=\"https://wordpress.org/wordpress-6.4-RC1.zip\">versão RC1 (zip)</a>.</p>\n\n\n\n<p><strong>Opção 3:</strong> Use o seguinte comando WP-CLI:</p>\n\n\n\n<p><code>wp core update --version=6.4-RC</code>1</p>\n\n\n\n<p>A meta atual para o lançamento do WordPress 6.4 é 7 de novembro de 2023. Obtenha uma visão geral do ciclo de <a href=\"https://make.wordpress.org/core/6-4/\">lançamento da versão 6.4</a> e confira o <a href=\"https://make.wordpress.org/core/\">blog Make WordPress Core</a> para <a href=\"https://make.wordpress.org/core/tag/6-4/\">posts relacionadas a versão 6.4</a>.</p>\n\n\n\n<p>A versão 6.4 do WordPress é trazida a você por uma <a href=\"https://make.wordpress.org/core/2023/06/05/wordpress-6-4-development-cycle/\">equipe de gêneros sub-representados</a> para aumentar a participação e a parceria com aqueles que se identificam como gêneros sub-representados no projeto de código aberto WordPress.</p>\n\n\n\n<h2 class=\"wp-block-heading\">O que há de novo na versão RC1</h2>\n\n\n\n<p>Esta versão contém 420 melhorias e 445 correções de erros para o editor, incluindo mais de <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=6.4&amp;group=component&amp;max=500&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">260 tíquetes para o núcleo do WordPress 6.4</a>. Navegue pelos detalhes técnicos de todos os erros recentemente abordados usando estes links:</p>\n\n\n\n<ul>\n<li><a href=\"https://github.com/WordPress/gutenberg/commits/wp/6.4\">Tíquetes do GitHub para a versão 6.4</a></li>\n\n\n\n<li><a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=10%2F12%2F2023..10%2F17%2F2023&amp;milestone=6.4&amp;col=id&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=priority&amp;order=id\">Tíquetes do Trac fechados desde a versão Beta 4</a></li>\n\n\n\n<li><a href=\"https://github.com/WordPress/twentytwentyfour/commits/\">Tíquetes do GitHub para o tema Twenty Twenty-Four</a></li>\n</ul>\n\n\n\n<h3 class=\"wp-block-heading\">Destaques</h3>\n\n\n\n<p>O WordPress 6.4 é o terceiro e último grande lançamento de 2023. Ele apresenta um tema padrão multifuncional, novos recursos e um grande foco nos detalhes para aprimorar cada aspecto de sua jornada de criação, desde a edição e design do site até a o fluxo de escrita.</p>\n\n\n\n<ul>\n<li><strong>Um novo tema padrão flexível</strong> reúne o melhor do WordPress. Descubra sua vasta coleção de modelos e padrões para ajustar e combinar com sua marca. Construído para versatilidade, o <a href=\"https://make.wordpress.org/core/2023/08/24/introducing-twenty-twenty-four/\"><strong>Twenty-Four</strong></a> é um escolha ideal para quase qualquer tipo de site.</li>\n\n\n\n<li>Habilite a <strong>funcionalidade lightbox</strong> em imagens para experiências de visualização imersivas.</li>\n\n\n\n<li><strong>Organize seus padrões com suas próprias categorias personalizadas</strong>. Encontre-os mais intuitivamente com filtragem avançada na seção de inserção de padrões.</li>\n\n\n\n<li><strong>Desfrute de <a href=\"https://make.wordpress.org/core/2023/10/05/core-editor-improvement-ensuring-excellence-in-the-writing-experience/\">mais melhorias</a></strong> de <strong><a href=\"https://make.wordpress.org/core/2023/10/05/core-editor-improvement-ensuring-excellence-in-the-writing-experience/\">escrita</a></strong>, incluindo novos atalhos de teclado, mesclagem de listas mais suaves e controle aprimorado sobre as configurações do seu link. Uma experiência de barra de ferramentas renovada para blocos de navegação, lista e citação que garante acesso um acesso organizado às opções de ferramentas com as quais você trabalha.</li>\n\n\n\n<li><strong>Uma</strong> <a href=\"https://make.wordpress.org/core/2023/09/12/core-editor-improvement-commanding-the-command-palette/\"><strong>paleta de comando</strong></a> ajuda você a encontrar o que você precisa, executar tarefas de forma eficiente e acelerar seu fluxo de trabalho.</li>\n\n\n\n<li><strong>Renomear blocos de grupo</strong> para organizar e distinguir áreas do seu conteúdo facilmente.</li>\n\n\n\n<li>Veja e localize os arquivos de mídia do seu conteúdo rapidamente com novas <strong>visualizações de galeria e imagem na visualização de listas</strong>.</li>\n\n\n\n<li>Crie layouts bonitos e funcionais com um <strong>conjunto expandido de ferramentas de design</strong>. Jogue com imagens de fundo em blocos de grupo para designs criativos exclusivos, mantenha as dimensões da imagem consistentes com as proporções e adicione botões sem esforço ao seu bloco de navegação sem CSS personalizado – entre outros novos recursos.</li>\n\n\n\n<li><strong>Os hooks de blocos</strong> permitem que os desenvolvedores insiram automaticamente blocos em seus locais de conteúdo escolhidos, enriquecendo a extensibilidade de temas de bloco por meio de plugins. Embora centrado no desenvolvedor, esse novo recurso melhora sua experiência de construção com blocos e oferece controle completo para personalizar os blocos de acordo com suas necessidades.</li>\n\n\n\n<li><strong>Mais de 60 atualizações</strong> <strong>de</strong> <strong>acessibilidade</strong>, incluindo melhorias significativas de exibição de lista, suporte a ARIA para o bloco de navegação e atualizações para a interface de usuário administrador.</li>\n\n\n\n<li><strong>Mais de 100 atualizações de desempenho</strong>, com foco no desempenho de carregamento de modelos para temas clássicos e de blocos, uso das estratégias de carregamento de scripts “defer” e “async” e otimização de opções carregadas automaticamente.</li>\n</ul>\n\n\n\n<p>Você está procurando um mergulho mais profundo em detalhes e notas técnicas? <a href=\"https://make.wordpress.org/core/tag/dev-notes+6-4/\">Estes posts</a> cobrem algumas das atualizações mais recentes:</p>\n\n\n\n<ul>\n<li><a href=\"https://make.wordpress.org/core/2023/10/16/changes-to-attachment-pages/\">Alterações em anexos de páginas para um SEO melhorado</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/17/miscellaneous-editor-changes-in-wordpress-6-4/\">Alterações diversas do editor de blocos no WordPress 6.4</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/15/introducing-block-hooks-for-dynamic-blocks/\">Introduzindo hooks de blocos para blocos dinâmicos</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/17/script-loading-changes-in-wordpress-6-4/\">Mudanças de carregamento de script no WordPress 6.4</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/17/improvements-to-template-loading-in-wordpress-6-4/\">Melhorias no carregamento de modelos no WordPress 6.4</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/16/introducing-admin-notice-functions-in-wordpress-6-4/\">Introduzindo funções de aviso para administradores no WordPress 6.4</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/16/editor-components-updates-in-wordpress-6-4/\">Atualizações para componentes de interface do usuário no WordPress 6.4</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/16/new-registerinsertermediacategory-api/\">Nova API &#8220;<code>registerinsertermediacategory</code>&#8220;</a></li>\n</ul>\n\n\n\n<h2 class=\"wp-block-heading\">Como contribuir?</h2>\n\n\n\n<p>O WordPress é um software de código aberto possibilitado pela comunidade de pessoas que colaboram e contribuem para o seu desenvolvimento. Os recursos abaixo descrevem uma variedade de maneiras pelas quais você pode ajudar, independentemente de sua experiência técnica.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Envolva-se nos testes</h3>\n\n\n\n<p>O teste de erros é fundamental para o desenvolvimento do software e garantir sua qualidade. Também é uma maneira significativa para qualquer um contribuir, quer você tenha experiência ou não. <a href=\"https://make.wordpress.org/test/2023/09/26/help-test-wordpress-6-4/\">Confira este guia</a> para obter instruções detalhadas sobre o teste de erros no WordPress 6.4.</p>\n\n\n\n<p>Se você encontrar um problema, informe-o na <a href=\"https://wordpress.org/support/forum/alphabeta/\">área Alpha / Beta</a> dos fóruns de suporte ou diretamente ao <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac</a> se você estiver confortável escrevendo um relatório de bug reprodutível. Você também pode verificar seu problema em relação a uma lista de <a href=\"https://core.trac.wordpress.org/tickets/major\">erros conhecidos</a>.</p>\n\n\n\n<p>Curioso sobre os lançamentos de testes em geral? Acompanhe as <a href=\"https://make.wordpress.org/test/\">iniciativas</a> de <a href=\"https://make.wordpress.org/test/\">teste em Make Core</a> e junte-se ao <a href=\"https://wordpress.slack.com/messages/core-test/\">canal de teste central</a> no <a href=\"https://wordpress.slack.com/\">Slack do WordPress</a>.</p>\n\n\n\n<p>Curioso sobre os testes de lançamentos em geral? Acompanhe as <a href=\"https://make.wordpress.org/test/\">iniciativas de teste</a> no <a href=\"https://make.wordpress.org/test/\">Make WordPress Core</a> e junte-se ao <a href=\"https://wordpress.slack.com/messages/core-test/\">canal #core-test</a> no <a href=\"https://wordpress.slack.com/\">Slack do WordPress</a>.</p>\n\n\n\n<h3 class=\"wp-block-heading\">A recompensa de vulnerabilidade dobra durante as versões Beta/RC</h3>\n\n\n\n<p>Durante a fase de lançamento do WordPress 6.4, a <a href=\"https://make.wordpress.org/security/2023/06/28/doubling-the-bounties-for-wordpress-6-3-beta/\">recompensa monetária por relatar novas vulnerabilidades de segurança não lançadas é dobrada</a>. Siga as práticas de divulgação responsável, conforme detalhado nas práticas e políticas de segurança do projeto descritas na <a href=\"https://hackerone.com/wordpress\">página do HackerOne</a> e no <a href=\"https://wordpress.org/about/security/\">white paper de segurança</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Aos desenvolvedores de plugins e temas</h2>\n\n\n\n<p>Você desenvolve plugins e temas? Seus produtos desempenham um papel fundamental na extensão da funcionalidade e valor do WordPress para usuários de todos os tipos em todo o mundo. É provável que você já tenha testado seus temas e plugins mais recentes com o WordPress 6.4 nas versões Beta. Com o RC1, concluirá seus testes e atualizará a versão “Tested up to” no arquivo readme.txt do plugin ou tema para a versão 6.4.</p>\n\n\n\n<p>Se você encontrar problemas de compatibilidade, envie informações detalhadas para o <a href=\"https://wordpress.org/support/forum/alphabeta/\">fórum de suporte</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Traduza o WordPress</h2>\n\n\n\n<p><a href=\"https://translate.wordpress.org/projects/wp/dev/pt-br/default/\">Ajude-nos a traduzir o WordPress para o português!</a>&nbsp;O lançamento dessa versão também significa que&nbsp;<a href=\"https://make.wordpress.org/polyglots/handbook/glossary/#hard-freeze\">novas strings para a tradução</a>&nbsp;da versão 6.4 serão evitadas.</p>\n\n\n\n<p><em>Agradecemos aos seguintes colaboradores por colaborarem neste post: <em><a href=\"https://profiles.wordpress.org/meher/\">@meher</a>, <a href=\"https://profiles.wordpress.org/rmartinezduque/\">@rmartinezduque</a>, <a href=\"https://profiles.wordpress.org/webcommsat/\">@webcommsat</a>, <a href=\"https://profiles.wordpress.org/annezazu/\">@annezazu</a>, <a href=\"https://profiles.wordpress.org/cbringmann/\">@cbringmann</a> e <a href=\"https://profiles.wordpress.org/priethor/\">@priethor</a>.</em></em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"Participe do 1º encontro do Meetup WordPress Brasil\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://br.wordpress.org/2023/10/16/participe-do-1o-encontro-do-meetup-wordpress-brasil/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://br.wordpress.org/2023/10/16/participe-do-1o-encontro-do-meetup-wordpress-brasil/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 16 Oct 2023 23:10:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Meetups\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=2855\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:362:\"A Equipe Brasileira do WordPress está organizando o primeiro Meetup WordPress Brasil. O evento será totalmente online e gratuito, pela Twitch, no dia 18 de outubro de 2023 a partir das 19h. Neste primeiro encontro, Allyson e Wiliam vão conversar com a comunidade sobre alguns temas interessantes tanto para profissionais que já atuam com WordPress, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Wiliam Jose Koester\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4482:\"\n<figure class=\"wp-block-image size-large is-resized\"><a href=\"https://br.wordpress.org/files/2023/10/meetupwpbrasil-23-10-facebook.png\"><img fetchpriority=\"high\" decoding=\"async\" width=\"1024\" height=\"537\" src=\"https://br.wordpress.org/files/2023/10/meetupwpbrasil-23-10-facebook-1024x537.png\" alt=\"\" class=\"wp-image-2856\" style=\"width:840px;height:auto\" srcset=\"https://br.wordpress.org/files/2023/10/meetupwpbrasil-23-10-facebook-1024x537.png 1024w, https://br.wordpress.org/files/2023/10/meetupwpbrasil-23-10-facebook-300x157.png 300w, https://br.wordpress.org/files/2023/10/meetupwpbrasil-23-10-facebook-768x403.png 768w, https://br.wordpress.org/files/2023/10/meetupwpbrasil-23-10-facebook-1536x806.png 1536w, https://br.wordpress.org/files/2023/10/meetupwpbrasil-23-10-facebook-2048x1075.png 2048w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<p>A Equipe Brasileira do WordPress está organizando o primeiro Meetup WordPress Brasil. O evento será totalmente online e gratuito, <a href=\"https://www.twitch.tv/wpbrasil/\" target=\"_blank\" rel=\"noreferrer noopener\">pela Twitch</a>, no dia 18 de outubro de 2023 a partir das 19h.</p>\n\n\n\n<p>Neste primeiro encontro, Allyson e Wiliam vão conversar com a comunidade sobre alguns temas interessantes tanto para profissionais que já atuam com WordPress, quanto entusiastas que queiram saber mais sobre o universo do código livre.</p>\n\n\n\n<span id=\"more-2855\"></span>\n\n\n\n<h2 class=\"wp-block-heading\">Confira os temas deste <em>meetup</em></h2>\n\n\n\n<h3 class=\"wp-block-heading\">Criando seu primeiro site com editor de blocos</h3>\n\n\n\n<p>Nesta demonstração prática, Allyson Souza vai demonstrar o estado atual da criação de sites utilizando a edição completa de site, com temas preparados para trabalhar com blocos. Allyson é programador web e entusiasta do software livre, além de contribuir com a comunidade WordPress São Paulo desde 2014.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Traduzindo o WordPress: como você pode contribuir para a comunidade</h3>\n\n\n\n<p>Já nesta apresentação, Wiliam Jose Koester vai contar como ele começou a contribuir para a comunidade através da tradução. Qualquer um pode contribuir sem precisar saber programar, sugerindo e revisando traduções. Entenda como funciona a comunidade de tradução e porque sua ajuda é muito bem-vinda.&nbsp;Wiliam é publicitário e professor, criando sites para clientes há quase 10 anos com WordPress e contribuindo para a comunidade de tradução desde 2020.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Como participar?</h2>\n\n\n\n<p>Confira o horário:</p>\n\n\n\n<ul>\n<li>Quarta-feira, 18 de outubro de 2023</li>\n\n\n\n<li>A partir das 19h</li>\n\n\n\n<li>Transmitido ao vivo <a href=\"https://www.twitch.tv/wpbrasil/\" target=\"_blank\" rel=\"noreferrer noopener\">pela Twitch em twitch.tv/wpbrasil</a></li>\n\n\n\n<li><a href=\"https://calendar.google.com/calendar/event?action=TEMPLATE&amp;tmeid=M21haDd2MjZuOTFlazFsNjRjNG0yNW85bHIgd2lsaWFtamtAbQ&amp;tmsrc=wiliamjk%40gmail.com\" target=\"_blank\" rel=\"noreferrer noopener\">Clique aqui para adicionar o evento ao seu calendário</a></li>\n</ul>\n\n\n\n<h2 class=\"wp-block-heading\">O que é o Meetup WordPress Brasil?</h2>\n\n\n\n<p>Queremos trazer a comunidade brasileira para mais perto! Por isso, nossa intenção é organizar <em>meetups</em> periódicos com o objetivo de oferecer conteúdo interessante que aproxime usuário do WordPress no Brasil à nossa comunidade.</p>\n\n\n\n<p>Esses conteúdos podem envolver dicas de WordPress, compartilhamento de experiências, informações sobre o mercado entre outras coisas, desde que seja algo interessante e útil para brasileiros que usam o WordPress.</p>\n\n\n\n<p>Inclusive, se você quiser apresentar um conteúdo em algum <a href=\"https://docs.google.com/forms/d/e/1FAIpQLSduEUuBg8EteuOMpx0EJ8pupe-y9-Up1bze_tg-E-Y06HfUsw/viewform?usp=send_form\" target=\"_blank\" rel=\"noreferrer noopener\"><em>meetup</em>, você pode preencher este formulário</a> com a sua ideia. Nós vamos manter uma fila de sugestões e, se gostarmos da sua proposta, entraremos em contato para combinar sua participação!</p>\n\n\n\n<p>Participe e ajude a divulgar para fortalecermos nossa comunidade brasileira <img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f4aa.png\" alt=\"💪\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /><img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f1e7-1f1f7.png\" alt=\"🇧🇷\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\n\n\n<p></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://br.wordpress.org/2023/10/16/participe-do-1o-encontro-do-meetup-wordpress-brasil/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WordPress 6.3.2 – Atualização de manutenção e segurança\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://br.wordpress.org/2023/10/12/wordpress-6-3-2-atualizacao-de-manutencao-e-seguranca/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Oct 2023 22:34:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:12:\"Lançamentos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"6.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=2852\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:355:\"Esta versão de segurança e manutenção apresenta 19 correções de erros no núcleo, 22 correções de erros para o editor de blocos e 8 correções de segurança. O WordPress 6.3.2 é uma versão de ciclo curto. Você pode revisar um resumo das atualizações de manutenção nesta versão lendo o anúncio do release candidate.Por se tratar [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Andre Ribeiro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9693:\"\n<p>Esta versão de segurança e manutenção apresenta <a href=\"https://core.trac.wordpress.org/query?milestone=6.3.2&amp;group=component&amp;col=id&amp;col=summary&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=status&amp;col=priority&amp;order=priority\">19 correções de erros no núcleo</a>, 22 correções de erros para o editor de blocos e 8 correções de segurança.</p>\n\n\n\n<p>O WordPress 6.3.2 é uma versão de ciclo curto. Você pode revisar um resumo das atualizações de manutenção nesta versão lendo o <a href=\"https://make.wordpress.org/core/2023/10/06/wordpress-6-3-2-rc1-is-now-available/\">anúncio do release candidate</a>.<br>Por se tratar de uma <strong>versão de segurança</strong>, é recomendável atualizar seus sites imediatamente. Também estão disponíveis correções para as versões 4.1 e posteriores do WordPress.</p>\n\n\n\n<span id=\"more-2852\"></span>\n\n\n\n<p>O próximo grande lançamento será a <strong>versão 6.4</strong> planejada para 7 de novembro de 2023.</p>\n\n\n\n<p>Se você tiver sites que suportam atualizações automáticas em segundo plano, o processo de atualização começará automaticamente.</p>\n\n\n\n<p>Você pode <a href=\"https://wordpress.org/wordpress-6.3.2.zip\">baixar o WordPress 6.3.2 em WordPress.org</a> ou visitar o painel do WordPress, clicar em “Atualizações” e, em seguida, clicar em “Atualizar agora”.</p>\n\n\n\n<p>Para obter mais informações sobre esta versão, <a href=\"https://wordpress.org/support/wordpress-version/version-6-3-2\">visite o site HelpHub</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Atualizações de segurança incluídas nesta versão</h2>\n\n\n\n<p>A equipe de segurança gostaria de agradecer aos seguintes colaboradores, por relatarem vulnerabilidades de forma responsável e permitirem que elas fossem corrigidas nesta versão:</p>\n\n\n\n<ul>\n<li>Marc Montpas, da Automattic, por encontrar uma possível divulgação de endereços de e-mail de usuários.</li>\n\n\n\n<li>Marc Montpas da Automattic por encontrar uma vulnerabilidade do RCE POP Chains.</li>\n\n\n\n<li>Rafie Muhammad e Edouard L do <a href=\"https://patchstack.com/\">Patchstack</a>, juntamente com uma auditoria terceirizada encomendada pelo WordPress para cada um, identificando independentemente um problema de XSS no bloco de navegação de posts.</li>\n\n\n\n<li><a href=\"https://www.linkedin.com/in/audrasjb/\">Jb Audras</a> da equipe de segurança do WordPress e Rafie Muhammad do <a href=\"https://patchstack.com/\">Patchstack</a> por descobrirem independentemente um problema em que comentários em posts privados poderiam vazar para outros usuários.</li>\n\n\n\n<li>John Blackbourn (equipe de segurança do WordPress), <a href=\"https://hackerone.com/jamesgol?type=user\">James Golovich</a>, <a href=\"https://hackerone.com/jdgrimes\">J.D Grimes</a>, <a href=\"https://hackerone.com/numan\">Numan Turle</a> e <a href=\"https://hackerone.com/whitecybersec?type=user\">WhiteCyberSec</a>, cada um identificando independentemente uma maneira de o usuário logado executar qualquer shortcode.</li>\n\n\n\n<li><a href=\"https://facebook.com/zino.abdrahim\">mascara7784</a> e uma auditoria de segurança terceirizada identificaram uma vulnerabilidade XSS na tela de senha do aplicativo.</li>\n\n\n\n<li><a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a> do time do núcleo do WordPress, por identificar vulnerabilidade XSS no bloco de notas de rodapé.</li>\n\n\n\n<li><a href=\"https://hackerone.com/s5s\">s5s</a> e <a href=\"https://twitter.com/Raoufmaklouf\">raouf_maklouf</a> por identificar independentemente uma vulnerabilidade DoS de envenenamento de cache.</li>\n</ul>\n\n\n\n<h2 class=\"wp-block-heading\">Agradecimento aos colaboradores do WordPress</h2>\n\n\n\n<p>Esta versão foi liderada por <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a> e <a href=\"https://profiles.wordpress.org/audrasjb\">Jb Audras</a>, com a ajuda de<a href=\"https://profiles.wordpress.org/davidbaumwald/\"> David Baumwald</a> no controle da missão.</p>\n\n\n\n<p>O WordPress 6.3.2 não teria sido possível sem as contribuições das seguintes pessoas. Seus esforços para fornecer manutenção e correções de segurança em uma versão estável é uma prova do poder e da capacidade da comunidade WordPress.</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/jorbin\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/wildworks\">Aki Hamano</a>, <a href=\"https://profiles.wordpress.org/akihiroharai\">Akihiro Harai</a>, <a href=\"https://profiles.wordpress.org/xknown\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/azaozz\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/afragen\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/antpb\">Anthony Burchell</a>, <a href=\"https://profiles.wordpress.org/aurooba\">Aurooba Ahmed</a>, <a href=\"https://profiles.wordpress.org/scruffian\">Ben Dwyer</a>, <a href=\"https://profiles.wordpress.org/poena\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/costdev\">Colin Stewart</a>, <a href=\"https://profiles.wordpress.org/coreyw\">Corey Worrell</a>, <a href=\"https://profiles.wordpress.org/colorful tones\">Damon Cook</a>, <a href=\"https://profiles.wordpress.org/david.binda\">David Biňovec</a>, <a href=\"https://profiles.wordpress.org/desmith\">David E. Smith</a>, <a href=\"https://profiles.wordpress.org/dsas\">Dean Sas</a>, <a href=\"https://profiles.wordpress.org/dmsnell\">Dennis Snell</a>, <a href=\"https://profiles.wordpress.org/dhruvishah2203\">Dhruvi Shah</a>, <a href=\"https://profiles.wordpress.org/dd32\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ehtis\">Ehtisham S.</a>, <a href=\"https://profiles.wordpress.org/flixos90\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/Mamaduka\">George Mamadashvili</a>, <a href=\"https://profiles.wordpress.org/gziolo\">Greg Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/huzaifaalmesbah\">Huzaifa Al Mesbah</a>, <a href=\"https://profiles.wordpress.org/isabel_brison\">Isabel Brison</a>, <a href=\"https://profiles.wordpress.org/audrasjb\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/joehoyle\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/joemcgill\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/desrosj\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/greenshady\">Justin Tadlock</a>, <a href=\"https://profiles.wordpress.org/kadamwhite\">K. Adam White</a>, <a href=\"https://profiles.wordpress.org/kimannwall\">Kim Coleman</a>, <a href=\"https://profiles.wordpress.org/lhe2012\">LarryWEB</a>, <a href=\"https://profiles.wordpress.org/lgladdy\">Liam Gladdy</a>, <a href=\"https://profiles.wordpress.org/iammehedi1\">Mehedi Hassan</a>, <a href=\"https://profiles.wordpress.org/mcsf\">Miguel Fonseca</a>, <a href=\"https://profiles.wordpress.org/mukesh27\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/nicolefurlan\">Nicole Furlan</a>, <a href=\"https://profiles.wordpress.org/pbiron\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/paulkevan\">Paul Kevan</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/pooja1210\">Pooja N Muchandikar</a>, <a href=\"https://profiles.wordpress.org/rajinsharwar\">Rajin Sharwar</a>, <a href=\"https://profiles.wordpress.org/rmccue\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/salcode\">Sal Ferrarello</a>, <a href=\"https://profiles.wordpress.org/SergeyBiryukov\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shailu25\">Shail Mehta</a>, <a href=\"https://profiles.wordpress.org/sabernhardt\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/tykoted\">Teddy Patriarca</a>, <a href=\"https://profiles.wordpress.org/TimothyBlynJacobs\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/westonruter\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/zunaid321\">Zunaid Amin</a>, <a href=\"https://profiles.wordpress.org/ahardyjpl\">ahardyjpl</a>, <a href=\"https://profiles.wordpress.org/beryldlg\">beryldlg</a>, <a href=\"https://profiles.wordpress.org/floydwilde\">floydwilde</a>, <a href=\"https://profiles.wordpress.org/jastos\">jastos</a>, <a href=\"https://profiles.wordpress.org/martin.krcho\">martin.krcho</a>, <a href=\"https://profiles.wordpress.org/masteradhoc\">masteradhoc</a>, <a href=\"https://profiles.wordpress.org/petitphp\">petitphp</a>, <a href=\"https://profiles.wordpress.org/ramonopoly\">ramonopoly</a>, <a href=\"https://profiles.wordpress.org/vortfu\">vortfu</a> e <a href=\"https://profiles.wordpress.org/zieladam\">zieladam</a>.</p>\n\n\n\n<p>Para se envolver no desenvolvimento do núcleo do WordPress, vá até o Trac, <a href=\"https://core.trac.wordpress.org/report/6\">escolha um tiquete</a> e participe da conversa nos canais <a href=\"https://wordpress.slack.com/archives/C02RQBWTW\">#core</a> e <a href=\"https://wordpress.slack.com/archives/C055Y7FKS7N\">#6-4-release-leads</a>. Preciso de ajuda? Confira o <a href=\"https://make.wordpress.org/core/handbook/\">manual do colaborador do núcleo</a>.</p>\n\n\n\n<p>Já está testando o WordPress 6.4? A quarta versão Beta já está disponível (<a href=\"https://wordpress.org/wordpress-6.4-beta4.zip\">zip</a>) e contém essas correções de segurança. Para saber mais sobre o 6.4, consulte o <a href=\"https://br.wordpress.org/2023/10/11/wordpress-6-4-beta-3/\">post de anúncio da versão beta 3</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 6.4 Beta 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://br.wordpress.org/2023/10/11/wordpress-6-4-beta-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Oct 2023 19:49:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:12:\"Lançamentos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"6.4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=2848\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:343:\"O WordPress 6.4 Beta 3 já está disponível para testes. Esta versão do WordPress está em desenvolvimento. Não é recomendável executar esta versão em um site de produção. Ao invés disso, é recomendável que você a use em um site de teste. Isso permitirá que você teste a nova versão antes do lançamento oficial. Você [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Andre Ribeiro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6785:\"\n<p>O WordPress 6.4 Beta 3 já está disponível para testes.</p>\n\n\n\n<p><strong>Esta versão do WordPress está em desenvolvimento. </strong>Não é recomendável executar esta versão em um site de produção. Ao invés disso, é recomendável que você a use em um site de teste. Isso permitirá que você teste a nova versão antes do lançamento oficial.</p>\n\n\n\n<span id=\"more-2848\"></span>\n\n\n\n<p>Você pode testar o WordPress 6.4 Beta 3 de três maneiras:</p>\n\n\n\n<p><strong>Plugin: </strong>Instalar e ativar o plugin <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> (selecione a opção “Bleeding edge” e “Beta/RC Only”).</p>\n\n\n\n<p><strong>Baixe diretamente: </strong>Baixar direto a <a href=\"https://wordpress.org/wordpress-6.4-beta3.zip\">versão Beta 3 aqui (zip)</a>.</p>\n\n\n\n<p><strong>Linha de comando:</strong> Usar o WP-CLI para testar:</p>\n\n\n\n<p><code>wp core update --version=6.4-beta</code>3</p>\n\n\n\n<p>A meta atual para o lançamento do WordPress 6.4 é <strong>7 de novembro de 2023</strong>. Obtenha uma visão geral do <a href=\"https://make.wordpress.org/core/6-4/\">ciclo de lançamento da versão 6.4</a> e verifique o <a href=\"https://make.wordpress.org/core/\">blog Make WordPress Core</a> para <a href=\"https://make.wordpress.org/core/tag/6-4/\">posts relacionados a versão 6.4</a> nas próximas semanas para obter mais informações.</p>\n\n\n\n<p>A versão 6.4 do WordPress é trazida a você por uma <a href=\"https://make.wordpress.org/core/2023/06/05/wordpress-6-4-development-cycle/\">equipe de gêneros sub-representados</a> para aumentar a participação e a parceria com aqueles que se identificam como gêneros sub-representados no projeto de código aberto WordPress.</p>\n\n\n\n<p><strong>Quer saber o que há de novo no WordPress 6.4?</strong> <a href=\"https://br.wordpress.org/2023/09/27/wordpress-6-4-beta-1/\">Leia o anúncio da versão Beta 1</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\"><strong>Como você pode ajudar – Testando!</strong></h2>\n\n\n\n<p>O teste de erros é uma parte crítica do aperfeiçoamento da versão no estágio beta. Também é uma ótima maneira de contribuir. Se você nunca testou uma versão beta antes, <a href=\"https://make.wordpress.org/test/2022/09/21/help-test-wordpress-6-1/\">este guia detalhado</a> ajudará a orientá-lo sobre o que e como testar.</p>\n\n\n\n<p>Se você acha que encontrou um erro, informe-o na área <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alfa / Beta</a> nos fóruns de suporte. Se você se sentir confortável em escrever um relatório de erros reproduzível, <a href=\"https://core.trac.wordpress.org/newticket\">registre um no WordPress Trac</a>. É aqui também que você pode encontrar uma <a href=\"https://core.trac.wordpress.org/tickets/major\">lista de erros conhecidos</a>.</p>\n\n\n\n<p>Para ver todos os recursos dos lançamentos do Gutenberg desde o WordPress 6.4, confira os artigos de <em><a href=\"https://make.wordpress.org/core/tag/gutenberg-new/\">novidades do Gutenberg</a></em> para as versões <a href=\"https://make.wordpress.org/core/2023/07/14/whats-new-in-gutenberg-16-2-12-july/\">16.2</a>, <a href=\"https://make.wordpress.org/core/2023/07/26/whats-new-in-gutenberg-16-3-26-july/\">16.3</a>, <a href=\"https://make.wordpress.org/core/2023/08/10/whats-new-in-gutenberg-16-4-9-august/\">16.4</a>, <a href=\"https://make.wordpress.org/core/2023/08/23/whats-new-in-gutenberg-16-5-23-august/\">16.5</a>, <a href=\"https://make.wordpress.org/core/2023/09/06/whats-new-in-gutenberg-16-6-06-september/\">16.6</a> e <a href=\"https://make.wordpress.org/core/2023/09/28/whats-new-in-gutenberg-16-7-27-september/\">16.7</a>.</p>\n\n\n\n<p>Curioso sobre os testes de lançamentos em geral? Acompanhe as <a href=\"https://make.wordpress.org/test/\">iniciativas de teste no Make Core</a> e junte-se ao <a href=\"https://wordpress.slack.com/messages/core-test/\">canal #core-test</a> no <a href=\"https://wordpress.slack.com/\">Making WordPress Slack</a>.</p>\n\n\n\n<h3 class=\"wp-block-heading\">A recompensa de vulnerabilidade dobra durante as versões Beta e RC</h3>\n\n\n\n<p>Entre a versão Beta 1 e o Release Candidate final (RC) para cada nova versão do WordPress, a <a href=\"https://make.wordpress.org/security/2023/06/28/doubling-the-bounties-for-wordpress-6-3-beta/\">recompensa monetária por relatar novas vulnerabilidades de segurança não lançadas é dobrada</a>. Siga as práticas de divulgação responsável, conforme detalhado nas práticas e políticas de segurança do projeto descritas na <a href=\"https://hackerone.com/wordpress\">página do HackerOne</a> e no <a href=\"https://wordpress.org/about/security/\">white paper de segurança</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Atualização no recurso de biblioteca de fontes</h2>\n\n\n\n<p>O recurso de biblioteca de fontes, inicialmente planejado para a versão 6.4, agora está previsto para ser lançado na versão 6.5. O WordPress está comprometido em oferecer a melhor experiência possível. Esta decisão garante tempo para abordar oportunidades de melhoria, <a href=\"https://make.wordpress.org/test/2023/10/03/help-test-the-font-library/\">testar</a> e obter feedback suficiente para atender aos padrões de qualidade do WordPress. Agradecemos seu apoio enquanto os colaboradores trabalham para uma experiência excepcional na biblioteca de fontes.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Novidades da versão Beta 3</h2>\n\n\n\n<p>O WordPress 6.4 Beta 3 contém mais de 60 atualizações desde o lançamento da versão Beta 2, incluindo 29 tíquetes para o núcleo do WordPress. Cada ciclo Beta se concentra em correções de erros e mais estão a caminho com sua ajuda durante os testes. Você pode navegar pelos detalhes técnicos de todos os problemas abordados desde a versão Beta 2 usando estes links:</p>\n\n\n\n<ul>\n<li><a href=\"https://github.com/WordPress/gutenberg/commits/wp/6.4\">Tíquetes do GitHub para a versão 6.4</a></li>\n\n\n\n<li><a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=10%2F04%2F2023..10%2F10%2F2023&amp;milestone=6.4&amp;col=id&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=priority&amp;order=id\">Tíquetes fechados do Trac desde a versão Beta 2</a></li>\n\n\n\n<li><a href=\"https://github.com/WordPress/twentytwentyfour/commits/\">Tíquetes do GitHub para o tema Twenty Twenty-Four</a></li>\n</ul>\n\n\n\n<p><em><em>Agradecemos aos seguintes colaboradores por colaborarem neste post</em>: </em><a href=\"https://profiles.wordpress.org/meher/\">@meher</a>, <a href=\"https://profiles.wordpress.org/rmartinezduque/\">@rmartinezduque</a>, <a href=\"https://profiles.wordpress.org/cbringmann/\">@cbringmann</a>, <a href=\"https://profiles.wordpress.org/sereedmedia/\">@sereedmedia</a> and <a href=\"https://profiles.wordpress.org/michelleames/\">@michelleames</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 6.4 Beta 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://br.wordpress.org/2023/10/03/wordpress-6-4-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Oct 2023 19:07:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:12:\"Lançamentos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"6.4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=2837\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:343:\"O WordPress 6.4 Beta 2 já está disponível para testes. Esta versão do WordPress está em desenvolvimento. Não é recomendável executar esta versão em um site de produção. Ao invés disso, é recomendável que você a use em um site de teste. Isso permitirá que você teste a nova versão antes do lançamento oficial. Você [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Andre Ribeiro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8183:\"\n<p>O WordPress 6.4 Beta 2 já está disponível para testes.</p>\n\n\n\n<p><strong>Esta versão do WordPress está em desenvolvimento. </strong>Não é recomendável executar esta versão em um site de produção. Ao invés disso, é recomendável que você a use em um site de teste. Isso permitirá que você teste a nova versão antes do lançamento oficial.</p>\n\n\n\n<span id=\"more-2837\"></span>\n\n\n\n<p>Você pode testar o WordPress 6.4 Beta 2 de três maneiras:</p>\n\n\n\n<p><strong>Plugin: </strong>Instalar e ativar o plugin <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> (selecione a opção “Bleeding edge” e “Beta/RC Only”).</p>\n\n\n\n<p><strong>Baixe diretamente: </strong>Baixar direto a <a href=\"https://wordpress.org/wordpress-6.4-beta2.zip\">versão Beta 2 aqui (zip)</a>.</p>\n\n\n\n<p><strong>Linha de comando:</strong> Usar o WP-CLI para testar:</p>\n\n\n\n<p><code>wp core update --version=6.4-beta2</code></p>\n\n\n\n<p><strong>Ambiente Local</strong>: Use wp-now para configurar localmente uma instalação do WordPress 6.4 Beta 2 baseada em Node.js. <a href=\"https://developer.wordpress.org/block-editor/getting-started/devenv/get-started-with-wp-now/\">Saiba mais neste guia</a>.</p>\n\n\n\n<p>A meta atual para o lançamento do WordPress 6.4 é <strong>7 de novembro de 2023</strong>. Obtenha uma visão geral do <a href=\"https://make.wordpress.org/core/6-4/\">ciclo de lançamento da versão 6.4</a> e verifique o <a href=\"https://make.wordpress.org/core/\">blog Make WordPress Core</a> para <a href=\"https://make.wordpress.org/core/tag/6-4/\">posts relacionados a versão 6.4</a> nas próximas semanas para obter mais informações.</p>\n\n\n\n<p>A versão 6.4 do WordPress é trazida a você por uma <a href=\"https://make.wordpress.org/core/2023/06/05/wordpress-6-4-development-cycle/\">equipe de gêneros sub-representados</a> para aumentar a participação e a parceria com aqueles que se identificam como gêneros sub-representados no projeto de código aberto WordPress.</p>\n\n\n\n<p><strong>Quer saber o que há de novo no WordPress 6.4?</strong> <a href=\"https://br.wordpress.org/2023/09/27/wordpress-6-4-beta-1/\">Leia o anúncio do Beta 1</a> e assista ao <a href=\"https://wordpress.org/news/2023/10/episode-63-a-wordpress-6-4-sneak-peek/\">episódio 63 do podcast WP Briefing</a> para mais detalhes.</p>\n\n\n\n<h2 class=\"wp-block-heading\"><strong>Como você pode ajudar – Testando!</strong></h2>\n\n\n\n<p>O teste de erros é uma parte crítica do aperfeiçoamento da versão no estágio beta. Também é uma ótima maneira de contribuir. Se você nunca testou uma versão beta antes, <a href=\"https://make.wordpress.org/test/2022/09/21/help-test-wordpress-6-1/\">este guia detalhado</a> ajudará a orientá-lo sobre o que e como testar.</p>\n\n\n\n<p>O <a href=\"https://github.com/WordPress/gutenberg/blob/a854e6e7a2a49a6b1ec5ef377c756a30e1c7ac5a/lib/experimental/fonts/font-library/README.md\">recurso de biblioteca de fontes</a>, atualmente disponível no <a href=\"https://make.wordpress.org/core/2023/09/28/whats-new-in-gutenberg-16-7-27-september/\">Gutenberg 16.7</a>, requer mais testes e feedback para garantir que esteja pronto para inclusão na próxima versão 6.4. <a href=\"https://make.wordpress.org/test/2023/09/26/help-test-wordpress-6-4/#font-library-and-management\">Confira este guia</a> para obter mais instruções sobre como testá-lo.</p>\n\n\n\n<p>Se você acha que encontrou um erro, informe-o na área <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alfa / Beta</a> nos fóruns de suporte. Se você se sentir confortável em escrever um relatório de erros reproduzível, <a href=\"https://core.trac.wordpress.org/newticket\">registre um no WordPress Trac</a>. É aqui também que você pode encontrar uma <a href=\"https://core.trac.wordpress.org/tickets/major\">lista de erros conhecidos</a>.</p>\n\n\n\n<p>Para ver todos os recursos dos lançamentos do Gutenberg desde o WordPress 6.4, confira os artigos de <em><a href=\"https://make.wordpress.org/core/tag/gutenberg-new/\">novidades do Gutenberg</a></em> para as versões <a href=\"https://make.wordpress.org/core/2023/07/14/whats-new-in-gutenberg-16-2-12-july/\">16.2</a>, <a href=\"https://make.wordpress.org/core/2023/07/26/whats-new-in-gutenberg-16-3-26-july/\">16.3</a>, <a href=\"https://make.wordpress.org/core/2023/08/10/whats-new-in-gutenberg-16-4-9-august/\">16.4</a>, <a href=\"https://make.wordpress.org/core/2023/08/23/whats-new-in-gutenberg-16-5-23-august/\">16.5</a>, <a href=\"https://make.wordpress.org/core/2023/09/06/whats-new-in-gutenberg-16-6-06-september/\">16.6</a> e <a href=\"https://make.wordpress.org/core/2023/09/28/whats-new-in-gutenberg-16-7-27-september/\">16.7</a>.</p>\n\n\n\n<p>Curioso sobre os testes de lançamentos em geral? Acompanhe as <a href=\"https://make.wordpress.org/test/\">iniciativas de teste no Make Core</a> e junte-se ao <a href=\"https://wordpress.slack.com/messages/core-test/\">canal #core-test</a> no <a href=\"https://wordpress.slack.com/\">Making WordPress Slack</a>.</p>\n\n\n\n<h3 class=\"wp-block-heading\">A recompensa de vulnerabilidade dobra durante as versões Beta e RC</h3>\n\n\n\n<p>Entre a versão Beta 1 e o Release Candidate final (RC) para cada nova versão do WordPress, a <a href=\"https://make.wordpress.org/security/2023/06/28/doubling-the-bounties-for-wordpress-6-3-beta/\">recompensa monetária por relatar novas vulnerabilidades de segurança não lançadas é dobrada</a>. Siga as práticas de divulgação responsável, conforme detalhado nas práticas e políticas de segurança do projeto descritas na <a href=\"https://hackerone.com/wordpress\">página do HackerOne</a> e no <a href=\"https://wordpress.org/about/security/\">white paper de segurança</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Novidades da versão Beta 2</h2>\n\n\n\n<p>O WordPress 6.4 Beta 2 contém mais de 50 atualizações desde o lançamento da versão Beta 1, incluindo <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=09%2F27%2F2023..10%2F03%2F2023&amp;milestone=6.4&amp;col=id&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=priority&amp;order=id\">18 tíquetes para o núcleo do WordPress</a>.</p>\n\n\n\n<p>Cada ciclo Beta se concentra em correções de erros, e mais estão a caminho com sua ajuda durante os testes. Você pode navegar pelos detalhes técnicos de todos os erros abordados desde a versão Beta 1 usando estes links:</p>\n\n\n\n<ul>\n<li><a href=\"https://github.com/WordPress/gutenberg/commits/wp/6.4\">Tíquetes do GitHub para a versão 6.4</a></li>\n\n\n\n<li><a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=09%2F27%2F2023..10%2F03%2F2023&amp;milestone=6.4&amp;col=id&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=priority&amp;order=id\">Tíquetes fechados do Trac desde a versão Beta 1</a></li>\n\n\n\n<li><a href=\"https://github.com/WordPress/twentytwentyfour/commits/\">Tíquetes do GitHub para o tema Twenty Twenty-Four</a></li>\n</ul>\n\n\n\n<h3 class=\"wp-block-heading\">Nota para o tema Twenty Twenty-Four</h3>\n\n\n\n<p>Note que algumas imagens no tema Twenty Twenty-Four podem não carregar corretamente. Uma correção está em andamento! Saiba mais sobre neste <a href=\"https://core.trac.wordpress.org/ticket/59526\">tíquete do Trac</a>.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Nota sobre melhorias no gerenciamento de padrões em temas clássicos</h3>\n\n\n\n<p>Embora o WordPress 6.4 traga avanços de padrões interessantes, melhorias no gerenciamento de padrões em temas clássicos serão eventualmente abordadas no WordPress 6.5. O <a href=\"https://br.wordpress.org/2023/09/27/wordpress-6-4-beta-1/\">anúncio da versão Beta 1</a> foi atualizado para refletir essa mudança de acordo.</p>\n\n\n\n<p><em>Agradecemos aos seguintes colaboradores por colaborarem neste post</em>:<em> <a href=\"https://profiles.wordpress.org/meher/\">@meher</a>, <a href=\"https://profiles.wordpress.org/sereedmedia/\">@sereedmedia</a>, <a href=\"https://profiles.wordpress.org/rmartinezduque/\">@rmartinezduque</a>, <a href=\"https://profiles.wordpress.org/cbringmann/\">@cbringmann</a>, <a href=\"https://profiles.wordpress.org/priethor/\">@priethor</a> e <a href=\"https://profiles.wordpress.org/annezazu/\">@annezazu</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 6.4 Beta 1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://br.wordpress.org/2023/09/27/wordpress-6-4-beta-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Sep 2023 19:26:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:12:\"Lançamentos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"6.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=2828\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:343:\"O WordPress 6.4 Beta 1 já está disponível para testes. Esta versão do WordPress está em desenvolvimento. Não é recomendável executar esta versão em um site de produção. Ao invés disso, é recomendável que você a use em um site de teste. Isso permitirá que você teste a nova versão antes do lançamento oficial. Você [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Andre Ribeiro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:18485:\"\n<p>O WordPress 6.4 Beta 1 já está disponível para testes.</p>\n\n\n\n<p><strong>Esta versão do WordPress está em desenvolvimento. </strong>Não é recomendável executar esta versão em um site de produção. Ao invés disso, é recomendável que você a use em um site de teste. Isso permitirá que você teste a nova versão antes do lançamento oficial.</p>\n\n\n\n<span id=\"more-2828\"></span>\n\n\n\n<p>Você pode testar o WordPress 6.4 Beta 1 de três maneiras:</p>\n\n\n\n<p><strong>Opção 1: </strong>Instalar e ativar o plugin <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> (selecione a opção “Bleeding edge” e “Beta/RC Only”).</p>\n\n\n\n<p><strong>Opção 2: </strong>Baixar direto a <a href=\"https://wordpress.org/wordpress-6.4-beta1.zip\">versão Beta 1 aqui (zip)</a>.</p>\n\n\n\n<p><strong>Opção 3:</strong> Usar o WP-CLI para testar:</p>\n\n\n\n<p><code>wp core update --version=6.4-beta1</code></p>\n\n\n\n<p>A meta atual para o lançamento da versão final é 7 de novembro de 2023. Sua ajuda nos testes da versão é vital para garantir que tudo nesta versão seja o melhor possível.</p>\n\n\n\n<p>A versão 6.4 do WordPress é trazida a você por uma <a href=\"https://make.wordpress.org/core/2023/06/05/wordpress-6-4-development-cycle/\">equipe de gêneros sub-representados</a> para aumentar a participação e a parceria com aqueles que se identificam como gêneros sub-representados  no projeto de código aberto WordPress.</p>\n\n\n\n<blockquote class=\"wp-block-quote\">\n<p></p>\n<cite>Obtenha uma visão geral do <a href=\"https://make.wordpress.org/core/6-4/\">ciclo de lançamento do WordPress 6.4</a> e confira o <a href=\"https://make.wordpress.org/core/\">blog Make WordPress Core</a> para <a href=\"https://make.wordpress.org/core/tag/6-4/\">posts relacionadas a versão 6.4</a> nas próximas semanas para obter mais detalhes.</cite></blockquote>\n\n\n\n<h2 class=\"wp-block-heading\"><strong>Como você pode ajudar – Testando!</strong></h2>\n\n\n\n<p>O teste de erros é uma parte crítica do aperfeiçoamento da versão no estágio beta. Também é uma ótima maneira de contribuir. Se você nunca testou uma versão beta antes, <a href=\"https://make.wordpress.org/test/2022/09/21/help-test-wordpress-6-1/\">este guia detalhado</a> ajudará a orientá-lo sobre o que e como testar.</p>\n\n\n\n<p>Se você acha que encontrou um erro, informe-o na área <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alfa / Beta</a> nos fóruns de suporte. Se você se sentir confortável em escrever um relatório de erros reproduzível, <a href=\"https://core.trac.wordpress.org/newticket\">registre um no WordPress Trac</a>. É aqui também que você pode encontrar uma <a href=\"https://core.trac.wordpress.org/tickets/major\">lista de erros conhecidos</a>.</p>\n\n\n\n<p>Quer saber mais sobre testes de lançamentos como este? Leia sobre as <a href=\"https://make.wordpress.org/test/\">iniciativas de teste</a> que acontecem no Make WordPress Core. Você também pode participar do <a href=\"https://wordpress.slack.com/messages/core-test/\">canal público</a> no <a href=\"https://wordpress.slack.com/\">Slack do WordPress</a>.</p>\n\n\n\n<p>Para ver todos os recursos dos lançamentos do Gutenberg desde o WordPress 6.4, confira os artigos de <em><a href=\"https://make.wordpress.org/core/tag/gutenberg-new/\">novidades do Gutenberg</a></em> para as versões <a href=\"https://make.wordpress.org/core/2023/07/14/whats-new-in-gutenberg-16-2-12-july/\">16.2</a>, <a href=\"https://make.wordpress.org/core/2023/07/26/whats-new-in-gutenberg-16-3-26-july/\">16.3</a>, <a href=\"https://make.wordpress.org/core/2023/08/10/whats-new-in-gutenberg-16-4-9-august/\">16.4</a>, <a href=\"https://make.wordpress.org/core/2023/08/23/whats-new-in-gutenberg-16-5-23-august/\">16.5</a>, <a href=\"https://make.wordpress.org/core/2023/09/06/whats-new-in-gutenberg-16-6-06-september/\">16.6</a> e 16.7 (lançamento pendente).</p>\n\n\n\n<p>Esta versão contém mais de 400 melhorias e 370 correções de erros no editor, incluindo mais de <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=6.4&amp;group=component&amp;max=500&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">190 tíquetes para o núcleo do WordPress</a>.</p>\n\n\n\n<h3 class=\"wp-block-heading\">A recompensa de vulnerabilidade dobra durante as versões Beta e RC</h3>\n\n\n\n<p>Entre a versão Beta 1 e o Release Candidate final (RC) para cada nova versão do WordPress, a <a href=\"https://make.wordpress.org/security/2023/06/28/doubling-the-bounties-for-wordpress-6-3-beta/\">recompensa monetária por relatar novas vulnerabilidades de segurança não lançadas é dobrada</a>. Siga as práticas de divulgação responsável, conforme detalhado nas práticas e políticas de segurança do projeto descritas na <a href=\"https://hackerone.com/wordpress\">página do HackerOne</a> e no <a href=\"https://wordpress.org/about/security/\">white paper de segurança</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Primeiras impressões da versão 6.4</h2>\n\n\n\n<p>O WordPress 6.4 apresentará um tema padrão versátil, novos recursos e inúmeras atualizações projetadas para aprimorar sua experiência no WordPress em diversas áreas – desde escrita e design até eficiência do fluxo de trabalho. Enquanto isso, o trabalho fundamental continua para a Fase 3 do <a href=\"https://wordpress.org/about/roadmap/\">roteiro do WordPress</a>. Continue lendo para alguns destaques.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Conheça o tema Twenty Twenty-Four</h3>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/2023/08/24/introducing-twenty-twenty-four/\">Twenty Twenty-Four</a> é um novo tema padrão que será lançado com a versão 6.4. Com uma coleção versátil de modelos e padrões, este tema abrange uma ampla gama de casos de uso, desde empreendedores a pequenas empresas, passando por artistas e escritores. O Twenty Twenty-Four também enfatiza as mais recentes ferramentas de design e recursos de edição de sites, permitindo aproveitar a flexibilidade dos blocos e desbloquear inúmeras possibilidades criativas com apenas alguns ajustes. Acompanhe o progresso do tema e relate quaisquer problemas <a href=\"https://github.com/WordPress/twentytwentyfour\">neste repositório GitHub</a>.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Gerencie as fontes de seu site</h3>\n\n\n\n<p>O WordPress 6.4 apresentará novos recursos de gerenciamento de fontes:</p>\n\n\n\n<p>A biblioteca de fontes permite que você gerencie fontes em seu site, independentemente do tema ativo, assim como você gerencia mídias na biblioteca. Instale facilmente fontes locais e do Google e escolha quais ativar para cada tema. Este novo gerenciador de fontes é uma maneira poderosa de controlar uma parte fundamental do design e da marca do seu site sem codificação. Graças à sua extensibilidade, as coleções tipográficas personalizadas podem expandir suas opções de fontes.</p>\n\n\n\n<p>Por outro lado, o recurso fornece geração de estilo <code>@font-face</code> no servidor e suporte para impressão. Ele introduz uma nova função global chamada <code>wp_print_font_faces()</code>, que processa dados de fontes recebidos de estilos definidos no editor ou pelo tema ativo.</p>\n\n\n\n<p>Observação: a biblioteca de fontes está programada para inclusão nas próximas versões beta 6.4.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Adicione funcionalidade de lightbox às suas imagens</h3>\n\n\n\n<p>Exiba suas imagens de forma interativa com a <a href=\"https://github.com/WordPress/gutenberg/issues/51132\">funcionalidade de lightbox</a>. Este novo recurso principal estará disponível para blocos de imagens, permitindo que recursos visuais sejam abertos e ampliados sobre o conteúdo existente.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Aproveite novas melhorias de escrita</h3>\n\n\n\n<p><a href=\"https://github.com/WordPress/gutenberg/issues/53305\">Muitas melhorias</a> na versão 6.4 garantirão que sua experiência de escrita no WordPress permaneça tranquila e agradável, desde novos atalhos de teclado até colagem mais confiável de outras fontes. Além disso, uma nova experiência na barra de ferramentas estará disponível para os blocos de <a href=\"https://github.com/WordPress/gutenberg/pull/53697\">navegação</a>, <a href=\"https://github.com/WordPress/gutenberg/pull/53306\">lista</a> e <a href=\"https://github.com/WordPress/gutenberg/pull/53699\">citação</a>, tornando o trabalho com suas opções de ferramentas mais eficientes e intuitivos.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Mais ferramentas de design, maior criatividade</h3>\n\n\n\n<p>Novas ferramentas de design irão melhorar a experiência geral de criação com WordPress, ao mesmo tempo que fornecem maior controle e flexibilidade de layout. Algumas atualizações incluem:</p>\n\n\n\n<ul>\n<li><a href=\"https://github.com/WordPress/gutenberg/pull/53934\">Imagens de fundo para blocos de grupo</a>, permitindo layouts criativos e personalizados.</li>\n\n\n\n<li><a href=\"https://github.com/WordPress/gutenberg/pull/54216\">Proporções para espaços reservados de imagem</a> – um novo recurso que é particularmente útil ao criar e usar padrões. Depois de definir a proporção desejada de um espaço reservado, você pode arrastar e soltar uma imagem e ela será ajustada para manter a consistência do design.</li>\n\n\n\n<li><a href=\"https://github.com/WordPress/gutenberg/pull/53667\">Personalização de cores de botões e cabeçalhos em blocos de grupos</a> e de <a href=\"https://github.com/WordPress/gutenberg/pull/54104\">colunas</a>, permitindo definir a aparência desses elementos quando colocados dentro desses blocos contêineres. Esse recurso dá um passo no sentido de permitir <a href=\"https://github.com/WordPress/gutenberg/issues/40318\">estilos específicos de seção</a>, que continuarão a ser desenvolvidos nos próximos lançamentos.</li>\n\n\n\n<li><a href=\"https://github.com/WordPress/gutenberg/pull/54416\">Configurações de alinhamento em padrões sincronizados</a>. Ao criar e converter um padrão sincronizado com blocos de largura total, alinhados à esquerda ou à direita, essa melhoria garante que os atributos de alinhamento permaneçam intactos para uma experiência perfeita de edição de site e criação de padrões.</li>\n</ul>\n\n\n\n<h3 class=\"wp-block-heading\">Atualizações para fluxos de trabalho mais tranquilos</h3>\n\n\n\n<p>À medida que o editor do site continua a evoluir e expandir seus recursos, o mesmo acontece com a interface e as ferramentas que o suportam.</p>\n\n\n\n<p>Introduzida pela primeira vez no WordPress 6.3, a <a href=\"https://wordpress.org/documentation/article/site-editor-command-palette/\">paleta de comandos</a> ajuda você a realizar ações, pesquisar e navegar rapidamente pelo conteúdo e configurações do seu site. Ele receberá atualizações significativas na versão 6.4, apresentando um <a href=\"https://github.com/WordPress/gutenberg/pull/53117\">design atualizado</a>, <a href=\"https://github.com/WordPress/gutenberg/pull/52509#top\">novos comandos</a> para realizar ações específicas de bloco e <a href=\"https://github.com/WordPress/gutenberg/pull/53496\">melhor linguagem de comando e consistência de ação</a>.</p>\n\n\n\n<p>A <a href=\"https://wordpress.org/documentation/article/list-view/\">visualização de lista</a> oferece uma ótima maneira de navegar e trabalhar com os blocos que compõem seu site. Esta versão apresentará melhorias em sua interface e usabilidade, tornando-a ainda mais poderosa. Você pode <a href=\"https://github.com/WordPress/gutenberg/pull/53735\">renomear blocos de grupo</a>, <a href=\"https://github.com/WordPress/gutenberg/pull/53381\">visualizar mídia para blocos de galeria e imagem</a> e <a href=\"https://github.com/WordPress/gutenberg/pull/53559\">duplicar blocos com um atalho de teclado</a>.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Melhorias de padrões</h3>\n\n\n\n<p>Os <a href=\"https://wordpress.org/documentation/article/site-editor-patterns/\">padrões</a> desempenham um papel essencial na edição de sites e sua importância permanece proeminente no próximo lançamento.</p>\n\n\n\n<p>A versão 6.4 permitirá que você organize melhor seus <a href=\"https://github.com/WordPress/gutenberg/pull/53835\">padrões sincronizados e não sincronizados com categorias</a> como parte do processo de criação. Essas categorias estão disponíveis para classificação no fluxo de inserção para facilitar a descoberta e adição de padrões. Além disso, você pode acessar convenientemente todos os seus padrões personalizados no mesmo lugar – a seção padrões do bloco de insercão, que remove a guia separada para padrões sincronizados.</p>\n\n\n\n<p>Outras melhorias incluem a <a href=\"https://github.com/WordPress/gutenberg/pull/54337\">importação e exportação de padrões como arquivos JSON</a>, garantindo compatibilidade retroativa com blocos reutilizáveis e permitindo a transferência de padrões entre sites.</p>\n\n\n\n<p>Por último, esta versão melhorará a <a href=\"https://github.com/WordPress/gutenberg/issues/52150\">compatibilidade com os temas clássicos</a>, usando as bases estabelecidas no WordPress 6.3 para criação e gerenciamento de padrões. Uma nova <a href=\"https://core.trac.wordpress.org/ticket/58827\">guia de padrões</a> no menu <em>Aparência</em> do seu painel concederá acesso à interface de padrões disponível no editor do site.</p>\n\n\n\n<p><strong>Atualização (3 de outubro de 2023)</strong>: Embora a versão 6.4 traga vários avanços de padrões interessantes, a experiência aprimorada de gerenciamento de padrões mencionada anteriormente para temas clássicos, infelizmente, não será incluída na versão 6.4. Agradecemos a compreensão e fiquem atentos ao WordPress 6.5.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Introdução a hooks de blocos</h3>\n\n\n\n<p><a href=\"https://core.trac.wordpress.org/ticket/59313\">Hooks de blocos</a> é um novo recurso poderoso que enriquece a extensibilidade dos temas de bloco, inspirando-se no conceito familiar de WordPress <a href=\"https://learn.wordpress.org/tutorial/wordpress-filter-hooks/\">Hooks</a>. Após a ativação, os plugins podem inserir blocos automaticamente no conteúdo relativo a outro bloco. Por exemplo, um bloco de botão “Curtir” pode ser inserido automaticamente após o bloco postar conteúdo.</p>\n\n\n\n<p>Embora centrado no desenvolvedor, os hooks de blocos aprimoram a experiência do usuário, tornando o uso de blocos mais intuitivo e permitindo maior personalização e controle sobre onde e como os blocos inseridos automaticamente aparecem. <a href=\"https://github.com/WordPress/gutenberg/pull/52969\">Um novo painel do inspetor de blocos</a> chamado “Plugins” foi projetado para respeitar as preferências dos criadores, garantindo que você possa adicionar, descartar ou realocar um hook de bloco conforme desejado.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Acessibilidade</h3>\n\n\n\n<p>O WordPress 6.4 tem 70 melhorias de acessibilidade programadas para inclusão, 60 delas estão incluídas na versão Beta 1. Atualizações notáveis focadas em melhorar a experiência da interface do usuário (IU) incluem <a href=\"https://core.trac.wordpress.org/ticket/40822\">melhores posicionamentos de botões</a>, <a href=\"https://core.trac.wordpress.org/ticket/47125\">contexto aprimorado para itens de &#8220;Adicionar novo&#8221; nos menus da administração</a> e <a href=\"https://core.trac.wordpress.org/ticket/58573\">atualização nas mensagens na integridade do site</a>.</p>\n\n\n\n<p>Além disso, foram implementadas correções para <a href=\"https://core.trac.wordpress.org/ticket/58756\">edição de imagens na biblioteca de mídia</a>, <a href=\"https://core.trac.wordpress.org/ticket/30685\">relatórios de erros na tela de login</a> e <a href=\"https://core.trac.wordpress.org/ticket/58756\">configurações de “sem movimento” para GIFs</a>. A causa de alguns <a href=\"https://core.trac.wordpress.org/ticket/58703\">falsos positivos em testes automatizados de UI</a> foi corrigida, e usuários sem JavaScript agora veem um <a href=\"https://core.trac.wordpress.org/ticket/59229\">link direto para instalar o plugin do editor clássico</a>. Saiba mais sobre essas mudanças e outras melhorias de acessibilidade para 6.4 no <a href=\"https://core.trac.wordpress.org/query?focuses=~accessibility&amp;milestone=6.4&amp;col=id&amp;col=summary&amp;col=status&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=priority&amp;order=priority\">WordPress Trac</a>.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Performance</h3>\n\n\n\n<p>O WordPress 6.4 incluirá mais de 100 atualizações relacionadas ao desempenho, incluindo <a href=\"https://core.trac.wordpress.org/query?focuses=~performance&amp;component=Themes&amp;milestone=6.4\">melhorias no desempenho de carregamento de modelos</a> para temas de bloco e temas clássicos, <a href=\"https://core.trac.wordpress.org/query?focuses=~javascript+performance&amp;milestone=6.4\">uso das novas estratégias de carregamento de script “adiar” e “assíncrono”</a> no núcleo, blocos, temas e novas funções para otimizar o uso de opções <a href=\"https://core.trac.wordpress.org/query?focuses=~performance&amp;component=Options%2C+Meta+APIs&amp;component=Database&amp;milestone=6.4\">carregadas automaticamente</a>.</p>\n\n\n\n<p><em><strong>Observe que os recursos desta lista estão sujeitos a alterações antes do lançamento final.</strong></em></p>\n\n\n\n<p>Agradecemos aos seguintes colaboradores por colaborarem neste post:<em> <a href=\"https://profiles.wordpress.org/meher/\">@meher</a>, <a href=\"https://profiles.wordpress.org/sereedmedia/\">@sereedmedia</a>, <a href=\"https://profiles.wordpress.org/meaganhanes/\">@meaganhanes</a>, <a href=\"https://profiles.wordpress.org/rmartinezduque/\">@rmartinezduque</a>, <a href=\"https://profiles.wordpress.org/annezazu/\">@annezazu</a>, <a href=\"https://profiles.wordpress.org/cbringmann/\">@cbringmann</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">@flixos90</a>, <a href=\"https://profiles.wordpress.org/richtabor/\">@richtabor</a>,&nbsp; <a href=\"https://profiles.wordpress.org/francina/\">@francina</a>, <a href=\"https://profiles.wordpress.org/joedolson/\">@joedolson</a>, <a href=\"https://profiles.wordpress.org/priethor/\">@priethor</a>, <a href=\"https://profiles.wordpress.org/davidbaumwald/\">@davidbaumwald</a></em>, <em><a href=\"https://profiles.wordpress.org/chanthaboune/\">@chanthaboune</a> e <a href=\"https://profiles.wordpress.org/luminuu/\">@luminuu</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"WordPress 6.3.1 – Atualização de manutenção\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://br.wordpress.org/2023/08/30/wordpress-6-3-1-atualizacao-de-manutencao/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 30 Aug 2023 18:15:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:12:\"Lançamentos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"6.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=2814\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:356:\"O WordPress 6.3.1 está disponível! Esta versão apresenta 4 correções de erros no núcleo e 6 correções de erros para o editor de blocos. Você pode conferir um resumo das atualizações de manutenção nesta versão lendo o anúncio do release candidate. WordPress 6.3.1 é uma versão de ciclo curto. O próximo grande lançamento será a [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Andre Ribeiro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4168:\"\n<p>O WordPress 6.3.1 está disponível!</p>\n\n\n\n<p>Esta versão apresenta <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=6.3.1&amp;group=status&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;col=keywords&amp;order=priority\">4 correções de erros no núcleo</a> e <a href=\"https://github.com/orgs/WordPress/projects/103/\">6 correções de erros para o editor de blocos</a>. Você pode conferir um resumo das atualizações de manutenção nesta versão lendo o <a href=\"https://make.wordpress.org/core/2023/08/23/wordpress-6-3-1-rc1-is-now-available/\">anúncio do release candidate</a>.</p>\n\n\n\n<span id=\"more-2814\"></span>\n\n\n\n<p>WordPress 6.3.1 é uma versão de ciclo curto. O próximo grande lançamento será <a href=\"https://make.wordpress.org/core/6-4/\">a versão 6.4</a>,&nbsp;planejada para novembro de 2023.</p>\n\n\n\n<p>Se você tiver sites que suportam atualizações automáticas em segundo plano, o processo de atualização começará automaticamente.</p>\n\n\n\n<p>Você pode&nbsp;<a href=\"https://wordpress.org/wordpress-6.3.1.zip\">baixar o WordPress 6.3.1 em WordPress.org</a> ou visitar o painel do WordPress, clicar em “Atualizações” e, em seguida, clicar em “Atualizar agora”.</p>\n\n\n\n<p>Para obter mais informações sobre esta versão, <a href=\"https://wordpress.org/support/wordpress-version/version-6-3-1\">visite o site HelpHub</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Agradecemos aos contribuidores do WordPress</h2>\n\n\n\n<p>Esta versão foi liderada por&nbsp;<a href=\"https://profiles.wordpress.org/audrasjb\">Jb Audras</a> e <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, com a ajuda de <a href=\"https://profiles.wordpress.org/SergeyBiryukov\">Sergey Biryukov</a>&nbsp;no controle da missão e <a href=\"https://profiles.wordpress.org/isabel_brison/\">Isabel Brison</a> que trabalhou nas atualizações do Gutenberg.</p>\n\n\n\n<p>O WordPress 6.3.1 não teria sido possível sem as contribuições das seguintes pessoas. O empenho para entregar as correções de manutenção em uma versão estável é uma prova do poder e da capacidade da comunidade WordPress.</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/antonvlasenko/\">@antonvlasenko</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">@audrasjb</a>, <a href=\"https://profiles.wordpress.org/austinginder/\">@austinginder</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">@azaozz</a>, <a href=\"https://profiles.wordpress.org/dd32/\">@dd32</a>, <a href=\"https://profiles.wordpress.org/dlh/\">@dlh</a>, <a href=\"https://profiles.wordpress.org/frankit/\">@frankit</a>, <a href=\"https://profiles.wordpress.org/get_dave/\">@get_dave</a>, <a href=\"https://profiles.wordpress.org/hellofromtonya/\">@hellofromTonya</a>, <a href=\"https://profiles.wordpress.org/khokansardar/\">@khokansardar</a>, <a href=\"https://profiles.wordpress.org/mathsgrinds/\">@mathsgrinds</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">@mukesh27</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">@peterwilsoncc</a>, <a href=\"https://profiles.wordpress.org/presskopp/\">@Presskopp</a>, <a href=\"https://profiles.wordpress.org/rajinsharwar/\">@rajinsharwar</a>, <a href=\"https://profiles.wordpress.org/ravanh/\">@RavanH</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">@sergeybiryukov</a> e <a href=\"https://profiles.wordpress.org/tmatsuur/\">@tmatsuur</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Como contribuir</h2>\n\n\n\n<p>Para se envolver no desenvolvimento principal do WordPress, acesse o Trac,&nbsp;<a href=\"https://core.trac.wordpress.org/report/6\">escolha um ticket</a> e participe da conversa nos&nbsp;canais <a href=\"https://wordpress.slack.com/archives/C02RQBWTW\">#core</a> e <a href=\"https://wordpress.slack.com/archives/C055Y7FKS7N\">#6-4-release-leads</a>. Precisa de ajuda? Confira o <a href=\"https://make.wordpress.org/core/handbook/\">Manual do Colaborador Principal</a>.</p>\n\n\n\n<p><em>Agradecemos a <a href=\"https://translate.google.com/website?sl=en&amp;tl=pt&amp;hl=pt-BR&amp;client=webapp&amp;u=https://profiles.wordpress.org/jeffpaul/\">@jeffpaul</a> pela revisão.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"WordPress 6.3 “Lionel”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://br.wordpress.org/2023/08/09/wordpress-6-3-lionel/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 Aug 2023 16:43:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:12:\"Lançamentos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"6.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=2788\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:376:\"Diga olá ao WordPress 6.3 &#8220;Lionel&#8221; em homenagem a Lionel Hampton, o célebre artista americano de jazz. Um prolífico vibrafonista de jazz, pianista e percussionista, Hampton ganhou notoriedade trabalhando em harmonia com grandes nomes de Charles Mingus a Quincy Jones e como líder de banda da homônima Lionel Hampton Orchestra. Sua arte e trabalho de [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Andre Ribeiro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:65951:\"\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://wordpress.org/news/files/2023/08/6.3-Release-Edition-Main-Image-1024x683.png\" alt=\"\" class=\"wp-image-15794\" /></figure>\n\n\n\n<p>Diga olá ao WordPress 6.3 &#8220;Lionel&#8221; em homenagem a <a href=\"https://en.wikipedia.org/wiki/Lionel_Hampton\">Lionel Hampton</a>, o célebre artista americano de jazz. Um prolífico vibrafonista de jazz, pianista e percussionista, Hampton ganhou notoriedade trabalhando em harmonia com grandes nomes de <a href=\"https://en.wikipedia.org/wiki/Charles_Mingus\">Charles Mingus</a> a <a href=\"https://en.wikipedia.org/wiki/Quincy_Jones\">Quincy Jones</a> e como líder de banda da homônima <em>Lionel Hampton Orchestra</em>. Sua arte e trabalho de caridade foram reconhecidos com um Grammy, uma estrela na Calçada da Fama de Hollywood e a Medalha Nacional de Artes.</p>\n\n\n\n<span id=\"more-2788\"></span>\n\n\n\n<p>Certifique-se de aumentar o volume dos estilos musicais de Lionel Hampton enquanto descobre tudo o que &#8220;Lionel&#8221; tem a oferecer.</p>\n\n\n\n<p>Com &#8220;Lionel&#8221;, você pode criar sites modernos e atraentes com mais eficiência do que nunca. Se você deseja criar um site inteiro sem codificação ou é um desenvolvedor que deseja personalizar cada detalhe, o WordPress 6.3 tem algo para despertar seu interesse. Ao descompactar e explorar esta versão mais recente, você descobrirá funções e navegação atualizadas, projetadas para ajudá-lo a trabalhar e criar com menos esforço, ferramentas de design que oferecem mais controle sobre o layout e funcionalidades adicionais que enriquecem a experiência de construção do site.</p>\n\n\n\n<blockquote class=\"wp-block-quote has-large-font-size\">\n<p class=\"has-extra-large-font-size\">&#8220;Lionel&#8221; marca um capítulo importante na evolução do WordPress como ferramenta de expressão. É o culminar de anos de trabalho de centenas de colaboradores, trazendo uma experiência de edição mais poderosa e coesa para criar sites com blocos. Ele continua a missão de tornar a publicação na web acessível para todos, portanto, também é apenas um novo começo!</p>\n<cite>Mat&#8217;edas Ventura, Líder de lançamento do WordPress 6.3</cite></blockquote>\n\n\n\n<div class=\"wp-block-buttons is-layout-flex wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\" href=\"https://wordpress.org/wordpress-6.3.zip\">Baixe o WordPress 6.3 &#8220;Lionel&#8221;</a></div>\n</div>\n\n\n\n<h2 class=\"wp-block-heading\">O que há de novo</h2>\n\n\n\n<p>Este importante lançamento abre novas possibilidades para a expressão criativa de designers, criadores e construtores. Ferramentas poderosas e controles refinados dão confiança aos usuários e permitem que eles gerenciem facilmente seus sites.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Faça tudo no editor do site</h3>\n\n\n\n<p>O WordPress 6.3 traz seu conteúdo, modelos e padrões para o editor do site pela primeira vez. Adicione páginas, navegue por variações de estilo, crie padrões sincronizados e aproveite um controle fino sobre seus menus de navegação. Chega de perder tempo alternando entre diferentes áreas do site. Agora você pode se concentrar no que é mais importante. Da criação à conclusão, tudo em um só lugar.</p>\n\n\n<div class=\"wp-block-image\">\n<figure class=\"aligncenter size-large\"><img decoding=\"async\" src=\"https://wordpress.org/news/files/2023/08/site-editor-1024x666.png\" alt=\"Image titled &quot;Do everything with the Site Editor&quot;\" class=\"wp-image-15771\" /><figcaption class=\"wp-element-caption\"><em>Faça tudo no Editor do Site</em></figcaption></figure></div>\n\n\n<h3 class=\"wp-block-heading\">Pré-visualização de temas de blocos</h3>\n\n\n\n<p>Experimente os temas de bloco antes de mudar e visualize no editor do site, com opções para personalizar diretamente antes de se comprometer com um novo tema.&nbsp;</p>\n\n\n<div class=\"wp-block-image\">\n<figure class=\"aligncenter size-large\"><img decoding=\"async\" src=\"https://wordpress.org/news/files/2023/08/previewing-themes-1024x666.png\" alt=\"Image about previewing block themes titled Previewing Themes depicting &quot;Previewing: Organizer&quot;\" class=\"wp-image-15769\" /><figcaption class=\"wp-element-caption\"><em>Pré-visualize um novo tema de blocos antes de mudar</em></figcaption></figure></div>\n\n\n<h3 class=\"wp-block-heading\">Criar e sincronizar padrões</h3>\n\n\n\n<p>Organize blocos de maneiras ilimitadas e salve-os como padrões para uso em todo o seu site. Você pode até especificar se deseja sincronizar seus padrões (anteriormente chamados de “blocos reutilizáveis”) para que uma alteração se aplique a todas as partes do seu site. Ou então utilize os padrões como um ponto de partida capaz de personalizar cada instância.</p>\n\n\n<div class=\"wp-block-image\">\n<figure class=\"aligncenter size-large\"><img decoding=\"async\" src=\"https://wordpress.org/news/files/2023/08/patterns-1024x666.png\" alt=\"Image showing the new My Patterns section in the CMS.\" class=\"wp-image-15768\" /><figcaption class=\"wp-element-caption\"><em>Meus padrões: todos os seus padrões em um só lugar</em></figcaption></figure></div>\n\n\n<h3 class=\"wp-block-heading\">Trabalhe mais rápido com a paleta de comandos</h3>\n\n\n\n<p>Mude para um modelo específico ou abra suas preferências do editor com uma nova ferramenta que ajuda você a navegar rapidamente pela funcionalidade expandida. Com simples atalhos de teclado (⌘+k no Mac ou Ctrl+k no Windows), clicando no ícone de pesquisa na barra lateral na visualização do site ou clicando na barra de titulo, vá para onde você quiser e faça o que precisar em segundos.</p>\n\n\n<div class=\"wp-block-image\">\n<figure class=\"aligncenter size-large\"><img decoding=\"async\" src=\"https://wordpress.org/news/files/2023/08/command-palette-1024x666.png\" alt=\"Image depicting the new Command Palette\" class=\"wp-image-15763\" /><figcaption class=\"wp-element-caption\"><em>Conheça a nova paleta de comandos </em></figcaption></figure></div>\n\n\n<h3 class=\"wp-block-heading\">Aperfeiçoe seus designs com novas ferramentas</h3>\n\n\n\n<p>Novos controles de design trazem mais versatilidade para ajustar os designs, começando pela capacidade de personalizar os estilos da legenda sem código, por meio da aba Estilos. Você pode gerenciar seus filtros duotone nessa aba em blocos suportados e escolher entre as opções fornecidas pelo seu tema ou então desativá-los completamente. O bloco Capa recebeu configurações adicionais para cor do texto, controles de layout e opções de borda, tornando esse poderoso bloco ainda mais útil.</p>\n\n\n<div class=\"wp-block-image\">\n<figure class=\"aligncenter size-large\"><img decoding=\"async\" src=\"https://wordpress.org/news/files/2023/08/design-1024x666.png\" alt=\"Image representing the new design tools in the Site Editor\" class=\"wp-image-15764\" /><figcaption class=\"wp-element-caption\">Novas ferramentas de design</figcaption></figure></div>\n\n\n<h3 class=\"wp-block-heading\">Rastreie alterações de design com as revisões de estilo</h3>\n\n\n\n<p>Agora você pode ver como seu site aparentava em um momento específico. Visualize essas revisões em uma linha do tempo e acesse uma opção de restauração de estilos anteriores com um clique.</p>\n\n\n<div class=\"wp-block-image\">\n<figure class=\"aligncenter size-large\"><img decoding=\"async\" src=\"https://wordpress.org/news/files/2023/08/revisions-1024x666.png\" alt=\"Image titled &quot;Style Revisions&quot;\" class=\"wp-image-15770\" /><figcaption class=\"wp-element-caption\">Revisões de estilos<em>: veja o histórico das revisões de estilos</em></figcaption></figure></div>\n\n\n<h3 class=\"wp-block-heading\">Adicione notas com o bloco para notas de rodapé</h3>\n\n\n\n<p>As notas de rodapé adicionam anotações convenientes em todo o seu conteúdo. Agora você pode adicionar e vincular notas de rodapé para qualquer parágrafo.</p>\n\n\n<div class=\"wp-block-image\">\n<figure class=\"aligncenter size-large\"><img decoding=\"async\" src=\"https://wordpress.org/news/files/2023/08/footnotes-1024x666.png\" alt=\"Image depicting the new Footnotes Block\" class=\"wp-image-15766\" /><figcaption class=\"wp-element-caption\"><em>Adicione notas de rodapé sem esforço com o novo bloco de notas de rodapé</em></figcaption></figure></div>\n\n\n<h3 class=\"wp-block-heading\">Mostre ou esconda conteúdo com o bloco de detalhes.</h3>\n\n\n\n<p>Use o bloco para evitar estragar uma surpresa, criar uma seção interativa de perguntas e respostas ou ocultar um parágrafo longo.</p>\n\n\n<div class=\"wp-block-image\">\n<figure class=\"aligncenter size-large\"><img decoding=\"async\" src=\"https://wordpress.org/news/files/2023/08/details-1024x666.png\" alt=\"Image depicting the new Details Block\" class=\"wp-image-15765\" /><figcaption class=\"wp-element-caption\">Exiba ou oculte o conteúdo com o novo bloco de detalhes</figcaption></figure></div>\n\n\n<h3 class=\"wp-block-heading\">Melhorias de desempenho</h3>\n\n\n\n<p>O WordPress 6.3 possui mais de 170 atualizações de desempenho, incluindo suporte a adiamento (defer) e assincronia (async) para a API de scripts e suporte a prioridade de busca (fetchpriority) para imagens. Essas melhorias podem aperfeiçoar a percepção de visitantes em relação ao tempo de carregamento do seu site, juntamente com a resolução de modelos de blocos, carregamento tardio de imagens e carregamento de emojis.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Acessibilidade continua sendo foco</h3>\n\n\n\n<p>Incorporando mais de 50 melhorias de acessibilidade em toda a plataforma, o WordPress 6.3 está mais acessível do que nunca. Melhorias na classificação, navegação otimizada por guias e teclas de seta, hierarquia de títulos revisada e novos controles no editor de imagens do painel de administração permitem que aqueles que usam tecnologias assistivas naveguem com mais facilidade.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Outros destaques</h3>\n\n\n\n<h4 class=\"wp-block-heading\">Defina proporções em imagens</h4>\n\n\n\n<p>Especifique suas proporções e garanta a integridade do design, especialmente ao usar imagens em padrões.</p>\n\n\n\n<h4 class=\"wp-block-heading\">Crie seu site sem distrações</h4>\n\n\n\n<p>O design sem distrações agora está disponível no editor do site.</p>\n\n\n\n<h4 class=\"wp-block-heading\">Redescubra a barra de ferramentas superior</h4>\n\n\n\n<p>Uma barra de ferramentas superior renovada oferece seletores ascendentes para blocos aninhados, opções ao selecionar vários blocos e uma interface incorporada à barra de título com novas funcionalidades em mente.</p>\n\n\n\n<h4 class=\"wp-block-heading\">Melhorias na exibição de lista</h4>\n\n\n\n<p>Arraste e solte em todas as camadas de conteúdo e exclua qualquer bloco que desejar na exibição de lista atualizada.</p>\n\n\n\n<h4 class=\"wp-block-heading\">Crie modelos com padrões</h4>\n\n\n\n<p>Crie padrões exclusivos para iniciar a criação de modelos com um novo modal que permite o acesso à seleção de padrões.</p>\n\n\n\n<h4 class=\"wp-block-heading\">Mudanças no suporte ao PHP</h4>\n\n\n\n<p>O suporte para PHP 5 foi descontinuado. A nova versão mínima suportada do PHP é 7.0.0.</p>\n\n\n\n<h4 class=\"wp-block-heading\">Falhas em atualizações manuais</h4>\n\n\n\n<p>O WordPress agora restaurará automaticamente a versão instalada anteriormente de plugins ou temas se algo der errado durante uma falha na atualização manual.</p>\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity\" />\n\n\n\n<h2 class=\"wp-block-heading\">Leia mais sobre o WordPress e a versão 6.3</h2>\n\n\n\n<p>O <a href=\"https://learn.wordpress.org/\">Learn WordPress</a> é um ambiente gratuito para usuários novos e experientes do WordPress. O Learn está repleto de tutoriais em vídeo sobre o uso de vários recursos do WordPress, <a href=\"https://learn.wordpress.org/online-workshops/\">eventos interativos</a> para explorar tópicos em profundidade e planos de aula para se mergulhar em áreas específicas.</p>\n\n\n\n<p>Consulte a versão mais recente do <a href=\"https://make.wordpress.org/core/2023/07/18/wordpress-6-3-field-guide/\">guia de campo do WordPress</a>. Está repleto de notas detalhadas do desenvolvedor para ajudá-lo a criar com WordPress.</p>\n\n\n\n<p><a href=\"https://wordpress.org/documentation/wordpress-version/version-6-3/\">Leia as notas de versão do WordPress 6.3</a> para mais informações sobre os aprimoramentos incluídos e os problemas corrigidos, informações de instalação, notas e recursos do desenvolvedor, colaboradores da versão e a lista de arquivos alterados nesta versão.</p>\n\n\n\n<h2 class=\"wp-block-heading\">WordPress é uma plataforma de software global</h2>\n\n\n\n<p><a href=\"https://translate.wordpress.org/stats/\">61 localidades traduziram 90%</a> ou mais do WordPress 6.3 em seu idioma. Os tradutores da comunidade estão trabalhando duro para garantir que mais traduções estejam a caminho. Agradecemos a todos que ajudam a tornar o WordPress disponível em 200 idiomas.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Contribuindo com o WordPress</h2>\n\n\n\n<p>O WordPress acredita na democratização da publicação e nas <a href=\"https://opensource.org/osd-annotated\">liberdades que acompanham o código aberto</a>. Apoiando essa ideia está uma grande comunidade de pessoas colaborando para fortalecer o software. Um enorme agradecimento a todos que fazem o WordPress.</p>\n\n\n\n<blockquote class=\"wp-block-quote has-large-font-size\">\n<p class=\"has-extra-large-font-size\">Nossa comunidade de colaboradores sempre foi o que torna o WordPress maravilhoso. Vocês são o que garantem que nosso projeto continue prosperando e que nosso software permaneça seguro, utilizável e impactante. Agradecemos por se unirem para tornar a web (e o mundo) um lugar melhor!</p>\n<cite>Josepha Haden Chomphosy, diretora executiva, WordPress.org</cite></blockquote>\n\n\n\n<p>O WordPress 6.3 chega graças à paixão e ao esforço coletivo de mais de 650 colaboradores em pelo menos 52 países. Esta versão também inclui mais de 205 colaboradores iniciantes!</p>\n\n\n\n<h3 class=\"wp-block-heading\">O esquadrão da versão 6.3</h3>\n\n\n\n<p>A versão 6.3 foi liderada do início ao lançamento por um conjunto ativo de colaboradores de várias disciplinas. Durante várias semanas, eles mantiveram o lançamento nos trilhos e avançando conectando ideias, resolvendo problemas e removendo obstáculos.</p>\n\n\n\n<ul>\n<li>Líder de lançamento: <a href=\"https://profiles.wordpress.org/matveb/\">Matias Ventura</a>.</li>\n\n\n\n<li>Coordenadores da versão: <a href=\"https://profiles.wordpress.org/francina/\">Francesca Marano</a> e <a href=\"https://profiles.wordpress.org/priethor/\">Héctor Prieto</a>.</li>\n\n\n\n<li>Líderes técnicos do núcleo: <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a> e <a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a>.</li>\n\n\n\n<li>Líderes técnicos do editor:&nbsp; <a href=\"https://profiles.wordpress.org/isabel_brison/\">Isabel Brison</a> e <a href=\"https://profiles.wordpress.org/ramonopoly/\">Ramon Dodd</a>.</li>\n\n\n\n<li>Líderes de triagem do núcleo: <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/chaion07/\">Ahmed Kabir Chaion</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a> e <a href=\"https://profiles.wordpress.org/oglekler/\">Olga Glecker</a>.</li>\n\n\n\n<li>Líderes de triagem do editor: <a href=\"https://profiles.wordpress.org/annezazu/\">Anne McCarthy</a>, <a href=\"https://profiles.wordpress.org/bph/\">Birgit Pauli-Haack</a>, <a href=\"https://profiles.wordpress.org/firoz2456/\">Firoz Sabaliya</a> e <a href=\"https://profiles.wordpress.org/ndiego/\">Nick Diego</a>.</li>\n\n\n\n<li>Líderes de documentação: <a href=\"https://profiles.wordpress.org/femkreations/\">Femy Praseeth</a>, <a href=\"https://profiles.wordpress.org/stevenlinx/\">Steven Lin</a>, <a href=\"https://profiles.wordpress.org/leonnugraha/\">Leonardus Nugraha</a> e <a href=\"https://profiles.wordpress.org/611shabnam/\">Mushrit Shabnam</a>.</li>\n\n\n\n<li>Líderes de marketing e comunicação: <a href=\"https://profiles.wordpress.org/dansoschin/\">Dan Soschin</a>, <a href=\"https://profiles.wordpress.org/jpantani/\">Jonathan Pantani</a> e <a href=\"https://profiles.wordpress.org/meher/\">Meher Bala</a>.</li>\n\n\n\n<li>Líderes de testes: <a href=\"https://profiles.wordpress.org/ironprogrammer/\">Brian Alexander</a>, <a href=\"https://profiles.wordpress.org/webtechpooja/\">Pooja Derashri</a>, <a href=\"https://profiles.wordpress.org/chrismalone617/\">Chris Malone</a> e <a href=\"https://profiles.wordpress.org/boniu91/\">Piotrek Boniu</a>.</li>\n\n\n\n<li>Líderes de design: <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a> e <a href=\"https://profiles.wordpress.org/richtabor/\">Rich Tabor</a>.</li>\n\n\n\n<li>Líderes de performance: <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a> e <a href=\"https://profiles.wordpress.org/clarkeemily/\">Emily Clarke</a>.</li>\n</ul>\n\n\n\n<h3 class=\"wp-block-heading\">Contribuidores da versão 6.3</h3>\n\n\n\n<p>Complementando o esquadrão de lançamento está um grupo diversificado de contribuidores cuja colaboração global forneceu centenas de melhorias e correções, garantindo uma versão estável para todos, uma prova do poder e capacidade da comunidade WordPress.</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/zgrkaralar/\">Özgür KARALAR</a> · <a href=\"https://profiles.wordpress.org/6adminit/\">6adminit</a> · <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a> · <a href=\"https://profiles.wordpress.org/aaronrobertshaw/\">Aaron Robertshaw</a> · <a href=\"https://profiles.wordpress.org/webcommsat/\">Abha Thakor</a> · <a href=\"https://profiles.wordpress.org/abhi3315/\">abhi3315</a> · <a href=\"https://profiles.wordpress.org/softwortech/\">Abhishek Sharma</a> · <a href=\"https://profiles.wordpress.org/ababir/\">Abir</a> · <a href=\"https://profiles.wordpress.org/abitofmind/\">abitofmind</a> · <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a> · <a href=\"https://profiles.wordpress.org/awarner20/\">Adam W. Warner</a> · <a href=\"https://profiles.wordpress.org/adarshposimyth/\">Adarsh Akshat</a> · <a href=\"https://profiles.wordpress.org/adeltahri/\">Adel Tahri</a> · <a href=\"https://profiles.wordpress.org/adi3890/\">Aditya Jain</a> · <a href=\"https://profiles.wordpress.org/chaion07/\">Ahmed Chaion</a> · <a href=\"https://profiles.wordpress.org/ahsannayem/\">Ahsan Chowdhury</a> · <a href=\"https://profiles.wordpress.org/wildworks/\">Aki Hamano</a> · <a href=\"https://profiles.wordpress.org/akmelias/\">akmelias</a> · <a href=\"https://profiles.wordpress.org/wpfy/\">Akramul Hasan</a> · <a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a> · <a href=\"https://profiles.wordpress.org/xavortm/\">Alex Dimitrov</a> · <a href=\"https://profiles.wordpress.org/cawa-93/\">Alex Kozack</a> · <a href=\"https://profiles.wordpress.org/ajlende/\">Alex Lende</a> · <a href=\"https://profiles.wordpress.org/alexstine/\">Alex Stine</a> · <a href=\"https://profiles.wordpress.org/alexandrelara/\">Alexandre Lara</a> · <a href=\"https://profiles.wordpress.org/allancole/\">allancole</a> · <a href=\"https://profiles.wordpress.org/mrfoxtalbot/\">Alvaro Gómez</a> · <a href=\"https://profiles.wordpress.org/alvitazwar052/\">Alvi Tazwar</a> · <a href=\"https://profiles.wordpress.org/akrocks/\">Amaan Khan</a> · <a href=\"https://profiles.wordpress.org/amansurov/\">amansurov</a> · <a href=\"https://profiles.wordpress.org/amin7/\">amin</a> · <a href=\"https://profiles.wordpress.org/sabreuse/\">Amy Hendrix (sabreuse)</a> · <a href=\"https://profiles.wordpress.org/anatoliyav/\">Anatoliy</a> · <a href=\"https://profiles.wordpress.org/anatolikkk/\">Anatoliy Dovgun</a> · <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a> · <a href=\"https://profiles.wordpress.org/andraganescu/\">Andrei Draganescu</a> · <a href=\"https://profiles.wordpress.org/nacin/\">Andrew Nacin</a> · <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a> · <a href=\"https://profiles.wordpress.org/andrewserong/\">Andrew Serong</a> · <a href=\"https://profiles.wordpress.org/rarst/\">Andrey “Rarst” Savchenko</a> · <a href=\"https://profiles.wordpress.org/oandregal/\">André Maneiro</a> · <a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a> · <a href=\"https://profiles.wordpress.org/andizer/\">Andy Meerwaldt</a> · <a href=\"https://profiles.wordpress.org/apeatling/\">Andy Peatling</a> · <a href=\"https://profiles.wordpress.org/anilvaza/\">Anil Vaza</a> · <a href=\"https://profiles.wordpress.org/ankit-k-gupta/\">Ankit K Gupta</a> · <a href=\"https://profiles.wordpress.org/ankitmaru/\">Ankit Panchal</a> · <a href=\"https://profiles.wordpress.org/reputeinfosystems/\">Ankur Chotai</a> · <a href=\"https://profiles.wordpress.org/annashopina/\">Anna</a> · <a href=\"https://profiles.wordpress.org/annezazu/\">Anne McCarthy</a> · <a href=\"https://profiles.wordpress.org/annebovelett/\">Anne-Mieke Bovelett</a> · <a href=\"https://profiles.wordpress.org/annziel/\">annziel</a> · <a href=\"https://profiles.wordpress.org/antpb/\">Anthony Burchell</a> · <a href=\"https://profiles.wordpress.org/atimmer/\">Anton Timmermans</a> · <a href=\"https://profiles.wordpress.org/antonvlasenko/\">Anton Vlasenko</a> · <a href=\"https://profiles.wordpress.org/antonyagrios/\">Antony Agrios</a> · <a href=\"https://profiles.wordpress.org/anver/\">anver</a> · <a href=\"https://profiles.wordpress.org/anveshika/\">Anveshika Srivastava</a> · <a href=\"https://profiles.wordpress.org/arafatjamil01/\">Arafat Jamil</a> · <a href=\"https://profiles.wordpress.org/aristath/\">Ari Stathopoulos</a> · <a href=\"https://profiles.wordpress.org/artemiosans/\">Artemio Morales</a> · <a href=\"https://profiles.wordpress.org/arthur791004/\">Arthur Chu</a> · <a href=\"https://profiles.wordpress.org/ideag/\">Arunas Liuiza</a> · <a href=\"https://profiles.wordpress.org/iamasadpolash/\">Asad Polash</a> · <a href=\"https://profiles.wordpress.org/mrasharirfan/\">Ashar Irfan</a> · <a href=\"https://profiles.wordpress.org/ashikurwp/\">Ashikur Rahman</a> · <a href=\"https://profiles.wordpress.org/nant82/\">Atanas Antonov</a> · <a href=\"https://profiles.wordpress.org/aurooba/\">Aurooba Ahmed</a> · <a href=\"https://profiles.wordpress.org/filosofo/\">Austin Matzko</a> · <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a> · <a href=\"https://profiles.wordpress.org/azizantoun/\">azizantoun</a> · <a href=\"https://profiles.wordpress.org/aznadesign/\">Aznadesign</a> · <a href=\"https://profiles.wordpress.org/bangank36/\">bangank36</a> · <a href=\"https://profiles.wordpress.org/bartkalisz/\">bartkalisz</a> · <a href=\"https://profiles.wordpress.org/empireoflight/\">Ben Dunkle</a> · <a href=\"https://profiles.wordpress.org/scruffian/\">Ben Dwyer</a> · <a href=\"https://profiles.wordpress.org/benjgrolleau/\">Benjamin Grolleau</a> · <a href=\"https://profiles.wordpress.org/benjibee/\">benjibee</a> · <a href=\"https://profiles.wordpress.org/benlk/\">benlk</a> · <a href=\"https://profiles.wordpress.org/bernhard-reiter/\">Bernie Reiter</a> · <a href=\"https://profiles.wordpress.org/albatross10/\">Bhavik Kalpesh</a> · <a href=\"https://profiles.wordpress.org/bhrugesh12/\">Bhrugesh Bavishi</a> · <a href=\"https://profiles.wordpress.org/bijayyadav/\">Bijay Yadav</a> · <a href=\"https://profiles.wordpress.org/bph/\">Birgit Pauli-Haack</a> · <a href=\"https://profiles.wordpress.org/bitnissen/\">bitnissen</a> · <a href=\"https://profiles.wordpress.org/gitlost/\">bonger</a> · <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a> · <a href=\"https://profiles.wordpress.org/bor0/\">Boro Sitnikovski</a> · <a href=\"https://profiles.wordpress.org/wpe_bdurette/\">Brandon DuRette</a> · <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a> · <a href=\"https://profiles.wordpress.org/bpayton/\">Brandon Payton</a> · <a href=\"https://profiles.wordpress.org/brasofilo/\">brasofilo</a> · <a href=\"https://profiles.wordpress.org/bgoewert/\">Brennan Goewert</a> · <a href=\"https://profiles.wordpress.org/ironprogrammer/\">Brian Alexander</a> · <a href=\"https://profiles.wordpress.org/bacoords/\">Brian Coords</a> · <a href=\"https://profiles.wordpress.org/fischfood/\">Brian Fischer</a> · <a href=\"https://profiles.wordpress.org/bgardner/\">Brian Gardner</a> · <a href=\"https://profiles.wordpress.org/bridgetwillard/\">Bridget Willard</a> · <a href=\"https://profiles.wordpress.org/bronsonquick/\">Bronson Quick</a> · <a href=\"https://profiles.wordpress.org/brookemk/\">Brooke Kaminski</a> · <a href=\"https://profiles.wordpress.org/brookedot/\">Brooke.</a> · <a href=\"https://profiles.wordpress.org/caraffande/\">caraffande</a> · <a href=\"https://profiles.wordpress.org/cbravobernal/\">Carlos Bravo</a> · <a href=\"https://profiles.wordpress.org/carlosgprim/\">Carlos Garcia</a> · <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a> · <a href=\"https://profiles.wordpress.org/cathibosco1/\">Cathi Bosco</a> · <a href=\"https://profiles.wordpress.org/ceer/\">ceer</a> · <a href=\"https://profiles.wordpress.org/shireling/\">Chad Chadbourne</a> · <a href=\"https://profiles.wordpress.org/chintan1896/\">Chintan hingrajiya</a> · <a href=\"https://profiles.wordpress.org/chiragrathod103/\">Chirag Rathod</a> · <a href=\"https://profiles.wordpress.org/cbringmann/\">Chloe Bringmann</a> · <a href=\"https://profiles.wordpress.org/chouby/\">Chouby</a> · <a href=\"https://profiles.wordpress.org/mrflannagan/\">Chris Flannagan</a> · <a href=\"https://profiles.wordpress.org/clubkert/\">Chris Lubkert</a> · <a href=\"https://profiles.wordpress.org/chrismalone617/\">Chris Malone</a> · <a href=\"https://profiles.wordpress.org/chriscct7/\">chriscct7</a> · <a href=\"https://profiles.wordpress.org/apermo/\">Christoph Daum</a> · <a href=\"https://profiles.wordpress.org/ckoerner/\">ckoerner</a> · <a href=\"https://profiles.wordpress.org/codeamp/\">Code Amp</a> · <a href=\"https://profiles.wordpress.org/costdev/\">Colin Stewart</a> · <a href=\"https://profiles.wordpress.org/corentingautier/\">corentingautier</a> · <a href=\"https://profiles.wordpress.org/courane01/\">Courtney Robertson</a> · <a href=\"https://profiles.wordpress.org/crixu/\">Crixu</a> · <a href=\"https://profiles.wordpress.org/crs1138/\">crs1138</a> · <a href=\"https://profiles.wordpress.org/crstauf/\">crstauf</a> · <a href=\"https://profiles.wordpress.org/cshark/\">cshark</a> · <a href=\"https://profiles.wordpress.org/daisyo/\">Daisy Olsen</a> · <a href=\"https://profiles.wordpress.org/dbernar1/\">Dan Bernardic</a> · <a href=\"https://profiles.wordpress.org/dansoschin/\">Dan Soschin</a> · <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a> · <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a> · <a href=\"https://profiles.wordpress.org/mte90/\">Daniele Scasciafratte</a> · <a href=\"https://profiles.wordpress.org/danyk4/\">danyk4</a> · <a href=\"https://profiles.wordpress.org/darerodz/\">darerodz</a> · <a href=\"https://profiles.wordpress.org/darshitrajyaguru97/\">Darshit Rajyaguru</a> · <a href=\"https://profiles.wordpress.org/drw158/\">Dave Whitley</a> · <a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a> · <a href=\"https://profiles.wordpress.org/davidbinda/\">David Biňovec</a> · <a href=\"https://profiles.wordpress.org/dpcalhoun/\">David Calhoun</a> · <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a> · <a href=\"https://profiles.wordpress.org/get_dave/\">David Smith</a> · <a href=\"https://profiles.wordpress.org/davidmusnik/\">davidmusnik</a> · <a href=\"https://profiles.wordpress.org/davidwebca/\">davidwebca</a> · <a href=\"https://profiles.wordpress.org/dsas/\">Dean Sas</a> · <a href=\"https://profiles.wordpress.org/deepakvijayan/\">Deepak Vijayan</a> · <a href=\"https://profiles.wordpress.org/denis-de-bernardy/\">Denis de Bernardy</a> · <a href=\"https://profiles.wordpress.org/dingo_d/\">Denis Žoljom</a> · <a href=\"https://profiles.wordpress.org/dmsnell/\">Dennis Snell</a> · <a href=\"https://profiles.wordpress.org/dennysdionigi/\">Dennys Dionigi</a> · <a href=\"https://profiles.wordpress.org/densityapps/\">densityapps</a> · <a href=\"https://profiles.wordpress.org/sccr410/\">Derek Ashauer</a> · <a href=\"https://profiles.wordpress.org/derekblank/\">Derek Blank</a> · <a href=\"https://profiles.wordpress.org/shagors/\">devshagor</a> · <a href=\"https://profiles.wordpress.org/dharm1025/\">Dharmesh Patel</a> · <a href=\"https://profiles.wordpress.org/dhrumilk/\">Dhrumil Kumbhani</a> · <a href=\"https://profiles.wordpress.org/dhruvishah2203/\">Dhruvi Shah</a> · <a href=\"https://profiles.wordpress.org/digtek/\">DigTek</a> · <a href=\"https://profiles.wordpress.org/dilipbheda/\">Dilip Bheda</a> · <a href=\"https://profiles.wordpress.org/dimijazz/\">dimijazz</a> · <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a> · <a href=\"https://profiles.wordpress.org/doems/\">doems</a> · <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a> · <a href=\"https://profiles.wordpress.org/drewapicture/\">Drew Jaynes</a> · <a href=\"https://profiles.wordpress.org/dsar/\">dsar</a> · <a href=\"https://profiles.wordpress.org/dustyreagan/\">dustyreagan</a> · <a href=\"https://profiles.wordpress.org/ebai4/\">ebai4</a> · <a href=\"https://profiles.wordpress.org/ecorica/\">ecorica</a> · <a href=\"https://profiles.wordpress.org/beckej/\">Ed Beck</a> · <a href=\"https://profiles.wordpress.org/eduwass/\">eduwass</a> · <a href=\"https://profiles.wordpress.org/wpnook/\">Edward</a> · <a href=\"https://profiles.wordpress.org/worldomonation/\">Edwin Takahashi</a> · <a href=\"https://profiles.wordpress.org/ehsanakhgari/\">ehsanakhgari</a> · <a href=\"https://profiles.wordpress.org/ehtis/\">Ehtisham S.</a> · <a href=\"https://profiles.wordpress.org/ellatrix/\">Ella van&nbsp;Durpe</a> · <a href=\"https://profiles.wordpress.org/clarkeemily/\">Emily Clarke</a> · <a href=\"https://profiles.wordpress.org/emirpprime/\">emirpprime</a> · <a href=\"https://profiles.wordpress.org/nrqsnchz/\">Enrique Sánchez</a> · <a href=\"https://profiles.wordpress.org/eric7186/\">eric.7186</a> · <a href=\"https://profiles.wordpress.org/kebbet/\">Erik Betshammar</a> · <a href=\"https://profiles.wordpress.org/ernest35/\">Ernest Behinov</a> · <a href=\"https://profiles.wordpress.org/estelaris/\">Estela Rueda</a> · <a href=\"https://profiles.wordpress.org/fabiankaegy/\">Fabian Kägy</a> · <a href=\"https://profiles.wordpress.org/gaambo/\">Fabian Todt</a> · <a href=\"https://profiles.wordpress.org/faisalahammad/\">Faisal Ahammad</a> · <a href=\"https://profiles.wordpress.org/falgunihdesai/\">Falguni Desai</a> · <a href=\"https://profiles.wordpress.org/iamfarhan09/\">Farhan Ahmed</a> · <a href=\"https://profiles.wordpress.org/felipeelia/\">Felipe Elia</a> · <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a> · <a href=\"https://profiles.wordpress.org/femkreations/\">Femy Praseeth</a> · <a href=\"https://profiles.wordpress.org/firoz2456/\">Firoz Sabaliya</a> · <a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a> · <a href=\"https://profiles.wordpress.org/francina/\">Francesca Marano</a> · <a href=\"https://profiles.wordpress.org/frank-klein/\">Frank Klein</a> · <a href=\"https://profiles.wordpress.org/franrosa/\">franrosa</a> · <a href=\"https://profiles.wordpress.org/gaeldenysiak/\">gaeldenysiak</a> · <a href=\"https://profiles.wordpress.org/galbaras/\">Gal Baras</a> · <a href=\"https://profiles.wordpress.org/ecgan/\">Gan (a11n)</a> · <a href=\"https://profiles.wordpress.org/voldemortensen/\">Garth Mortensen</a> · <a href=\"https://profiles.wordpress.org/garyc40/\">Gary Cao</a> · <a href=\"https://profiles.wordpress.org/garyj/\">Gary Jones</a> · <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a> · <a href=\"https://profiles.wordpress.org/soulseekah/\">Gennady Kovshenin</a> · <a href=\"https://profiles.wordpress.org/wtower/\">George</a> · <a href=\"https://profiles.wordpress.org/mamaduka/\">George Mamadashvili</a> · <a href=\"https://profiles.wordpress.org/geriux/\">Gerardo Pacheco</a> · <a href=\"https://profiles.wordpress.org/gilles66/\">gilles66</a> · <a href=\"https://profiles.wordpress.org/mokagio/\">Gio Lodi</a> · <a href=\"https://profiles.wordpress.org/glendaviesnz/\">Glen Davies</a> · <a href=\"https://profiles.wordpress.org/grandslambert/\">GrandSlambert</a> · <a href=\"https://profiles.wordpress.org/grantmkin/\">Grant M. Kinney</a> · <a href=\"https://profiles.wordpress.org/gziolo/\">Greg Ziółkowski</a> · <a href=\"https://profiles.wordpress.org/gudmdharalds/\">Gudmundur Haraldsson</a> · <a href=\"https://profiles.wordpress.org/guillaumeturpin/\">Guillaume TURPIN</a> · <a href=\"https://profiles.wordpress.org/gvgvgvijayan/\">gvgvgvijayan</a> · <a href=\"https://profiles.wordpress.org/hztyfoon/\">Hanzala Taifun</a> · <a href=\"https://profiles.wordpress.org/thakkarhardik/\">Hardik Thakkar</a> · <a href=\"https://profiles.wordpress.org/hareesh-pillai/\">Hareesh S</a> · <a href=\"https://profiles.wordpress.org/haritpanchal/\">Harit Panchal</a> · <a href=\"https://profiles.wordpress.org/harshgajipara/\">Harsh Gajipara</a> · <a href=\"https://profiles.wordpress.org/hasanmisbah/\">Hasan Misbah</a> · <a href=\"https://profiles.wordpress.org/hasanuzzamanshamim/\">Hasanuzzaman</a> · <a href=\"https://profiles.wordpress.org/hazdiego/\">Haz</a> · <a href=\"https://profiles.wordpress.org/hbhalodia/\">hbhalodia</a> · <a href=\"https://profiles.wordpress.org/heiko_mamerow/\">Heiko Mamerow</a> · <a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandi</a> · <a href=\"https://profiles.wordpress.org/helgatheviking/\">HelgaTheViking</a> · <a href=\"https://profiles.wordpress.org/luehrsen/\">Hendrik Luehrsen</a> · <a href=\"https://profiles.wordpress.org/hilayt24/\">Hilay Trivedi</a> · <a href=\"https://profiles.wordpress.org/panchalhimani711/\">Himani Panchal</a> · <a href=\"https://profiles.wordpress.org/hrdelwar/\">hrdelwar</a> · <a href=\"https://profiles.wordpress.org/hrrarya/\">Hridoy Mozumder</a> · <a href=\"https://profiles.wordpress.org/hugobaeta/\">Hugo Baeta</a> · <a href=\"https://profiles.wordpress.org/hugod/\">hugod</a> · <a href=\"https://profiles.wordpress.org/hberberoglu/\">Huseyin Berberoglu</a> · <a href=\"https://profiles.wordpress.org/huzaifaalmesbah/\">Huzaifa Al Mesbah</a> · <a href=\"https://profiles.wordpress.org/priethor/\">Héctor Prieto</a> · <a href=\"https://profiles.wordpress.org/polevaultweb/\">Iain Poulson</a> · <a href=\"https://profiles.wordpress.org/ianbelanger/\">Ian Belanger</a> · <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a> · <a href=\"https://profiles.wordpress.org/ibrahimmonir/\">Ibrahim Khalil</a> · <a href=\"https://profiles.wordpress.org/shuvoaftab/\">Ibrahim Sharif</a> · <a href=\"https://profiles.wordpress.org/ignatggeorgiev/\">Ignat Georgiev</a> · <a href=\"https://profiles.wordpress.org/imanish003/\">imanish003</a> · <a href=\"https://profiles.wordpress.org/intoxination/\">intoxination</a> · <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a> · <a href=\"https://profiles.wordpress.org/isabel_brison/\">Isabel Brison</a> · <a href=\"https://profiles.wordpress.org/jacknotman/\">jacknotman</a> · <a href=\"https://profiles.wordpress.org/jahidcse/\">Jahid Hasan</a> · <a href=\"https://profiles.wordpress.org/jakariaistauk/\">Jakaria Istauk</a> · <a href=\"https://profiles.wordpress.org/jameskoster/\">James Koster</a> · <a href=\"https://profiles.wordpress.org/james-roberts/\">James Roberts</a> · <a href=\"https://profiles.wordpress.org/james0r/\">james0r</a> · <a href=\"https://profiles.wordpress.org/janboddez/\">Jan Boddez</a> · <a href=\"https://profiles.wordpress.org/jane/\">jane</a> · <a href=\"https://profiles.wordpress.org/jankyz/\">jankyz</a> · <a href=\"https://profiles.wordpress.org/janpaulkleijn/\">janpaulkleijn</a> · <a href=\"https://profiles.wordpress.org/jsnajdr/\">Jarda Snajdr</a> · <a href=\"https://profiles.wordpress.org/pbking/\">Jason Crist</a> · <a href=\"https://profiles.wordpress.org/jsnjohnston/\">Jason Johnston</a> · <a href=\"https://profiles.wordpress.org/madtownlems/\">Jason LeMahieu (MadtownLems)</a> · <a href=\"https://profiles.wordpress.org/javiercasares/\">Javier Casares</a> · <a href=\"https://profiles.wordpress.org/jbcouton/\">jbcouton</a> · <a href=\"https://profiles.wordpress.org/audrasjb/\">Jean-Baptiste Audras</a> · <a href=\"https://profiles.wordpress.org/jffng/\">Jeff Ong</a> · <a href=\"https://profiles.wordpress.org/jeffmora/\">jeffmora</a> · <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeffrey Paul</a> · <a href=\"https://profiles.wordpress.org/jenmylo/\">Jen</a> · <a href=\"https://profiles.wordpress.org/jenilk/\">Jenil Kanani</a> · <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a> · <a href=\"https://profiles.wordpress.org/jeroenrotty/\">Jeroen Rotty</a> · <a href=\"https://profiles.wordpress.org/jeryj/\">Jerry Jones</a> · <a href=\"https://profiles.wordpress.org/jhnstn/\">jhnstn</a> · <a href=\"https://profiles.wordpress.org/jigar-bhanushali/\">jigar bhanushali</a> · <a href=\"https://profiles.wordpress.org/joedolson/\">Joe Dolson</a> · <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a> · <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a> · <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a> · <a href=\"https://profiles.wordpress.org/bitmachina/\">John Hooks</a> · <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a> · <a href=\"https://profiles.wordpress.org/jomonthomaslobo1/\">jomonthomaslobo1</a> · <a href=\"https://profiles.wordpress.org/akbigdog/\">Jon Bourne</a> · <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a> · <a href=\"https://profiles.wordpress.org/jpantani/\">Jonathan Pantani</a> · <a href=\"https://profiles.wordpress.org/n2erjo00/\">Joni Erkkilä</a> · <a href=\"https://profiles.wordpress.org/spacedmonkey/\">Jonny Harris</a> · <a href=\"https://profiles.wordpress.org/joostdevalk/\">Joost de Valk</a> · <a href=\"https://profiles.wordpress.org/jordesign/\">jordesign</a> · <a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a> · <a href=\"https://profiles.wordpress.org/josklever/\">Jos Klever</a> · <a href=\"https://profiles.wordpress.org/josepmoran/\">Josep Morán</a> · <a href=\"https://profiles.wordpress.org/dunhakdis/\">Joseph G.</a> · <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a> · <a href=\"https://profiles.wordpress.org/jhabdas/\">Josh Habdas</a> · <a href=\"https://profiles.wordpress.org/shelob9/\">Josh Pollock</a> · <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a> · <a href=\"https://profiles.wordpress.org/jqz/\">jqz</a> · <a href=\"https://profiles.wordpress.org/juanfra/\">Juan Aldasoro</a> · <a href=\"https://profiles.wordpress.org/juanmaguitar/\">JuanMa Garrido</a> · <a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a> · <a href=\"https://profiles.wordpress.org/juzar/\">Juzar</a> · <a href=\"https://profiles.wordpress.org/kadamwhite/\">K. Adam White</a> · <a href=\"https://profiles.wordpress.org/kafleg/\">KafleG</a> · <a href=\"https://profiles.wordpress.org/kevin940726/\">Kai Hao</a> · <a href=\"https://profiles.wordpress.org/trepmal/\">Kailey (trepmal)</a> · <a href=\"https://profiles.wordpress.org/kajalgohel/\">Kajal Gohel</a> · <a href=\"https://profiles.wordpress.org/leprincenoir/\">Kantari Samy</a> · <a href=\"https://profiles.wordpress.org/kapilpaul/\">Kapil Paul</a> · <a href=\"https://profiles.wordpress.org/karolmanijak/\">Karol Manijak</a> · <a href=\"https://profiles.wordpress.org/thekt12/\">Karthik Thayyil</a> · <a href=\"https://profiles.wordpress.org/zoonini/\">Kathryn P.</a> · <a href=\"https://profiles.wordpress.org/kamplugins/\">Kausar Al Mamun</a> · <a href=\"https://profiles.wordpress.org/kausaralm/\">Kausar Alam</a> · <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Choyce-Dwan</a> · <a href=\"https://profiles.wordpress.org/kenwins/\">kenwins</a> · <a href=\"https://profiles.wordpress.org/kevinb/\">Kevin Behrens</a> · <a href=\"https://profiles.wordpress.org/khoipro/\">Khoi Pro</a> · <a href=\"https://profiles.wordpress.org/kjellr/\">Kjell Reigstad</a> · <a href=\"https://profiles.wordpress.org/knutsp/\">Knut Sparhell</a> · <a href=\"https://profiles.wordpress.org/koenschipper/\">koenschipper</a> · <a href=\"https://profiles.wordpress.org/xkon/\">Konstantinos Xenos</a> · <a href=\"https://profiles.wordpress.org/krishneup/\">Krishna Neupane</a> · <a href=\"https://profiles.wordpress.org/krunal265/\">Krunal Bhimajiyani</a> · <a href=\"https://profiles.wordpress.org/krupajnanda/\">Krupa Nanda</a> · <a href=\"https://profiles.wordpress.org/krupalpanchal/\">Krupal Panchal</a> · <a href=\"https://profiles.wordpress.org/kutsu/\">kutsu</a> · <a href=\"https://profiles.wordpress.org/kzeni/\">KZeni</a> · <a href=\"https://profiles.wordpress.org/leamcaleese/\">Léa McAleese</a> · <a href=\"https://profiles.wordpress.org/lgadzhev/\">Lachezar Gadzhev</a> · <a href=\"https://profiles.wordpress.org/lanacodes/\">Lana Codes</a> · <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a> · <a href=\"https://profiles.wordpress.org/laurlittle/\">Lauren Stein</a> · <a href=\"https://profiles.wordpress.org/laurentmagnin/\">laurentmagnin</a> · <a href=\"https://profiles.wordpress.org/0mirka00/\">Lena Morita</a> · <a href=\"https://profiles.wordpress.org/leonnugraha/\">Leonardus Nugraha</a> · <a href=\"https://profiles.wordpress.org/lessbloat/\">lessbloat</a> · <a href=\"https://profiles.wordpress.org/levdbas/\">Levdbas</a> · <a href=\"https://profiles.wordpress.org/wplindavantol/\">Linda van Tol</a> · <a href=\"https://profiles.wordpress.org/rudlinkon/\">Linkon Miyan</a> · <a href=\"https://profiles.wordpress.org/lowlydev/\">lowlydev</a> · <a href=\"https://profiles.wordpress.org/lphoumpakka/\">lphk</a> · <a href=\"https://profiles.wordpress.org/gigitux/\">Luigi</a> · <a href=\"https://profiles.wordpress.org/luisherranz/\">luisherranz</a> · <a href=\"https://profiles.wordpress.org/lukecavanagh/\">Luke Cavanagh</a> · <a href=\"https://profiles.wordpress.org/madejackson/\">madejackson</a> · <a href=\"https://profiles.wordpress.org/madhudollu/\">Madhu Dollu</a> · <a href=\"https://profiles.wordpress.org/mrdollu/\">Madhu Dollu</a> · <a href=\"https://profiles.wordpress.org/onemaggie/\">Maggie Cabrera</a> · <a href=\"https://profiles.wordpress.org/mehdi01/\">Mahdi Hasan</a> · <a href=\"https://profiles.wordpress.org/mai21/\">Mai</a> · <a href=\"https://profiles.wordpress.org/majaloncar/\">Maja Loncar</a> · <a href=\"https://profiles.wordpress.org/malae/\">Malae</a> · <a href=\"https://profiles.wordpress.org/malavvasita/\">Malav Vasita</a> · <a href=\"https://profiles.wordpress.org/manfcarlo/\">manfcarlo</a> · <a href=\"https://profiles.wordpress.org/maniu/\">maniu</a> · <a href=\"https://profiles.wordpress.org/mdxfr/\">Marc</a> · <a href=\"https://profiles.wordpress.org/fullofcaffeine/\">Marcelo de Moraes Serpa</a> · <a href=\"https://profiles.wordpress.org/marcguay/\">MarcGuay</a> · <a href=\"https://profiles.wordpress.org/mciampini/\">Marco Ciampini</a> · <a href=\"https://profiles.wordpress.org/marekdedic/\">Marek Dědič</a> · <a href=\"https://profiles.wordpress.org/margolisj/\">margolisj</a> · <a href=\"https://profiles.wordpress.org/marianne38/\">marianne38</a> · <a href=\"https://profiles.wordpress.org/tyxla/\">Marin Atanasov</a> · <a href=\"https://profiles.wordpress.org/marineevain/\">Marine EVAIN</a> · <a href=\"https://profiles.wordpress.org/santosguillamot/\">Mario Santos</a> · <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a> · <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a> · <a href=\"https://profiles.wordpress.org/markparnell/\">Mark Parnell</a> · <a href=\"https://profiles.wordpress.org/markdoliner/\">markdoliner</a> · <a href=\"https://profiles.wordpress.org/markoheijnen/\">Marko Heijnen</a> · <a href=\"https://profiles.wordpress.org/markoserb/\">Marko Ivanovic</a> · <a href=\"https://profiles.wordpress.org/flootr/\">Markus</a> · <a href=\"https://profiles.wordpress.org/mkox/\">Markus Kosmal</a> · <a href=\"https://profiles.wordpress.org/martinkrcho/\">martin.krcho</a> · <a href=\"https://profiles.wordpress.org/marybaum/\">marybaum</a> · <a href=\"https://profiles.wordpress.org/masteradhoc/\">masteradhoc</a> · <a href=\"https://profiles.wordpress.org/mastrup/\">mastrup</a> · <a href=\"https://profiles.wordpress.org/mat-lipe/\">Mat Lipe</a> · <a href=\"https://profiles.wordpress.org/mmaattiiaass/\">Matias Benedetto</a> · <a href=\"https://profiles.wordpress.org/matveb/\">Matias Ventura</a> · <a href=\"https://profiles.wordpress.org/matmoe/\">matmoe</a> · <a href=\"https://profiles.wordpress.org/matt/\">Matt Mullenweg</a> · <a href=\"https://profiles.wordpress.org/mwtsn/\">Matt Watson</a> · <a href=\"https://profiles.wordpress.org/mattwiebe/\">Matt Wiebe</a> · <a href=\"https://profiles.wordpress.org/matt_fw/\">matt_fw</a> · <a href=\"https://profiles.wordpress.org/matteoenna/\">Matteo Enna</a> · <a href=\"https://profiles.wordpress.org/mboynes/\">Matthew Boynes</a> · <a href=\"https://profiles.wordpress.org/azouamauriac/\">Mauriac AZOUA</a> · <a href=\"https://profiles.wordpress.org/maurodf/\">maurodf</a> · <a href=\"https://profiles.wordpress.org/cadic/\">Max Lyuchin</a> · <a href=\"https://profiles.wordpress.org/maxcgparis/\">maxcgparis</a> · <a href=\"https://profiles.wordpress.org/maysi/\">maysi</a> · <a href=\"https://profiles.wordpress.org/mayur8991/\">Mayur Prajapati</a> · <a href=\"https://profiles.wordpress.org/mcalyster/\">McAlyster</a> · <a href=\"https://profiles.wordpress.org/mcliwanow/\">mcliwanow</a> · <a href=\"https://profiles.wordpress.org/mahamudur78/\">Md Mahamudur Rahaman</a> · <a href=\"https://profiles.wordpress.org/fencermonir/\">Md Monir Hossain</a> · <a href=\"https://profiles.wordpress.org/shuvo247/\">MD Shakibul Islam</a> · <a href=\"https://profiles.wordpress.org/megane9988/\">megane9988</a> · <a href=\"https://profiles.wordpress.org/meher/\">Meher Bala</a> · <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce-Dwan</a> · <a href=\"https://profiles.wordpress.org/menakas/\">Menaka S.</a> · <a href=\"https://profiles.wordpress.org/mensmaximus/\">mensmaximus</a> · <a href=\"https://profiles.wordpress.org/mgol/\">mgol</a> · <a href=\"https://profiles.wordpress.org/mdawaffe/\">Michael Adams (mdawaffe)</a> · <a href=\"https://profiles.wordpress.org/mburridge/\">Michael Burridge</a> · <a href=\"https://profiles.wordpress.org/mikeday/\">Michael Day</a> · <a href=\"https://profiles.wordpress.org/michaelh/\">MichaelH</a> · <a href=\"https://profiles.wordpress.org/czapla/\">Michal Czaplinski</a> · <a href=\"https://profiles.wordpress.org/mcsf/\">Miguel Fonseca</a> · <a href=\"https://profiles.wordpress.org/mikeschinkel/\">Mike Schinkel</a> · <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a> · <a href=\"https://profiles.wordpress.org/mikecho/\">mikecho</a> · <a href=\"https://profiles.wordpress.org/mikeyzm/\">mikeyzm</a> · <a href=\"https://profiles.wordpress.org/mikinc860/\">Mikin Chauhan</a> · <a href=\"https://profiles.wordpress.org/milana_cap/\">Milana Cap</a> · <a href=\"https://profiles.wordpress.org/gonzomir/\">Milen Petrinski – Gonzo</a> · <a href=\"https://profiles.wordpress.org/studionashvegas/\">Mitch Canter</a> · <a href=\"https://profiles.wordpress.org/mitchellaustin/\">mitchellaustin</a> · <a href=\"https://profiles.wordpress.org/mitchoyoshitaka/\">mitcho (Michael Yoshitaka Erlewine)</a> · <a href=\"https://profiles.wordpress.org/moinrrahmed/\">Moe</a> · <a href=\"https://profiles.wordpress.org/batmoo/\">Mohammad Jangda</a> · <a href=\"https://profiles.wordpress.org/mohanrajp/\">Mohan Raj</a> · <a href=\"https://profiles.wordpress.org/patelmohip/\">Mohip Patel</a> · <a href=\"https://profiles.wordpress.org/mohiuddinomran/\">Mohiuddin Omran</a> · <a href=\"https://profiles.wordpress.org/boemedia/\">Monique Dubbelman</a> · <a href=\"https://profiles.wordpress.org/monzuralam/\">Monzur Alam</a> · <a href=\"https://profiles.wordpress.org/mor10/\">Morten Rand-Hendriksen</a> · <a href=\"https://profiles.wordpress.org/mrinal013/\">Mrinal Haque</a> · <a href=\"https://profiles.wordpress.org/mtxz/\">mtxz</a> · <a href=\"https://profiles.wordpress.org/thisisyeasin/\">Muhammad Yeasin</a> · <a href=\"https://profiles.wordpress.org/mujuonly/\">mujuonly</a> · <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a> · <a href=\"https://profiles.wordpress.org/611shabnam/\">Mushrit Shabnam</a> · <a href=\"https://profiles.wordpress.org/nadimcse/\">nadimcse</a> · <a href=\"https://profiles.wordpress.org/naeemhaque/\">Naeem Haque</a> · <a href=\"https://profiles.wordpress.org/tushar284/\">Nahid Hasan</a> · <a href=\"https://profiles.wordpress.org/narthur/\">Narthur</a> · <a href=\"https://profiles.wordpress.org/nataliat2004/\">nataliat2004</a> · <a href=\"https://profiles.wordpress.org/nateallen/\">Nate Allen</a> · <a href=\"https://profiles.wordpress.org/nazgul/\">Nazgul</a> · <a href=\"https://profiles.wordpress.org/nazmul111/\">Nazmul Hosen</a> · <a href=\"https://profiles.wordpress.org/nazmulhudadev/\">Nazmul Huda</a> · <a href=\"https://profiles.wordpress.org/nendeb55/\">nendeb</a> · <a href=\"https://profiles.wordpress.org/neychok/\">Neycho Kalaydzhiev</a> · <a href=\"https://profiles.wordpress.org/eidolonnight/\">Nicholas Garofalo</a> · <a href=\"https://profiles.wordpress.org/ndiego/\">Nick Diego</a> · <a href=\"https://profiles.wordpress.org/nickpap/\">nickpap</a> · <a href=\"https://profiles.wordpress.org/nidhidhandhukiya/\">nidhidhandhukiya</a> · <a href=\"https://profiles.wordpress.org/nihar007/\">Nihar Ranjan Das</a> · <a href=\"https://profiles.wordpress.org/ntsekouras/\">Nik Tsekouras</a> · <a href=\"https://profiles.wordpress.org/nilovelez/\">Nilo Velez</a> · <a href=\"https://profiles.wordpress.org/dhrupo/\">Niluthpal Purkayastha</a> · <a href=\"https://profiles.wordpress.org/nithi22/\">Nithin John</a> · <a href=\"https://profiles.wordpress.org/nithins53/\">Nithin SreeRaj</a> · <a href=\"https://profiles.wordpress.org/njsamsatli/\">njsamsatli</a> · <a href=\"https://profiles.wordpress.org/nkeller15/\">nkeller15</a> · <a href=\"https://profiles.wordpress.org/noahtallen/\">Noah Allen</a> · <a href=\"https://profiles.wordpress.org/obliviousharmony/\">obliviousharmony</a> · <a href=\"https://profiles.wordpress.org/hideokamoto/\">Okamoto Hidetaka</a> · <a href=\"https://profiles.wordpress.org/oglekler/\">Olga Gleckler</a> · <a href=\"https://profiles.wordpress.org/olliejones/\">OllieJones</a> · <a href=\"https://profiles.wordpress.org/opr18/\">opr18</a> · <a href=\"https://profiles.wordpress.org/orestissam/\">Orestis Samaras</a> · <a href=\"https://profiles.wordpress.org/ov3rfly/\">Ov3rfly</a> · <a href=\"https://profiles.wordpress.org/owi/\">owi</a> · <a href=\"https://profiles.wordpress.org/paaljoachim/\">Paal Joachim Romdahl</a> · <a href=\"https://profiles.wordpress.org/pamprn/\">Pamela Ribeiro</a> · <a href=\"https://profiles.wordpress.org/paragoninitiativeenterprises/\">Paragon Initiative Enterprises</a> · <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a> · <a href=\"https://profiles.wordpress.org/pateljaymin/\">Patel Jaymin</a> · <a href=\"https://profiles.wordpress.org/patriciahillebrandt/\">patriciahillebrandt</a> · <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a> · <a href=\"https://profiles.wordpress.org/paulkevan/\">Paul Kevan</a> · <a href=\"https://profiles.wordpress.org/pschrottky/\">Paul Von Schrottky</a> · <a href=\"https://profiles.wordpress.org/paulopmt1/\">Paulo Trentin</a> · <a href=\"https://profiles.wordpress.org/pavanpatil1/\">Pavan Patil</a> · <a href=\"https://profiles.wordpress.org/pedromendonca/\">Pedro Mendonça</a> · <a href=\"https://profiles.wordpress.org/westi/\">Peter Westwood</a> · <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a> · <a href=\"https://profiles.wordpress.org/walbo/\">Petter Walbø Johnsgård</a> · <a href=\"https://profiles.wordpress.org/tyrannous/\">Philipp Bammes</a> · <a href=\"https://profiles.wordpress.org/phillsav/\">Phill</a> · <a href=\"https://profiles.wordpress.org/strategio/\">Pierre Sylvestre</a> · <a href=\"https://profiles.wordpress.org/nekojonez/\">Pieterjan Deneys</a> · <a href=\"https://profiles.wordpress.org/boniu91/\">Piotrek Boniu</a> · <a href=\"https://profiles.wordpress.org/pitamdey/\">Pitam Dey</a> · <a href=\"https://profiles.wordpress.org/piyushtekwani/\">Piyush Tekwani</a> · <a href=\"https://profiles.wordpress.org/pkbhatt/\">pkbhatt</a> · <a href=\"https://profiles.wordpress.org/platonkristinin/\">Platon Kristinin</a> · <a href=\"https://profiles.wordpress.org/webtechpooja/\">Pooja Derashri</a> · <a href=\"https://profiles.wordpress.org/pooja1210/\">Pooja N Muchandikar</a> · <a href=\"https://profiles.wordpress.org/pouicpouic/\">pouicpouic</a> · <a href=\"https://profiles.wordpress.org/prashantbhivsane/\">Prashant</a> · <a href=\"https://profiles.wordpress.org/prashantvatsh/\">Prashant Singh</a> · <a href=\"https://profiles.wordpress.org/pravinparmar2404/\">Pravin Parmar</a> · <a href=\"https://profiles.wordpress.org/presskopp/\">Presskopp</a> · <a href=\"https://profiles.wordpress.org/prikari/\">Priyanka Adhikari</a> · <a href=\"https://profiles.wordpress.org/przemekhernik/\">Przemek Hernik</a> · <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a> · <a href=\"https://profiles.wordpress.org/bi0xid/\">Rafa Poveda</a> · <a href=\"https://profiles.wordpress.org/rfischmann/\">Rafael Fischmann</a> · <a href=\"https://profiles.wordpress.org/rajanpanchal2028/\">Rajan Panchal</a> · <a href=\"https://profiles.wordpress.org/rajinsharwar/\">Rajin Sharwar</a> · <a href=\"https://profiles.wordpress.org/rahmohn/\">Ramon Ahnert</a> · <a href=\"https://profiles.wordpress.org/ramonopoly/\">Ramon James</a> · <a href=\"https://profiles.wordpress.org/ratneshsonar/\">Ratnesh Sonar</a> · <a href=\"https://profiles.wordpress.org/rehanali/\">Rehan Ali</a> · <a href=\"https://profiles.wordpress.org/rembem/\">rembem</a> · <a href=\"https://profiles.wordpress.org/renyot/\">ren</a> · <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a> · <a href=\"https://profiles.wordpress.org/rianrietveld/\">Rian Rietveld</a> · <a href=\"https://profiles.wordpress.org/richtabor/\">Rich Tabor</a> · <a href=\"https://profiles.wordpress.org/richards1052/\">richards1052</a> · <a href=\"https://profiles.wordpress.org/richiecarey/\">Richie Carey</a> · <a href=\"https://profiles.wordpress.org/rjasdfiii/\">rjasdfiii</a> · <a href=\"https://profiles.wordpress.org/rob1n/\">rob1n</a> · <a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a> · <a href=\"https://profiles.wordpress.org/sanchothefat/\">Robert O’Rourke</a> · <a href=\"https://profiles.wordpress.org/robinwpdeveloper/\">Robin</a> · <a href=\"https://profiles.wordpress.org/ravanh/\">Rolf Allard van Hagen</a> · <a href=\"https://profiles.wordpress.org/ronakganatra/\">Ronak Ganatra</a> · <a href=\"https://profiles.wordpress.org/algorithmsunlocks/\">Ruman Ahmed</a> · <a href=\"https://profiles.wordpress.org/rutviksavsani/\">Rutvik Savsani</a> · <a href=\"https://profiles.wordpress.org/ryan/\">Ryan Boren</a> · <a href=\"https://profiles.wordpress.org/bookdude13/\">Ryan Fredlund</a> · <a href=\"https://profiles.wordpress.org/ryankienstra/\">Ryan Kienstra</a> · <a href=\"https://profiles.wordpress.org/rmccue/\">Ryan McCue</a> · <a href=\"https://profiles.wordpress.org/welcher/\">Ryan Welcher</a> · <a href=\"https://profiles.wordpress.org/sereedmedia/\">Sé Reed</a> · <a href=\"https://profiles.wordpress.org/sebastienserre/\">Sébastien SERRE</a> · <a href=\"https://profiles.wordpress.org/sergiomdgomes/\">Sérgio Gomes</a> · <a href=\"https://profiles.wordpress.org/suleymankenar/\">Süleyman Kenar</a> · <a href=\"https://profiles.wordpress.org/andy786/\">Sahil B.</a> · <a href=\"https://profiles.wordpress.org/sajjad67/\">Sajjad Hossain Sagor</a> · <a href=\"https://profiles.wordpress.org/sakibmd/\">Sakib Mohammed</a> · <a href=\"https://profiles.wordpress.org/salvoaranzulla/\">salvoaranzulla</a> · <a href=\"https://profiles.wordpress.org/samful/\">Sam Fullalove</a> · <a href=\"https://profiles.wordpress.org/samiamnot/\">samiamnot</a> · <a href=\"https://profiles.wordpress.org/samnajian/\">SamNajian</a> · <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a> · <a href=\"https://profiles.wordpress.org/mikachan/\">Sarah Norris</a> · <a href=\"https://profiles.wordpress.org/sarequl/\">Sarequl Basar</a> · <a href=\"https://profiles.wordpress.org/saxonfletcher/\">Saxon Fletcher</a> · <a href=\"https://profiles.wordpress.org/coffee2code/\">Scott Reilly</a> · <a href=\"https://profiles.wordpress.org/wonderboymusic/\">Scott Taylor</a> · <a href=\"https://profiles.wordpress.org/scribu/\">scribu</a> · <a href=\"https://profiles.wordpress.org/sdavis2702/\">Sean Davis</a> · <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a> · <a href=\"https://profiles.wordpress.org/shailu25/\">Shail Mehta</a> · <a href=\"https://profiles.wordpress.org/sh4lin/\">Shalin Shah</a> · <a href=\"https://profiles.wordpress.org/enchiridion/\">Shannon Little</a> · <a href=\"https://profiles.wordpress.org/shiponkarmakar/\">Shipon Karmakar</a> · <a href=\"https://profiles.wordpress.org/shreyasikhar26/\">Shreyas Ikhar</a> · <a href=\"https://profiles.wordpress.org/shubhamsedani/\">shubhamsedani</a> · <a href=\"https://profiles.wordpress.org/shuvo586/\">shuvo586</a> · <a href=\"https://profiles.wordpress.org/shvv/\">shvv</a> · <a href=\"https://profiles.wordpress.org/shwetabathani2312/\">Shweta Bathani</a> · <a href=\"https://profiles.wordpress.org/siddhantwadhwani/\">Siddhant Wadhwani</a> · <a href=\"https://profiles.wordpress.org/rsiddharth/\">siddharth ravikumar</a> · <a href=\"https://profiles.wordpress.org/nomnom99/\">Siddharth Thevaril</a> · <a href=\"https://profiles.wordpress.org/10upsimon/\">Simon Dowdles</a> · <a href=\"https://profiles.wordpress.org/simonemanfre/\">Simone</a> · <a href=\"https://profiles.wordpress.org/siobhan/\">Siobhan</a> · <a href=\"https://profiles.wordpress.org/sirajummahdi/\">Sirajum Mahdi</a> · <a href=\"https://profiles.wordpress.org/sboerrigter/\">Sjoerd Boerrigter</a> · <a href=\"https://profiles.wordpress.org/sjoerdlinders/\">Sjoerd Linders</a> · <a href=\"https://profiles.wordpress.org/smit08/\">Smit Rathod</a> · <a href=\"https://profiles.wordpress.org/soean/\">Soren Wrede</a> · <a href=\"https://profiles.wordpress.org/enderandpeter/\">Spencer</a> · <a href=\"https://profiles.wordpress.org/sque/\">sque</a> · <a href=\"https://profiles.wordpress.org/srikanthmeenakshi/\">srikanthmeenakshi</a> · <a href=\"https://profiles.wordpress.org/sstoqnov/\">Stanimir Stoyanov</a> · <a href=\"https://profiles.wordpress.org/ryokuhi/\">Stefano Minoia</a> · <a href=\"https://profiles.wordpress.org/vanaf1979/\">Stephan Nijman</a> · <a href=\"https://profiles.wordpress.org/sabernhardt/\">Stephen Bernhardt</a> · <a href=\"https://profiles.wordpress.org/stevenlinx/\">Steven Lin</a> · <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a> · <a href=\"https://profiles.wordpress.org/sudipatel007/\">Sudip Dadhaniya</a> · <a href=\"https://profiles.wordpress.org/sumitbagthariya16/\">Sumit Bagthariya</a> · <a href=\"https://profiles.wordpress.org/sumitsingh/\">Sumit Singh</a> · <a href=\"https://profiles.wordpress.org/sunyatasattva/\">sunyatasattva (a11n)</a> · <a href=\"https://profiles.wordpress.org/codemonksuvro/\">Suvro</a> · <a href=\"https://profiles.wordpress.org/suzettefranck/\">Suzette Franck</a> · <a href=\"https://profiles.wordpress.org/mt_suzette/\">Suzette Franck</a> · <a href=\"https://profiles.wordpress.org/syamraj24/\">syamraj24</a> · <a href=\"https://profiles.wordpress.org/cybr/\">Sybre Waaijer</a> · <a href=\"https://profiles.wordpress.org/nuhel/\">Syed Nuhel</a> · <a href=\"https://profiles.wordpress.org/synchro/\">Synchro</a> · <a href=\"https://profiles.wordpress.org/tacoverdo/\">Taco Verdonschot</a> · <a href=\"https://profiles.wordpress.org/tahmina1du/\">Tahmina Jahan</a> · <a href=\"https://profiles.wordpress.org/inc2734/\">Takashi Kitajima</a> · <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a> · <a href=\"https://profiles.wordpress.org/tanner-m/\">Tanner Moushey</a> · <a href=\"https://profiles.wordpress.org/thakordarshil/\">Thakor Darshil</a> · <a href=\"https://profiles.wordpress.org/thomask/\">thomask</a> · <a href=\"https://profiles.wordpress.org/thunderdw/\">thunder rumbles</a> · <a href=\"https://profiles.wordpress.org/tijmensmit/\">Tijmen Smit</a> · <a href=\"https://profiles.wordpress.org/tillkruess/\">Till Krüss</a> · <a href=\"https://profiles.wordpress.org/tb1909/\">Tim Brathärig</a> · <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a> · <a href=\"https://profiles.wordpress.org/tmatsuur/\">tmatsuur</a> · <a href=\"https://profiles.wordpress.org/tobiasbg/\">TobiasBg</a> · <a href=\"https://profiles.wordpress.org/tobifjellner/\">tobifjellner (Tor-Bjorn Fjellner)</a> · <a href=\"https://profiles.wordpress.org/thomasdevisser/\">Tom de Visser</a> · <a href=\"https://profiles.wordpress.org/tjnowell/\">Tom J Nowell</a> · <a href=\"https://profiles.wordpress.org/shimotomoki/\">Tomoki Shimomura</a> · <a href=\"https://profiles.wordpress.org/skithund/\">Toni Viemerö</a> · <a href=\"https://profiles.wordpress.org/hellofromtonya/\">Tonya Mork</a> · <a href=\"https://profiles.wordpress.org/r0uter/\">tonythomas01</a> · <a href=\"https://profiles.wordpress.org/toro_unit/\">Toro_Unit (Hiroshi Urabe)</a> · <a href=\"https://profiles.wordpress.org/zodiac1978/\">Torsten Landsiedel</a> · <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul I Chowdhury</a> · <a href=\"https://profiles.wordpress.org/scep/\">Tryon</a> · <a href=\"https://profiles.wordpress.org/twstokes/\">twstokes</a> · <a href=\"https://profiles.wordpress.org/tyb/\">TyB</a> · <a href=\"https://profiles.wordpress.org/ugyensupport/\">Ugyen Dorji</a> · <a href=\"https://profiles.wordpress.org/umesh84/\">Umesh Gupta</a> · <a href=\"https://profiles.wordpress.org/umeshmcakadi/\">Umesh Patel</a> · <a href=\"https://profiles.wordpress.org/upadalavipul/\">Upadala Vipul</a> · <a href=\"https://profiles.wordpress.org/utsav72640/\">Utsav tilava</a> · <a href=\"https://profiles.wordpress.org/uxtremist/\">uxtremist</a> · <a href=\"https://profiles.wordpress.org/eboxnet/\">Vagelis</a> · <a href=\"https://profiles.wordpress.org/valterlorran/\">valterlorran</a> · <a href=\"https://profiles.wordpress.org/vasilism/\">Vasilis Manthos</a> · <a href=\"https://profiles.wordpress.org/victoranto/\">victoranto</a> · <a href=\"https://profiles.wordpress.org/szepeviktor/\">Viktor Szépe</a> · <a href=\"https://profiles.wordpress.org/vivekawsm/\">vivekawsm</a> · <a href=\"https://profiles.wordpress.org/vladytimy/\">Vlad T</a> · <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a> · <a href=\"https://profiles.wordpress.org/whaze/\">whaze</a> · <a href=\"https://profiles.wordpress.org/skorasaurus/\">Will Skora</a> · <a href=\"https://profiles.wordpress.org/williampatton/\">williampatton</a> · <a href=\"https://profiles.wordpress.org/wlindley/\">wlindley</a> · <a href=\"https://profiles.wordpress.org/wojtekszkutnik/\">Wojtek Szkutnik</a> · <a href=\"https://profiles.wordpress.org/wplmillet/\">wplmillet</a> · <a href=\"https://profiles.wordpress.org/xerpa43/\">xerpa43</a> · <a href=\"https://profiles.wordpress.org/xmarcos/\">xmarcos</a> · <a href=\"https://profiles.wordpress.org/yaniiliev/\">Yani Iliev</a> · <a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a> · <a href=\"https://profiles.wordpress.org/zdrobau/\">Zdrobau</a> · <a href=\"https://profiles.wordpress.org/zebaafiashama/\">Zeba Afia Shama</a> · <a href=\"https://profiles.wordpress.org/zebulan/\">Zebulan Stanphill</a> · <a href=\"https://profiles.wordpress.org/zenaulislam/\">Zenaul Islam</a> · <a href=\"https://profiles.wordpress.org/zieladam/\">zieladam</a> · <a href=\"https://profiles.wordpress.org/zunaid321/\">Zunaid Amin</a></p>\n\n\n\n<h3 class=\"wp-block-heading\">Forum de suporte do WordPress</h3>\n\n\n\n<p>Agradecemos aos voluntários da comunidade que contribuem para os fóruns de suporte respondendo a perguntas de usuários do WordPress em todo o mundo.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Envolva-se</h3>\n\n\n\n<p>Se você gosta de contribuir com o WordPress, aprender mais e se envolver é fácil. Descubra as equipes que se reúnem para <a href=\"https://make.wordpress.org/\">criar o WordPress</a> e explore o roteiro do produto no <a href=\"https://make.wordpress.org/core/\">blog de desenvolvimento do núcleo</a>. Você também pode usar esta <a href=\"https://make.wordpress.org/contribute/\">ferramenta interativa</a> para ajudá-lo a decidir qual equipe é a certa para você.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Olhando para o futuro</h2>\n\n\n\n<p>Há 20 anos, em maio, o <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">WordPress lançou a primeira versão, 0.7</a>. O que começou com um post no blog do cofundador Matt Mullenweg e um comentário subsequente do cofundador Mike Little acabou evoluindo para a plataforma de publicação na web mais popular do mundo.</p>\n\n\n\n<p>O software WordPress continua a evoluir e iterar com base nas necessidades e desejos de sua robusta e diversificada comunidade de usuários. Esta versão é o marco da <a href=\"https://make.wordpress.org/core/2023/02/04/phase-2-finale/\">fase 2</a> ao longo do <a href=\"https://wordpress.org/about/roadmap/\">roteiro de desenvolvimento</a> do WordPress. À medida que a comunidade olha para o futuro, todos os esforços se voltam para a versão <a href=\"https://make.wordpress.org/core/2023/06/05/wordpress-6-4-development-cycle/\">6.4</a> e, subsequentemente, para a transição para a <a href=\"https://make.wordpress.org/core/2023/03/24/phase-3-collaboration/\">fase 3</a>, que deverá introduzir poderosas ferramentas de colaboração na experiência de criação e gerenciamento do site.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:60:\"\n		\n		\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"WordPress 6.3 Release Candidate 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://br.wordpress.org/2023/08/01/wordpress-6-3-release-candidate-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 01 Aug 2023 22:30:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:12:\"Lançamentos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"6.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://br.wordpress.org/?p=2751\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:347:\"O terceiro release candidate (RC3) do WordPress 6.3 já está disponível para testes. Esta versão do WordPress está em desenvolvimento. Não instale, execute ou teste esta versão em sites de produção ou de missão crítica. Em vez disso, é recomendável avaliar a versão RC3 em um servidor e site de teste. Embora os candidatos a [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Andre Ribeiro\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6985:\"\n<p>O terceiro release candidate (RC3) do WordPress 6.3 já está disponível para testes.</p>\n\n\n\n<p><strong>Esta versão do WordPress está em desenvolvimento. Não instale, execute ou teste esta versão em sites de produção ou de missão crítica</strong>. Em vez disso, é recomendável avaliar a versão RC3 em um servidor e site de teste.</p>\n\n\n\n<span id=\"more-2751\"></span>\n\n\n\n<p>Embora os candidatos a lançamento sejam considerados prontos para o lançamento final, testes adicionais e o uso pela comunidade podem torná-lo melhor.</p>\n\n\n\n<p>O WordPress 6.3 está agendado para lançamento em 8 de agosto de 2023, apenas uma semana a partir de hoje.</p>\n\n\n\n<p>Obtenha uma visão geral do <a href=\"https://make.wordpress.org/core/6-3/\">ciclo de lançamento da versão 6.3</a>, visite o <a href=\"https://make.wordpress.org/core/\">blog Make WordPress Core</a> para <a href=\"https://make.wordpress.org/core/tag/6-3/\">posts relacionadas a versão 6.3</a>, analise os <a href=\"https://wordpress.org/news/2023/06/wordpress-6-3-beta-2/\">novos recursos do WordPress 6.3</a> ou <a href=\"https://wordpress.org/news/2023/07/wordpress-6-3-live-product-demo-highlights-recording/\">assista a uma demonstração gravada</a>. Desenvolvedores e extensores devem revisar o <a href=\"https://make.wordpress.org/core/2023/07/18/wordpress-6-3-field-guide/\">abrangente Guia de Campo do WordPress 6.3</a> para obter notas técnicas detalhadas sobre novos recursos e melhorias.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Novidades da versão RC3</h2>\n\n\n\n<p>Desde a versão RC2, lançada em 25 de julho, houve aproximadamente 14 erros resolvidos no <a href=\"https://github.com/WordPress/gutenberg/commits/wp/6.3\">Github</a> e no <a href=\"https://core.trac.wordpress.org/query?status=accepted&amp;status=closed&amp;changetime=07%2F25%2F2023..08%2F01%2F2023&amp;milestone=6.3&amp;col=id&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=priority&amp;order=id\">Trac</a>. Para se preparar para a disponibilidade geral da versão 6.3, o RC3 também trata vários <a href=\"https://github.com/WordPress/gutenberg/pull/53089\">erros</a> e adiciona correções para recuperar modelos (<a href=\"https://github.com/WordPress/wordpress-develop/pull/4940\">#4940</a>) e resolve alguns erros nos temas filhos (<a href=\"https://github.com/WordPress/gutenberg/issues/53138\">#53138</a>). Agradecemos por testarem o WordPress!</p>\n\n\n\n<p>Os desenvolvedores devem revisar o abrangente <a href=\"https://make.wordpress.org/core/2023/07/18/wordpress-6-3-field-guide/\">guia de Campo do WordPress 6.3</a> para obter notas técnicas detalhadas sobre novos recursos e melhorias.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Como contribuir?</h2>\n\n\n\n<p>O WordPress é um software de código aberto possibilitado pela comunidade de pessoas que colaboram e contribuem para o seu desenvolvimento. Os recursos abaixo descrevem uma variedade de maneiras pelas quais você pode ajudar, independentemente de sua experiência técnica.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Baixe o WordPress 6.3 RC3</h3>\n\n\n\n<p>Você pode testar o WordPress 6.3 RC3 de três maneiras:</p>\n\n\n\n<p><strong>Opção 1:</strong> Instale e ative o plug-in <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> (selecione o canal “Bleeding edge” e o fluxo “Beta/RC Only”).</p>\n\n\n\n<p><strong>Opção 2:</strong> Baixe direto a <a href=\"https://wordpress.org/wordpress-6.3-RC3.zip\">versão RC3 (zip)</a> .</p>\n\n\n\n<p><strong>Opção 3:</strong> Use o seguinte comando WP-CLI:</p>\n\n\n\n<p><code>wp core update --version=6.3-RC3</code></p>\n\n\n\n<h3 class=\"wp-block-heading\">Testar torna o WordPress mais forte!</h3>\n\n\n\n<p>O teste de erros é uma parte crítica do desenvolvimento de qualquer software e é uma maneira significativa de qualquer pessoa contribuir, quer você tenha experiência ou não.&nbsp;</p>\n\n\n\n<p>Embora testar o processo de atualização seja essencial, testar novos recursos também é. Revise os muitos novos recursos listados acima e concentre seus esforços de teste nessas áreas em particular.</p>\n\n\n\n<p>Quer saber mais sobre testes de lançamentos como este? Leia sobre as <a href=\"https://make.wordpress.org/test/\">iniciativas de teste</a> que acontecem no Make WordPress Core. Você também pode participar do <a href=\"https://wordpress.slack.com/messages/core-test/\">canal público</a> no <a href=\"https://wordpress.slack.com/\">Slack do WordPress</a>.</p>\n\n\n\n<p>Se você acha que encontrou um erro, informe-o na área <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alfa / Beta</a> nos fóruns de suporte. Se você se sentir confortável em escrever um relatório de erros reproduzível, <a href=\"https://core.trac.wordpress.org/newticket\">registre um no WordPress Trac</a>. É aqui também que você pode encontrar uma <a href=\"https://core.trac.wordpress.org/tickets/major\">lista de erros conhecidos</a>.</p>\n\n\n\n<h3 class=\"wp-block-heading\">A recompensa de vulnerabilidade dobra durante as versões Beta/RC</h3>\n\n\n\n<p>Entre a versão Beta 2 e o candidato a lançamento final (RC) para cada nova versão do WordPress, a <a href=\"https://make.wordpress.org/security/2023/06/28/doubling-the-bounties-for-wordpress-6-3-beta/\">recompensa monetária por relatar novas vulnerabilidades de segurança não lançadas é dobrada</a>. Siga as práticas de divulgação responsável, conforme detalhado nas práticas e políticas de segurança do projeto descritas na <a href=\"https://hackerone.com/wordpress\">página do HackerOne</a> e no <a href=\"https://wordpress.org/about/security/\">white paper de segurança</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Agradecimentos a desenvolvedores de plugins e temas</h2>\n\n\n\n<p>Você desenvolve plugins e temas? Seus produtos desempenham um papel fundamental na extensão da funcionalidade e valor do WordPress para usuários de todos os tipos em todo o mundo. É provável que você já tenha testado seus temas e plugins mais recentes com o WordPress 6.3 nas versões Beta. Com o RC3, concluirá seus testes e atualizará a versão “Tested up to” no arquivo readme.txt do plugin ou tema para a versão 6.3.</p>\n\n\n\n<p>Se você encontrar problemas de compatibilidade, envie informações detalhadas para o <a href=\"https://wordpress.org/support/forum/alphabeta/\">fórum de suporte</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Traduza o WordPress</h2>\n\n\n\n<p><a href=\"https://translate.wordpress.org/projects/wp/dev/pt-br/default/\">Ajude-nos a traduzir o WordPress para o português!</a>&nbsp;O lançamento dessa versão também significa que&nbsp;<a href=\"https://make.wordpress.org/polyglots/handbook/glossary/#hard-freeze\">novas strings para a tradução</a>&nbsp;da versão 6.3 serão evitadas.</p>\n\n\n\n<p><em>Agradecemos aos colaboradores que ajudaram com este post: <a href=\"https://profiles.wordpress.org/meher/\">@Meher</a>, <a href=\"https://profiles.wordpress.org/dansoschin/\">@DanSoschin</a> e <a href=\"https://profiles.wordpress.org/jpantani/\">@jpantani</a></em>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://br.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:48:\"WpOrg\\Requests\\Utility\\CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:10:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sun, 29 Oct 2023 14:54:33 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Wed, 25 Oct 2023 10:47:14 GMT\";s:4:\"link\";s:61:\"<https://br.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20231022022720\";}',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        345,
        '_transient_timeout_feed_mod_b85365aa61afaf3d4189819a6f57c4c4',
        '1698634473',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        346,
        '_transient_feed_mod_b85365aa61afaf3d4189819a6f57c4c4',
        '1698591273',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        347,
        '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9',
        '1698634473',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        348,
        '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9',
        'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"WPTavern: Gutenberg 16.9 Lets You Rename (Almost) Any Block, Adds Experimental Form and Input Blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150720\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"https://wptavern.com/gutenberg-16-9-lets-you-rename-almost-any-block-adds-experimental-form-and-input-blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4201:\"<p>Delivering on an <a href=\"https://github.com/WordPress/gutenberg/pull/42605#issuecomment-1475904839\">highly-requested feature</a>, Gutenberg contributors have made it possible to rename almost any block in the List View. <a href=\"https://make.wordpress.org/core/2023/10/25/whats-new-in-gutenberg-16-9-25-october-2/\">Version 16.9</a> was released this week with the new feature, which builds on <a href=\"https://make.wordpress.org/core/2023/09/28/whats-new-in-gutenberg-16-7-27-september/\">Gutenberg 16.7</a>&#8216;s introduction of the ability to rename Group blocks.</p>\n\n\n\n<p>It works in a similar way to naming Photoshop layers. Users can now open the list view, click on the ellipsis menu, select &#8220;Rename,&#8221; and enter a custom name.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\nvideo credit: Gutenberg <a href=\"https://github.com/WordPress/gutenberg/pull/54426\">PR #54426</a>\n\n\n\n<p>&#8220;Allowing users to distinguish between blocks in the List View is becoming increasingly important as the scope of the Site Editor grows,&#8221; Automattic-sponsored contributor Dave Smith said in the original ticket proposing the feature for the Group block. &#8220;Given that all blocks are currently labelled by the block name (e.g. <code>Group</code>) it can be difficult to distinguish between them. This is especially important if your Groups represent distinct &#8216;sections&#8217; of a given page/template.&#8221;</p>\n\n\n\n<p>Every block can be renamed with the exception of these four:</p>\n\n\n\n<ul>\n<li><code>core/block</code></li>\n\n\n\n<li><code>core/template-part</code></li>\n\n\n\n<li><code>core/pattern</code></li>\n\n\n\n<li><code>core/navigation</code></li>\n</ul>\n\n\n\n<p>More renaming capabilities have been added in 16.9, including the ability to duplicate and rename patterns, as well as pattern categories.</p>\n\n\n\n<p>This release <a href=\"https://github.com/WordPress/gutenberg/pull/44214\">introduces new experimental form and inputs blocks</a> to allow building basic forms. It&#8217;s a feature that has taken many by surprise, as few would have predicted WordPress core would be adding form building. A very early version is available under Gutenberg > Experiments, under the &#8220;Form and input blocks&#8221; experiment setting.</p>\n\n\n\n<p>&#8220;Why has there been no proactive outreach to the many developers of longstanding WordPress form solutions currently used by millions and millions of WordPress sites?&#8221; Gravity Forms co-founder Carl Hancock commented on the PR.</p>\n\n\n\n<p>&#8220;It seems like proactive outreach to people who are experts in this space and who could do the most to help drive adoption (beyond comments/search/etc.) would have been a good thing. On many levels. Trying to get them on board with contributing, learning from their shared historical knowledge, and even more important of all&#8230; building on top of it and adopting it instead of introducing a point of more fragmentation.&#8221;</p>\n\n\n\n<p>The forms feature is still in the very early stages of experimentation, and more information may be published to the November edition of &#8220;<a href=\"https://github.com/WordPress/developer-blog-content/issues/174\">What&#8217;s New For Developers?</a>&#8220;</p>\n\n\n\n<p>A few other notable highlights from this release include the following:</p>\n\n\n\n<ul>\n<li>New media categories: <a href=\"https://github.com/WordPress/gutenberg/pull/55236\">Audio and Video</a> for organizing patterns by media type</li>\n\n\n\n<li><a href=\"https://github.com/WordPress/gutenberg/pull/55388\">Sort pages by date</a> in the Site Editor&#8217;s page management screen</li>\n\n\n\n<li>Command Palette now shows <a href=\"https://github.com/WordPress/gutenberg/issues/53539\">block-specific commands as contextual suggestions</a></li>\n\n\n\n<li>Experiments: <a href=\"https://github.com/WordPress/gutenberg/pull/55246\">Added featured image field</a> to the page list</li>\n</ul>\n\n\n\n<p>Check out the release post for <a href=\"https://make.wordpress.org/core/2023/10/25/whats-new-in-gutenberg-16-9-25-october-2/\">Gutenberg 16.9</a> to see the full changelog and more details on bug fixes and enhancements to performance, tooling, documentation, code quality, and accessibility. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Oct 2023 22:00:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WPTavern: WordPress 6.4 Disables Attachment Pages for New Installations\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150736\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wptavern.com/wordpress-6-4-disables-attachment-pages-for-new-installations\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4090:\"<p>The upcoming 6.4 release, expected on November 7, will <a href=\"https://make.wordpress.org/core/2023/10/16/changes-to-attachment-pages/\">disable attachment pages for new installations</a>. Up until now, WordPress automatically created attachment pages when users upload a file through the media upload system. It has been treated as a special post type that holds information about the file and each attachment is accessible under its own URL. SEO plugins have been redirecting attachment pages for years, as they rarely have any significant purpose.</p>\n\n\n\n<p>&#8220;Until WordPress 6.4 was released, WordPress created attachment pages by default for every attachment uploaded,&#8221; WordPress contributor Joost de Valk said in the <a href=\"https://make.wordpress.org/core/2023/10/16/changes-to-attachment-pages/\">dev note</a> for this <a href=\"https://core.trac.wordpress.org/ticket/57913\">change</a>. &#8220;On the vast majority of sites, these attachment pages don’t add any meaningful information. They do, however, exist, get indexed by search engines, and sometimes even rank in search results, leading to bad results for users and site owners.&#8221;</p>\n\n\n\n<p>There will be no changes to existing sites. They will continue to work as they always have, but new sites will have their attachment pages redirected to the attachment URL. Site admins who want to enable or disable attachment pages can use the new  <code>wp_attachment_pages_enabled</code> database option to control attachment pages&#8217; behavior.</p>\n\n\n\n<p>There is no interface for changing whether a site disables attachment pages, which was somewhat controversial in the comments on the Trac <a href=\"https://core.trac.wordpress.org/ticket/57913\">ticket</a> and the dev note.</p>\n\n\n\n<p>&#8220;In light of the WordPress mantra &#8216;decisions, not options,&#8217; we’ve decided against making a setting for this,&#8221; de Valk said.</p>\n\n\n\n<p>WordPress plugin developer Sybre Waaijer mades a case for <a href=\"https://make.wordpress.org/core/2023/10/16/changes-to-attachment-pages/#comment-45721\">giving users an option</a> with an interface for toggling it on or off:</p>\n\n\n\n<blockquote class=\"wp-block-quote\">\n<p>The problem with filtering options is that when another&nbsp;plugin&nbsp;provides the option toggle, the option&nbsp;filter&nbsp;will go against user expectations.</p>\n\n\n\n<p>This is where “decisions, not options” becomes paradoxical because we’re now deciding to set an option while also not giving the option.</p>\n\n\n\n<p>So, as plugins fill in this gap, then A) where will plugins put the option (likely on their custom page instead of options-media.php), and B) of the dozens of types of plugins that are in the market to juggle this, who will ultimately be in control of the option?</p>\n\n\n\n<p>If it’s a filter, each plugin promises to set a toggle via a simple condition. But since it’s an option, plugins can add an option to filter an option and add an option to toggle the option. It’ll become a source of bugs because of the logical biconditionals (XNOR).</p>\n</blockquote>\n\n\n\n<p>While an interface isn&#8217;t in the cards for WordPress 6.4, and may never be back on the table for consideration, contributors are discussing the possibility of putting this in a core plugin.</p>\n\n\n\n<p>&#8220;Should we not have a core plugin for re-enabling attachment pages on new sites?&#8221; Automattic-sponsored contributor Justin Tadlock said. &#8220;If there’s not going to be a UI for this, then a plugin that’s not buried in a Trac ticket would be ideal.&#8221;</p>\n\n\n\n<p>de Valk agreed this would be a good idea to have a plugin that simply adds a setting to the Options -> Media page. Users likely will not understand the purpose of attachment pages unless they are looking to enable them for a specific, niche use case. A plugin like this would be useful for those who are not able to write the code to change attachment pages&#8217; behavior, as described in the <a href=\"https://make.wordpress.org/core/2023/10/16/changes-to-attachment-pages/\">dev note</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Oct 2023 17:42:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"Do The Woo Community: Never Say Never with LinkedIn\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"https://dothewoo.io/?p=77372\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://dothewoo.io/never-say-never-with-linkedin/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:393:\"<p>I have had many people in the WordPress and WooCommerce space ask me why I use and like LinkedIn. Here is my answer, finally.</p>\n<p>&gt;&gt; The post <a rel=\"nofollow\" href=\"https://dothewoo.io/never-say-never-with-linkedin/\">Never Say Never with LinkedIn</a> appeared first on <a rel=\"nofollow\" href=\"https://dothewoo.io\">Do the Woo - a WooCommerce and WordPress Builder Podcast</a>	.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Oct 2023 09:54:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"BobWP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"WPTavern: TaxoPress Adds New AI Integrations for Generating Taxonomy Terms\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150700\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wptavern.com/taxopress-adds-new-ai-integrations-for-generating-taxonomy-terms\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2498:\"<p><a href=\"https://wordpress.org/plugins/simple-tags/\">TaxoPress</a>, a plugin that allows users to create and manage Tags, Categories, and taxonomy terms, has joined a growing number of WordPress products using AI to innovate and enhance user experience. The latest release adds support for <a href=\"https://taxopress.com/tag/openai/\">OpenAI</a> and <a href=\"https://taxopress.com/tag/ibm-watson/\">IBM Watson</a> to auto-detect the best taxonomy terms for content.</p>\n\n\n\n<p>&#8220;Honestly, I&#8217;m amazed how good these services are,&#8221; TaxoPress founder Steve Burge said. &#8220;For a long time, TaxoPress supported Dandelion and also LSEG / Refinitiv. These services are from a previous generation of AI tools. They could scan your content and suggest taxonomy terms. They support a couple of languages and have some options.</p>\n\n\n\n<p>&#8220;In comparison, I&#8217;m blown away with the potential of these new services, particularly <a href=\"https://taxopress.com/tag/openai/\">OpenAI</a>.&#8221;</p>\n\n\n\n<p>This <a href=\"https://taxopress.com/taxopress-ai/\">first version of TaxoPress AI</a> also introduces an updated metabox on the post editing screen with options to manage post terms, suggest existing terms, and connect to external AI services for scanning content and suggesting terms. The AI features are only available in <a href=\"https://taxopress.com/tag/taxopress-pro/\">TaxoPress Pro</a>.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<img width=\"2048\" height=\"701\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/image-2.png\" alt=\"\" class=\"wp-image-150701\" />\n\n\n\n<p>The inclusion of OpenAI and IBM Watson <a href=\"https://taxopress.com/docs/comparing-the-ai-integrations/\">expands support to nearly two dozen different languages</a>. Users can test different services to see which one produces the best terms for the content.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<img width=\"1352\" height=\"1154\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/image-3.png\" alt=\"\" class=\"wp-image-150703\" />\n\n\n\n<p>AI-based auto-tagging is an exciting new  way to enhance an otherwise conventional, established utility plugin. It introduces a bit of magic that produces better results with a far wider reach into the world&#8217;s languages.</p>\n\n\n\n<p>Burge said TaxoPress will soon be adding more AI features for categorizing WordPress content and will focus on enabling more tools that are available through OpenAI and IBM Watson.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Oct 2023 03:09:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:109:\"Do The Woo Community: Navigating the WordPress Ecosystem and Marketing Automation Evolution with Rytis Lauris\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"https://dothewoo.io/?p=77365\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://dothewoo.io/navigating-wordpress-ecosystem-marketing-automation-evolution-rytis-lauris/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:486:\"<p>From political science to tech, Rytis Lauris, co-founder of Omnisend takes us on his product and WordPress journey.</p>\n<p>&gt;&gt; The post <a rel=\"nofollow\" href=\"https://dothewoo.io/navigating-wordpress-ecosystem-marketing-automation-evolution-rytis-lauris/\">Navigating the WordPress Ecosystem and Marketing Automation Evolution with Rytis Lauris</a> appeared first on <a rel=\"nofollow\" href=\"https://dothewoo.io\">Do the Woo - a WooCommerce and WordPress Builder Podcast</a>	.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Oct 2023 09:01:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"BobWP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WordPress.org blog: WordPress 6.4’s PHP Compatibility\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=16235\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2023/10/wordpress-6-4s-php-compatibility/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2287:\"<img width=\"2400\" height=\"1350\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/10/WordPress-6.4s-PHP-comp.png?resize=2400%2C1350&ssl=1\" alt=\"\" class=\"wp-image-16236\" />\n\n\n\n<p>In an effort to keep the WordPress community up to date, this post provides an update on the PHP compatibility of the upcoming WordPress 6.4 release scheduled for November 7, 2023.&nbsp;</p>\n\n\n\n<h3 class=\"wp-block-heading\"><strong>Recommended PHP version for WordPress 6.4</strong></h3>\n\n\n\n<p>It’s recommended to use PHP 8.1 or 8.2 with this upcoming release. Please refer to the Hosting page for more detailed information, including <a href=\"https://make.wordpress.org/core/handbook/references/php-compatibility-and-wordpress-versions/\">a few known issues</a>.&nbsp;</p>\n\n\n\n<p>Reach out to your hosting company to explore PHP upgrade options.</p>\n\n\n\n<h3 class=\"wp-block-heading\"><strong>Why does compatibility matter?</strong></h3>\n\n\n\n<p>PHP is a programming language on which the WordPress code is based. This language runs on the server, and it is critical to keep it updated for security and functionality. Various teams within the WordPress open source project work to both test and fix any issues with new PHP versions so you can update with confidence that the WordPress core software is compatible.&nbsp;</p>\n\n\n\n<p>Happy WordPress-ing!&nbsp;</p>\n\n\n\n<p><em>Thank you to <a href=\"https://profiles.wordpress.org/annezazu/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>annezazu</a> <a href=\"https://profiles.wordpress.org/barry/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>barry</a> <a href=\"https://profiles.wordpress.org/ironprogrammer/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>ironprogrammer</a> <a href=\"https://profiles.wordpress.org/hellofromtonya/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>hellofromtonya</a> <a href=\"https://profiles.wordpress.org/chanthaboune/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>chanthaboune</a> <a href=\"https://profiles.wordpress.org/costdev/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>costdev</a> <a href=\"https://profiles.wordpress.org/javiercasares/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>javiercasares</a> for reviewing and contributing to the effort of this post.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Oct 2023 08:40:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Chloe Bringmann\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"WPTavern: WordPress 6.4. RC2 Released and Ready for Testing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150642\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wptavern.com/wordpress-6-4-rc2-released-and-ready-for-testing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4296:\"<p><a href=\"https://wordpress.org/news/2023/10/wordpress-6-4-release-candidate-2/\">WordPress 6.4 RC2</a> was released this week with more than 25 issues resolved since RC1. These include a few <a href=\"https://github.com/WordPress/gutenberg/pull/55481\">cherry-picked commits</a> from the Gutenberg repository, additional <a href=\"https://core.trac.wordpress.org/query?status=closed&changetime=10%2F18%2F2023..10%2F24%2F2023&milestone=6.4&col=id&col=milestone&col=owner&col=type&col=priority&order=id\">closed Trac tickets since RC 1</a>, and more than a dozen housekeeping <a href=\"https://github.com/WordPress/twentytwentyfour/commits/\">commits for Twenty Twenty-Four</a>.</p>\n\n\n\n<p>The <a href=\"https://make.wordpress.org/core/2023/10/23/wordpress-6-4-field-guide/\">6.4 Field Guide</a> is now published with technical notes. It&#8217;s a lengthy document that collates all the <a href=\"https://make.wordpress.org/core/tag/dev-notes+6-4/\">dev notes</a> for important changes that developers will want to review. A few examples include the following:</p>\n\n\n\n<ul>\n<li><a href=\"https://make.wordpress.org/core/2023/10/17/improvements-to-template-loading-in-wordpress-6-4/\">Improvements to Template Loading in WordPress 6.4</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/17/new-option-functions-in-6-4/\">New option functions in 6.4</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/18/image-loading-optimization-enhancements-in-6-4/\">Image loading optimization enhancements in 6.4</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/21/updates-to-the-html-api-in-6-4/\">Updates to the HTML API in 6.4</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/24/framework-for-storing-revisions-of-post-meta-in-6-4/\">Framework for storing revisions of Post Meta in 6.4</a></li>\n</ul>\n\n\n\n<p>In addition to these important updates to core, WordPress 6.4 will roll six Gutenberg releases into the core – <a href=\"https://make.wordpress.org/core/2023/07/14/whats-new-in-gutenberg-16-2-12-july/\">16.2</a>, <a href=\"https://make.wordpress.org/core/2023/07/26/whats-new-in-gutenberg-16-3-26-july/\">16.3</a>, <a href=\"https://make.wordpress.org/core/2023/08/10/whats-new-in-gutenberg-16-4-9-august/\">16.4</a>, <a href=\"https://make.wordpress.org/core/2023/08/23/whats-new-in-gutenberg-16-5-23-august/\">16.5</a>, <a href=\"https://make.wordpress.org/core/2023/09/06/whats-new-in-gutenberg-16-6-06-september/\">16.6</a>, <a href=\"https://make.wordpress.org/core/2023/09/28/whats-new-in-gutenberg-16-7-27-september/\">16.7</a>. </p>\n\n\n\n<p>The Documentation team is looking for <a href=\"https://make.wordpress.org/docs/2023/10/25/call-for-volunteers-to-help-with-6-4-end-user-documentation/\">volunteers to assist with updating and revising the End User Documentation</a> on HelpHub. A  <a href=\"https://github.com/orgs/WordPress/projects/141/views/2\" target=\"_blank\" rel=\"noreferrer noopener\">6.4 project board</a> tracks the tasks in the Documentation repository on GitHub, and it has been sorted by priority. New documentation contributors are invited to join, and the onboarding process is well documented for getting started.</p>\n\n\n\n<p>The emails have gone out to extension developers, who are encouraged to test against 6.4 and update the current &#8220;Tested up to&#8221; values for each extension.</p>\n\n\n\n<p>One of the easiest ways to test the upcoming release is by using Playground: <a href=\"https://playground.wordpress.net/?wp=beta\">https://playground.wordpress.net/?wp=beta</a>.  The Playground environment can be further customized for different storage types, PHP versions, and the WordPress version.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<img width=\"2046\" height=\"1294\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/Screen-Shot-2023-10-25-at-11.32.54-AM.png\" alt=\"\" class=\"wp-image-150646\" />\n\n\n\n<p>A comprehensive <a href=\"https://make.wordpress.org/test/2023/09/26/help-test-wordpress-6-4/\">6.4 testing guide</a> has been published with video demonstrations of how each of the key new features should behave. This makes it easy for testers to know if something is not working the way it should. </p>\n\n\n\n<p>WordPress 6.4 is now under two weeks away from its scheduled release day of November 7, 2023. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Oct 2023 19:42:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WPTavern: #96 – Jake Goldman on Agency Mergers and AI in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wptavern.com/?post_type=podcast&p=150562\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wptavern.com/podcast/96-jake-goldman-on-agency-mergers-and-ai-in-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:60281:\"Transcript<div>\n<p>[00:00:00] <strong>Nathan Wrigley:</strong> Welcome to the Jukebox podcast from WP Tavern. My name is Nathan Wrigley.</p>\n\n\n\n<p>Jukebox is a podcast which is dedicated to all things WordPress. The people, the events, the plugins, the blocks, the themes, and in this case, the recent merger of 10up and Fueled, as well as some thoughts on how WordPress will adapt with AI.</p>\n\n\n\n<p>If you&#8217;d like to subscribe to the podcast you can do that by searching for WP Tavern in your podcast player of choice. Or by going to WPTavern.com forward slash feed forward slash podcast. And you can copy that URL into most podcasts players.</p>\n\n\n\n<p>If you have a topic that you&#8217;d like us to feature on the podcast, I&#8217;m keen to hear from you and hopefully get you, or your idea, featured on the show. Head to WPTavern.com forward slash contact forward slash jukebox, and use the form there.</p>\n\n\n\n<p>So on the podcast today we have Jake Goldman. Jake is the president and founder of 10up, a digital agency that builds websites and tools for content creators, leveraging open platforms like WordPress.</p>\n\n\n\n<p>We start the conversation with an exploration of the recent merger with 10up, Fueled and Insignia. For many years 10up has been one of the leading enterprise WordPress agencies. With a roster of well-known clients, Jake has grown the company from himself to hundreds of employees.</p>\n\n\n\n<p>Whilst the journey has been exciting and challenging, Jake talks about some of the areas in which 10up has not been able to compete, and how the merger with Fueled will enable them to position themselves for projects which used to be out of reach. Fueled brings their experience of crafting mobile experiences, and Insignia brings their financial expertise, as well as the industry connections they have built up.</p>\n\n\n\n<p>Jake shares how this new venture will continue to leverage WordPress as their CMS of choice. These new partners understand and support 10up&#8217;s commitments to contributing to WordPress. There are no plans to immediately alter the structure of either 10up or Fueled. It&#8217;s more about building an understanding of the capabilities of each partner, working towards a future in which the company grows into one entity over time.</p>\n\n\n\n<p>We talk about the intentional pursuit of potential partners, and Jake reflects on the importance of cultural alignment and connections. He shares how his prior experience has shaped both his personal journey as a leader, and the success of 10up. And we explore the milestones, challenges, and key moments that have brought them to where they are today.</p>\n\n\n\n<p>Towards the end of the podcast, we pivot to talk about the role of AI in the future of WordPress. It&#8217;s clear that AI is coming, and it&#8217;s coming rapidly. Any agency working with WordPress would find this topic hard to ignore. But what impact will it really have? Are we expecting entire websites to be built in seconds by just clicking a button?</p>\n\n\n\n<p>Jake expresses his view that these tools are to be seen as accelerants, complementing human website development, rather than replacing it, particularly at the enterprise level. We delve into 10up&#8217;s ongoing exploration and experimentation with AI, discussing some of the tools they have freely released.</p>\n\n\n\n<p>If you&#8217;re interested in how enterprise agencies grow or the future of AI with WordPress, this episode is for you.</p>\n\n\n\n<p>If you&#8217;re interested in finding out more, you can find all of the links in the show notes by heading to WPTavern.com forward slash podcast, where you&#8217;ll find all the other episodes as well.</p>\n\n\n\n<p>And so, without further delay, I bring you Jake Goldman.</p>\n\n\n\n<p>I am joined on the podcast today by Jake Goldman. Hello Jake.</p>\n\n\n\n<p>[00:04:31] <strong>Jake Goldman:</strong> Hey!</p>\n\n\n\n<p>[00:04:32] <strong>Nathan Wrigley:</strong> Very nice to have you on the podcast today. Really appreciate you joining us. Jake is joining us from 10up.</p>\n\n\n\n<p>10up very recently had some really quite seismic news. In the WordPress community 10up is one of those companies that you have probably heard of. They&#8217;re an enterprise level agency, they deal with some of the largest projects in the WordPress space, and they had some news around a merger. So we&#8217;ll get into that in a little bit and we&#8217;ll also get into some AI topics probably towards the end.</p>\n\n\n\n<p>Prior to that though Jake, I&#8217;ve just given a little bit of an introduction about where you work, but I&#8217;m curious about your backstory, particularly as regards WordPress, this is after all a WordPress podcast. So would you mind just giving us a little bit of your backstory. Where you fit into the WordPress ecosystem? What is the company that you work for and how did you set that up?</p>\n\n\n\n<p>[00:05:22] <strong>Jake Goldman:</strong> Sure. I&#8217;ll see if I can do this concisely. I feel like there&#8217;s so much to the backstory. 10up today is a shop that I have run for twelve and a half years now, as we&#8217;ll talk about. Part of a larger organisation. We are a web agency and we have been very proudly advocates of open source, open technologies, WordPress is our tool of choice. We also very much believe apropos of open source and giving back to the web, and helping continue to make the web an open platform where people, you know don&#8217;t have to pay huge licensing fees to be involved, be able to make websites, be able to learn new technologies and new skills.</p>\n\n\n\n<p>And we very much believe that as we have climbed up that ladder of an open web that we need to keep that ladder extended to the next generation. So we are also very large contributors to the project, we donate thousands of hours every year to open source. A large part of that goes to WordPress Core. Goes to a rich ecosystem of extensions that we contribute, that we think solve some hard problems, particularly in the enterprise, the kind of customers that we serve.</p>\n\n\n\n<p>Before this new event, just as 10up we&#8217;ve been about 300 people. That is a company that has grown organically from 2011 when we were founded, with just me writing code and doing a little bit of UX, and doing all the business side of things and built it sort of brick by brick.</p>\n\n\n\n<p>I got into WordPress circa 2007, 2008. I was working at a shop as many were at the time focused on commercial CMSs and closed platforms. We kind of wanted to diversify, saw the writing on the wall. Started exploring with different popular open platforms at the time that was WordPress. One of the partners in that company was focused on Drupal.</p>\n\n\n\n<p>I saw a lot of potential in that platform that came, I thought, to pass over the next few years, and when it was time for me to go out on my own and start my own business, I was pretty determined that if I believed in an open web and wanted to see open technology thrive, that WordPress was a good horse to bet on. And so started 10up. Determined to become one of those agencies of record in the space. I guess the rest is history.</p>\n\n\n\n<p>[00:07:02] <strong>Nathan Wrigley:</strong> Did you have any intuition back then that WordPress was, you spoke about it in terms of it being you know a good horse to back. Did you have any intuition that it was the horse to back? Or would you have been prepared at any moment to swap horses mid race you know had Drupal pushed ahead? Because I had all sorts of intuitions, many of them which turned out to be completely wrong in terms of Drupal and other open source platforms.</p>\n\n\n\n<p>And eventually after WordPress became successful, I joined that ecosystem. But it sounds like you made a bit of a serendipitous choice. It was a bit of good luck possibly. And I wonder what your thoughts are around that.</p>\n\n\n\n<p>[00:07:38] <strong>Jake Goldman:</strong> Yeah I mean there&#8217;s always an element of luck. I could have chosen never to look at WordPress, right? Or taken it seriously as a platform. I certainly thought I saw potential. I mean, you work in web from 1996 to 2007, you&#8217;ve tried and dabbled in lots of different technologies. I think it was, maybe this is the older man in me speaking now, but I think it was easier at the time to move between different technologies. There wasn&#8217;t so much friction trying new things, trying new platforms.</p>\n\n\n\n<p>As somebody that&#8217;s very, that likes engineering, and likes tech, and likes the geeky side but also has a strong appreciation for user interface and making things easy and putting myself in the shoes of people that are actually just trying to publish something on a website. Actually trying to manage content, always wanting throughout my entire time in web to be able to like hand off a website, maintain it, but be able to hand off and have a delightful experience for those website owners to keep updating their website and managing the content on their website.</p>\n\n\n\n<p>It was very clear to me even 2008, 2009, I think it was around the time of the first big UI change in WordPress, you know the menu on the left and still elements of that echos of that design today in WordPress. It was very clear to me that in terms of platforms that we&#8217;re creating really focused on, what is that website owner, what is that content publisher experience that WordPress was, I thought, just running circles around the other platforms?</p>\n\n\n\n<p>So I saw a lot of potential. I was experimenting with even doing things that were custom post type like before there was really custom post types in core, and saw where the core project was heading in terms of adding more taxonomy support, adding more different content types and some of those fundamentals of a bigger CMS.</p>\n\n\n\n<p>So I guess a bit lucky that I happened to be stumbling and playing and looking closer at the platform at the time, but I guess the short answer is yeah, I mean it was very palpable to my instincts that this thing was going to go places.</p>\n\n\n\n<p>[00:09:11] <strong>Nathan Wrigley:</strong> If you were to look back over the time since 2011, that number of years, the ground will be littered with people who tried to do what you did, but didn&#8217;t quite make it. You know they endeavored to have an enterprise level agency, they wished to grow their agency. But for some people clearly that worked, you being one of them. For other people, perhaps it didn&#8217;t work out.</p>\n\n\n\n<p>And I&#8217;m just wondering if you&#8217;ve got any intuitions as to what the key moments were in those years. If you look back and think, okay that was the moment, that was another moment, that was a third moment. What were the pivotal bits, the decisions that you made, the projects that you took up, which allowed you to become the sort of force that you are now?</p>\n\n\n\n<p>[00:09:48] <strong>Jake Goldman:</strong> It&#8217;s a great question and, you know, I&#8217;ll be earnest, I never really look at the sort of long journey and arc as, it&#8217;s nice to think of it as like there was this moment and everything changed. But it wasn&#8217;t really like that. It was a brick by brick, year over year kind of effort. I mean when I look back at moments that I could call out, you know certainly when starting the company, I&#8217;m not sure if this is a moment so much as a story you know sort of a narrative about, I think why we were able to be successful.</p>\n\n\n\n<p>But I&#8217;ve always emphasised that the trick to, I think, 10up&#8217;s success is that I did not descend out of the sky one day out of college and say I&#8217;m a business owner. Before I started 10up I spent over a decade working for other people, doing side consulting. There was a whole story before 10up started which was time in the industry, building connections, building a network, investing in relationships, learning from mentors about how to think about a budget, and a P and L, and what&#8217;s really involved in hiring people. Having the joy of hiring someone great and the torture of having to let people go before I ever started the company. Knowing how to put numbers together, had fantastic mentors.</p>\n\n\n\n<p>If you want the honest answer, the real story of our success is, it was everything that happened before starting 10up. It was the relationships I was able to bring into that company, clients like side consulting projects I had been doing on the side for over a decade that I was able to bring in to the company.</p>\n\n\n\n<p>I think there&#8217;s a lot of people today that sort of drop out of the sky and say you know my role in life is to be an entrepreneur and day one I&#8217;m starting a company and I just, I can&#8217;t imagine I would have been nearly as successful, 10up would have been nearly as successful as it was if I didn&#8217;t have that whole backstory.</p>\n\n\n\n<p>I can point to some other moments, you know winning in the first year. Getting introductions vis-à-vis those connections to customers like TechCrunch that we still work with to this day, on their site that have obviously become very powerful items in your portfolio. I can point to bringing on strong leaders including our CEO who joined us in 2014, still with us today, John Eckman.</p>\n\n\n\n<p>I think one other thing that has made 10up different than some companies in the space is I like to believe it is not a company that revolves around its founder&#8217;s ego. That I&#8217;ve always tried to build it with a mindset of, I want this thing to be much more than Jake Goldman. I want the brand to be 10up not Jake&#8217;s company. I could ramble on but I think, that&#8217;s probably what I would leave you with.</p>\n\n\n\n<p>[00:11:51] <strong>Nathan Wrigley:</strong> Well thank you. The thing that we&#8217;re going to talk about from now is the joining of forces between 10up and a company which in the WordPress space maybe people haven&#8217;t heard about, and that is Fueled. We&#8217;ll talk about a piece which went on the 10up blog, I will link to it in the show notes. It&#8217;s called Fueled Up, 10up joins forces with Fueled Digital Media. And so that&#8217;s the direction of travel for the majority of the rest of the podcast.</p>\n\n\n\n<p>But I&#8217;m just wondering, in that journey, was the endeavor always growth? Grow, grow, grow, make the agency bigger. And if that was the case, what kind of changed your, direction? Because it seems like you had a bit of an epiphany earlier in the year of 2023. The article paints a picture that you were working with Fueled and then just have this sudden realisation, actually do you know what they are like us. They do something different but their alignment, the sort of direction of travel, their ethics, and all of that seems to match very well.</p>\n\n\n\n<p>And then all of a sudden, well I say sudden, probably months and months in the making, you announced that you&#8217;ve joined forces. So I just wonder, what changed about the company that suddenly made you think let&#8217;s do something different, let&#8217;s join with some other company?</p>\n\n\n\n<p>[00:12:55] <strong>Jake Goldman:</strong> It&#8217;s a fantastic question and the reality is, I&#8217;ve written about this a little bit online, like my prior story. It was not a wake up one morning, my you know light bulb went off and the next day we closed the transaction kind of a thing. The reality is, I think we have to go all the way back to saying like, per my last remarks, I have always seen 10up as something that is, I want it to be much more than Jake Goldman Inc. That was always my vision.</p>\n\n\n\n<p>If you think of me as an engineer at heart, I always sort of believe like the best thing you engineer is a thing that continues to live on and be used well beyond the time you spend on it, well beyond your focus on that project. And I&#8217;ve always felt the same way about a company, like the perfect business, the ideal company, the ideal team that you build.</p>\n\n\n\n<p>There&#8217;s a world where you can someday step back and not be worried if I&#8217;m not in the room that this thing doesn&#8217;t keep succeeding, this team doesn&#8217;t keep thriving. That&#8217;s always been on my mind. It was on my mind when I think I surprised a lot of people, again, going all the way back to 2014, and hired a CEO that was not me into the company to help us build it. It&#8217;s always been on my mind as I built out different divisions and empowered strong leaders within the business.</p>\n\n\n\n<p>I think there was a moment for me in the, you know the first few years of the 2020s, to me sort of peaking in 2022. Not sure intentionally but probably not accidentally after probably two or three of the most difficult and challenging years to be a business leader probably weighing on my mind as well. Any business leader who does not tell you there was a certain fatigue in 2020, 2021, 2022 is probably not being honest with you.</p>\n\n\n\n<p>At the same time, more consciously I just felt like look, we&#8217;re about to break through $40 million in revenue, we think by the end of this year. We think we&#8217;re on a trajectory for 300 people at this company. I have been the overwhelming owner of the business, decision maker for you know, at that point for I guess 11 and a half years. And really felt like as we move forward this company needs to have more governance, a different kind of structure, a different kind of ownership that can A, help keep propelling it forward.</p>\n\n\n\n<p>I&#8217;ve never run a company of that scale in size before. I think some of what you have to do to manage and invest in a company of that scale is a little bit different when you start to reach that kind of size. And I frankly want to make sure this company is taken care of in the event that I ever, you know I could get sick, I could get hit by a bus.</p>\n\n\n\n<p>I don&#8217;t think the company even as it existed previously, would suddenly just disappear overnight by any means. But there was a certain amount of like legal structure, a certain amount of like ownership management, and share structure. A certain amount of where are the other highly experienced, growing companies of this size kind of leaders and investors that were missing.</p>\n\n\n\n<p>And when I thought about I can go through the effort to do that on my own, think about like employee owned companies or think about how to completely restructure stock and legal formations. To be honest with you, when I started thinking about that, I was struggling to imagine being excited to get out of bed for the next two years focused on like legal apparatus, and being that different kind of owner of that larger company which just. You know so I guess I&#8217;m rambling a little bit to say like that mindset that I was in of I think we need something more in terms of governance, ownership, to a degree, diluting the degree to which it sort of sits on my lap as an owner.</p>\n\n\n\n<p>Combine that with my sense that the next phase of growth is, I think, going to come from moving even further up market to being even more of a serious competitor to like the Deloitte Digitals and the Code and Theory&#8217;s of the world, the people that are not coming in saying you know we&#8217;re great WordPress integrators, or just great website makers but were true full digital experience shops.</p>\n\n\n\n<p>I think those things kind of collided for me in a way that said maybe it&#8217;s time to look at M&amp;A. Maybe it&#8217;s time to look at who we can join forces with. And I&#8217;ll be transparent, we went on a very intentional journey, we had advisors in that process. It was you know help guide me through an exploration of you know who might be the kind of company that you can join forces with. And let&#8217;s not just wait for it to fall in my lap, or just go on this blind exercise and all the you know, all my copious spare time of hunting.</p>\n\n\n\n<p>But be intentional about seeking who those partners would be. Spoke to a lot of different companies, had different sort of, I would say suitors, or even offers of which we walked away from. But as we got to know Fueled in particular and then started to do some projects together, and started to understand each other, it felt very clear to me that this was a unique and special fit.</p>\n\n\n\n<p>[00:16:45] <strong>Nathan Wrigley:</strong> Okay so let&#8217;s talk a little bit about Fueled. So I&#8217;m curious to know, what is it about them that make that fit special? So presumably you went out and I&#8217;m obviously going to paraphrase the whole process, but there must&#8217;ve been a series of check boxes that needed to be checked. The company needs to behave in this way, it needs to have this, it needs to have this, we need to be going in this direction, whatever it may be.</p>\n\n\n\n<p>I&#8217;m just wondering, why was it Fueled as opposed to all the other companies? And you can take that in whichever direction you like. It may have just been personnel, it may have been turnover, it may have been, I don&#8217;t know attitude, roster, anything you like.</p>\n\n\n\n<p>[00:17:16] <strong>Jake Goldman:</strong> Yeah it&#8217;s definitely not just a one thing, but I have to say a lot of it sounds very non business like in a sense. But a lot of it was ineffable. A lot of it was just when you go and you meet with these different suitors, or these different potential partners, or companies that you could merge with. And you sit down in the room with them or you have, you know you start with the Zoom chat. I find myself sort of imagining okay, I&#8217;m in a boardroom in a hard time or a good time with them, a year from now, two years from now, how does that feel to me?</p>\n\n\n\n<p>It&#8217;s a sort of cultural, does this feel natural? Does this feel like somebody that if I had to have hard conversations it wouldn&#8217;t be stilted, and more painful than it needs to be? Do I feel like I would be energised and sort of like an extroverted kind of way, like walk out of meetings and planning sessions more excited about what we&#8217;re doing, or would I feel a bit tired from that exercise?</p>\n\n\n\n<p>And I&#8217;m trying to think how else to express it. It was just like when I sat down with them, when I met with them, when we actually worked on projects together and collaborated. It felt like if I had brought these people to, you know, if I just brought them to my team and said I just hired this person as a new key executive, or a new key director, or leader, everybody would have just said like you know great hire Jake, what an amazing fit for our culture.</p>\n\n\n\n<p>And I think that was extraordinarily important to me. Yes, there were other boxes to check. The financial side of everything had to make sense. The legal apparatus had to make sense. They had to be in a, obviously, you know reasonably healthy condition as a business. There were things I did not want in terms of like kind of companies that I thought could like destroy what&#8217;s precious about 10up and its culture.</p>\n\n\n\n<p>I could talk about all of those things, but at the end of the day when sort of settling down on that gut feeling of, is this a company that I want to be with, that I want to work with, that I want to join forces with? It was the checking of the boxes, different kind of skills, different kind of capabilities, all of those things.</p>\n\n\n\n<p>But at the end of the day, a lot of it came down to these are good people that I would enjoy working with. I would look forward to going to a board meeting. I would look forward to going to an exec planning session. They will make me a better leader. They will make my team better. My team will enjoy collaborating with these people in ways that you know going through this journey and talking to so many companies, even before 2020 like we&#8217;ve been approached before, and we&#8217;ve had conversations with different companies.</p>\n\n\n\n<p>You start to realise how precious that match is. We can all sort of like be in our bubbles. But really when you start to talk to a lot of these different companies and agencies, you really realise pretty quickly that there are a lot of companies, a lot of people who are doing fantastic work, impressive businesses, but just very different kind of mindsets, cultures, communication styles, ways of thinking about the world. So when you find someone that you actually go and sit down in the meeting and it&#8217;s like I could hire you, I wish we could do more projects together, that&#8217;s something you latch on to.</p>\n\n\n\n<p>[00:19:39] <strong>Nathan Wrigley:</strong> Yeah what a great answer. I really enjoyed listening to that. The next thing I want to talk about is, how Fueled overlaps with you? So I&#8217;m imagining in my head a Venn diagram of two circles. And in the past, in the WordPress space, we&#8217;ve often seen one agency, for want of a better word, consume another agency. And it almost feels like the two circles are now completely overlapping. One is inside the other. So you can no longer see two circles. You just see one slightly bigger circle.</p>\n\n\n\n<p>But it does seem as if with Fueled we&#8217;ve got a nicely fitting Venn diagram. There&#8217;s Fueled over here, there&#8217;s 10up over here, and there&#8217;s some elements of overlap but it&#8217;s not entire. The two circles are not colliding. And I&#8217;m just wondering, what it is that they do? What it is that you do? What&#8217;s the differentiators, and what is that lovely sweet spot in the middle where you both overlap?</p>\n\n\n\n<p>[00:20:23] <strong>Jake Goldman:</strong> So I&#8217;ll start with the sweet spot in the middle. The sweet spot in the middle, to be a little highfalutin about it for a second, is like the desire to use technology, to use cutting edge innovative tech to create fantastic experiences for clients in an agency setting. It really is in some sense that crisp and that simple. We are a professional services business. We use online technologies to make great experiences for our customers.</p>\n\n\n\n<p>Now to be a little less flippant and a little bit more specific about it, like where we have skill set overlap. Fundamentals of doing design systems, whether it&#8217;s on mobile for a product, whether it&#8217;s on a website. Those are not fundamentally different like technical skill sets that you use every single day. There is an overlap and some like you know Next.js, React kind of front end technologies. They do some web applications in addition to mobile. In fact probably a growing part of their business relatively speaking.</p>\n\n\n\n<p>But when you get beyond the sort of like core common technologies and practices you use when you&#8217;re a creative agency, and expand out to okay, what do we actually work on day to day? There is a healthy, non overlapping parts of the circles, outside parts of the Venn circles. Which is to say like I would say that they are predominantly focused on what they are good at, what they are known for, what they have repute in, is doing product development in the sense of mobile applications. Some web applications, but not marketing websites and publishing websites. Not CMS driven experiences really. Like applications, you know e commerce kind of functionality. Think of some of the projects they work on where it&#8217;s really you know shopping and user intention driven.</p>\n\n\n\n<p>10up is more on the website marketing, web publishing, web content creation. Again, we overlap a little bit, we&#8217;ve even done mobile apps in the past, but we are really strong in how to make a great website that can be put in the hands of those site owners, those site publishers with a strong content management system implementation behind it. And a major focus on content together. That&#8217;s media and publishing, or corporate newsrooms, or you know content marketing, or just flat out marketing websites and informational websites. When that was not something conversely that Fueled had really focused on or was good at.</p>\n\n\n\n<p>And we both sort of you know looked at those two sides of the Venn diagram and sort of said, I bet we have a bunch of customers who could use the others services. And there&#8217;s a bunch of customers out there who don&#8217;t want a shop that sort of neatly fits in one bucket and is kind of stretching and reaching to have a compelling story about the other side.</p>\n\n\n\n<p>[00:22:35] <strong>Nathan Wrigley:</strong> I don&#8217;t know exactly what the audience demographic is, but I&#8217;m sure there&#8217;ll be a lot of people who don&#8217;t work in enterprise agency land. And so this conversation is really interesting, and I am wondering if you&#8217;ve had to, probably this is the wrong word, but turn down work, or move away from work, or pivot away from work that, you simply as 10up, didn&#8217;t feel you would be doing the best job with. But now you feel, okay we can push forward with projects such as this in the future, because now it&#8217;s this bigger enterprise, it&#8217;s Fueled, it&#8217;s 10up, it&#8217;s whatever that&#8217;s going to be called in the future.</p>\n\n\n\n<p>[00:23:06] <strong>Jake Goldman:</strong> Oh yeah for certain. I mean literally can think of projects over the last few years where we had great enterprise, large scale, huge spending customers who needed, just to say it plainly, in some cases needed a mobile application built, put out RFPs for that and probably would have, hoping I&#8217;m not being hubristic here, probably would have loved to work with us, at least would have taken very seriously a submission from 10up. Where we just felt like we would not meet qualifications, we&#8217;re not confident that we could do a good job, in a way that would not diminish our entire relationship with them.</p>\n\n\n\n<p>It&#8217;s the more common scenario that I think about is where we are given opportunities to pitch business, we&#8217;re given opportunity, we have an introduction, we have a connection, and we just don&#8217;t quite compete in the right way in terms of coming across as having a real platform that you would describe as a full digital experience solution.</p>\n\n\n\n<p>While it&#8217;s true that we have customers, we have business that I would say has been left on the table because we didn&#8217;t have these capabilities. What I&#8217;m more focused on is where do we not compete well for opportunities? Where do we not get invited into the room or just not last long in the conversation? Because to overstate melodramatically for a fact, we come across as a WordPress integrator implementation shop, not a full digital experience business.</p>\n\n\n\n<p>[00:24:12] <strong>Nathan Wrigley:</strong> There&#8217;s a third circle in this Venn diagram which we haven&#8217;t mentioned so far and it&#8217;s a venture capital company called Insignia Capital. I confess I don&#8217;t know anything about Insignia Capital. So I&#8217;m just wondering, probably fairly quickly, I don&#8217;t know if you want to dwell on this, but I&#8217;m just wondering if you could explain how that fits in.</p>\n\n\n\n<p>[00:24:29] <strong>Jake Goldman:</strong> Sure. So at the risk of splitting hairs for your audience they&#8217;re a private equity company which is a little bit different from venture capital. Probably not a very material difference for most of the people listening to this but it&#8217;s a little bit different. Sort of like, what are the returns they expect? How do they operate? Where do they get their funding? And so forth.</p>\n\n\n\n<p>Still the same principle in terms of, I guess the short version would be that they are the money people. So the way that they fit, to try to make it concise, they joined forces with, made a massive investment in Fueled about one year ago. Which is to say they&#8217;re not the full ownership of Fueled. Fueled&#8217;s owners still hold a large share of that company, but they have controlling ownership, vis a vis putting a huge investment into Fueled.</p>\n\n\n\n<p>And what Fueled, other than of course some opportunities for some liquidity for their owners wanted out of that, is a real partner who knows how to, from the investor side, has both connections, has both capital, has sort of financial and industry sophistication to help them build a bigger business together.</p>\n\n\n\n<p>So to put it in plain terms, what Insignia wants to do is work with a platform, which for them that was Fueled as the initial partnership, the initial investment. To build a bigger, more valuable company that increases the value of the equity that they have in that business. The way that they do that oftentimes, like the strategy in professional and digital services is you do what&#8217;s called add ons.</p>\n\n\n\n<p>So you bring in other companies into the fold, you attach them to that company and you end up with something that is much more valuable for a number of reasons. It&#8217;s higher revenue, but it&#8217;s also everything I just described about you have a you know, a shop that looks like a full digital services provider with CRM capability and sales force and CMS and mobile apps, is just a more valuable business than one that&#8217;s kind of pigeonholed in one of those spots.</p>\n\n\n\n<p>So you can kind of make smart investments with investors that really raise the overall value of the business. Like 10up, I would say Fueled&#8217;s ownership really did not have the sort of the sophistication, appetite, capital to do that on their own. Which is why they partnered up with Insignia. Insignia has sort of the financial vehicle, all those things I described earlier in the conversation, where it&#8217;s what does it mean to restructure legally 10up to have multiple ownership, and to have shares and to have stock and to have investors with a lot of influence and connections in the space.</p>\n\n\n\n<p>So long story short, they help us restructure to be able to join with Fueled, to be able to make one business out of these two companies. And that happens, in large part, by helping purchase a significant amount of 10up equity, so I am no longer the dominant controlling owner of 10up.</p>\n\n\n\n<p>It&#8217;s a little muddy, and I guess like the short version of it is like they are the financial backers for this combined entity. They make it possible to restructure the business and combine into one through capital, and they also bring quite a bit of sophistication around how to build these platforms. They have connections with other companies that can be acquired, they have a lot of connections with very senior, influential people in the decision making space, in the agency space and in the B2B space. So it&#8217;s not that they just bring money, they also bring a lot of wisdom about how to build these larger companies as investors, advisors, board members with strong connections.</p>\n\n\n\n<p>[00:27:12] <strong>Nathan Wrigley:</strong> Now that the ink is dry on the contracts and you&#8217;ve had a little bit of water flowing under the bridge, I&#8217;m just wondering if you can tell us how 10up particularly has changed? I know that your company is broadly distributed, and I just wondered, what is it that it&#8217;s going to look like if we can cast our eyes forward a year into the future? What are you endeavoring to create there? Is the idea that this one entity, everybody will be mixed? It will be a homogenous entity or will we have, broadly speaking, will we still have the WordPress side? What are you planning?</p>\n\n\n\n<p>[00:27:42] <strong>Jake Goldman:</strong> So the first thing to say is when we get like sort of in the weeds of how it&#8217;s going to operate, and a question of like what has changed today. So far that is still a journey of discovery that we are on. That&#8217;s not BS, that is authentic. I can speak to what we all sort of I think share as like a heading and vision and ultimate destination, when you talk about the one, two, three years out.</p>\n\n\n\n<p>But we don&#8217;t think that means like jumping in and month one, this is not like shifting around 17 different divisions and immediately restructuring in three months. No, we are learning from each other, we are still deep in the process of teams and project management, and design, and growth, and sales, and engineering. Sort of comparing notes, getting to understand each other better, getting more insight into each other&#8217;s businesses. Sharing leads, sharing opportunities that we think might be better fit to one team or the other. Sometimes sharing personnel where they&#8217;re skillsets overlap and one team or the other could use help.</p>\n\n\n\n<p>But really operating essentially as two, continuing to operate as we did before the merger, as two strong partners with a bunch of research, discovery, integration, exploration going on in the background of the company.</p>\n\n\n\n<p>In terms of where we are headed. Yes, our goal is ultimately not to be like there&#8217;s a 10up and there&#8217;s a Fueled out there competing in the agency space, and sometimes sharing opportunities. Our ultimate goal is to be a unified business, to have a clear, centralised governance. To be able to go to market as one entity, one brand and sell a story of not two different partners working together, but one fully integrated set of capabilities.</p>\n\n\n\n<p>Now what that looks like again, there&#8217;s a lot to color in there that I just don&#8217;t have the answer for. I don&#8217;t even know that I have an answer, a definitive answer today for where like the brand question would even land. We might find ourselves in 12 months in a model that is still fairly divisional. Which is to say maybe more centralised leadership, centralised operations, more marketing and business development consolidation, but could still sort of like operate with divisions within the business.</p>\n\n\n\n<p>One more focused on applications. One more focused on web and CMS. Could end up with some teams that are totally cross functional. The honest to god answer is that is what we are exploring and trying to work on with our teams and find the best path today. Better right than quickly is our point of view.</p>\n\n\n\n<p>[00:29:35] <strong>Nathan Wrigley:</strong> In terms of the roster that you&#8217;ve currently got. Now you mentioned TechCrunch, and we know that there&#8217;s a whole bunch of other enormous companies that you&#8217;ve worked with. Did you feel compelled to go out and communicate with them prior to heading down the direction of merging with Fueled? Was there any intuition that maybe your clients would be interested to know that information or potentially you know, nervous to hear that you were doing this, and how would it affect their incredibly important property?</p>\n\n\n\n<p>[00:30:00] <strong>Jake Goldman:</strong> In a spiritual sense we did not have a lot of concern about it. We thought it would make sense. This is not a case of say it rather crassly like being gobbled up by some international conglomerate that might be controversial to some customers. This was not a case of like changing to foreign ownership of a business.</p>\n\n\n\n<p>It was hard to see how any customers would be anything but sort of happy to hear that we have maybe more sophistication as an entity and a governance and ownership model than, one guy in California owning the business. And pleased to hear that we were expanding our capabilities and could offer more solution and more services to them in the future. So we didn&#8217;t really have any sense that like somebody was going to be very upset to hear about this.</p>\n\n\n\n<p>There is a process, there is a certain amount of like notifying, interviewing a small number of customers beforehand that are seen as, maybe riskier because they have strong terms in their contracts around change of ownership. Or just large clients where you know nobody&#8217;s going to be happy if for some shocking reason it changed the game afterwards.</p>\n\n\n\n<p>So were some that were informed and brought into the loop, not because we had deep existential concern about it, but because it was a part of a due diligence process. We did speak to a few customers but otherwise the process was largely once we knew this was closing, once we knew this deal was going to get done, it was a rapid notification process. A harried two or three weeks right after the deal closed to make sure that we had a very orderly structure. But a quick way, inform those clients, let them know what that meant for them, deal with any contract language implications or updates. And I have to say I think that went exceptionally smoothly.</p>\n\n\n\n<p>[00:31:24] <strong>Nathan Wrigley:</strong> Just touching on WordPress, this is after all a WordPress podcast. You have mentioned that your team over the years has contributed really quite large amounts of time and effort and resources to the WordPress project itself. And so I&#8217;m just curious as to whether this has changed anything. Or whether you are still everything pointing towards WordPress going to be contributing in the same way. Still using that as the platform of choice for the web side of things, if nothing else.</p>\n\n\n\n<p>[00:31:50] <strong>Jake Goldman:</strong> So in terms of contribution nothing has changed. My hope is that this will open up added opportunities to contribute, make impact in the space. I think all of our new partners, Fueled, Insignia, understand that you know endemic to our strategy, our culture, our core values is that level of contribution that we make to the space.</p>\n\n\n\n<p>It is, you know even if you don&#8217;t believe in it from an ethical sense, from a business sense it has made sense for us and it has helped us grow and it&#8217;s helped us acquire business, and helped us have impact, and build culture. So you know there are no plans to change that level of investment that we make.</p>\n\n\n\n<p>In terms of WordPress as a CMS platform, yeah, I mean at the end of the day Fueled and Insignia fully understood that that is our preferred CMS platform, that is the dominant platform that we use. Fully understood that, you know making a bet on 10up was also making a bet on WordPress continuing to be healthy and grow as a platform. The CEO, a lovely fellow named Rameet literally spoke to Matt Mullenweg, as I understand, before I even knew he did about WordPress and about 10up.</p>\n\n\n\n<p>At the end of the day they are looking, you know they chose to merge with us and are looking for us to be the experts in CMS implementation and looking for us to be the experts in how to make these websites and experiences. They don&#8217;t have a hubris to think they&#8217;re going to come in and tell us, we wanted to merge with you but we think you&#8217;ve been doing it wrong the whole time, and you need to change platforms, right? That&#8217;s almost silly as a way of thinking about it.</p>\n\n\n\n<p>The short answer is I mean yes, they very much understand what they were buying. They see us as the experts. They look up for us to continue guiding and we continue to see WordPress as our dominant platform that we work with.</p>\n\n\n\n<p>[00:33:14] <strong>Nathan Wrigley:</strong> I hope you don&#8217;t mind me asking you some personal question. I&#8217;m just wondering how this is going to affect you? You may decline to answer this question if you wish, and we can just cut it out entirely. But I&#8217;m just curious. From a lot of what you said there did seem to be some little bits of, you were intimating that some of these things were going to be wonderful for you as well as the company.</p>\n\n\n\n<p>And I&#8217;m just wondering if you&#8217;ve had any of those experiences? Has work become more pleasurable? Have you managed to get out of this what you want? Have you managed to make new friendships and new alliances? Is it everything you hoped it would be?</p>\n\n\n\n<p>[00:33:46] <strong>Jake Goldman:</strong> That&#8217;s a big question. I mean there&#8217;s two ways to answer that. I think there&#8217;s, I&#8217;m not trying to dodge, I think there&#8217;s a couple of different, two different ways of looking at that question. So the biggest sort of like aspiration that I wanted out of this, which is new partners, having people that are more my equals or even my seniors in this combined business. New advisors, new people that take true, you know in addition to some people on our team, new people, new additions to the team that take real, literal ownership of the business.</p>\n\n\n\n<p>Yes, that is the case and it is welcome for me to have that, those kind of additions. I adore many of my new peers, feel energised when I work with them, when we sit down and plot out the future and work together. All of that is true. Now I think in the moment, four weeks in would I say that my life is now flowers and roses and better and easier? Let&#8217;s be earnest here. There&#8217;s two things going on at the moment. One is I had the same full time job that I had the week before, with a little less heavy as the head that wears the crown going on. But the same job that I had the month before in terms of like, again, we didn&#8217;t snap our fingers and transform the business operations overnight.</p>\n\n\n\n<p>And now I also have this additional responsibility, which I take very seriously of that, playing a key role in facilitating change management and a longer term integration strategy. So if I was being very honest at the moment, my feeling is delight with the partners that we&#8217;ve chosen. A little bit of overwhelm and fatigue on like how much more there is to do at the moment. The seriousness with which I take this whole process is not a light burden. Doing big change management across a team of our scale is not a light duty for lack of a better word.</p>\n\n\n\n<p>[00:35:13] <strong>Nathan Wrigley:</strong> This question would be best answered in a year&#8217;s time.</p>\n\n\n\n<p>[00:35:15] <strong>Jake Goldman:</strong> A hundred percent it would.</p>\n\n\n\n<p>[00:35:17] <strong>Nathan Wrigley:</strong> Let&#8217;s put that topic behind us and just get onto a subject which is completely nothing to do with what we&#8217;ve been talking about. Just for a few moments. I&#8217;m interested because AI is all the rage, if we were to rewind the clock two years, just two years, I don&#8217;t think anybody really in the WordPress space was really talking about AI. Maybe tangentially or some aspirational talk about what it could do.</p>\n\n\n\n<p>And now fast forward to today. We&#8217;ve just had a year of utterly seismic change in the capabilities of what AI can do. Most of it disconnected completely with website building. So we&#8217;ve got OpenAI and Anthropic and a bunch of other companies launching really seismically amazing products. And I&#8217;m just wondering what your thoughts are? What your intuitions are about where this is going to land with website building, with WordPress?</p>\n\n\n\n<p>Now I know that&#8217;s an incredibly broad question but I feel that&#8217;s all we&#8217;ve got at the moment because we don&#8217;t have concrete things to pin our discussion to. So I&#8217;m just wondering what your general thoughts are.</p>\n\n\n\n<p>[00:36:16] <strong>Jake Goldman:</strong> Great question. Hang on one second while I type that question into ChatGPT. So we have lots of thoughts and lots of initiatives going on there. I think the first one to call out, and this is a bit of a plug, we have an extension we&#8217;ve been working on since before this was cool, since 2018. Back when we called this machine learning more often than artificial intelligence, called Classifai, that&#8217;s C L A S S I F A I, because we&#8217;re too clever with our puns. So ClassifaiPlugin.com, or just look up Classifai or 10up and AI, it&#8217;ll probably come up. I&#8217;m sure I&#8217;ll put it in show notes or something.</p>\n\n\n\n<p>That plugin has been an experiment staging ground with us for, again, going back to 2018. It is not focused on like how to, I&#8217;m not sure I buy that this is the right use case for our kind of customers or you know the dominant part of the market. It does not try to be one of these like, we&#8217;re going to build your whole website for you. We&#8217;re going to write your story for you and your content. And those are cool demos, there are probably some very small business kind of use cases where you just need kind of like a boilerplate, you know you need to have the brochure. That just has to be a checkbox put next to we have a website.</p>\n\n\n\n<p>But for the kind of market we work with I don&#8217;t think those are more than frankly sort of novelty demos at this point in time. That might change as the technology gets better in a year or two, but I don&#8217;t think a serious marketer is saying I&#8217;m going to write my pages and do my layouts just using AI on its own.</p>\n\n\n\n<p>What we do think is that AI integrated with WordPress, which is what Classifai aims to do, can be extraordinarily powerful in simplifying repetitive tasks, and being an assistant and support to people that are creating and publishing content. So it does things like integrate natively with image generation services. If you want to generate a photo for your site, it will do things like create alt tags, and text descriptions for images, smart crop. It&#8217;ll take a pass at making paragraphs shorter or longer, individually in form on your site. It&#8217;ll tag images so you can navigate your media library better. It&#8217;ll suggest alternative titles you might want to consider.</p>\n\n\n\n<p>So we are very focused in Classifai on what we would describe as extremely pragmatic, realistic, not novelty demo, kind of integration so that WordPress can compete. You know it&#8217;s completely open source, free plugin. You have to pay sometimes for the third party services, like the image generation services are mostly licensed. But we don&#8217;t make anything off of that, you just buy those services and plug your keys into Classifai settings.</p>\n\n\n\n<p>So this very pragmatic setup where we think that customers, we hope other people using WordPress, can look to Classifai to be a very sort of modern, sort of high end, prosumer enterprise solution that gives an answer to, how do you use WordPress and AI?</p>\n\n\n\n<p>On the technology, engineering side we have a working group. We have ongoing exploration of how do we in a safe way, in a private way, that respects our customers but in a way that keeps us competitive, continues to make sure that we don&#8217;t fall behind or suddenly become just wildly out of league and what it costs us to make something. Is experimenting with things like GitHub Copilot and more structured ways we can use that across projects. Experimenting with things like code generation with chat GPT. I don&#8217;t think the kind of websites we make are going to be like, build a whole website or 80 percent of the code with those tools.</p>\n\n\n\n<p>I see it as an accelerant, no different than like when we had IDEs or even when we shifted from writing machine code to more natural languages like C and C++ and Swift and all the rest. And I think it&#8217;s still early in that exploration. There are certainly signals that there are some kinds of tasks, certain migration tasks, certain repetitive scripting tasks in the shell that you can automate, that you can accelerate.</p>\n\n\n\n<p>And our job right now, and that job&#8217;s not done, is to figure out when you have a scale of you know 300 people and 100 or 200 some engineers. How do you create a standard? How do you create a process? What does it mean to create an expectation? Not across one or two people who are smart, curious and hungry to use these, but across an entire team to stay competitive and stay ahead of the curve.</p>\n\n\n\n<p>I wish I could bring you all the answers other than to say like I think that technology will keep getting better. I do think it will help. I am not in the camp of at least for the next you know sort of five years. I am not in the camp of, this is going to replace the need for engineers. You know there are certain leaders in the WordPress space who I think would say like they imagine a few years from now their engineering teams go down from like a hundred to like five.</p>\n\n\n\n<p>Maybe I&#8217;ll eat these words. I think it&#8217;s a bit silly when we think about the next two, three, four, even five years. I think it&#8217;s more like an extreme version of the leap again to like things that would have seemed very foreign 40 years ago, 50 years ago when the industry was frankly smaller, not larger. Where we started to have tools you know template patterns like you know the internet and access to Stack Overflow and good code completion tools.</p>\n\n\n\n<p>These accelerant tools did not obliterate the industry, right? The industry is larger than it&#8217;s ever been. Which is to say like a rapid, rapid, huge changes that make engineering and technical tasks easier has never in the history of tech and computing and the web made for a smaller industry. It has always made a larger industry. It just gives people more time to think, to be creative, to make things that are more advanced. It&#8217;s raised the bar higher on what people expect in terms of quality and completeness of the experiences they get. I think that is more the world that we live in for the next three, four, five years now.</p>\n\n\n\n<p>[00:40:59] <strong>Nathan Wrigley:</strong> I&#8217;m just wondering if there is some little part of AI which you&#8217;ve looked at, and again you know if this encroaches on business processes and things like that, you need not divulge what it is. I just wondered if at the level that you&#8217;re working at, if there are certain aspects of AI which you&#8217;re thinking, boy that really would save us a lot of time. That really does look like something which we should invest. It sounded like everything that you were developing, the Classifai is for the end user broadly.</p>\n\n\n\n<p>It enables people like me to do my work quicker. But I&#8217;m just wondering if there was something that you were curious about on the AI side which would make your business processes quicker. And again, feel free to not divulge if you don&#8217;t wish to.</p>\n\n\n\n<p>[00:41:36] <strong>Jake Goldman:</strong> I mean the short answer is yes, I think there is. I&#8217;m not not divulging anything to say like I&#8217;m not sure in a sustainable way what those things are yet. I know what we&#8217;re experimenting with. I know what we see some promise in. I kind of take the longer view and feel like it&#8217;s not clear yet which of these are sort of novelties in their appeal. Which of these are have enduring power as change forces in our process. It still feels like we&#8217;re in a little bit of a, I think, still in the getting to know it phase. I do think there are some things around like more baseline tasks in an estimate, or when we&#8217;re building certain kind of projects or certain kind of sites.</p>\n\n\n\n<p>My suspicion is some migration work, some sort of like more fundamental lower level like set up, the v1 of just setting up a basic added functionality. That will go faster, that will be accelerated. But I have to just be honest. I&#8217;m still not even confident enough that we&#8217;ve done that enough times, tried that enough times, to know whether this is more like when GitHub comes along, becomes popular whether it totally changes the way we work, or it&#8217;s just another tool that helps people be more efficient.</p>\n\n\n\n<p>[00:42:39] <strong>Nathan Wrigley:</strong> My intuitions are that anybody that puts their flag in the sand and says AI will enable this is probably setting themselves up for having to admit that they were wrong. Almost everything that I&#8217;ve predicted has not come to pass. Yeah we just have to be, roll with the punches, be flexible I suppose.</p>\n\n\n\n<p>Jake it&#8217;s been lovely chatting to you today about all of this. I wonder if you make yourself available elsewhere online. Whether or not you want to divulge a social handle that you use, or a good place where people can contact you. Having listened to this there may be people who wish to do that, and if you wish to spread the word about that please do.</p>\n\n\n\n<p>[00:43:14] <strong>Jake Goldman:</strong> Here&#8217;s a phrase I never thought I would say five years ago. So the place to most get my insight and hear what I&#8217;m thinking about business and 10up is LinkedIn. So if you just search for Jake Goldman on LinkedIn I should pop right up, or Jake Goldman in WordPress. That&#8217;s probably the best place to go. I mean go to 10up.com and follow our blog. I mean again all of our business activity as a company is there. In terms of like personal posting, not terribly active on any social media at this point.</p>\n\n\n\n<p>[00:43:36] <strong>Nathan Wrigley:</strong> Well thank you Jake for chatting to me on the podcast today. I really appreciate it.</p>\n\n\n\n<p>[00:43:40] <strong>Jake Goldman:</strong> Thank you for having me. It was a pleasure.</p>\n</div>\n\n\n\n<p>On the podcast today we have <a href=\"https://www.linkedin.com/in/jacobgoldman/\">Jake Goldman</a>.</p>\n\n\n\n<p>Jake is the President &amp; Founder of 10up, a digital agency that builds websites and tools for content creators, leveraging open platforms like WordPress.</p>\n\n\n\n<p>We start the conversation with an exploration of the recent merger with 10up, Fueled and Insignia. For many years, 10up has been one of the leading Enterprise WordPress agencies. With a roster of well-known clients, Jake has grown the company from himself to hundreds of employees.</p>\n\n\n\n<p>Whilst this journey has been exciting and challenging, Jake talks about some areas in which 10up has not been able to compete and how the merger with Fueled will enable them to position themselves for projects which used to be out of reach.</p>\n\n\n\n<p>Fueled brings their experience of crafting mobile experiences, and Insignia brings their financial expertise, as well as the industry connections they have built up.</p>\n\n\n\n<p>Jake shares how this new venture will continue to leverage WordPress as their CMS of choice; these new partners understand and support 10up’s commitment to contributing to WordPress. There are no plans to immediately alter the structures of either 10up or Fueled, It’s more about building an understanding of the capabilities of each partner, working towards a future in which the company grows into one entity over time.</p>\n\n\n\n<p>We talk about the intentional pursuit of potential partners, and Jake reflects on the importance of cultural alignment and connections. He shares how his prior experience has shaped both his personal journey as a leader and the success of 10up, and we explore the milestones, challenges, and key moments that have brought them to where they are today.</p>\n\n\n\n<p>Towards the end of the podcast, we pivot to talk about the role of AI in the future of WordPress. It’s clear that AI is coming, and it’s coming rapidly. Any agency working with WordPress would find this topic hard to ignore. But what impact will it really have? Are we expecting entire websites to be built in seconds by just clicking a button? Jake expresses his view that these tools are to be seen as accelerants, complementing human website development rather than replacing it, particularly at the Enterprise level. We delve into 10up’s ongoing exploration and experimentation with AI, discussing some of the tools they have freely released.</p>\n\n\n\n<p>If you’re interested in how Enterprise agencies grow, or the future of AI with WordPress, this episode is for you.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Useful links</h2>\n\n\n\n<p><a href=\"https://10up.com/\">10up website</a></p>\n\n\n\n<p><a href=\"https://techcrunch.com/\">TechCrunch website</a></p>\n\n\n\n<p><a href=\"https://fueled.com/en-gb\">Fueled</a></p>\n\n\n\n<p><a href=\"https://10up.com/blog/2023/10up-joins-forces-with-fueled-digital-media/\">Fueling Up: 10up joins forces with Fueled Digital&nbsp;Media</a></p>\n\n\n\n<p><a href=\"https://openai.com/\">OpenAI</a></p>\n\n\n\n<p><a href=\"https://www.anthropic.com/\">Anthropic</a></p>\n\n\n\n<p><a href=\"https://classifaiplugin.com/\">ClassifAI plugin</a></p>\n\n\n\n<p><a href=\"https://www.linkedin.com/in/jacobgoldman/\">Jake Goldman on LinkedIn</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Oct 2023 14:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Nathan Wrigley\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WPTavern: Automattic Acquires Texts, An All-in-One Messaging App\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150606\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wptavern.com/automattic-acquires-texts-an-all-in-one-messaging-app\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2807:\"<p>Automattic has acquired <a href=\"https://texts.com/\">Texts</a>, an all-in-one messaging platform, for $50 million. Texts is a newer company founded in 2020 that creates a centralized inbox for all major messaging platforms, including iMessage, WhatsApp, Instagram, Telegram, Signal, Twitter, LinkedIn, Slack, and Discord. </p>\n\n\n\n<p>The proliferation of messaging apps and inboxes has made responding to communication more complicated than it was in previous years. Most companies would prefer to keep users on their own platforms, but Texts offers a new level of interoperability between messaging apps that doesn&#8217;t require the use of its own servers. The website states that users&#8217; messages never touch Texts&#8217; servers. They are encrypted and sent directly to the messaging platforms. Texts charges a monthly subscription, instead of making money by selling users&#8217; data. It also offers a number of AI-powered features for chat summaries, drafts, and translation.</p>\n\n\n\n<p>Automattic&#8217;s Texts acquisition <a href=\"https://wordpress.com/blog/2023/10/24/texts-joins-automattic/\">announcement</a> states that the company is moving &#8220;into a fourth market that’s integral to the modern web experience: messaging.&#8221;</p>\n\n\n\n<p>Mullenweg has been eying the messaging market for years and has previously spoken of his fascination with messaging platforms and their relationship with the independent web. In an <a href=\"https://youtu.be/P2qbSMdCvis\">interview with Om Malik</a> at WordCamp Europe 2017, he mentioned that Automattic was experimenting with Telegram’s group broadcasting feature. More recently, it 2020, <a href=\"https://wptavern.com/automattic-invests-4-6m-in-new-vector-creators-of-the-matrix-open-standard-for-decentralized-communication\">Automattic invested $4.6M in New Vector</a>, a company founded by the creators of <a href=\"https://matrix.org/\">Matrix</a>, an open standard that powers decentralized conversations with end-to-end encryption. </p>\n\n\n\n<p>Texts&#8217; founder, Kishan Bagaria, will take on a new role as Head of Messaging at Automattic and the rest of the 10-person team was retained to continue working on the product.</p>\n\n\n\n<p>In response to an inquiry about the status of the iOS and Android mobile apps for Texts, a representative from Automattic said the company is currently testing an iOS beta with a subset of users. Android support is on the roadmap. The representative also confirmed there are no plans to change pricing right now but Automattic is considering the addition of a freemium plan in the future.</p>\n\n\n\n<p>Texts will be expanding its coverage to streamline messages across more platforms. Matrix, Tumblr, and many more integrations are on the roadmap, including Snapchat, Google Messages, and Reddit.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Oct 2023 02:19:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"Matt: Texts Joins Automattic\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"https://ma.tt/?p=102049\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://ma.tt/2023/10/texts-joins-automattic/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3203:\"<p><a href=\"https://texts.com/\">Texts is a fun application (desktop only for now) that brings all of your messages into one inbox</a>. It currently supports iMessage, WhatsApp, Telegram, Signal, Messenger, X/Twitter DMs, Instagram DMs, LinkedIn, Slack, and Discord DMs, with more on the way soon. It runs entirely on the desktop so it&#8217;s super fast and secure. It&#8217;s founded and led by <a href=\"https://kishanbagaria.com/\">Kishan Bagaria</a>, a really unique entrepreneur and technical talent, and has a slate of amazing investors including <a href=\"https://twitter.com/lachygroom\">Lachy Groom</a>, <a href=\"https://rauchg.com/\">Guillermo Rauch</a> (former Automattician!), <a href=\"https://sahillavingia.com/\">Sahil Lavingia</a>, and <a href=\"https://twitter.com/KishanBagaria/status/1716778353439486291\">many others</a>—and I&#8217;m excited to announce that it&#8217;s now part of <a href=\"https://automattic.com/\">Automattic</a>!</p>\n\n\n\n<p>This was announced today on <a href=\"https://pca.st/zkesr4d4\">the Pivot podcast with Kara Swisher and Scott Galloway (my part starts 48:50 in)</a>, and also covered <a href=\"https://www.theverge.com/2023/10/24/23928685/automattic-texts-acquisition-universal-messaging\">in The Verge</a>, <a href=\"https://techcrunch.com/2023/10/24/wordpress-com-owner-buys-all-in-one-messaging-app-texts-com-for-50m/\">TechCrunch</a>, <a href=\"https://www.macstories.net/news/automattic-acquires-interoperable-messaging-service-texts/\">MacStories</a>, and <a href=\"https://www.techmeme.com/231024/p10#a231024p10\">a few others</a>.</p>\n\n\n\n<p>Today is also my 18th anniversary at Automattic! So, an exciting day all around.</p>\n\n\n\n<p>Using an all-in-one messaging app is a real game-changer for productivity and keeping up with things. Texts is a paid app, with discounted student pricing, and I think a lot of people will find value in it. It&#8217;s quickly become one of the top three apps I spend time using.</p>\n\n\n\n<p>This is obviously a tricky area to navigate, as in the past the networks have blocked third-party clients, but I think with the current anti-trust and regulatory environments this is actually something the big networks will appreciate: it maintains the same security as their clients, opens them up in a way consumers will love and is very user-centric, and because we&#8217;re committed to supporting all their features it can actually increase engagement and usage of their platforms.</p>\n\n\n\n<p>We&#8217;re still working out everything for mobile, so if you&#8217;re looking for the all-in-one experience on iOS or Android in the meantime, I recommend checking out <a href=\"https://www.beeper.com/\">Beeper</a>. It really is great to have everything together.</p>\n\n\n\n<p>If you&#8217;re a reverse engineer hacker that is interested in working with a super-small elite team in this space with the fun of a startup and the air cover of Automattic, get in touch with <a href=\"https://twitter.com/KishanBagaria\">Kishan on Twitter DM</a> or email (kb at texts). Here&#8217;s a fun video for Texts. <img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f604.png\" alt=\"😄\" class=\"wp-smiley\" /></p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Oct 2023 18:58:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"WordPress.org blog: WordPress 6.4 Release Candidate 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=16219\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2023/10/wordpress-6-4-release-candidate-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6558:\"<p>The second release candidate (RC2) for WordPress 6.4 is now available!</p>\n\n\n\n<p><strong>This version of the WordPress software is under development</strong>. Please do not install, run, or test this version of WordPress on production or mission-critical websites. Instead, it’s recommended that you evaluate RC2 on a test server and site.</p>\n\n\n\n<p>WordPress 6.4 is <a href=\"https://make.wordpress.org/core/6-4/\">slated for release</a> on <strong>November 7, 2023</strong>—two weeks from today. If you haven’t tried it, now is the time.</p>\n\n\n\n<p>You can test WordPress 6.4 RC2 in three ways:</p>\n\n\n\n<ol>\n<li><strong>Plugin</strong>: Install and activate the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin on a WordPress install (select the “Bleeding edge” channel and “Beta/RC Only” stream).</li>\n\n\n\n<li><strong>Direct download</strong>: Download the <a href=\"https://wordpress.org/wordpress-6.4-RC2.zip\">RC2 version (zip)</a> and install it on a WordPress site.</li>\n\n\n\n<li><strong>Command line</strong>: Use the following <a href=\"https://make.wordpress.org/cli/\">WP-CLI</a> command:<br /><code>wp core update --version=6.4-RC2</code></li>\n</ol>\n\n\n\n<p><a href=\"https://wordpress.org/news/2023/10/wordpress-6-4-release-candidate-1/\">Read the RC1 announcement</a> for featured highlights, and check the <a href=\"https://make.wordpress.org/core/\">Make WordPress Core blog</a> for <a href=\"https://make.wordpress.org/core/tag/6-4/\">6.4-related posts</a>. If you are looking for detailed technical notes on new features and improvements, the <a href=\"https://make.wordpress.org/core/2023/10/23/wordpress-6-4-field-guide/\"><strong>WordPress 6.4 Field Guide</strong></a> is for you.</p>\n\n\n\n<p>The WordPress 6.4 release is brought to you by an <a href=\"https://make.wordpress.org/core/2023/06/05/wordpress-6-4-development-cycle/\">underrepresented gender release squad</a> to welcome the participation and partnership of those who identify as gender-underrepresented in the WordPress open source project.</p>\n\n\n\n<h2 class=\"wp-block-heading\">What’s in WordPress 6.4 RC2?</h2>\n\n\n\n<p>Thanks to everyone who has tested the beta and RC releases. Since RC1 was released on October 17, there have been more than 25 issues resolved. You can browse the technical details for all recent updates using these links:</p>\n\n\n\n<ul>\n<li><a href=\"https://github.com/WordPress/gutenberg/commits/wp/6.4\">GitHub commits for 6.4</a></li>\n\n\n\n<li><a href=\"https://core.trac.wordpress.org/query?status=closed&changetime=10%2F18%2F2023..10%2F24%2F2023&milestone=6.4&col=id&col=milestone&col=owner&col=type&col=priority&order=id\">Closed Trac tickets since RC1</a></li>\n\n\n\n<li><a href=\"https://github.com/WordPress/twentytwentyfour/commits/\">GitHub commits for Twenty Twenty-Four</a></li>\n</ul>\n\n\n\n<h2 class=\"wp-block-heading\">Contributing to 6.4</h2>\n\n\n\n<p>WordPress is open source software made possible by a community of people collaborating on and contributing to its development. The resources below outline various ways you can help, regardless of your technical expertise.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Get involved in testing</h3>\n\n\n\n<p>Your feedback and help in testing are vital to developing the WordPress software and ensuring its quality. It’s also a meaningful way for anyone to contribute. <a href=\"https://make.wordpress.org/test/2023/09/26/help-test-wordpress-6-4/\">Check out this guide</a> for instructions on testing WordPress 6.4 features.</p>\n\n\n\n<p>If you encounter an issue, please report it to the <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta area</a> of the support forums or directly to <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac</a> if you are comfortable writing a reproducible bug report. You can also check your issue against a list of <a href=\"https://core.trac.wordpress.org/tickets/major\">known bugs</a>.</p>\n\n\n\n<p>Curious about testing releases in general? Follow along with the <a href=\"https://make.wordpress.org/test/\">testing initiatives in Make Core</a> and join the <a href=\"https://wordpress.slack.com/messages/core-test/\">#core-test channel</a> on <a href=\"https://wordpress.slack.com/\">Making WordPress Slack</a>.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Search for vulnerabilities</h3>\n\n\n\n<p>During the release candidate phase of WordPress 6.4, the <a href=\"https://make.wordpress.org/security/2023/09/26/bug-bounty-for-wordpress-6-4-beta/\">monetary reward for reporting new, unreleased security vulnerabilities</a> is doubled. Please follow responsible disclosure practices as detailed in the project’s security practices and policies outlined on the <a href=\"https://hackerone.com/wordpress\">HackerOne page</a> and in the <a href=\"https://wordpress.org/about/security/\">security white paper</a>.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Update your theme or plugin</h3>\n\n\n\n<p>Do you build themes and plugins? Your products play an integral role in extending the functionality and value of WordPress for users worldwide.</p>\n\n\n\n<p>Hopefully, you have already tested your themes and plugins with WordPress 6.4 betas. With RC2, you will want to continue your testing and update the <em>&#8220;Tested up to&#8221;</em> version in your <a href=\"https://developer.wordpress.org/plugins/wordpress-org/how-your-readme-txt-works/\">plugin&#8217;s readme file</a> to 6.4.</p>\n\n\n\n<p>Please post detailed information to the <a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a> if you find compatibility issues.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Help translate WordPress</h3>\n\n\n\n<p>Do you speak a language other than English? ¿Español? Français? Português? Русский? 日本? <a href=\"https://translate.wordpress.org/projects/wp/dev\">Help translate WordPress into more than 100 languages</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\">A RC2 haiku</h2>\n\n\n\n<p>You have been waiting<br />Download and give it a test<br />RC2 is here</p>\n\n\n\n<p><em>Thank you to the following contributors for collaborating on this post: <a href=\"https://profiles.wordpress.org/meher/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>meher</a>, <a href=\"https://profiles.wordpress.org/rmartinezduque/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>rmartinezduque</a>, <a href=\"https://profiles.wordpress.org/michelleames/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>michelleames</a>, <a href=\"https://profiles.wordpress.org/cbringmann/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>cbringmann</a></em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Oct 2023 16:45:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Meher Bala\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"WordCamp Central: WordCamp Lahore 2023 is looking for Speakers and Sponsors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"https://central.wordcamp.org/?p=4251876\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"https://central.wordcamp.org/news/2023/10/wordcamp-lahore-2023-is-looking-for-speakers-and-sponsors/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3228:\"<p>Are you a WordPress enthusiast looking for an exciting event to attend? WordCamp Lahore 2023 has just the ticket for you! This official conference, organized by WordPress Lahore, is set to be a fantastic opportunity for WordPress users, developers, and open-source enthusiasts to come together, share knowledge, and contribute to the WordPress community.</p>\n\n\n\n<p>Here&#8217;s what you need to know about WordCamp Lahore 2023:</p>\n\n\n\n<h2 class=\"wp-block-heading\">Early Bird Tickets:&nbsp;</h2>\n\n\n\n<p>If you&#8217;re eager to attend this dynamic conference, you&#8217;re in luck! Early bird tickets are now available for registration at a discounted price. It&#8217;s the perfect chance to secure your spot and save some money. Don&#8217;t miss out on this fantastic offer &amp; visit this link to avail this discounted price.<br /><a href=\"https://lahore.wordcamp.org/2023/tickets/\">https://lahore.wordcamp.org/2023/tickets/</a></p>\n\n\n\n<h2 class=\"wp-block-heading\">Date and Schedule:</h2>\n\n\n\n<p>&#8211; Contributor Day: December 9th, 2023</p>\n\n\n\n<p>&#8211; Formal Conference Day: December 10th, 2023</p>\n\n\n\n<p>On December 9th, WordCamp Lahore will host a Contributor Day where attendees can receive training on how to contribute to WordPress open-source projects. This is a unique opportunity to learn how to give back to the WordPress community and make a real impact on the world&#8217;s most popular content management system.</p>\n\n\n\n<p>The formal conference day on December 10th will feature a diverse range of sessions and workshops, all focused on WordPress. Whether you&#8217;re a beginner looking to learn the basics or an experienced developer seeking advanced insights, there will be something for everyone.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Sponsorship Opportunities:</h2>\n\n\n\n<p>WordCamp Lahore is currently seeking sponsors to help make this event a success. Sponsoring a WordCamp is not just an excellent way to support the WordPress community, but it also provides visibility for your brand among an audience passionate about WordPress.https://lahore.wordcamp.org/call-for-sponsors/</p>\n\n\n\n<p>Each package offers unique benefits, allowing you to choose the level of support that aligns with your goals and budget. If you&#8217;re interested in becoming a sponsor, you can find more information about the packages and their respective benefits on the WordCamp Lahore 2023 website. Just visit this link: <a href=\"https://lahore.wordcamp.org/2023/call-for-sponsors/\">WordCamp Lahore 2023 &#8211; Call for Sponsors</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Don&#8217;t Miss Out:</h2>\n\n\n\n<p>WordCamp Lahore 2023 promises to be an exciting and enriching experience for anyone passionate about WordPress and open-source technologies. Early bird tickets are available, and sponsorship opportunities await those who want to make a difference in the WordPress community.</p>\n\n\n\n<p>Mark your calendar for December 9th and 10th, and be a part of this thriving WordPress community event in Lahore. Get your tickets, explore the sponsorship options, and get ready for a memorable WordCamp!</p>\n\n\n\n<p>For more information and updates, visit the official WordCamp Lahore 2023 website. We look forward to seeing you there!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Oct 2023 14:55:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Abdullah Ramzan\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"Do The Woo Community: Agency Growth, Challenges, Workflow and Team Building with Matt Nelson and Neil Harner\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"https://dothewoo.io/?p=77356\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://dothewoo.io/woocommerce-agency-growth-challenges-workflow-client-focus/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:492:\"<p>Matthew Nelson of FirstTracks Marketing and Neil Harner of Inverse Paradox, share their experiences in growth, workflow and team building.</p>\n<p>&gt;&gt; The post <a rel=\"nofollow\" href=\"https://dothewoo.io/woocommerce-agency-growth-challenges-workflow-client-focus/\">Agency Growth, Challenges, Workflow and Team Building with Matt Nelson and Neil Harner</a> appeared first on <a rel=\"nofollow\" href=\"https://dothewoo.io\">Do the Woo - a WooCommerce and WordPress Builder Podcast</a>	.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Oct 2023 12:23:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"BobWP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"WPTavern: The 2024 State of Open Source Survey Is Now Open\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150592\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wptavern.com/the-2024-state-of-open-source-survey-is-now-open\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1481:\"<p>The Open Source Initiative (OSI), a non-profit organization that plays an important role in the open source ecosystem as stewards of the <a href=\"https://opensource.org/docs/osd\">Open Source Definition (OSD)</a>, has opened its <a href=\"https://www.surveymonkey.com/r/open-source-initiative\">2024 State of Open Source</a> survey. This is the third year OSI has published the survey in collaboration with OpenLogic by Perforce, who has sponsored it in previous years. The organizations will be joined by the Eclipse Foundation for the 2024 edition.</p>\n\n\n\n<p>Both users and contributors to open source software are invited to participate in the survey, but the questions are more geared towards organizations using and building open source software. The survey gathers information on technology trends, how open source is being used, challenges, growth areas, and more. The data will be used in the 2024 State of Open Source Report, which will be freely available on the OpenLogic website in early 2024.</p>\n\n\n\n<p>&#8220;The data collected in this survey shines a light on the importance of tracking the evolution of Open Source licenses, especially at a time when those licenses are changing from OSI-approved to proprietary,&#8221; OSI Executive Director Stefano Maffulli said.</p>\n\n\n\n<p>The survey is open through November 10, and takes approximately 7-10 minutes to complete. All responses will be anonymized and the data will be published under an open source license.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Oct 2023 04:01:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WPTavern: LiteSpeed Cache 5.7 Patches XSS Vulnerability \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150578\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wptavern.com/litespeed-cache-5-7-patches-xss-vulnerability\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2583:\"<p>The <a href=\"https://wordpress.org/plugins/litespeed-cache/\">LiteSpeed Cache plugin</a>, used on more than four million WordPress sites, has patched an XSS vulnerability in version 5.7. The plugin provides all-in-one site acceleration capabilities, server-level caching, and a collection of optimization features. It is compatible with WordPress multisite, and popular plugins like WooCommerce, bbPress, and Yoast SEO, which may contribute to its popularity. </p>\n\n\n\n<p>Wordfence security researcher István Márton discovered the XSS vulnerability and responsibly disclosed it to the LiteSpeed Cache Team on August 14, 2023. The Wordfence <a href=\"https://www.wordfence.com/blog/2023/10/4-million-wordpress-sites-affected-by-stored-cross-site-scripting-vulnerability-in-lightspeed-cache-plugin/\">advisory</a> describes how the vulnerability might make it possible for an attacker to inject malicious scripts:</p>\n\n\n\n<blockquote class=\"wp-block-quote\">\n<p>The LiteSpeed Cache plugin for WordPress is vulnerable to Stored Cross-Site Scripting via the ‘esi’ shortcode in versions up to, and including, 5.6 due to insufficient input sanitization and output escaping on user supplied attributes. This makes it possible for authenticated attackers with contributor-level and above permissions to inject arbitrary web scripts in pages that will execute whenever a user accesses an injected page.</p>\n</blockquote>\n\n\n\n<p>Márton also cautioned that previous versions of WordPress contained a vulnerability that allowed shortcodes supplied by unauthenticated commenters to be rendered in certain configurations. All versions since WordPress 5.9 were subject to this vulnerability and if users aren&#8217;t on <a href=\"https://wordpress.org/news/2023/05/wordpress-6-2-2-security-release/\">a patched version of WordPress</a>, the vulnerability would &#8220;make it possible for unauthenticated attackers to exploit this Cross-Site Scripting vulnerability on vulnerable installations.&#8221; </p>\n\n\n\n<p>LiteSpeed Cache patched the vulnerability in version 5.7, released to WordPress.org on October 10. Although the update has been available for two weeks, only 30% of the plugin&#8217;s user base is running the latest version.</p>\n\n\n\n<p>LiteSpeed Cache users are recommended to update to the latest patched version as soon as possible. Check out the <a href=\"https://www.wordfence.com/blog/2023/10/4-million-wordpress-sites-affected-by-stored-cross-site-scripting-vulnerability-in-lightspeed-cache-plugin/\">advisory</a> from Wordfence for more details and a full technical analysis.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Oct 2023 00:28:33 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"WPTavern: Ollie Dash Plugin Now Available for Ollie Block Theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150508\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wptavern.com/ollie-dash-plugin-now-available-for-ollie-block-theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3324:\"<p>The <a href=\"https://olliewp.com/\">Ollie block theme</a>, created by Mike McAlister and Patrick Posner, now has a companion plugin available called Ollie Dash. The theme made headlines earlier this month after <a href=\"https://wptavern.com/contentious-review-process-leads-ollie-theme-to-remove-innovative-onboarding-features-amid-stagnating-block-theme-adoption\">a contentious WordPress.org review process led its authors to remove the innovative onboarding features</a>. Ollie was approved for WordPress.org but without the time-saving onboarding features its authors initially hoped to include. </p>\n\n\n\n<p>Testing the plugin, it is a night and day difference between having onboarding for a theme with so many patterns and options, versus getting dropped into a new theme with no direction. </p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<img width=\"2582\" height=\"1308\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/Screen-Shot-2023-10-21-at-4.07.23-PM.png\" alt=\"\" class=\"wp-image-150521\" />\n\n\n\n<p>Instead of hunting around for various settings, the plugin helps users get everything set up with just a few clicks. It includes settings for the color palette, brand color, logo, and site icon. </p>\n\n\n\n<p>The wizard also enables fast page creation where users can check a box for any of the full-page designs that they want to be created as pages.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<img width=\"2092\" height=\"1202\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/Screen-Shot-2023-10-21-at-4.21.49-PM.png\" alt=\"\" class=\"wp-image-150522\" />\n\n\n\n<p>One particularly time-saving screen on the onboarding wizard is the one with the homepage settings. Getting the homepage set can be a confusing part of setup for new WordPress users, especially if they don&#8217;t know where to look for the setting.  Ollie Dash allows a user to select the homepage from a dropdown before they even begin customizing the site. </p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<img width=\"2084\" height=\"1208\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/Screen-Shot-2023-10-21-at-4.26.47-PM.png\" alt=\"\" class=\"wp-image-150524\" />\n\n\n\n<p>At the end of the onboarding wizard, users have the option to instantly create and activate a child theme. It&#8217;s not necessary for every website, but is a major time saver for those who intend to further customize the theme&#8217;s code.</p>\n\n\n\n<p>The onboarding includes docs and video resources for getting started, which can be loaded directly inside the wizard without leaving the site.</p>\n\n\n\n<p>McAlister said Ollie Dash will be the foundation for more features his team has in development. They are taking the plugin route as an opportunity to add more functionality than would generally be allowed in a WordPress.org-hosted theme.</p>\n\n\n\n<p>McAlister said he plans to make the plugin available on WordPress.org in the future. There are currently 1,062 plugins awaiting review in the queue today, with a wait time of 87 days for an initial review. In the meantime, Ollie Dash can be <a href=\"https://olliewp.com/download/\">downloaded</a> from the Ollie website and can also be found <a href=\"https://github.com/OllieWP/ollie-dash\">on GitHub</a>. Users will be notified in the dashboard when there is an update.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 21 Oct 2023 20:53:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"BuddyPress: BuddyPress 11.4.0-beta1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=331673\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://buddypress.org/2023/10/buddypress-11-4-0-beta1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4568:\"<p>Hello community!</p>\n\n\n\n<p>We usually build pre-releases for next BuddyPress major versions, this one&#8217;s goal is to make sure we can safely publish our next maintenance release (11.4.0). Why?</p>\n\n\n\n<p>To prepare the release of our next major version (12.0.0), we want to make sure as much as possible WordPress site Administrators acknowledge important informations about it, before upgrading. To do so we exceptionally decided to include a new feature into the 11.4.0 maintenance release, which should be the last 11.0 branch release.</p>\n\n\n\n<div class=\"wp-block-buttons is-horizontal is-content-justification-center is-layout-flex wp-container-1 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-white-background-color has-text-color has-background wp-element-button\" href=\"https://downloads.wordpress.org/plugin/buddypress.11.4.0-beta1.zip\">Test BuddyPress 11.4.0-beta1</a></div>\n</div>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"wp-block-heading\">Introducing a new Admin Notifications center.</h2>\n\n\n<div class=\"wp-block-image\">\n<a href=\"https://buddypress.org/wp-content/uploads/1/2023/10/admin-notifications.png\"><img width=\"1024\" height=\"576\" src=\"https://buddypress.org/wp-content/uploads/1/2023/10/admin-notifications-1024x576.png\" alt=\"Screenshot of the new Admin notifications center\" class=\"wp-image-331674\" /></a></div>\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<p>BP Admin Notifications are important messages from the BP Core Team to all WordPress Site Administrators using the BuddyPress plugin.</p>\n\n\n\n<p>If the BP Notifications component is active, BP Admin notifications are temporarily replacing regular notifications for all members having the Administrator role on the site. As soon as one of the site Administrators has clicked on all Admin Notification&#8217;s &#8220;dismiss&#8221; links or call to action buttons, they&#8217;ll find back their regular notifications.</p>\n\n\n\n<p>BP Admin Notifications will be generated and viewable even if the BP Notifications component is not active.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"wp-block-heading\">What is the expected behavior of this feature we want you to test?</h2>\n\n\n\n<p>We need to make sure the <strong>&nbsp;11.4&nbsp;</strong> BP Admin Notification is generated when you perform an upgrade from a previous BuddyPress version or when you install BuddyPress for the first time using the 11.4.0 release. In other words, on a staging site or locally, we&#8217;d love you to:</p>\n\n\n\n<ol>\n<li>Download and activate the BuddyPress latest stable version (<a href=\"https://downloads.wordpress.org/plugin/buddypress.11.3.2.zip\">11.3.2</a>), then once done, use the Upload Plugin button of your WP Administration&#8217;s  &#8220;Add new&#8221; plugin screen to replace it with the <a href=\"https://downloads.wordpress.org/plugin/buddypress.11.4.0-beta1.zip\">11.4.0-beta1</a> version.</li>\n\n\n\n<li>on a fresh WordPress installation, directly activate the <a href=\"https://downloads.wordpress.org/plugin/buddypress.11.4.0-beta1.zip\">11.4.0-beta1</a> version.</li>\n</ol>\n\n\n\n<p>If for 1 of these 2 scenarios, as an Administrator, you can&#8217;t see the exclamation mark inside the BP Notifications bubble of the WP Admin Bar or if when you click on it you are not reaching the BP Admin notifications center&#8217;s screen as shown in the screenshot above, <a href=\"https://buddypress.trac.wordpress.org/newticket\" target=\"_blank\" rel=\"noreferrer noopener\">please send us a bug report here</a>.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<p>We plan to release BuddyPress 11.4.0 on next Thursday (October 26), please help us respect this plan contributing to testing <a href=\"https://downloads.wordpress.org/plugin/buddypress.11.4.0-beta1.zip\">11.4.0-beta1</a>.</p>\n\n\n\n<p>You can get&nbsp;<a href=\"https://downloads.wordpress.org/plugin/buddypress.11.4.0-beta1.zip\">BuddyPress 11.4.0-beta1</a>&nbsp;in 3 ways :</p>\n\n\n\n<ul>\n<li><a href=\"https://downloads.wordpress.org/plugin/buddypress.11.4.0-beta1.zip\">Download the beta here (zip file)</a>.</li>\n\n\n\n<li>Check out our SVN repository:&nbsp;<code>svn co https://buddypress.svn.wordpress.org/branches/11.0</code></li>\n\n\n\n<li>Clone our read-only Git repository:&nbsp;\n<ul>\n<li><code>git clone git://buddypress.git.wordpress.org/ buddypress</code></li>\n\n\n\n<li><code>git checkout 11.0</code></li>\n</ul>\n</li>\n</ul>\n\n\n\n<p>Thanks in advance for your help <img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f64f.png\" alt=\"🙏\" class=\"wp-smiley\" />.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 21 Oct 2023 06:50:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mathieu Viet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"WPTavern: Elementor Postpones DreamWeb Event\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150480\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wptavern.com/elementor-postpones-dreamweb-event\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2470:\"<p><a href=\"https://elementor.com/\">Elementor</a>, the most popular website builder plugin for WordPress with more than 5 million active installations, has postponed its upcoming <a href=\"https://elementor.com/pages/dreamweb/\">DreamWeb</a> event. The Israel-based company was set to host its first in-person conference  on November 2, in Berlin, Germany, but has postponed it due to the circumstances following Hamas&#8217; terrorist attack on Israel on October 7.</p>\n\n\n\n<p>In 2022, Elementor hosted more than 400 meetup events. DreamWeb was set to be a one-day event at the <a href=\"https://alte-muenze-berlin.de/\">Alte Münze</a> venue with keynotes, knowledge-sharing, activities, networking opportunities, and an evening gala. Early bird tickets went on sale for 99€ in early October.</p>\n\n\n\n<p>The event was postponed shortly after the attacks, with a statement on the DreamWeb page:</p>\n\n\n\n<blockquote class=\"wp-block-quote\">\n<p>At Elementor we can’t ignore the devastation that has been experienced in Israel over the last few days. We’ve decided to postpone the Dream Web event and announcement of the ShowOff winner, until we return to calmer days.&nbsp;</p>\n\n\n\n<p>We stand in solidarity supporting family, friends and fellow citizens.</p>\n</blockquote>\n\n\n\n<p>Many of the company&#8217;s employees are based in Israel and have friends and family affected by the ongoing conflict. </p>\n\n\n\n<p>&#8220;Guided by our values of putting people first, we are diligently taking every measure to ensure the well-being of our employees in Israel, all the while operating to continue our global work with and for Web Creators,&#8221;  Elementor representatives <a href=\"https://www.facebook.com/elemntor/posts/634991428782709:1405926339959966?__cft__[0]=AZVZJVxprAGYm2s5mHtlJUr-PEOwwzScmGpg2TYLgbzKArtxcBHcZpgHPXW4uNW7zSlR5bBPDtIir6NMIG8tY5z_sg55Kxnh80uwvIY2R9cuMYStNBWEBgE6azpYGwwlWrhj24Bnqgc6jNknY8Jx_479p67M7KoLTp6TwhIY7ZnPx7D8COpVs8R2e_X8WAuKpLY&__tn__=%2CO%2CP-R\">wrote</a> on the product&#8217;s Facebook account on October 15.</p>\n\n\n\n<p>&#8220;Some of us are hiding with children in shelters as rockets are fired on our cities, and some managed to escape from the Hammas terrorists in the south of Israel to safer places. All of us, unfortunately, know someone who was murdered, or kidnapped.&#8221;</p>\n\n\n\n<p>The DreamWeb event has been postponed indefinitely, and Elementor stated that &#8220;a new date will be announced as peaceful days return.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Oct 2023 21:39:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"Do The Woo Community: Do the Woo Podcast Hits Episode 400\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"https://dothewoo.io/?p=77171\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://dothewoo.io/do-the-woo-podcast-hits-episode-400/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:401:\"<p>As we hit episode 400, Ronald chats with BobWP with a look back and into the next few months with the Do the Woo podcast.</p>\n<p>&gt;&gt; The post <a rel=\"nofollow\" href=\"https://dothewoo.io/do-the-woo-podcast-hits-episode-400/\">Do the Woo Podcast Hits Episode 400</a> appeared first on <a rel=\"nofollow\" href=\"https://dothewoo.io\">Do the Woo - a WooCommerce and WordPress Builder Podcast</a>	.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Oct 2023 10:23:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"BobWP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: State of the Word 2023 Will Broadcast Live from Madrid on December 11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150447\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wptavern.com/state-of-the-word-2023-will-broadcast-live-from-madrid-on-december-11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1494:\"<p>WordPress co-founder Matt Mullenweg will be delivering his annual State of the Word (SOTW) address <a href=\"https://wordpress.org/news/2023/10/state-of-the-word-2023/\">from Madrid</a> before a live audience on December 11, at 15:00 UTC. </p>\n\n\n\n<p>Last year&#8217;s event took place in New York City with attendance by invitation only, and 2023 will mark the first year the SOTW will take place from a city outside North America. This change may be a deliberate recognition of the majority (<a href=\"https://wordpress.org/about/stats/\">51.4%</a>) of WordPress users who run the software in a non-English language. WordPress adoption has the most potential for growth in emerging markets and locales where Spanish, Arabic, and Chinese languages are spoken. </p>\n\n\n\n<p>Traditionally, Mullenweg has used the State of the Word address to make important announcements, share progress, galvanize the contributor base, and recast the vision for WordPress. As the Gutenberg project is now into Phase 3 focusing on collaboration, I would not be surprised to see a demo of functionality that users can expect to see in 2024.</p>\n\n\n\n<p>Live attendees will need to reserve a ticket for their seats at the in-person event. A live stream will be available for the vast majority of the WordPress world who will not be able to attend. As in previous SOTW events, anyone will be able to submit questions for the live Q&amp;A portion. The team managing the event plans to release more details in November.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Oct 2023 03:58:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WPTavern: WordPress Relaunches Showcase Powered by Blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150376\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wptavern.com/wordpress-relaunches-showcase-powered-by-blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4711:\"<p>WordPress.org has launched the redesign of the <a href=\"https://wordpress.org/showcase/\">Showcase</a>, with new block-based components, through a collaboration between the Design, Marketing, and Meta teams that began last year. It&#8217;s part of a larger effort to modernize WordPress.org and comes two months after the project relaunched a <a href=\"https://wordpress.org/news/2022/08/a-new-wordpress-org-homepage-and-download-page/\">new design for the WordPress.org homepage and Download page</a>.</p>\n\n\n\n<p> The updated Showcase allows visitors to browse via categories and tags and offers a significantly improved experience on mobile.  It included 101 sites at launch, which can be filtered by five categories: Business, Community, Creative, Publication, and Store, along with nearly half a dozen tags. Visitors can also select from three flavors: WordPress, WordPress Enterprise, and Multisite.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<img width=\"1432\" height=\"1196\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/Screen-Shot-2023-10-18-at-11.08.40-PM.png\" alt=\"\" class=\"wp-image-150379\" />\n\n\n\n<p>The featured listing at the top of the Showcase randomly updates on refresh. Individual listings in the showcase include screenshots of both desktop and mobile views, along with a brief overview of why the site was included. The background for the screenshots is automatically matched to complement the website&#8217;s main colors.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<img width=\"1430\" height=\"1164\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/Screen-Shot-2023-10-18-at-11.27.45-PM.png\" alt=\"\" class=\"wp-image-150382\" />\n\n\n\n<p>The showcase was designed to inspire visitors and show them what WordPress can do. It contains a diverse representation of some of the best WordPress-powered sites on the web, including the <a href=\"https://wordpress.org/showcase/meta-newsroom/\">Meta Newsroom</a>, <a href=\"https://wordpress.org/showcase/harvard-university/\">Harvard University</a>, <a href=\"https://wordpress.org/showcase/nasa/\">NASA</a>, <a href=\"https://wordpress.org/showcase/rolling-stone/\">Rolling Stone</a>, <a href=\"https://wordpress.org/showcase/usain-bolt/\">Usain Bolt</a>, <a href=\"https://wordpress.org/showcase/the-white-house/\">The White House</a>, among many other high profile web properties. The showcase also includes some lesser known, beautifully designed sites, featuring art and creativity across a wide range of disciplines, highlighting the endless possibilities and versatility of the WordPress platform. </p>\n\n\n\n<img width=\"2402\" height=\"1088\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/Screen-Shot-2023-10-19-at-6.22.19-PM.png\" alt=\"\" class=\"wp-image-150435\" />\n\n\n\n<p>This new implementation of the showcase is powered by blocks, built on a <a href=\"https://github.com/WordPress/wporg-showcase-2022\">custom child theme</a> for WordPress.org&#8217;s <a href=\"https://github.com/WordPress/wporg-parent-2021\">parent block theme</a>.</p>\n\n\n\n<p>&#8220;This structure allows the site to take advantage of Core functionality like Group and Query blocks as well as custom blocks explicitly built for WordPress.org,&#8221; Automattic-sponsored WordPress core contributor Nick Diego said.</p>\n\n\n\n<p>&#8220;The Showcase also introduces new block-based functionality and several components that will be used elsewhere on the WordPress.org network. Improvements, such as the standardization of layout and spacing variables (<a href=\"https://github.com/WordPress/wporg-parent-2021/issues/105\">#105</a>) and the new Query Filter block (<a href=\"https://github.com/WordPress/wporg-mu-plugins/pull/441\">#441</a>), will make it easier to update other areas of WordPress.org to blocks.&#8221;</p>\n\n\n\n<p>The updated showcase is an invaluable resource for agencies and freelancers who are building sites for clients and need to demonstrate the capabilities of WordPress to scale and serve any industry. It&#8217;s also still <a href=\"https://wordpress.org/showcase/\">open for new submissions</a>, which meet the following criteria:</p>\n\n\n\n<ul>\n<li>Using WordPress in a unique or innovative way</li>\n\n\n\n<li>Representing a notable organization, government entity, or corporation as an official blog or website</li>\n\n\n\n<li>Using modern WordPress</li>\n</ul>\n\n\n\n<p>Contributors are working to streamline and <a href=\"https://github.com/WordPress/wporg-showcase-2022/issues/223\">automate</a> the submission process, although it will still include a manual review.  As this process improves, the showcase will become easier to maintain than it has been in previous years.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2023 23:15:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"WordPress.org blog: State of the Word 2023 – Save the Date\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=16116\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/news/2023/10/state-of-the-word-2023/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1591:\"<img width=\"1024\" height=\"683\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/10/Web-SOTW-Image-1200x800-2.png?resize=1024%2C683&ssl=1\" alt=\"Madrid State of the Word 2023, Dec 11, 2023 at 15:00 UTC, Madrid, Spain\" class=\"wp-image-16208\" />\n\n\n\n<p>It’s time to save the date, December 11, 2023, for this year’s State of the Word!</p>\n\n\n\n<p>State of the Word is the annual keynote address delivered by the WordPress project’s co-founder, <a href=\"https://ma.tt/\">Matt Mullenweg</a>. Every year, the event shares reflections on the project’s progress and aspirations for the future of open source.&nbsp;</p>\n\n\n\n<p>For the first time, State of the Word will take place outside North America–this time with the Spanish community in <strong>Madrid, Spain</strong>. The event will be live-streamed to WordPress enthusiasts around the globe via WordPress.org social media platforms.&nbsp;</p>\n\n\n\n<p>Join Matt as he provides a retrospective of 2023, demos the latest in WordPress tech, and comments on the future of the WordPress open source project.</p>\n\n\n\n<p>Details including how to reserve a ticket for the in-person event, the link to watch the live stream, and information on how to submit questions for the Q&amp;A portion will be provided in November and shared on <a href=\"https://wordpress.org\">WordPress.org</a> and affiliated social media accounts.</p>\n\n\n\n<p></p>\n\n\n\n<p><em>Thanks to <a href=\"https://profiles.wordpress.org/rmartinezduque/\">Reyes Martínez</a> and <a href=\"https://profiles.wordpress.org/cbringmann/\">Chloé Bringmann</a> for reviewing this post.</em> </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2023 17:45:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Dan Soschin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"Gutenberg Times: Gutenberg Changelog #91 – WordPress 6.4, Gutenberg 16.8 and what’s in the works\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://gutenbergtimes.com/?post_type=podcast&p=26071\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"https://gutenbergtimes.com/podcast/gutenberg-changelog-91-wordpress-6-4-gutenberg-16-8-and-whats-discussed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:48195:\"<p>Joni Halabi and Birgit Pauli-Haack discuss WordPress 6.4, Gutenberg 16.8 and what’s been worked on outside current releases</p>\n\n\n\n<p><a href=\"https://gutenbergtimes.com/podcast/gutenberg-changelog-69-gutenberg-releases-wordpress-6-0-1-the-create-block-theme/#shownotes\">Show Notes</a> / <a href=\"https://gutenbergtimes.com/podcast/gutenberg-changelog-69-gutenberg-releases-wordpress-6-0-1-the-create-block-theme/#transcript\">Transcript</a></p>\n\n\n\n<ul>\n<li>Music:&nbsp;<a href=\"https://soundcloud.com/xirclebox\">Homer Gaines</a></li>\n\n\n\n<li>Editor:&nbsp;<a href=\"https://www.linkedin.com/in/sandy-reed/\">Sandy Reed</a></li>\n\n\n\n<li>Logo:&nbsp;<a href=\"https://markuraine.com/\">Mark Uraine</a></li>\n\n\n\n<li>Production:&nbsp;<a href=\"https://icodeforapurpose.com\">Birgit Pauli-Haack</a></li>\n</ul>\n\n\n\n<p class=\"has-larger-font-size\" id=\"shownotes\"><strong>Show Notes</strong></p>\n\n\n\n<p><strong>Joni Halabi</strong>, senior developer at Georgetown University</p>\n\n\n\n<ul>\n<li><a href=\"https://gutenbergtimes.com/live-q-a-design-systems-and-theme-json/\">Live Q &amp; A: Design Systems and theme.json</a></li>\n\n\n\n<li><a href=\"https://developer.wordpress.org/news/2023/02/static-vs-dynamic-blocks-whats-the-difference/\">Static vs. dynamic blocks: What’s the difference?</a></li>\n\n\n\n<li>Book: <a href=\"https://jhalabi.com/book/\">Sweet Little You by Joni Halabi</a></li>\n\n\n\n<li>X (former Twitter) <a href=\"https://twitter.com/jonihalabi\">@jonihalabi</a></li>\n\n\n\n<li>WordPress <a href=\"https://profiles.wordpress.org/thatdevgirl/\">@thatdevgirl</a></li>\n\n\n\n<li><a href=\"https://talks.jhalabi.com/svg-in-wordpress/\">Slides: Creating Accessible SVG</a> (WP Accessibility Day) (Recording will be <a href=\"https://www.youtube.com/@WPA11yDay\">published in YouTube</a> soon) </li>\n</ul>\n\n\n\n<h2 class=\"wp-block-heading\">What&#8217;s released</h2>\n\n\n\n<p><strong>First Dev Notes for WordPress 6.4 </strong></p>\n\n\n\n<ul>\n<li><a href=\"https://make.wordpress.org/core/2023/10/15/introducing-block-hooks-for-dynamic-blocks/\">Introducing Block Hooks for dynamic blocks</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/16/editor-components-updates-in-wordpress-6-4/\">Editor Components updates in WordPress 6.4</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/16/new-registerinsertermediacategory-api/\">New `registerInserterMediaCategory` API</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/16/wordpress-core-is-now-using-playwright-for-all-browser-based-tests/\">WordPress core is now using Playwright for all browser-based tests</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/16/introducing-admin-notice-functions-in-wordpress-6-4/\">Introducing admin notice functions in WordPress 6.4</a></li>\n</ul>\n\n\n\n<p><a href=\"https://wordpress.org/news/2023/10/wordpress-6-4-release-candidate-1/\">WordPress 6.4 Release Candidate 1</a></p>\n\n\n\n<p><strong>Gutenberg 16.8</strong></p>\n\n\n\n<ul>\n<li><a href=\"https://make.wordpress.org/core/2023/10/11/whats-new-in-gutenberg-16-8-11-october/\">What’s new in Gutenberg 16.8 (11 October)</a></li>\n\n\n\n<li><a href=\"https://wptavern.com/gutenberg-16-8-makes-cover-block-smarter-adds-experimental-pages-list-in-site-editor\">Gutenberg 16.8 Makes Cover Block Smarter, Adds Experimental Pages List in Site Editor</a></li>\n</ul>\n\n\n\n<p><strong>What&#8217;s discussed and worked on</strong></p>\n\n\n\n<ul>\n<li><a href=\"https://github.com/WordPress/gutenberg/pull/53788#top\">Site editor: 🥝 Media library proof of concept&nbsp;</a></li>\n\n\n\n<li><a href=\"https://github.com/WordPress/gutenberg/pull/44214#top\">Introduce experimental form &amp; inputs blocks to allow building basic forms</a></li>\n\n\n\n<li><a href=\"https://github.com/WordPress/gutenberg/pull/54494#top\">Update the default JSX pragma to React instead of @wordpress/element</a></li>\n\n\n\n<li><strong>The Gutenberg repo has now a new label:</strong><a href=\"https://github.com/WordPress/gutenberg/labels/%5BFeature%5D%20Data%20Views\"> Data Views</a></li>\n</ul>\n\n\n\n<p class=\"has-large-font-size\">Stay in Touch</p>\n\n\n\n<div class=\"wp-block-group is-layout-flow wp-block-group-is-layout-flow\"><div class=\"wp-block-group__inner-container\">\n<ul>\n<li>Did you like this episode? <a href=\"https://lovethepodcast.com/gutenbergchangelog\"><strong>Please write us a review </strong></a></li>\n\n\n\n<li>Ping us on Twitter or send DMs with questions. <a href=\"https://twitter.com/gutenbergtimes\">@gutenbergtimes </a>and <a href=\"https://twitter.com/bph\">@bph</a>.</li>\n\n\n\n<li><em>If you have questions or suggestions, or news you want us to include, send them to <a href=\"mailto:changelog@gutenbergtimes.com\">changelog@gutenbergtimes.com</a>. </em></li>\n\n\n\n<li><em>Please write us a review on iTunes! <a href=\"https://gutenbergtimes.com/itunes/\">(Click here to learn how)</a></em></li>\n</ul>\n</div></div>\n\n\n\n<p class=\"has-large-font-size\" id=\"transcript\"><strong>Transcript</strong></p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Hello and welcome to our 91st episode of the Gutenberg Changelog podcast. In today&#8217;s episode, we will talk about WordPress 6.4 a little bit and Gutenberg 16.8, and then we also will talk about what&#8217;s already been worked outside the current releases. I&#8217;m your host, Birgit Pauli-Haack, curator at the Gutenberg Times and a full-time core contributor for the WordPress Open Source Project, sponsored by Automattic&#8217;s Five for the Future Program. Today, my co-host and special guest is Joni Halabi. She is not a stranger to the Gutenberg Times&#8217; subscribers. She&#8217;s a senior developer at Georgetown University and has been building blocks since forever.&nbsp;</p>\n\n\n\n<p>Our recent adventure together was the Gutenberg Life Q&amp;A with David Bowman and Alec Geatches, and a fascinating discussion about design systems and how WordPress slowly becomes one. Joni is also the author of a great article on the WordPress developer blog explaining the difference between a static and a dynamic block. A lot of people have read this, so you made an impact there definitely, Joni. It&#8217;s my great pleasure to have you on the show tonight, Joni. Welcome. How are you today?&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: I&#8217;m doing great, thank you. I&#8217;m really excited to be on this show.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Awesome, awesome. Well, we can go right in there.&nbsp;</p>\n\n\n\n<h3 class=\"wp-block-heading\">Announcements</h3>\n\n\n\n<p>The first developer notes for 6.4 have been published on the Make blog, and one is for a new extensibility feature for the block editor. That&#8217;s about the block box. It&#8217;s only for dynamic blocks and it&#8217;s only the first iteration, though there are some, but it&#8217;s actually the first time that you can, as a developer, automatically insert a block next to another block. You can decide, okay, for every comment block, I want a like button in there. You create the like button block and then you say, &#8220;Okay, put it on every comment.&#8221; The user will be able to see that in the sidebar, but it will be automatically added, but a user can switch them on and off if they want to. So, that&#8217;s definitely for developers to dive in.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi:</em> Yeah, I just wanted to say I am particularly excited about this feature. I just recently saw that this was being added, and it&#8217;s probably no secret that I am a very big advocate of dynamic blocks. So, many of the blocks that we&#8217;ve created over at Georgetown are dynamic, and I see so many use cases for that. I think it&#8217;s going to give our users a lot of flexibility. I think it&#8217;s going to give users overall across all WordPress sites, so much flexibility and different options. I can&#8217;t wait to see where this is going. I know that this is a first iteration.</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: It still has some restrictions on there. Right now, it&#8217;s only working for template post types, template parts or patterns. So, it&#8217;s more usable for theme developers or those who want to change the front end a little bit and add it there. It&#8217;s a great feature to add a little shopping cart in the header of a template, shopping cart block. Yeah, there are quite a few other use cases. I could think about the like button going everywhere.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Oh, yeah.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Another use case could be to have a little anchor link on every paragraph, so you can share it everywhere and not have to share the full page, but just the paragraph thing if you want to cite it on a different blog post or something like that. Yeah, it would be helpful. I know a few bloggers actually do that in their self-built blog site.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Yeah.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Do you see any other use cases off the top of your head?&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Oh, goodness. Thinking about it, I think you gave some really, really great examples. Yeah, I definitely see a lot for e-commerce usage. Maybe even have a related products block going along that e-commerce theme.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: That&#8217;s a good one.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Yeah, I think people can get really creative with this one.</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Yeah, I think so too. Yeah, so check it out. We will have the link in the show note and with all the stuff in there.&nbsp;</p>\n\n\n\n<p>Then the editor components updates, that&#8217;s a roundup post of all the different changes in the component&#8217;s package of the editor. It has nothing to do with the WordPress components, which are totally different. There are 60 of those, but that&#8217;s different. So, it talks about the new props for the modal component, making a popup slot available in the sidebar, rewriting tooltip and tab panel to use a better accessibility library for that, improving size consistency, all different.&nbsp;</p>\n\n\n\n<p>Those are the few off the top of my head or top of the list of those. Then there is a very nice new feature, it&#8217;s called the registerInserterMediaCategory API and Nick Tsekouras published that about a new hook or API. Yeah, depends on what it is, how you would say it. That is that you can add another category in the inserter for the image block.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: I love categorization. I think this is going to really enable people to better organize their media or organize their images. I don&#8217;t know too much about this, but this one looks like a very, very useful one.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: It definitely comes with an example code that actually adds a new open verse category to it, but it limits the search to exclude some sources. It&#8217;s just an example of that when people search in the open source category, open verse category. But other than that, there are some great comments in the example code and check it out.&nbsp;</p>\n\n\n\n<p>Then the next one that I wanted to mention is WordPress Core, and both Gutenberg and Core now are using Playwright for all browser-based unit tests. There had been a great effort to rewrite many of the unit tests to Playwright and downsize the Puppeteer exposure of the code base.&nbsp;</p>\n\n\n\n<p>It&#8217;s not done yet, but it&#8217;s definitely progressing very fast. Playwright just has a few advantages over Puppeteer, and most of them have to do with the browser testing. So, visual regression testing is a little bit more stable for both the Core and the Gutenberg.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: The article on this, if anybody is interested, there&#8217;s a link to Playwright documentation. There is a link to migrating tests, so that&#8217;s definitely something that&#8217;s worth checking out. If you&#8217;re in that business of writing automated tests, then it looks like it&#8217;s going to be much more stable now.</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Yeah, but we still will see some flaky tests coming through the issue tracker, but I think it&#8217;s one of the oddities of the Gutenberg repo that you see flaky tests coming up and then they&#8217;re gone again because it has run through it.&nbsp;</p>\n\n\n\n<p>Then there&#8217;s also a new admin notice function in WordPress 6.0 and Colin Stewart wrote the death note for it with new functions get admin notice and then the parameters for it and the filters and the actions and example code for that and also how to create a collection of notices so they can be output at once.&nbsp;</p>\n\n\n\n<p>I&#8217;m not sure it&#8217;ll offset what many people see in the WordPress Admin. Right now, that is a page long admin notices for something, if that offsets that, but I think a lot of people were working on it for several years. So, I think that is really cool that it&#8217;s coming in now. Right now, I think it&#8217;s not mandatory to use.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Yeah, I think it&#8217;s going to make it easier for plugin authors to create admin notices. So, for example, if your plugin is introducing a breaking change or if your plugin requires a database update, things like that, I see a lot of those notices come across.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Yeah, no, it&#8217;s definitely raising the whole field for plugin extenders. So, this and many, many more. There are many more dev note, not many, but I would say six or seven additionally being worked on for the field guide of the release.&nbsp;</p>\n\n\n\n<h3 class=\"wp-block-heading\">WordPress 6.4</h3>\n\n\n\n<p>Just an update on WordPress 6.4, October 17th is the day of release candidate one and that&#8217;s also the deadline for the field guide. We all know if it weren&#8217;t for the last minute, nothing would get done. So, also, the death notes will come in at the last minute tomorrow to get into the field guide.&nbsp;</p>\n\n\n\n<p>People, if you haven&#8217;t tested your theme plugin or sites with a new release, now is the time. The final release is only three weeks away, and that&#8217;s only three weeks to fix things if something doesn&#8217;t work right. Not every plugin or theme developer is that. Best ones are of course updating their plugins and the themes ahead of time, but you definitely need to make sure.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi:</em> Yes, super, super important. Use that beta test or plugin and test, test, test.</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Test, test, test. I wanted to give a shout-out to a plugin called Site Health and Troubleshooting, because that plugin has saved my bacon many, many times when I was working with clients for our agency. It comes from Core developers and is a switch. Remember when you want to troubleshoot something and support says, &#8220;Did you disable all plugins and themes?&#8221; Yeah, how do you do that on a live site? It&#8217;s really hard and this plugin to the rescue, because you can as an admin switch off all plugins and themes at once without affecting the front end of your website. It&#8217;s really the best plugin testing tool ever. You get all the information from the Site Health features, and then you can enable each theme or plugin one at a time without affecting the front page. You see where the error comes in.&nbsp;</p>\n\n\n\n<p>Within minutes, most of the time, you figure out which plugin is the culprit and then get connected with the plugin support of that plugin and to make it. So, Site Health and Troubleshooting, the troubleshooting part isn&#8217;t a plugin. Site Health is built into WordPress. So, if you run into trouble, especially site owners that have no technical knowledge whatsoever, it&#8217;s really hard to disable all the plugins without offsetting this live site. Who does that? But yeah, I did for a while.</p>\n\n\n\n<p><em>Joni Halabi</em>: Yeah, and not everybody is lucky enough to have a staging site, for example. I had never heard of this plugin, but I&#8217;m writing that down. I&#8217;m going to check that out.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Of course, there will be a link in the show notes for everyone to check it out and have a better life with updating any plugins as well as themes. Yeah, so that&#8217;s my spiel around 6.4. It was a short release cycle. There were only five Gutenberg plugin releases between 6.3 and 6.4. So, that&#8217;s only half of what other major WordPress releases had before. So, 6.2 had 10 and 6.3 had 10 too, 6.4 is only five. But also, we have very early in the year and I think over all the times when we do major plugin releases during Christmastime or holiday time. So, thank God for that, but that&#8217;s why there&#8217;s also not so many new features in the version.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Yeah, that makes sense. Yeah, it did feel fairly light. I was surprised it was coming so quickly. But yeah, no, it has been about that time.&nbsp;</p>\n\n\n\n<h3 class=\"wp-block-heading\">What’s Released &#8211; Gutenberg 16.8</h3>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Yeah. Otherwise, if you do five more Gutenberg cycles, 16.8 was released at October 11. So, you would go right into the holiday time with your release, especially with the major part of the release, which is getting everything ready for beta and then getting every documentation death note written for release candidate one. So, I think this is a better way on clearing out the year, which brings us to what&#8217;s released in Gutenberg. Gutenberg 16.8 came out. Vicente Canales released it on October 11. There&#8217;s also a minor release, 16.8.1 available now, and it mainly contains its fixes and improvements that were necessary after WordPress 6.4 beta testing.&nbsp;</p>\n\n\n\n<p>Out of the 160 PRs, still a big release. 49 were backport to the WordPress 6.4 beta releases. So, there are definitely additional bug fixes in that release. Of course, we have the show notes for the release post that Vicente published, but we go through the show notes. There is one new feature that I wanted to point out, and that is that when you edit pages in the site editor, it now has a template toggle to show the template. The site editors in 6.3 is now also the place where you can edit your content on pages or edit the page template and now you have a toggle in that. So, it&#8217;s easier and accessible. But yeah, I saw some of the feedback coming back from the call for testing that Anne McCarthy did with the site editor.&nbsp;</p>\n\n\n\n<p>There&#8217;s still some really confusion in, &#8220;When are we editing content and when are we adding template?&#8221; There&#8217;s still something that confuses people, including people who do content editing every day and still get confused. Where am I now and what am I doing? So there&#8217;s still something to be had about that.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Yeah, I can see that. There are a lot of things that we call editors within the scope of WordPress. So, I mean, there&#8217;s the editor, the site editor, the post editor. Editor is a loaded word. I think it&#8217;s really going to come down to the UI of all of these editing structures that we have.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Then you have the person editor, the editor with the capabilities of editing stuff. So, we use the same word for a lot of things. It&#8217;s confusing and you always need to figure out the context in which you are talking about, but I saw in Gutenberg, there is actually the effort to streamline the post editor with the site editor and the widget editor and all that, the navigation editor. They&#8217;re all coming into the same iframe and have now almost all the same features with a sidebar, with a list view. So, I think that the efforts are really good to streamline those interfaces.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Yeah, for sure. There&#8217;s so much going on right now and I&#8217;m really looking forward to that effort being completed because then I think that&#8217;s the point where we&#8217;re going to get to true full site editing where everything is just on the same screen.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Right? Yeah.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: That&#8217;s going to be a good day.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Yeah. Yeah. I&#8217;m never sure if we will ever get to the completion part. Well, this is a web. Yeah, you need to let it go. Yeah. There is no perfect though. There is no complete. It&#8217;s all in flux. Yeah.</p>\n\n\n\n<p><em>Joni Halabi</em>: It&#8217;s an evolution. Yeah.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Yeah. So, what&#8217;s next?&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: So the next, there are a number of updates in the block library, and the first one that I&#8217;d like to call out is one about the footnotes. So, the footnotes now using the Core&#8217;s meta revisioning, if it&#8217;s available, which footnotes in general is a very, very interesting new feature that I really want to start diving into. But yeah, this one is specifically in terms of making sure that those revisions stay in line with what&#8217;s going on with Core.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: The new feature, you&#8217;re thinking about footnotes or you&#8217;re thinking about meta revisions?&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Oh, footnotes.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Okay.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: I&#8217;m very hard focused, but yeah, no, footnotes. I think footnotes are going to be really great, especially in terms of the blogging aspects of people&#8217;s sites. I have makeshift footnotes in the posts on my own site, so streamlining the ability to create footnotes like this is….</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Especially with academic settings. Yeah, academic settings, yeah. It&#8217;s really important. Also, when you&#8217;re citing other third sources, you cannot always link from the&#8230; I think it&#8217;s easier to put it in footnotes for the reader than getting bogged down and following the link and missing the rest of the post when you link-</p>\n\n\n\n<p><em>Joni Halabi</em>: Exactly.</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: &#8230; in between. Yeah.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Yeah, that and annotations too. I tend to write and I also want to annotate my work. I don&#8217;t want to necessarily lead my reader down the same rabbit hole that I am in when I&#8217;m writing the post, but if they want more information, yes, please go down to the footnotes. Take a look at this rabbit hole that I have created and then please go back to my main points.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Yeah, but footnotes are stored in post meta, but there has never been a revision feature for post metadata and that&#8217;s why it&#8217;s that particular PR phrased that way. So, it uses the meta revision once available if it&#8217;s available, and there is a track ticket that the meta revisions actually are coming into 6.4. So, it&#8217;s what comes first kind of thing, but they figured it out in that. Yeah. So, the next part I wanted to point out is adding design tools to as many blocks as possible is on the way. The login, logout block now has spacing support, which is really helpful. So, you don&#8217;t have to use the spacer anymore. You can just do it through the block as well, block sidebar.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Yup, and then the next one is being able to set a custom color when applying an initial background image. So, I love anything that lets somebody set a custom color, because then you can really control the accessibility of that background color in case your image fails for whatever reason. You can default to that custom color and it maintains the accessibility of the page. So, if your text is white and you have a dark background image, for example, then for whatever reason you&#8217;re on a poor connection, for whatever reason, the image doesn&#8217;t load, you&#8217;re not stuck with a page that&#8217;s showing white text on top of a white background because nobody can read that. Being able to set that custom color to be that fallback for the image that hopefully loads but might not.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: I think one of the features here is also that it&#8217;s actually automatically detecting the background of the image that you load and setting it automatically, so you don&#8217;t have to think about it, because I wouldn&#8217;t think about that accessibility piece unless somebody points it out to me. Oh yeah, you&#8217;re right. Yeah, I should have set a custom color, but doing it automatically I think is one of those great features that you don&#8217;t have to think about and it really supports accessibility without making a fuss about it.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Yeah, absolutely. Especially if it&#8217;s right on that cusp where if you are a fully cited user, you might be able to read that text and you might not realize, &#8220;Oh wait, this red text on a blue background, I can read it, but maybe somebody else can&#8217;t.&#8221; Yeah, I love automation like that.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Yeah. So, the next thing is default suggested links to pages. So, that&#8217;s in context of external links. So, that&#8217;s a very interesting diagram in the PR that makes me think, &#8220;Is that too complicated or is that very easy?&#8221; It&#8217;s mainly for the navigation block. When you have a third party link, it suggests that. What does it do?&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: So what my takeaway from this was that I actually had a really hard time reading this diagram that&#8217;s in here, because there is a lot going on, but it seems like the suggestions that were originally coming up in the navigation lock were just everything, post pages, what have you. It seems that they are limiting that to only pages, instead of posts, which I think narrows the scope. I like this narrowing of the scope, because when you&#8217;re creating a navigation block, you&#8217;re more likely to want to link to a more evergreen page than to a post that might be fresh now, but might be out of date in six months or a year or what have you. That&#8217;s not necessarily something you want in your navigation. So, narrowing that scope I think makes it a little bit easier to find links.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Yeah, thank you so much for jumping in there. I was drawing a blank. Yeah.</p>\n\n\n\n<p><em>Joni Halabi</em>: Yeah, absolutely.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: The navigation in terms of posts, you probably would link more to category pages where a list of posts on a certain topic are there. The narrowing down of the scope is really helpful for the user there. Yeah, absolutely. Yeah. The next one I&#8217;m really happy about because now I get a confirmation when I move a post to trash.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: We have had so many accidental deletions of the homepage.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: I was going through the developer notes and somehow I had a post published that was previously by accident deleted, came back from trash, and then had trashed in the permanent link. So, it was really, &#8220;What?&#8221; So I needed to just delete the permanent link and then it would automatically create a normal link, but it was kind of, &#8220;Huh? Why would that be?&#8221; So having a confirmation yes or no, do you really want to trash it, because it had so many ramifications to rectify that situation again. Yes, it was really hard.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: So the next one is it&#8217;s titled add template replace flow to template inspector. What it really boils down to is it looks like there is a change to just the way that you replace a template when you&#8217;re editing a page. When I was diving a little bit deeper into this, I feel like this is maybe a first pass or that there are some more passes of this to come, because I did see some comments that the UI could be streamlined a little bit more than it is, but there&#8217;s a great video that demonstrates this, where you are on the page editor.&nbsp;</p>\n\n\n\n<p>You can go and replace a template and then it brings you to this modal where you can choose whatever template that you want. It gives you a bunch of selections. You can choose one and your page just updates to that new template and then you can just go about your day. I recommend checking that out. It might be something, especially if you&#8217;re heavily using templates, something to keep an eye on for future updates as well.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: So before it was just a dropdown box in the site bar for the pages, and now it opens up a modal. So, you actually can preview the template that you would associate it with a page if you want to change it. So, I think that&#8217;s a really good way to think about templates that &#8220;Oh, I can reorganize the content on this page by just changing another template.&#8221; I get a preview on how that&#8217;s going to look because we are all about avoiding that piece where we say safe and pray. I think Helen Hou-Sandi uses it a lot. That&#8217;s the previous way to do editing, is you do something and then you need to look at frontend how it looks, and the block editor is all about what you see is what you get.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Before I heavily relied on preview, which some of the previous updates to the previous functionality I was very thankful for.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Oh, yeah. Then the next one were updates in the block library. The search block got some enhancements and one is to allow the space for the input field only when the form expands and not when it&#8217;s collapsed. That was always a little bit hard to place. Then the alignment and the icon button got a little correction on the width, so it looks a little bit more streamlined. The search block is an odd block. I really liked it, but it&#8217;s always a little harder for me to add it to a navigation block definitely. But even if you want to have it standalone on top of your blog post or something like that on a template, it&#8217;s always a little bit harder to organize, I think.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi:</em> Yeah, I can see that. So, the next changeup is in the site editor, and it&#8217;s something regarding the template parts. So, basically, we are no longer displaying the navigation section in the template parts details when the menu is missing, which sounds very obvious. If there&#8217;s no navigation menu, don&#8217;t display it. So, there&#8217;s some great screenshots that illustrate this in the GitHub issue. Very, very straightforward in those details. If there&#8217;s no navigation menu, you just don&#8217;t see the navigation in the details for that template part.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: These are the quality of life issues or things that you don&#8217;t know unless you read the changelog. Oh, we needed to change that. Yes.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Right.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: The next one that I want to point out was for the font library, unfortunately, it&#8217;s not going to be in 6.4, but the management screens got a new tab and that is for the font uploads. So, if you as a user want to add additional fonts to your site, you can upload that. That was before, but now you have a separate tab for it. Before it was you needed to scroll all the way down past all the fonts and go to the upload section. Now it&#8217;s just one tab. So, it&#8217;s much easier to find. Unfortunately, for many, many people, we won&#8217;t have it in 6.4. It definitely needed more time to get finished, especially in the rest API endpoints and then have more testing going on, because I think it was only in 16.7 that it actually was merged into Gutenberg.&nbsp;</p>\n\n\n\n<p>They tried for two beta sessions to get it actually to a place where users can really use it. There were always something. So, the release team said, &#8220;Well, I think that&#8217;s a sign that we need to have it simmer for more moments, for a few more rounds in the Gutenberg plugin and have some more testing being done because it&#8217;s not ready yet.&#8221; Yeah.</p>\n\n\n\n<p><em>Joni Halabi</em>: That makes sense. I&#8217;m looking forward to it for the next version of Core, but that sounds like a really nice update. The next update affects the list views. So, there were some performance issues when a user or a content editor rather would come in and select all the blocks on the page, and there is now a fix for that. So, this affects pages that have just a lot, a lot of blocks. So, the example in the testing instructions says, &#8220;Add 150 or more paragraphs,&#8221; for example. So, before when a content editor would go in, open list view, do a command + A or control + A to select all of the blocks on the page and there are a couple hundred blocks, the editor would just freeze. It would just freeze up on you because that&#8217;s a lot of information.&nbsp;</p>\n\n\n\n<p>So, this particular PR that solves that performance issue. So, they&#8217;re noting that there will be a slight delay for rendering items, but there shouldn&#8217;t be any huge, huge slowdowns to the point where it makes you think that your site is broken.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Yeah, yeah. No, that&#8217;s for the power users. It&#8217;s not uncommon to have a weakened edition with many, many things and then have a couple hundred blocks in there, because we have a separator block or a spacer block or something like that. Power users really don&#8217;t want their site to be broken especially, or losing content, especially with those large posts. The next one is the image block. With the 6.4 version, the image block becomes a light box feature with it. But this Gutenberg plugin PR that I point out now fixes actually that the duo tone has not been applied to the image in the light box.&nbsp;</p>\n\n\n\n<p>So, you had maybe a gray filter on the duo tone filter on your image, and then people clicked on it, and then on the front end, it still has the image original colors and not the duo tone. There is a reason why there&#8217;s duo tone on an image. That was definitely a bug and it was fixed, but it was so visual that I thought we definitely want to talk about that when people tested it before. Yeah.</p>\n\n\n\n<p><em>Joni Halabi:</em> Yeah, for sure. Next up is an accessibility fix to what might be my favorite new block or favorite new feature, footnotes. They have added aria labels to the return links. On the footnotes, when you go down, you click on a footnote, you go down to the bottom of the page, you read your footnote. There is a little link at the end of that footnote that will take you back to the main content of the page where you picked up your footnote. Now, there is an aria label, which is great for accessibility. It will tell screen reader users, &#8220;Hey, this is where I&#8217;m going back to.&#8221; Very small but impactful change for people.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Yeah, absolutely. You don&#8217;t want to lose your place in the post just because you&#8217;re following a footnote and not going back to where it was. Yeah, same for the table of content block. There have been quite a few accessibility improvements. Them missing was actually part of the reason why the table of content block that&#8217;s in the plugin actually did not make it into WordPress 6.4 because it was not complete from how you access it. Even for the abled people, it was really hard to use the table of content, because it didn&#8217;t have a whole lot of styling options. With additional accessibility of movements, now it can be tested more and in a broader reach as well.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: I would throw this under accessibility as well. There is a small fix to the patterns, where for a block pattern that is not synced, the terminology that was being used for that was they were using standard. So, this change replaces that use of the word standard, to use not synced instead for block patterns that are not synced. I think that makes it more obvious, because standards can be&#8230; What is standard? Some people might have questions, but it just brings a level of clarity to what&#8217;s going on there.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Yeah, especially in patterns, because right now, we only have two, but we will have a third type of pattern and that will be partially synced. So, a standard, what is that? So that it really brings it home. Yeah, thank you for pointing that out as well. I think I skipped over one of the documentation items that I wanted to point out for our listeners who are looking a little bit further beyond the WordPress Gutenberg usage. Oh, that&#8217;s the real-time collaboration experiment is now switched. You can switch that on in 16.8, and there&#8217;s also a document now available in the block editor handbook about the current state of the real-time collaboration experiment. So, you can follow along on what&#8217;s going to be next year for the Gutenberg editor.&nbsp;</p>\n\n\n\n<p>There have been a lot of documentation changes, don&#8217;t get us wrong, but they&#8217;re mostly removing redundant stuff like remove the full site editing documentation because it will be in the themes handbook. Rename block hooks to block filters, because now block hooks are a different feature. So, it&#8217;s all a little bit, but the team is really working very hard to get the documentation up to par with 6.4 as well. Yeah, I think that was the changelog for 16.8, the Gutenberg plugin version. Thank you so much for going through that with me.&nbsp;</p>\n\n\n\n<h3 class=\"wp-block-heading\">What’s in Active Deveopment or Discussed</h3>\n\n\n\n<p>We are now at the section what&#8217;s in active development or what&#8217;s in discussed. I would say with WordPress 6.4 almost out the door, Gutenberg developers are shifting gears now and also working on some new things.&nbsp;</p>\n\n\n\n<p>Those need your input opinion, design use, and I share with you in the show notes four links. The first one would be a media library proof of concept in the site editor. The contributor has done some really experiment with that on how to add images right through your media library there, have a list view there. Now, list view, not from the editor but from a list of media and how you can navigate that and how you can preview that and all that. So, that&#8217;s really a first version of it. Take a look. It&#8217;s not yet merged. The PR itself has been closed. I just see that, but there is a replacement of that, right?&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Yeah. That PR in particular is labeled as purely an experiment, but at the top of that PR, there is a great video that demonstrates this proof of concept, which I personally really like it. I think it&#8217;s far more intuitive. It only shows the list view. There is also a grid view that if you dive a little bit more into the PR, you can see some screenshots of the grid view as well.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: The developer now that his experiments, he went through them, he now opened a tracking issue on GitHub called Collaboration Media Library. I&#8217;m sure there will be quite a few discussion threads going on there. The whole feature is now divided up into certain tasks and defines a little bit more than scope and all that. So, you can read up more about what the developers are thinking right now.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Yeah, this is exciting. It&#8217;s nice to see the media library getting a little bit of love here.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Yeah, it definitely needs a lot of love. Yes, I have seen tickets or track tickets that are 18 years old and you say, &#8220;Okay, yeah, I wonder if we ever get categories for our media libraries or better views or bulk updates, all kinds of things.&#8221; So if you look at the track tickets that are concerned in the media library, there are quite a few that could use some love.&nbsp;</p>\n\n\n\n<p>All right. The second link of what active development or discussed is introduce an experimental form and input blocks to allow building basic forms. So, the ecosystem of WordPress has a huge amount of plugins that help you with creating forms. Forms are very, very important. A lot of interactivity is built on top of forms and there has been a 15-year history of what forms need to be or could be.&nbsp;</p>\n\n\n\n<p>Ari did an experiment to figure out, &#8220;Okay, if we had a standard on how blocks are built for forms, maybe the plugins can build on top of the standards.&#8221; Then when you switch out the plugin for forms, it wouldn&#8217;t destroy all your forms and you had to recreate them. Of course, some of the plugins have imports of other plugins forms, but that&#8217;s just good common sense because otherwise they wouldn&#8217;t be able to sell to existing customers or those who have existing forms. That is definitely something that&#8217;s merged in Gutenberg already.&nbsp;</p>\n\n\n\n<p>It&#8217;s an experiment, so when you activate Gutenberg in your website, you could scroll down to the menu Gutenberg and then there is a section there called experiments. There you can switch on the experiment you are interested in. So, this one actually also deals with block bindings, data bindings, and that kind of thing. So, it&#8217;s going to be really interesting to see what you think when you use it.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Yeah, this is an exciting one because I can see in the future people creating block patterns for just really common use cases. So, the demo video shows like a send a message pattern, but I see patterns all over the internet for subscribe to my newsletter, get on my mailing list, things like that. Forms are so common on sites in general. I&#8217;m excited about this one too.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Yeah, all really good too. There are even some plugins that actually provide input blocks already, but also, it narrows down the openness again when you have to have a separate plugin for your forms and then what happens afterwards when you don&#8217;t use the plugin anymore.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Yeah, exactly. Having this just part of Core is great.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Yeah, it&#8217;s really good. Then the third one is for the insiders of using React quite a bit is that the default JSX import is done through React rather than the WordPress elements package. So, it automatically updates when React updates and the front page of WordPress elements package is actually a wraparound the React package. So, taking it out, taking the JSX feature out of that makes it more streamlined with React.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Yeah, for sure. Just for clarity, for block creators, this should not affect your code at all. This is really just how JSX is getting pulled in. So, if you&#8217;re using JSX, you should not need to change anything. This is really a very backend change.</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Yeah, and the WordPress elements package will still be around because it&#8217;s already in Core and there is this backwards compatibility promise as well. Yeah, yeah. So, thank you for pointing it out. There&#8217;s always this fear. Are there breaking changes? Yeah.</p>\n\n\n\n<p><em>Joni Halabi</em>: That was my first thought when I read that one actually. That&#8217;s why I wanted to point it out.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Yeah, thank you. So, good to have you on the show, Joni. You pointed out quite a few things that I didn&#8217;t think about. So, yeah.&nbsp;</p>\n\n\n\n<p>So, the last one on the section what&#8217;s active or what&#8217;s discussed is that the Gutenberg has now new labels for the data views. Normally, I wouldn&#8217;t point out new labels at the Gutenberg repo that come and go. I think we have about 400 or so labels there. So, yeah, I wouldn&#8217;t do it on the podcast. But with the new admin changes that are coming with the Gutenberg phase number three, many people want to be on the forefront or want to keep track of what&#8217;s happening. Do I have to change things or can I influence how it&#8217;s going and stay on top of it? This new label was created to label for the data views work.&nbsp;</p>\n\n\n\n<p>So, every time there is a custom post type list or a media list in various things, so that in the WP Admin, like your post list, it&#8217;ll all be reimagined in the site editor paradigm kind of thing. The label tracks the high level work for that. So, you can really follow along with that and even subscribe to that without getting the fire hose of the rest of the Gutenberg repo that has a lot of issues and PRs every week.&nbsp;</p>\n\n\n\n<p>I think we are at the end of our show today, and I ask every special guest in that section now. So, Joni, if there&#8217;s anything that you want to announce or you want to point out that you didn&#8217;t get a chance to talk about because you didn&#8217;t get a chance, now is your chance.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Oh, my.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: How can people reach you? What are you working on? Is there something exciting in your life that you released?</p>\n\n\n\n<p><em>Joni Halabi</em>: Nothing coming just yet. I did a talk a little while ago at WordPress Accessibility Day that I think the recordings are coming out. I don&#8217;t know if they&#8217;re already out, but I will announce it on my socials. I am @JoniHalabi almost everywhere, and you can also find me&#8230; I infrequently blog at my website, which is <a href=\"https://jhalabi.com/\">jhalabi.com</a>.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Well, yeah, thank you for pointing out the WordPress Accessibility Day. So, what did you present about, what&#8217;s your talk about?&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: It was actually a plugin that I initially created a while ago. I call it Besan Block, but it is essentially a way to create accessible SVG bar charts on your website and it integrates with Google Sheets. So, you can automatically import your content from a Google sheet and it will create a bar chart. It&#8217;s accessible and tabable and readable by screen readers. So, I walked folks through how to do that. The primary focus of that particular talk was the creation of the accessible SVG.&nbsp;</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: Okay. Yeah, so I&#8217;m definitely going to mention that in the show notes as well. Is that plugin available in the repo or is it on GitHub?&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: It is. It&#8217;s available in GitHub, but it is also in the WordPress plugin directory. It is called Besan Block, B-E-S-A-N.</p>\n\n\n\n<p><em>Birgit Pauli-Haack</em>: B-E-S-A-N. Okay. I&#8217;ll find it. Thank you so much. Yeah. Thank you for being on the show. As always, the show notes, dear listeners, will be published on gutenbergtimes.com/podcast. This is episode 91. If you have any questions or suggestions or news that you want us to include the next time, send them to <a href=\"mailto:changelog@gutenbergtimes.com\">changelog@gutenbergtimes.com</a>. That&#8217;s an email address and it&#8217;s <a href=\"mailto:changelog@gutenbergtimes.com\">changelog@gutenbergtimes.com</a>. So, thank you so much, Joni, for joining us today. Thank you all of the listeners for listening. If you want, it would be really, really helpful if you would do a review on your favorite podcast app.</p>\n\n\n\n<p>We haven&#8217;t had any reviews because we didn&#8217;t ask for it, but it always helps with the distribution of the changelog. Absolutely, you will get it read on the next episode. So, there&#8217;s a little shout-out if it&#8217;s a good review of course. Maybe if it&#8217;s a mediocre review. All right. So, that&#8217;s it. Thank you for listening. Goodbye, and I&#8217;ll talk to you in probably four weeks. Thank you so much.&nbsp;</p>\n\n\n\n<p><em>Joni Halabi</em>: Thank you, everybody.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2023 12:52:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Gutenberg Changelog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:119:\"Do The Woo Community: Maintaining Client Relationships and Providing Evolving Services with Julia Eden and Matt Woodman\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"https://dothewoo.io/?p=77154\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:118:\"https://dothewoo.io/maintaining-client-relationships-and-providing-evolving-services-with-julia-eden-and-matt-woodman/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:540:\"<p>In this Woo AgencyChat Julia Eden and Matt Woodman from Atomic Smash talk about evolving services, accessibility, UX/UI design and more.</p>\n<p>&gt;&gt; The post <a rel=\"nofollow\" href=\"https://dothewoo.io/maintaining-client-relationships-and-providing-evolving-services-with-julia-eden-and-matt-woodman/\">Maintaining Client Relationships and Providing Evolving Services with Julia Eden and Matt Woodman</a> appeared first on <a rel=\"nofollow\" href=\"https://dothewoo.io\">Do the Woo - a WooCommerce and WordPress Builder Podcast</a>	.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2023 11:38:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"BobWP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Matt: Wowza!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"https://ma.tt/?p=101511\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"https://ma.tt/2023/10/wowza/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1610:\"<img width=\"604\" height=\"340\" src=\"https://i0.wp.com/ma.tt/files/2023/10/IMG_1643-edited-scaled.jpeg?resize=604%2C340&ssl=1\" alt=\"\" class=\"wp-image-101520\" />\n\n\n\n<p>Okay, I&#8217;ve seen a lot of things in my life, but this has me fairly floored. I was at an <a href=\"https://ecoamerica.org/\">EcoAmerica</a> board meeting dinner and afterward instead of calling an Uber like I usually would, I tried a self-driving car, a <a href=\"https://waymo.com/\">Waymo</a>. (The name inspired by my friend, <a href=\"https://jaimewaydo.com/\">Jaime Waydo</a>.) As I got home I was so excited to tell my Mom what just happened.</p>\n\n\n\n<p>I feel like every cell in my body is charged, it&#8217;s like the first time I got a script to run, or committed code into b2/cafelog, this is definitely a before and after moment. Here&#8217;s a video as the car arrived and I got out. I&#8217;m really at a loss for words. The &#8220;wow&#8221; you hear me say in one of my most genuine in my life. The thing is <em>I know</em> these self-driving cars exist, I&#8217;ve seen them around San Francisco forever, but the <em>experience</em> of being picked up and dropped off by a robot navigating the tricky SF hills and streets just hits different.</p>\n\n\n\n		\n			<div class=\"jetpack-videopress-player__wrapper\"> </div>\n			\n		\n		\n\n\n<blockquote class=\"wp-block-quote\">\n<p>“The future is already here – it&#8217;s just not evenly distributed.&#8221; </p>\n<cite>William Gibson</cite></blockquote>\n\n\n\n<p>One thing that always brings me back to San Francisco is you feel like you&#8217;re living in the future. Tonight was no exception.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2023 03:54:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"WPTavern: Kinsta Launches Free Static Site Hosting for Up to 100 Websites, Including WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150341\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://wptavern.com/kinsta-launches-free-static-site-hosting-for-up-to-100-websites-including-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4911:\"<p>Kinsta <a href=\"https://kinsta.com/changelog/static-site-hosting/\">launched its static site hosting</a> product today, making a strong entrance into the market with a free tier that is competitive with established solutions from Vercel, Netlify, and GitHub Pages. Companies can host up to 100 static sites for free, including static WordPress sites, which Kinsta deploys from its global edge network of more than 300 locations.</p>\n\n\n\n<p>Static sites are those that serve HTML pages, media, and assets like JavaScript and CSS. These are usually more suitable for brochure websites, landing pages, personal portfolios, and other simple sites that don&#8217;t require pages to be dynamically generated by code running on a server. Static sites are generally more performant and secure.</p>\n\n\n\n<p>Kinsta&#8217;s free static hosting tier comes with the following features and limitations:</p>\n\n\n\n<ul>\n<li>1 concurrent build/site</li>\n\n\n\n<li>100 sites/company</li>\n\n\n\n<li>600 build minutes/month/company</li>\n\n\n\n<li>100 GB bandwidth/month/company</li>\n\n\n\n<li>1 GB build size limit/site</li>\n\n\n\n<li>API access</li>\n\n\n\n<li>Integration with GitHub, GitLab and BitBucket</li>\n\n\n\n<li>Diff-based Uploads</li>\n\n\n\n<li>Custom domains</li>\n\n\n\n<li>Free SSL support</li>\n</ul>\n\n\n\n<p>Customers can host pre-built static sites or sites built with static site generator frameworks that use Node.js. Kinsta has created <a href=\"https://kinsta.com/docs/static-site-hosting/static-site-quick-start-examples/\">quick start example repositories</a> for many popular static site generators, including Astro, Cuttlebelle, Docusaurus, Eleventy, Gatsby, Nuxt, Qwik, React, React with Vite, and VuePress.</p>\n\n\n\n<p>WordPress users can also deploy static sites to the platform and host it for free by converting an existing site to static. Kinsta published a <a href=\"https://kinsta.com/blog/static-wp-site/\">tutorial</a> on the process for converting a WordPress site using a free plugin. The static hosting can also be used to set up a frontend with any kind of backend or host a headless WordPress site.</p>\n\n\n\n<img width=\"1105\" height=\"1039\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/static-wp-add-static-site.png\" alt=\"\" class=\"wp-image-150366\" />\n\n\n\n<p>Users can launch a static site to Kinsta&#8217;s infrastructure by deploying from a Git repository hosted by BitBucket, GitHub, or GitLab, selecting a branch, and adding a build command and directory to deploy. Kinsta can detect some static site generators automatically, which makes the process easier. A connection and configuration settings can be managed through the MyKinsta dashboard. </p>\n\n\n\n<img width=\"960\" height=\"935\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/kinsta-static-site-build-settings.png\" alt=\"\" class=\"wp-image-150362\" />\n\n\n\n<p>Kinsta plans to introduce add-ons and other features in the future that might be paid, but is committed to keeping the service and this tier free forever.</p>\n\n\n\n<p>&#8220;Just like with every free product or freemium model, our goal is to spread the word with the help of it and let users try out our service, the dashboard in a frictionless way and host a project here for completely free,&#8221; Kinsta Chief Business Officer Tom Zsomborgi said. </p>\n\n\n\n<p>&#8220;The ability of using and testing out a platform and getting first hand experience is the ultimate way of forming an opinion about a provider. We let everyone use the service and host their projects. If the developers and agencies like the Static product we hope they will consider us for their other web projects and start using the paid services.&#8221;</p>\n\n\n\n<p>Kinsta is targeting enterprises, agencies, and companies that need to create websites and landing pages for high-traffic campaigns. The company is working on more features for static site hosting, including the following on the roadmap:</p>\n\n\n\n<ul>\n<li>Wildcardless domains</li>\n\n\n\n<li>Extended Kinsta API support</li>\n\n\n\n<li>Serverless functions, which could be utilized by static sites</li>\n\n\n\n<li>Previews</li>\n\n\n\n<li>Maintenance mode</li>\n\n\n\n<li>Password protection</li>\n\n\n\n<li>Ability for HTML Forms to work</li>\n\n\n\n<li>More builders</li>\n\n\n\n<li>Choose a build template</li>\n\n\n\n<li>Detailed Analytics</li>\n</ul>\n\n\n\n<p>Kinsta&#8217;s static site hosting solution is similar to what the competition offers for building and deploying sites, but Zsomborgi said he thinks that having application, database, and WordPress hosting all under one roof sets them apart. Kinsta also offers analytics for free and unlimited users/seats, the same as Vercel, but Netlify only offers these under paid plans.</p>\n\n\n\n<p>&#8220;The biggest things that we are missing are functions (Vercel, Netlify, and Cloudflare Pages have them) and deploy previews,&#8221; Zsomborgi said. &#8220;Both of those are in the backlog and will be released soon.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Oct 2023 22:18:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"WordPress.org blog: A New WordPress Showcase\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=16173\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://wordpress.org/news/2023/10/a-new-wordpress-showcase/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4919:\"<p>The <a href=\"https://wordpress.org/news/category/meta/\">journey to update WordPress.org</a> continues with the launch of a new <a href=\"https://wordpress.org/showcase/\">Showcase</a> design. The Showcase is a natural starting point for visitors arriving on WordPress.org, and it both inspires creativity and demonstrates what’s possible with WordPress. From unique personal blogs and portfolios to enterprises and celebrity fan sites, the Showcase celebrates WordPress’s flexibility, popularity, and the freedom to own one’s content.</p>\n\n\n\n\n<img width=\"1024\" height=\"954\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/10/2-showcase-site-1.png?resize=1024%2C954&ssl=1\" alt=\"Screenshots from the new Showcase design\" class=\"wp-image-16187\" />\n\n\n\n<img width=\"1024\" height=\"954\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/10/3-showcase-starry-theme-1.png?resize=1024%2C954&ssl=1\" alt=\"A grid of new design elements\" class=\"wp-image-16184\" />\n\n\n\n<img width=\"1024\" height=\"576\" src=\"https://i0.wp.com/wordpress.org/news/files/2023/10/4-showcase-websites-curaction-1.png?resize=1024%2C576&ssl=1\" alt=\"A collage of Showcased websites\" class=\"wp-image-16185\" />\n\n\n\n\n<p>This new design provides much-needed improvements to the aesthetics and user experience. It emphasizes bold visuals and a more dynamic browsing experience through tags and categories. Individual site pages now include desktop and mobile screenshots, while the site introduces an improved layout on mobile devices.&nbsp;</p>\n\n\n\n<p>This redesign also brings new <a href=\"https://wordpress.org/blocks/\">block-based functionality</a> and several components that will be used elsewhere on WordPress.org. All of this was made possible through collaboration between Design, Marketing, and Meta teams. Thank you to everyone.</p>\n\n\n\n<p class=\"is-style-wporg-props-medium\"><a href=\"https://profiles.wordpress.org/adamwood/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>adamwood</a> <a href=\"https://profiles.wordpress.org/alexstine/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>alexstine</a> <a href=\"https://profiles.wordpress.org/annezazu/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>annezazu</a> <a href=\"https://profiles.wordpress.org/bengreeley/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>bengreeley</a> <a href=\"https://profiles.wordpress.org/cbringmann/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>cbringmann</a> <a href=\"https://profiles.wordpress.org/chanthaboune/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>chanthaboune</a> <a href=\"https://profiles.wordpress.org/dufresnesteven/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>dufresnesteven</a> <a href=\"https://profiles.wordpress.org/eidolonnight/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>eidolonnight</a> <a href=\"https://profiles.wordpress.org/fcoveram/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>fcoveram</a> <a href=\"https://profiles.wordpress.org/joen/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>joen</a> <a href=\"https://profiles.wordpress.org/jonoaldersonwp/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>jonoaldersonwp</a> <a href=\"https://profiles.wordpress.org/jpantani/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>jpantani</a> <a href=\"https://profiles.wordpress.org/laurlittle/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>laurlittle</a> <a href=\"https://profiles.wordpress.org/matt/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>matt</a> <a href=\"https://profiles.wordpress.org/markoserb/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>markoserb</a> <a href=\"https://profiles.wordpress.org/ndiego/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>ndiego</a> <a href=\"https://profiles.wordpress.org/pablohoneyhoney/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>pablohoneyhoney</a> <a href=\"https://profiles.wordpress.org/paulkevan/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>paulkevan</a> <a href=\"https://profiles.wordpress.org/renyot/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>renyot</a> <a href=\"https://profiles.wordpress.org/ryelle/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>ryelle</a> <a href=\"https://profiles.wordpress.org/sereedmedia/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>sereedmedia</a> <a href=\"https://profiles.wordpress.org/_dorsvenabili/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>_dorsvenabili</a></p>\n\n\n\n<p>If you would like to propose a change or report an issue, please do so in the <a href=\"https://github.com/WordPress/wporg-showcase-2022\">wporg-showcase-2022</a>&nbsp; GitHub repository. Also, make sure to join the <a href=\"https://wordpress.slack.com/archives/C04U953K77A\">#website-redesign</a> Slack channel if you are interested in additional updates coming to WordPress.org and want to contribute.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Oct 2023 17:34:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Nicholas Garofalo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"WPTavern: #95 – Pooja Derashri on Diversity, Equity, Inclusion, and Belonging in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wptavern.com/?post_type=podcast&p=150290\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://wptavern.com/podcast/95-pooja-derashri-on-diversity-equity-inclusion-and-belonging-in-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:39320:\"Transcript<div>\n<p>[00:00:00] <strong>Nathan Wrigley:</strong> Welcome to the Jukebox podcast from WP Tavern. My name is Nathan Wrigley.</p>\n\n\n\n<p>Jukebox is a podcast which is dedicated to all things WordPress. The people, the events, the plugins, the blocks, the themes, and in this case, how we can promote diversity, equity, inclusion, and belonging in the WordPress project and community.</p>\n\n\n\n<p>If you&#8217;d like to subscribe to the podcast, you can do that by searching for WP Tavern in your podcast player of choice. Or by going to WPTavern.com forward slash feed forward slash podcast. And you can copy that URL into most podcast players.</p>\n\n\n\n<p>If you have a topic that you&#8217;d like us to feature on the podcast, I&#8217;m keen to hear from you, and hopefully get you, or your idea, featured on the show. Head to WPTavern.com forward slash contact forward slash jukebox, and use the form there.</p>\n\n\n\n<p>So on the podcast today, we have Pooja Derashri. Pooja is a co-founder of WPVibes, a plugin development company based in India. With a passion for WordPress, pooja has been actively involved in the community since 2013. Her journey as a contributor began in 2017 when she attended her first local WordCamp. Her expertise and dedication have under various key roles in the WordPress ecosystem. She currently serves as co-team rep for the training team, and GTE for the Hindi local. In addition, she holds key positions in the WordPress release squad for version 6.3 and 6.4, where she heads up the test team.</p>\n\n\n\n<p>Pooja shares her insights on the importance of diversity, equity, inclusion, and belonging within the WordPress community, and explores how you don&#8217;t need to be a coder to be a part of the community and all that it is.</p>\n\n\n\n<p>We discussed the work of teams like polyglots, who focus on translating WordPress projects into different languages, and docs, who provide much needed documentation to help users understand and contribute to the platform. These initiatives alone make it clear that WordPress is reliant on non-coding contributions, and there are more ways to contribute than have a before.</p>\n\n\n\n<p>I ask Pooja about her experiences with diversity and inclusivity in the tech industry, and she reflects on the challenges she has faced, discussing the importance of recognizing and addressing unconscious biases. She shares her insights on the need for training and workshops that empower diverse individuals to contribute and speak up within the WordPress community.</p>\n\n\n\n<p>We delve into Birgit Olzem&#8217;s proposal to form an official D E I B team within WordPress, aiming to implement diversity, equity, inclusion, and belonging throughout the whole community. I express my excitement about the potential outcome of this proposal, and we think about how WordPress compares to other parts of the tech industry.</p>\n\n\n\n<p>We explore the various initiatives and efforts being made to build a more inclusive WordPress culture. From mentorship programs, to targeted outreach and safe spaces, we uncover the ways in which underrepresented voices are being uplifted.</p>\n\n\n\n<p>If you&#8217;re interested in creating a more inclusive community, this episode is for you.</p>\n\n\n\n<p>If you&#8217;d like to find out more, you can find all of the links in the show notes by heading to WPTavern.com forward slash podcast, where you&#8217;ll find all the other episodes as well.</p>\n\n\n\n<p>And so without further delay, I bring you Pooja Derashri</p>\n\n\n\n<p>I am joined on the podcast today by Pooja Derashri. Hello Pooja!</p>\n\n\n\n<p>[00:04:09] <strong>Pooja Derashri:</strong> Hi Nathan. So glad to join you.</p>\n\n\n\n<p>[00:04:12] <strong>Nathan Wrigley:</strong> Yeah thank you for joining me today. We&#8217;re going to be talking a little bit today about a subject which you may well have heard me talk about before. I had an interview with Jill Binder and Birgit Olzem quite recently. This episode is going to follow on shortly after that. We&#8217;re going to be talking about an acronym, DEIB or Diversity, Equity, Inclusion and Belonging.</p>\n\n\n\n<p>Before we get into the subject at hand though. Pooja I wonder, would you mind just introducing yourself? Tell us a bit about who you are, where you are, and what it is that brought you to WordPress, what it is that you do within WordPress and so on?</p>\n\n\n\n<p>[00:04:50] <strong>Pooja Derashri:</strong> Yeah. My name is Pooja Derashri, and I am from India. I&#8217;m a co founder of WPVibes, a plugin development company, and I am also a WordPress contributor. Currently I&#8217;m a co team rep for the training team and GTE for Hindi locale. Along with this, I&#8217;m also in the WordPress release squad for 6.3 and 6.4, where I&#8217;m leading the test team.</p>\n\n\n\n<p>Basically I&#8217;ve been working in WordPress since 2013. But my contribution journey started in 2017 when I was first introduced to WordPress community in one of the local WordCamps.</p>\n\n\n\n<p>[00:05:30] <strong>Nathan Wrigley:</strong> That&#8217;s an amazing story. You&#8217;ve got a lot of past, and heritage, and interest in the community. I&#8217;m guessing if you are part of the WordPress community and you&#8217;ve been part of the release squad, and it sounds like you are attending events and things like that as well. You&#8217;ve got a real interest in the community being diverse, equitable, inclusive, and the last word in the acronym, belonging.</p>\n\n\n\n<p>Do you want to just tell us a little bit about how you came to be interested in this subject? Obviously, if you&#8217;ve got a plugin development company, one might expect that all of your endeavours would be towards coding and plugins and documentation and all of those kind of things, but clearly not. You&#8217;ve got an interest in all of these things. Tell us why it is that you&#8217;ve found this to be important.</p>\n\n\n\n<p>[00:06:13] <strong>Pooja Derashri:</strong> Yes. Basically I have a short story to tell about. In my region, where I&#8217;m belonging, there is a conception that women are not good for tech jobs and women can&#8217;t do coding. In my first job there were members of 10 to 12 in my company. They have a stereotype thinking that women are not for the tech jobs, women are not good for tech jobs. And at that time I feel like an outsider, and I&#8217;m not good for that.</p>\n\n\n\n<p>In that company they were not giving me challenging tasks, and they were just giving me simple, easy tasks. So I was thinking like, what am I doing here? Then soon I realised, I switched from that company, in just two months. Then I joined a different company which is far better than that company.</p>\n\n\n\n<p>And there I got respected. I was welcomed. They gave me equal chances to work, and they gave me equal opportunities to work on coding. That was quite a nice experience. If I was not being treated unfairly, then I would never know about how that feeling was.</p>\n\n\n\n<p>When I got that feeling, then I searched about and heard in a workshop, what is DEIB, and why it matters? And I just connected the dots, like I similarly faced that issue in my first job and I should do something about it. So in my opinion diversity is all about making sure that everyone feels welcome, respected and treated fairly no matter who they ,are.</p>\n\n\n\n<p>[00:07:52] <strong>Nathan Wrigley:</strong> Thank you. That&#8217;s a really interesting story that you&#8217;ve got there. I wonder if we might just delve into that a little bit more deeply. You obviously had two fairly different experiences there. One, which was fairly negative, and you wish to separate yourself from that company and go and work at a different company. And it sounds like that was a much better experience.</p>\n\n\n\n<p>You&#8217;re obviously coming out of India on this call today. Do you feel that this is a problem which is systemic where you live? Do you, in other words, feel that this bias, for want of a better word, this lack of diversity and equity and inclusion, is something which is endemic where you live? So what I&#8217;m really asking is, do you think that there&#8217;s a problem in your part of the world that maybe isn&#8217;t quite so pronounced in other parts of the world?</p>\n\n\n\n<p>[00:08:44] <strong>Pooja Derashri:</strong> Yeah. Actually I come from a rural background where people have held certain fixed mindsets, and they are being biased in some situations. So yeah, we can say that they are not treated, they are thinking like this tech world is only for male or something like that, particularly in my region.</p>\n\n\n\n<p>I&#8217;m not talking about the whole of India. We have some better mindsets, and better conceptions in other part of India. But in my region, in my small city, that is a very unfair, or we can say biased, conception or misconception.</p>\n\n\n\n<p>[00:09:23] <strong>Nathan Wrigley:</strong> Thank you for that. I wonder if there&#8217;s legislation in place in your part of the world to tackle this kind of thing. And whether or not there&#8217;s legislation, doesn&#8217;t of course mean that it does not happen, I think the same would be true in other parts of the world as well. Simply because there are laws to prevent this kind of thing, doesn&#8217;t mean that those laws are obeyed.</p>\n\n\n\n<p>So quick question around that, we&#8217;ll go off piste for a moment. In the part of the world where you are, is there laws around this kind of thing, around discrimination and inclusion? In other words, from a legal point of view, is this not tolerated?</p>\n\n\n\n<p>[00:09:58] <strong>Pooja Derashri:</strong> Yes we have very tough laws on these things. But we can&#8217;t change any person&#8217;s conception. But I was lucky enough that my parents were not thinking that if a female can do that. They gave us equal rights. For my in laws, they gave me the equal opportunities and encouraged me, motivated me always to do whatever I wanted to do. So it&#8217;s about the few people in my first company. They had that mindset but not every people is going with the same mindset.</p>\n\n\n\n<p>[00:10:35] <strong>Nathan Wrigley:</strong> I have a follow up question, and it&#8217;s about the place where you described first, the job where that organisation wasn&#8217;t particularly diverse, and they certainly don&#8217;t sound like they were particularly inclusive. Was there any part of you that felt like throwing in the towel? And what I mean by that is just thinking okay this is what tech is like, I&#8217;m just going to change industry altogether.</p>\n\n\n\n<p>Now it sounds like you have got a background where you described your parents making sure that everything was equal for you. But despite that, did you at any point think well if this is what the tech industry is going to be like, I&#8217;m not going to be a part of it?</p>\n\n\n\n<p>And I wonder really if that&#8217;s the root of the problem here. In that we&#8217;re trying to get it to the point where no person, no matter what their background is, no matter what their ethnicity is or religion or whatever it may be. Where they feel that they can&#8217;t be part of the industry because they&#8217;re getting signals from their employers, and the industry more broadly that they don&#8217;t belong. So yeah, the question basically is, did you ever feel like, okay I shan&#8217;t be part of tech if this is what it&#8217;s going to be like?</p>\n\n\n\n<p>[00:11:43] <strong>Pooja Derashri:</strong> No, I never thought that. I was always encouraged by my close circle that you should do whatever you want, despite what other people think. You should face that problem and overcome from that.</p>\n\n\n\n<p>I thought in my first job that if they are not accepting me and they are not finding me good enough then, why shouldn&#8217;t I change the job? I can&#8217;t change their mindset but I can change my job. I can change my company.</p>\n\n\n\n<p>[00:12:13] <strong>Nathan Wrigley:</strong> Yeah that&#8217;s a very enlightening approach, isn&#8217;t it? Okay so you&#8217;ve laid out what the problem is. I think this question may be not particularly relevant, but I would be interested to know. Why do you find this to be so important a cause? I mean it&#8217;s obvious the answer to that, isn&#8217;t it? But I want to hear you express in your own words why you&#8217;ve attached yourself to this and why you believe it&#8217;s important.</p>\n\n\n\n<p>[00:12:36] <strong>Pooja Derashri:</strong> DEIB basically means we are making a big circle of friends where everyone is invited, treated fairly and feels like they are one of them. And it is important because when people work, play, and live together with love and respect, then the world becomes a happier and stronger place for everyone.</p>\n\n\n\n<p>When we talk about open source projects, open source projects make sure that everyone is included and feels they belong to this community. It encourages other people to come and share their skills.</p>\n\n\n\n<p>So it is important basically because our world will be more happier, stronger, and people live with peace and harmony. If they are not biased, they are living together with respect. All person are welcomed.</p>\n\n\n\n<p>[00:13:29] <strong>Nathan Wrigley:</strong> What a lovely answer. I&#8217;m really quite touched by that, that&#8217;s beautiful. The next thing that you wanted to talk about is really interesting to me, because I haven&#8217;t given this too much thought. And it&#8217;s the idea that the problem may not be something that people are necessarily conscious of. And in the share notes that you&#8217;ve shared with me, you&#8217;ve talked about this thing called unconscious bias. And I have an intuition as to what you&#8217;re meaning there but I&#8217;d like you to explain that. What is unconscious bias? Let&#8217;s delve into that a little bit.</p>\n\n\n\n<p>[00:14:01] <strong>Pooja Derashri:</strong> Basically, a sneaky or hidden friend in your mind, brain. Who sometimes make a decision for you, without you even realising it. For example, imagine your favorite color is blue. Sometimes without thinking much, you choose blue color in everything, because your brain automatically likes them. What if that happens with people not color? If your mind is unconsciously like a certain kind of people then you will be not inclusive in environment.</p>\n\n\n\n<p>[00:14:35] <strong>Nathan Wrigley:</strong> So the idea being that, and I guess we can all admit to this in many aspects of our lives, we have things that instinctively, we can&#8217;t quite necessarily understand why, there are certain things that we are drawn to. The taste of a particular meal, a particular color, the kind of vacation that you want to go on, the kind of things that you like to do in your spare time.</p>\n\n\n\n<p>We have all of these biases, that have crept into our lives over time, and we may not be aware of them but they impact the decisions that we make. So we may feel that we&#8217;re being equal and thoughtful, and we&#8217;re giving everybody the greatest opportunity possible. But somehow, somewhere, our brain is stepping in and making a slightly different decision.</p>\n\n\n\n<p>So if that&#8217;s the case, how do you spot your unconscious bias? Because, by definition, it&#8217;s unconscious. You&#8217;re unaware that it&#8217;s happening, but clearly there must be a way of short circuiting that problem, and figuring out, okay take a step back, have a think about that, was that the right decision? What&#8217;s the conversation that you need to have with yourself or your colleagues, or whatever it may be?</p>\n\n\n\n<p>[00:15:38] <strong>Pooja Derashri:</strong> Yeah. When you or your colleague indicate that you are facing unconscious biased to someone, for example, I will explain this with a core contributor example. Like imagine two programmers submitting code changes to a project. One programmer is well known to the community, and the other is new and less known, less famous.</p>\n\n\n\n<p>Due to our unconscious bias, the community might pay more attention to the code changes from the well known programmer, assuming that they are of higher quality. But it is not like that. Your newcomer can be a good coder and he might of submitted a nice or similar coding. This can lead to the new programmer&#8217;s contribution being overlooked or undervalued.</p>\n\n\n\n<p>If we are doing this kind of bias then we are not doing intentionally. This is something unconsciously we are doing, if we say about in open source. So when someone indicates this to us, first we should accept that we are becoming a biased person for some particular coder, or some particular person. Then we should self realise that how we can give both of them a fair chance by looking into their code or by giving them fair opportunities.</p>\n\n\n\n<p>[00:16:59] <strong>Nathan Wrigley:</strong> It&#8217;s very difficult, isn&#8217;t it, to be as reflective as that. So I would imagine that in almost any unconscious bias that you may have, be it towards code or, you know the kind of food that you like, there is something very deep in that. And so when somebody points it out that you have a bias, sometimes the shutters go up if you like, and you feel that that&#8217;s a, well I guess you could describe it as a personal attack.</p>\n\n\n\n<p>You&#8217;ve been biased there. You&#8217;ve clearly exhibited some bias. It&#8217;s not always straightforward to admit to yourself that you have these biases. And so I guess that&#8217;s the enterprise that we&#8217;re going to discuss now. How do we build an inclusive culture? In which people are able to recognise that, yes they have biases, yes they need to pay attention to that, or at least listen to other people&#8217;s opinions.</p>\n\n\n\n<p>So let&#8217;s move on to that. Your third point, if you like, building inclusive cultures. Before we get into the meat and the bones of that, I&#8217;d like to ask what you think broadly about how WordPress as a community is doing with all of this. Because it feels like at the moment this is a particularly hot topic, for want of a better word. It feels like it&#8217;s getting lots of coverage, lots of endeavors are being made.</p>\n\n\n\n<p>I&#8217;m not making the claim that everything is perfect, but it feels like this is a conversation which is becoming increasingly normal. We&#8217;re constantly being told about this and we&#8217;re constantly alert and aware of this. So, how do you think we do as a community, the WordPress community? What can we do, and how are we doing?</p>\n\n\n\n<p>[00:18:32] <strong>Pooja Derashri:</strong> Actually in my perspective taking the DEIB initiative doesn&#8217;t mean just ticking the boxes. It is all about where people feel they are among all of us. And nurturing the community of where everyone feels respected, valued, and their voices are heard. As you said, this is already a hot topic that is discussed everywhere in the community right now.</p>\n\n\n\n<p>Few of the initiatives, in my opinion, are very great, WordPress community is taking. Like WordPress 6.4 release, it is lead by all women, and non binary people. So that many underrepresented people will get a chance to be part of the release squad, in spite of their background or something.</p>\n\n\n\n<p>In another way, if we speak about workshop, that is a great initiative. Like Jill Binder is doing workshops on diversity in every part of the world. And for a few years Jill Binder has been running a workshop, and promoting and uplifting diverse people who are not so comfortable in public speaking, but are expert in their respective fields. There she&#8217;s uplifting them, and creating an inclusive environment. So they feel comfortable, and can deliver their talk, and can be a part of this WordPress family.</p>\n\n\n\n<p>And one of the great examples, great initiatives taken by Birgit Olzem, she submitted a proposal for forming an official Make WordPress DEIB team, so that DEIB can be implemented in every aspect of WordPress, with every WordPress Make team, and can align with other make teams.</p>\n\n\n\n<p>This will be discussed in the community summit. I guess today this is going to be discussed. I must say I&#8217;m really excited, what happened and what the outcome and decision was made on this topic. And I would be really happy if this team was to be in existence.</p>\n\n\n\n<p>And if you heard about a month ago, there was a mentorship program initiated by Hari Shanker. Initiatives taken by Hari Shanker started a project called Mentorship Program, Contributor Mentorship Program. In this a dedicated mentor is assigned to a mentee, or what we say, new contributor who wants to contribute to WordPress, but doesn&#8217;t know how to contribute, how to start.</p>\n\n\n\n<p>So the mentor can guide them, and help them to onboard as a contributor. Basically they are creating a path for them to feel included in this environment and get settled. As soon as they join they feel belonging. They have a sense of belonging in this WordPress community as soon as they join.</p>\n\n\n\n<p>So it was great I must say. It was a pilot project but it was a great success. So many contributers who are now regularly contributing to the WordPress projects, and bringing their fresh ideas and innovation to that. So these are a few examples or initiatives community is taking now.</p>\n\n\n\n<p>[00:21:55] <strong>Nathan Wrigley:</strong> How do you feel then about how the WordPress community is doing? I should add that I will link in the show notes to the make.wordpress.org piece which is talking about the establishment of a diversity, equity, inclusion, and belonging team. And there&#8217;s also, as I said, an episode with Birgit and Jill which you can find in the WP Tavern podcast archive if you want to go a little bit deeper, but I will link to those.</p>\n\n\n\n<p>How do you feel that wordPress as a community is doing in comparison to other parts of the tech industry? Do you feel that WordPress is perhaps at the cutting edge? Or are we taking our cues from other communities which have been there, done that, tackled this problem before us?</p>\n\n\n\n<p>It feels a lot of the things that WordPress is doing are fairly innovative. So we are having to create, as a community, these things for ourselves. But I could be wrong about that. So perhaps we could just have a chat about whether WordPress is at the vanguard of this or not.</p>\n\n\n\n<p>[00:23:00] <strong>Pooja Derashri:</strong> Yes, in my opinion if we go back five or ten years back in WordPress community then the WordPress community was not that diverse. But in the past few years the community is taking diversity very seriously, and taking a great initiative so every person all across the globe can share their feelings, or share their ideas, and they are implemented.</p>\n\n\n\n<p>I&#8217;m taking one of my example, when I joined the training team in 2019, the team was gearing up for the initial WordPress launch. Then Courtney Robertson and Hauwa Abashiya was the team rep at that time. And I was like, I was having a coding background, I don&#8217;t know about how content works, and how I can contribute and help in that. They helped me in a lot in onboarding to the training team, and they helped me to learn the process. And soon after I got involved and Learn WordPress launched.</p>\n\n\n\n<p>After that we worked hard on the training team to make it as diverse across the globe. That time from basically APAC region, there was not much contribution. So we created an inclusive environment in team, everyone can come and ask everything. We were available. We all work from different parts of the world. So we can say we were available 24 hours at that time.</p>\n\n\n\n<p>We were trying our best to treat everyone equally, no matter where they are from. At that time I started APAC meetings to boost the contribution in this region. We run some workshops to explain what the training team, and what it does.</p>\n\n\n\n<p>I understand the true meaning of how a diverse team can work together to raise awareness and bring all other members on board, and then they can become a part of the regular contribution.</p>\n\n\n\n<p>[00:25:09] <strong>Nathan Wrigley:</strong> Yeah thank you. The fifth part that I&#8217;ve got written down here in our shared show notes is your desire to make sure that underrepresented voices are empowered. And I wonder if you could expand on that a little bit. What was it that you were meaning there? Who are you meaning by underrepresented? What are the things that need to be done in order to empower those voices?</p>\n\n\n\n<p>[00:25:35] <strong>Pooja Derashri:</strong> So it depends. If we talk about the tech world, basically in the programming field there are more male coders involved in comparison. Not like I&#8217;m saying all programmers are male, but in comparison to that there are more male representative are there.</p>\n\n\n\n<p>The lack of representation can be based on various factors just like gender, race, ethnicity, age, geographic location. There can be a more diverse perspective and less inclusive community that can be underrepresented. Few examples like female minorities, people of color, non English speakers, developing countries, accessibility advocates.</p>\n\n\n\n<p>One more example can be non technical roles, LGBTQ+ individuals. It&#8217;s important to address the underrepresented of these groups to ensure that the WordPress community is diverse, inclusive, and welcoming to everyone. No matter who they are and what background they came from. As a community, our efforts to promote diversity and inclusion can include targeted outreach, like some mentorship programs, creating a safe space, providing them resources if they want.</p>\n\n\n\n<p>Your question was, how can we empower the underrepresented voices? It&#8217;s crucial for creating a more diverse and inclusive environment in community, or in an organisation, or in industries, including open source or WordPress community. We can amplify their achievements like recognising and highlighting their contributions, and provide them equal opportunities and their voices are heard in bigger roles.</p>\n\n\n\n<p>We can provide diverse leadership. We can create a safe space for them so they feel comfortable in speaking, or in putting their skills in front of everyone. Basically a long term commitment, empowering in underrepresented voices is an ongoing effort. It requires consistent dedication, and a commitment to sustainable change.</p>\n\n\n\n<p>[00:28:02] <strong>Nathan Wrigley:</strong> I&#8217;m curious in your last little portion there you mentioned quite a few different things. When I hear conversations around diversity and inclusion and DEIB in general, there are certain topics which come into my mind, and it might be things in the community which I&#8217;ve heard of recently. So I don&#8217;t know, it might be that there&#8217;s equal representation at WordPress events, that we make sure that the speaker lineup is diverse.</p>\n\n\n\n<p>But curious there that you listed out quite a few other things as well. So for example, just geographical, the spread of where you are on the planet. You need to think perhaps differently depending on where you&#8217;re based, and the metrics by which you would measure how you&#8217;re doing in this sphere may be different in, for example, India than it would be where I am in the UK.</p>\n\n\n\n<p>So it doesn&#8217;t feel like there&#8217;s one size fits all. There&#8217;s no standard operating procedure for making sure this is all done correctly. Different parts of the world may be on a different journey and have a different trajectory, and have different things that they need to focus on. Would you say that&#8217;s true?</p>\n\n\n\n<p>[00:29:10] <strong>Pooja Derashri:</strong> Yes, different parts of countries may have different perceptions regarding diversity. I agree with your point that our WordPress related events are focusing on diverse speaker lineup. If we check our WordCamp US speaker lineup, that is much diverse. And similarly in WordCamp Asia, where I was part of speaker organising teams, we put our full efforts in creating a diverse speaker lineup. So yeah, I completely add with your point. We might have different perceptions, we might have different geographical location. There are different means of diversity.</p>\n\n\n\n<p>[00:29:50] <strong>Nathan Wrigley:</strong> Now inevitably when this kind of conversation comes around, there are always people in the community who have a very different opinion. And they have the opinion that, well really I&#8217;m only here for the code. I want to be able to download the WordPress code base, I want to be able to use WordPress, I want to make it the foundation of my business and so on and so forth.</p>\n\n\n\n<p>And they push back and they say look conversations like this, they&#8217;re not relevant. It&#8217;s code, that&#8217;s all it is to me. What do you say to them? Clearly you would have a different opinion but, how do we get those people interested, and make it so that they feel that this is important? Because I feel that there&#8217;s quite a few members of the community who just say oh, can we just concentrate on the code? We don&#8217;t need to be worried too much about all these other tangential things.</p>\n\n\n\n<p>[00:30:41] <strong>Pooja Derashri:</strong> If we talk about specifically WordPress, there is nothing we can only do with code. There are other things as well like non code contribution. There are other teams, other contributors that are putting in their efforts to make it a successful project. Like a Polyglots team is putting so many efforts into converting WordPress projects into the other languages, so it can be used by so many other people.</p>\n\n\n\n<p>Similarly if we talk about docs team. Docs team is not putting coding efforts, but they are working on providing documentation so everyone can understand the process. Understand how to use WordPress, how you can build something on it, and how you can contribute.</p>\n\n\n\n<p>So basically it is not about you can only do it with code. Diversity in terms of every aspect in non code contribution also matters. The whole community came from coding, non coding and other. All the people came together and built a community. Not only one person or one kind of people, like all coders can build a community. It should be a collective effort and it should be a collective output in my opinion.</p>\n\n\n\n<p>[00:32:03] <strong>Nathan Wrigley:</strong> Yeah thank you, I think that was really nicely put. A good explanation of the problem at hand. Yeah that&#8217;s brilliant. Thank you.</p>\n\n\n\n<p>If we were to be a listener to this podcast and some of the messages that you&#8217;ve talked about click with us, and we think, yeah everything that Pooja said, that&#8217;s vitally important. I&#8217;m not involved in it yet. I&#8217;d like to be more involved with it. I wonder if you could give us some pointers as to how you might get involved. Perhaps you could tell us about places that we could go. I can link to anything that you mention in the show notes, so they&#8217;ll all be in there. But also maybe you could highlight some of the people who are doing good work in this area.</p>\n\n\n\n<p>So there&#8217;s obviously, you know you, yourself. But you mentioned Birgit Olzem and you&#8217;ve also mentioned Jill Binder, there&#8217;s a couple of other voices. But maybe there&#8217;s some other literature that you can point us in the direction of. Some websites, some project or endeavour that WordPress itself is doing, so that we can dig into this a little bit more.</p>\n\n\n\n<p>[00:33:03] <strong>Pooja Derashri:</strong> Yes. I would like to mention the mentorship program lead by Hari Shanker. More contributors from diverse community come and join the WordPress project. It is a nice initiative in my opinion.</p>\n\n\n\n<p>The WordPress six point release, they can join the WordPress six point release Slack channel and people will go through the process of how release works, and how, if they want to be a part of Core. There is not only they can part of Core by just coding. There are so many other areas like testing, like documentation, marketing, content training team. There are so many other teams they can also join.</p>\n\n\n\n<p>Courtney Robertson is also raising awareness about diversity and she is putting so much effort into onboarding to people from different parts of the world. So yeah these are the few things I would like to mention.</p>\n\n\n\n<p>[00:34:00] <strong>Nathan Wrigley:</strong> Okay, that&#8217;s great. Thank you very much. And on a more personal note, if somebody has listened to this and they would like to make contact with you. Do you have a web page or a social media profile that you would point people towards?</p>\n\n\n\n<p>[00:34:17] <strong>Pooja Derashri:</strong> I&#8217;m available on Twitter at PoojaDerashri, the same handle as my name, P O O J A D E R A S H R I. I&#8217;m available on Make WordPress Slack channel. So if anyone wants to contact me they can contact me through Twitter or Make Slack WordPress channel.</p>\n\n\n\n<p>[00:34:38] <strong>Nathan Wrigley:</strong> Well Pooja, thank you for joining me today. I think I have asked all of the questions that I wish to ask. I&#8217;ll just end by giving you the opportunity, if there was anything else that you wanted to add. If not I will say thank you very much for joining us and giving us some really important information about this really important subject. So over to you if there&#8217;s anything that I missed.</p>\n\n\n\n<p>[00:35:00] <strong>Pooja Derashri:</strong> No actually you have covered everything very well and I think there is nothing I would like to mention in hand. Just one thing I would like to state here, I heard in one of the workshops by Jill Binder that many underrepresented are experts. She shared in one of the workshops where people sometimes have a misconception that there are two different type of people, like WP experts and the underrepresented. But there is not something like that. My personal conception was changed after hearing her workshop that she stated that many underrepresented people are also experts.</p>\n\n\n\n<p>[00:35:45] <strong>Nathan Wrigley:</strong> Okay thank you. Pooja Derashri, thank you so much for joining us on the podcast today. I really appreciate it.</p>\n\n\n\n<p>[00:35:51] <strong>Pooja Derashri:</strong> Thank you. Thank you so much</p>\n</div>\n\n\n\n<p>On the podcast today we have <a href=\"https://twitter.com/poojaderashri\">Pooja Derashri</a>.</p>\n\n\n\n<p>Pooja is a co-founder of <a href=\"https://wpvibes.com/\">WPVibes</a>, a plugin development company based in India. With a passion for WordPress, Pooja has been actively involved in the community since 2013. Her journey as a contributor began in 2017, when she attended her first local WordCamp. Her expertise and dedication have earned her various key roles in the WordPress ecosystem. She currently serves as a co-team rep for the training team and GTE for the Hindi locale. In addition, she holds key positions in the WordPress release squad for versions 6.3 and 6.4, where she heads up the test team.</p>\n\n\n\n<p>Pooja shares her insights on the importance of diversity, equity, inclusion, and belonging within the WordPress community, and explores how you don’t need to be a coder to be a part of the community and all that it is.</p>\n\n\n\n<p>We discuss the work of teams like Polyglots, who focus on translating WordPress projects into different languages, and Docs, who provide much needed documentation to help users understand and contribute to the platform. These initiatives alone make it clear that WordPress is reliant on non-coding contributions, and there are more ways to contribute than ever before.</p>\n\n\n\n<p>I ask Pooja about her experiences with diversity and inclusivity in the tech industry, and she reflects on the challenges she has faced, discussing the importance of recognising and addressing unconscious biases. She shares her insights on the need for training and workshops that empower diverse individuals to contribute and speak up within the WordPress community.</p>\n\n\n\n<p>We delve into Birgit Olzem&#8217;s proposal to form an official DEIB team within WordPress, aiming to implement diversity, equity, inclusion, and belonging throughout the whole community. I express my excitement about the potential outcome of this proposal, and we think about how WordPress compares to other parts of the tech industry.</p>\n\n\n\n<p>We explore the various initiatives and efforts being made to build a more inclusive WordPress culture. From mentorship programs, to targeted outreach and safe spaces, we uncover the ways in which underrepresented voices are being uplifted.</p>\n\n\n\n<p>If you’re interested in creating a more inclusive community, this episode is for you.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Useful links mentioned in the podcast</h2>\n\n\n\n<p><a href=\"https://wptavern.com/podcast/94-birgit-olzem-and-jill-binder-on-creating-a-diverse-and-sustainable-wordpress-community\">Jukebox Podcast #94 – Birgit Olzem and Jill Binder on Creating a Diverse and Sustainable WordPress Community</a></p>\n\n\n\n<p><a href=\"https://make.wordpress.org/training/\">Training team</a></p>\n\n\n\n<p><a href=\"https://twitter.com/poojaderashri\">Pooja&#8217;s Twitter</a></p>\n\n\n\n<h2 class=\"wp-block-heading\">Links supplied by Pooja in relation to the podcast</h2>\n\n\n\n<p><a href=\"https://heropress.com/\" target=\"_blank\" rel=\"noreferrer noopener\">HeroPress</a> by Topher DeRosia</p>\n\n\n\n<p><a href=\"https://yoast.com/yoast-diversity-fund/\" target=\"_blank\" rel=\"noreferrer noopener\">Yoast Diversity Fund</a></p>\n\n\n\n<p><a href=\"https://wordpressfoundation.org/projects/kim-parsell-memorial-scholarship/\" target=\"_blank\" rel=\"noreferrer noopener\">Kim Parsell Memorial Scholarship</a></p>\n\n\n\n<p><a href=\"https://opencollective.com/thewpcc\" target=\"_blank\" rel=\"noreferrer noopener\">The WP Community Collective</a>&nbsp;by Courtney Robertson, Sé Reed, and Katie Adams Farrell</p>\n\n\n\n<p><a href=\"https://www.underrepresentedintech.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Underrepresented in Tech</a>&nbsp;by Allie Nimmons and Michelle Frechette</p>\n\n\n\n<p><a href=\"https://wpspeakers.com/\" target=\"_blank\" rel=\"noreferrer noopener\">WP Speakers</a>&nbsp;by Michelle Frechette</p>\n\n\n\n<p><a href=\"https://womeninwp.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Women in WP Show</a> by  Amy Masson,  Tracy Apps, and Angela Bow</p>\n\n\n\n<p><a href=\"https://make.wordpress.org/project/2023/07/13/proposal-for-establishing-a-make-diversity-equity-inclusion-and-belonging-deib-team-within-the-wordpress-community/\" target=\"_blank\" rel=\"noreferrer noopener\">DEIB Make WordPress team proposal</a> by Birgit Olzem</p>\n\n\n\n<p><a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/event-formats/diversity-speaker-training-workshop/\" target=\"_blank\" rel=\"noreferrer noopener\">Diversity Workshops</a> by  Jill Binder</p>\n\n\n\n<p><a href=\"https://make.wordpress.org/project/2023/08/11/the-inaugural-cohort-of-the-wordpress-contributor-mentorship-program-has-concluded/\" target=\"_blank\" rel=\"noreferrer noopener\">Contributor Mentorship Program&nbsp;</a>by&nbsp; Hari Shanker</p>\n\n\n\n<p><a href=\"https://www.youtube.com/@gowithwp\" target=\"_blank\" rel=\"noreferrer noopener\">Go with WP</a> podcast by the Nepal Community</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Oct 2023 14:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Nathan Wrigley\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"Akismet: 10 Powerful AI Marketing Tools to Grow Your Business in 2023\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://akismet.com/?p=281899\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://akismet.com/blog/ai-marketing-tools-for-business/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:38655:\"<p>AI (artificial intelligence) has drastically changed the way many industries operate. In particular, there are tons of AI marketing tools that make it quicker and easier to manage (and expand) your business. But with the growing popularity of these tools, you might find it difficult to keep up with your competitors.&nbsp;</p>\n\n\n<p>Luckily, you can retain your competitive edge and expand your business by implementing the best AI marketing tools. You can find anti&#8209;spam software, customer service automation tools, email marketing programs, and more that can take care of routine tasks and procedures. This way, you can get more done with less&nbsp;time.</p>\n\n<p>In this post, we’ll take a closer look at the features you should look for in AI marketing tools. Then, we’ll explore ten of the best AI tools for&nbsp;business.</p>\n\n\n<span id=\"more-281899\"></span>\n\n\n<h2 class=\"wp-block-heading\">What features should businesses seek in an AI marketing&nbsp;tool?</h2>\n\n\n<p>With the emergence of AI in the marketing industry, it’s much quicker and easier to complete many routine tasks. You can find tools that help you automate email campaigns, research keywords, write content, and more.&nbsp;</p>\n\n\n\n<p>When you’re able to get these tasks done faster, you can free up time to invest into other aspects of your business. Or, you can implement AI tools that help you improve your current practices. For instance, you can find advanced programs to conduct competitor research or optimize your ad campaigns.&nbsp;</p>\n\n\n<p>No matter what your motivation for using artificial intelligence marketing tools, there are a few key features to look out for when choosing them. Here are some of the main factors to&nbsp;consider:</p>\n\n\n<ul><li><strong>Automation. </strong>Automated tools, as the name suggests, work automatically. Since these tasks take place in the background, they often require minimal effort and input once&nbsp;configured.</li>\n\n<li><strong>Customization options. </strong>It’s important to find a solution that offers various customization options. This way, you can create a unique tool that fits in seamlessly with the rest of your business and&nbsp;brand.</li>\n\n<li><strong>Personalization. </strong>The drawback of using automated solutions is that you can end up adopting a one&#8209;size&#8209;fits&#8209;all approach. Still, the best AI marketing tools will provide a great deal of personalization both for you and your&nbsp;customers.</li>\n\n\n<li><strong>Data analytics. </strong>It’s vital to have access to analytics for any marketing activity for your business. This way, you can identify what’s working and what isn’t. Then, you can adjust your approach accordingly.&nbsp;</li>\n</ul>\n\n\n<p>With these things in mind, you’ll be better equipped to find the right AI marketing tools to complement your marketing&nbsp;strategy.</p>\n\n\n<h2 class=\"wp-block-heading\">The 10 best AI tools for marketing&nbsp;</h2>\n\n\n<p>Now that you know what to look for in an AI marketing tool, let’s check out ten of the best options to help grow your&nbsp;business.</p>\n\n\n<img width=\"1600\" height=\"866\" src=\"https://akismet455732288.files.wordpress.com/2023/09/image-9.png\" alt=\"Akismet home page design\" class=\"wp-image-282629\" />\n\n\n<h3 class=\"wp-block-heading\">1. <a href=\"https://akismet.com/\">Akismet: AI anti&#8209;spam that boosts conversion&nbsp;rates</a></h3>\n\n\n<p>Akismet is an automated tool that filters out comment and form spam with an accuracy rating of 99.99 percent. Better yet, the tool analyzes every piece of user-submitted content in real time to protect your site from attacks.&nbsp;</p>\n\n\n<p>The Akismet plugin provides an easy way to save time, since it can take hours to manually review comments and form submissions. In fact, the average Akismet user saves 20 hours a month by switching over from manual&nbsp;filtering.</p>\n\n<p>One of the most common ways to block spam online is to <a href=\"https://akismet.com/blog/wordpress-captcha/\">implement a CAPTCHA</a>. But this adds friction to the user experience, which can result in fewer conversions and sales. <a href=\"https://akismet.com/features/\">Akismet</a>, on the other hand, blocks spam without disrupting the user experience.&nbsp;</p>\n\n\n<p>Trusted by companies like Microsoft, Bluehost, <a href=\"https://akismet.com/blog/convertkit-customerstory/\">and ConvertKit</a>, Akismet blocks bots, but provides a quicker, smoother process for real people. Without the need to find all the stop lights or decipher jumbled text, more people will complete your forms and your bottom line can improve overnight.&nbsp;</p>\n\n\n\n<h4 class=\"wp-block-heading\">Key features:</h4>\n\n\n\n<ul><li>Spam filters with 99.99 percent&nbsp;accuracy</li>\n\n<li>Form, text, and <a href=\"https://akismet.com/blog/best-wordpress-comment-plugins-compared/\">comment spam</a>&nbsp;protection</li>\n\n<li>The ability to save 20 hours per month managing&nbsp;spam</li>\n\n\n<li>Real-time analysis</li>\n\n\n<li>An open API&nbsp;key</li>\n\n<li>Customizable enterprise&nbsp;solutions</li></ul>\n\n\n<h4 class=\"wp-block-heading\">Ease of&nbsp;use:</h4>\n\n\n<p>You can install and activate the Akismet plugin directly through your WordPress dashboard. Then, simply access the dedicated interface to find out how many pieces of spam have been blocked. You can also configure your privacy, filtering, and comments settings using simple checkboxes.&nbsp;</p>\n\n\n\n<h4 class=\"wp-block-heading\">Pricing:</h4>\n\n\n\n<p><a href=\"https://akismet.com/pricing/\">Akismet plans</a> for businesses start at $4.95 per month.&nbsp;</p>\n\n\n\n<img width=\"1600\" height=\"627\" src=\"https://akismet455732288.files.wordpress.com/2023/09/image-23.png\" alt=\"HubSpot homepage, with details about the tool\" class=\"wp-image-283373\" />\n\n\n<h3 class=\"wp-block-heading\">2. <a href=\"https://www.hubspot.com/products/marketing/marketing-automation\" target=\"_blank\" rel=\"noreferrer noopener\">HubSpot Marketing&nbsp;Automation</a></h3>\n\n<p>HubSpot provides one of the easiest ways to automate your marketing campaigns. The software uses intuitive workflows to help you launch campaigns quickly — across mediums like email, websites, SMS, and&nbsp;more.</p>\n\n<p>For instance, you can build beautiful email templates with no code. Then, configure triggers and actions to send the right emails to the right people at the right time. This way, you’re able to create more email campaigns, generate more leads, and conduct regular&nbsp;follow&#8209;ups.</p>\n\n\n<h4 class=\"wp-block-heading\">Key features:</h4>\n\n\n\n<ul><li>Email drip campaigns (with triggers, conditions, and&nbsp;actions)</li>\n\n<li>Targeted workflows with a visual&nbsp;editor</li>\n\n\n<li>Advanced segmentation</li>\n\n\n<li>The ability to personalize campaigns with CRM&nbsp;data</li>\n\n<li>Internal notification triggers following key&nbsp;actions</li>\n\n\n<li>Automated task reminders&nbsp;</li>\n\n\n<li>Logs of important campaign&nbsp;metrics</li></ul>\n\n\n<h4 class=\"wp-block-heading\">Ease of&nbsp;use:</h4>\n\n<p>Some of HubSpot’s tools can be complex and difficult to work with. But the marketing automation platform makes nearly every function accessible from the primary&nbsp;dashboard.</p>\n\n\n<p>It doesn’t require any coding experience, though coding is still an option for users who want to refine their marketing assets. Better yet, you’ll get access to a growing library of templates, reusable layouts, and resources to help you get started.&nbsp;</p>\n\n\n\n<h4 class=\"wp-block-heading\">Pricing:</h4>\n\n\n\n<p>You can try HubSpot’s marketing tools for free after creating an account. Or upgrade to the <a href=\"https://www.hubspot.com/pricing/marketing/\" target=\"_blank\" rel=\"noreferrer noopener\">Starter plan</a> for $18 per month.&nbsp;</p>\n\n\n\n<img width=\"1600\" height=\"630\" src=\"https://akismet455732288.files.wordpress.com/2023/09/image-24.png\" alt=\"Grammarly homepage with screenshots\" class=\"wp-image-283375\" />\n\n\n\n<h3 class=\"wp-block-heading\">3. <a href=\"https://www.grammarly.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Grammarly</a></h3>\n\n\n<p>Grammarly is a popular AI marketing tool that instantly generates clear, concise content. While Grammarly is well known for its spelling and grammar checking abilities, you can also use the software to improve your writing style and brand voice throughout your content&nbsp;creation.</p>\n\n\n<p>One of the best parts about Grammarly is that you can use it directly within your desktop applications and across the web. So you can easily improve all content from emails and social media posts, to documents.&nbsp;</p>\n\n\n\n<h4 class=\"wp-block-heading\">Key features:</h4>\n\n\n\n<ul><li>GrammarlyGo, which enables you to write full content pieces with just a&nbsp;prompt</li>\n\n<li>Summarized emails, and the ability to respond using context&#8209;specific&nbsp;prompts</li>\n\n<li>Integration on desktop and&nbsp;mobile</li>\n\n<li>Guidance to adjust the tone and attitude of your&nbsp;writing</li>\n\n<li>The ability to create shared guidelines across your&nbsp;team</li>\n\n<li>Integrations with over 500,000 applications, like Gmail, Google Docs, Microsoft, and&nbsp;Slack</li>\n\n<li>Enterprise&#8209;grade privacy and&nbsp;security</li></ul>\n\n\n<h4 class=\"wp-block-heading\">Ease of&nbsp;use:</h4>\n\n\n<p>Once you install Grammarly, you can select your preferred English dialect and writing style in your account settings. Then, the tool works automatically to elevate your writing.&nbsp;</p>\n\n\n\n<p>You’ll receive various types of suggestions, highlighted in different colors. Then, you’re able to click on each suggestion to find more information about it. Plus, it’s easy to accept or reject the suggestions.&nbsp;</p>\n\n\n\n<h4 class=\"wp-block-heading\">Pricing:</h4>\n\n\n\n<p>It’s completely free to create a Grammarly account. Or, opt for the <a href=\"https://www.grammarly.com/plans\" target=\"_blank\" rel=\"noreferrer noopener\">Premium plan</a> to access full-sentence rewrites, tone suggestions, and vocabulary ideas. This costs $12 per month with an annual subscription.&nbsp;</p>\n\n\n\n<img width=\"1600\" height=\"673\" src=\"https://akismet455732288.files.wordpress.com/2023/09/image-25.png\" alt=\"Synthesia homepage with a video\" class=\"wp-image-283378\" />\n\n\n\n<h3 class=\"wp-block-heading\">4. <a href=\"https://www.synthesia.io/\" target=\"_blank\" rel=\"noreferrer noopener\">Synthesia</a>&nbsp;</h3>\n\n\n<p>Synthesia is a neat AI marketing tool that instantly converts your written content into high&#8209;quality videos. You can choose from a bunch of natural&#8209;sounding AI voices in over 120 languages. Meanwhile, you’re able to make your videos more engaging with over 140&nbsp;avatars.</p>\n\n\n<p>Synthesia is a great choice for agencies that produce training videos at scale. You can create, share, and edit videos all in one place. And, there are plenty of e-learning courses in sales, customer service, and marketing to help get your team up to speed.&nbsp;</p>\n\n\n\n<h4 class=\"wp-block-heading\">Key features:</h4>\n\n\n\n<ul><li>Consistent voices in over 120&nbsp;languages</li>\n\n<li>Automatic closed&nbsp;captions</li>\n\n<li>The ability to clone your own&nbsp;voice</li>\n\n<li>Over 140 avatars (or create your&nbsp;own)</li>\n\n<li>Video prototypes that you can share with your&nbsp;team</li>\n\n\n<li>One-click video updates&nbsp;</li>\n\n\n\n<li>SOC 2 and GDPR compliance&nbsp;&nbsp;</li>\n\n\n\n<li>Over 200 free templates&nbsp;</li>\n\n\n<li>Integrations with WordPress and&nbsp;YouTube</li></ul>\n\n\n<h4 class=\"wp-block-heading\">Ease of&nbsp;use:</h4>\n\n\n<p>This AI video generator is very easy to use thanks to Synthesia’s clean, simple interface. To start making videos, you’ll enter your audience and topic before generating a script.&nbsp;</p>\n\n\n\n<p>Next, you’re able to choose a layout for all the different scenes. Then, you can replace avatars, edit your script directly, and overlay text, images, or your business logo. When you’re done, you can download the video to share as part of your social media marketing or generate a handy link to embed it on your website.&nbsp;</p>\n\n\n\n<h4 class=\"wp-block-heading\">Pricing:</h4>\n\n\n\n<p>Synthesia provides custom enterprise packages for large companies following a demo. But, you can get started with the <a rel=\"noreferrer noopener\" href=\"https://www.synthesia.io/pricing\" target=\"_blank\">Synthesia Personal plan</a> for $22.50 per month.&nbsp;</p>\n\n\n\n<img width=\"1999\" height=\"912\" src=\"https://akismet455732288.files.wordpress.com/2023/09/image14-1.png\" alt=\"Albert homepage with a dark background\" class=\"wp-image-283379\" />\n\n\n\n<h3 class=\"wp-block-heading\">5. <a href=\"https://albert.ai/\" target=\"_blank\" rel=\"noreferrer noopener\">Albert.ai</a></h3>\n\n\n<p>Albert is one of the best AI&#8209;powered tools for business because it can help you improve the effectiveness of your digital advertising. For instance, Albert can group keywords, build campaigns and audiences, manage budget allowance, optimize media, and provide reports with key&nbsp;insights.</p>\n\n<p>It’s a fully autonomous solution that can pretty much run the bulk tasks for certain marketing campaigns. This makes it one of the most valuable options on the list. All&#8209;in&#8209;all, it can save you tons of time, and improve the success of your&nbsp;campaigns.</p>\n\n\n<h4 class=\"wp-block-heading\">Key features:</h4>\n\n\n\n<ul><li>Analytics with data&nbsp;visualization</li>\n\n<li>A dedicated dashboard to manage&nbsp;campaigns</li>\n\n\n<li>Calendar management</li>\n\n\n<li>A/B split&nbsp;testing</li>\n\n\n<li>Ad variations</li>\n\n\n<li>Budget allocation and&nbsp;scheduling</li>\n\n\n<li>Bid optimization&nbsp;</li>\n</ul>\n\n\n<h4 class=\"wp-block-heading\">Ease of&nbsp;use:</h4>\n\n\n<p>Albert gives you access to an intuitive dashboard where it’s easy to track your budget allowance and oversee your advertising tasks. Additionally, Albert can handle super complex tasks with ease, which saves your business time and resources. It’s constantly learning and adapting, so your campaigns will be continually improving.&nbsp;</p>\n\n\n\n<h4 class=\"wp-block-heading\">Pricing:</h4>\n\n\n<p>Albert offers customized pricing plans. That means you’ll need to <a href=\"https://albert.ai/pricing/\" target=\"_blank\" rel=\"noreferrer noopener\">request an estimate</a> to get an idea of what you can expect to&nbsp;pay.</p>\n\n\n<img width=\"1600\" height=\"685\" src=\"https://akismet455732288.files.wordpress.com/2023/09/image-26.png\" alt=\"Phrasee homepage with examples of the tool in use\" class=\"wp-image-283381\" />\n\n\n\n<h3 class=\"wp-block-heading\">6. <a href=\"https://phrasee.co/\" target=\"_blank\" rel=\"noreferrer noopener\">Phrasee</a></h3>\n\n\n<p>Phrasee provides one of the easiest ways to elevate your online marketing messaging. You can use the software to predict what content will resonate most with your audience. Plus, you can optimize all of your content, and gain insight into what’s working and what’s&nbsp;not.</p>\n\n<p>What’s more, Phrasee is a great option for agencies, since each team member will get access to a stylish dashboard where they’ll find performance data and language insights. Here, you can also automate A/B split tests, and create high&#8209;performing marketing content for every stage of your customer journey to more effectively implement your marketing&nbsp;strategy.</p>\n\n\n<h4 class=\"wp-block-heading\">Key features:</h4>\n\n\n\n<ul><li>Copy generation in real&nbsp;time</li>\n\n<li>Content Engine, which crafts material that’s backed by&nbsp;data</li>\n\n<li>Brand compliance&nbsp;support</li>\n\n<li>Support for all major digital channels, from emails to blog&nbsp;posts</li>\n\n<li>The ability to adjust the distribution of your message variants on the&nbsp;fly</li>\n\n<li>Integration with leading ESPs, CDPs, and digital engagement&nbsp;platforms</li></ul>\n\n\n<h4 class=\"wp-block-heading\">Ease of&nbsp;use:</h4>\n\n\n<p>Phrasee is a complex tool, but it’s easy to learn how to use. You can access all of Phrasee’s AI features from one intuitive dashboard.&nbsp;</p>\n\n\n\n<p>Plus, the platform offers planning, creation, optimization, and analytics, so you won’t need separate solutions for each of these tasks. Better yet, it’s a great option for enterprise marketing teams, since the package includes unlimited seats.&nbsp;</p>\n\n\n\n<h4 class=\"wp-block-heading\">Pricing:</h4>\n\n\n<p><a href=\"https://phrasee.co/pricing/\" target=\"_blank\" rel=\"noreferrer noopener\">The Starter plan</a> costs $500 a month, but includes unlimited content writing and unlimited seats. Phrasee also offers flexible enterprise solutions which might be best for larger&nbsp;businesses.</p>\n\n\n<img width=\"1600\" height=\"736\" src=\"https://akismet455732288.files.wordpress.com/2023/09/image-27.png\" alt=\"FullStory homepage with stats about their success\" class=\"wp-image-283384\" />\n\n\n\n<h3 class=\"wp-block-heading\">7. <a href=\"https://www.fullstory.com/\" target=\"_blank\" rel=\"noreferrer noopener\">FullStory</a></h3>\n\n\n\n<p>FullStory uses proprietary autocapture technology to monitor the quality of your digital experience. For instance, you can see where (and why) visitors are struggling with your website or mobile app.&nbsp;</p>\n\n\n\n<p>Better yet, the software flags opportunities for improvement, and prioritizes these changes by quantifying impact. This way, you can reduce friction on your site and increase sales and conversions. And, with tons of integrations, FullStory can work seamlessly with tools that your team is already using.&nbsp;</p>\n\n\n\n<h4 class=\"wp-block-heading\">Key features:</h4>\n\n\n\n<ul><li>Tagless web&nbsp;autocapture</li>\n\n<li>Core product&nbsp;analytics</li>\n\n\n<li>Conversion analysis</li>\n\n\n\n<li>Retention analysis</li>\n\n\n\n<li>Session replays</li>\n\n\n<li>Robust privacy&nbsp;settings</li></ul>\n\n\n<h4 class=\"wp-block-heading\">Ease of&nbsp;use:</h4>\n\n\n<p>FullStory is a highly user-friendly tool, especially when it comes to developing analytics. All you need to do is create a metric and add it to your dashboard.&nbsp;</p>\n\n\n\n<p>You can also set up different dashboards with different metrics. Better yet, FullStory adapts a “set it and forget it” model, so you can simply return to the dashboard to check on your website’s performance.&nbsp;</p>\n\n\n\n<h4 class=\"wp-block-heading\">Pricing:</h4>\n\n\n<p>FullStory offers <a href=\"https://www.fullstory.com/plans/\" target=\"_blank\" rel=\"noreferrer noopener\">three plans</a>: Business, Advanced, and Enterprise. But, you won’t find prices on the website. The good news is that you can test the product for 14 days. Plus, you can speak with a professional to choose the right plan for your&nbsp;business.</p>\n\n\n<img width=\"1600\" height=\"793\" src=\"https://akismet455732288.files.wordpress.com/2023/09/image-28.png\" alt=\"Zapier homepage with icons of tools it integrates with\" class=\"wp-image-283385\" />\n\n\n\n<h3 class=\"wp-block-heading\">8. <a href=\"https://zapier.com/\" target=\"_blank\" rel=\"noreferrer noopener\">Zapier</a></h3>\n\n\n<p>Zapier is a handy AI marketing tool that enables you to build custom workflows and automate many routine tasks. Better yet, it can connect tons of apps that you’re currently using to help save time and&nbsp;energy.</p>\n\n<p>All you need to do is describe what you want to automate and Zapier will write the code and build the Zaps for you. Additionally, many tasks can be automated directly within the ChatGPT interface where you can execute over 30,000 Zapier&nbsp;actions.</p>\n\n\n<h4 class=\"wp-block-heading\">Key features:</h4>\n\n\n\n<ul><li>More than 30 AI app&nbsp;partners</li>\n\n\n<li>Multistep Zaps</li>\n\n\n<li>The ability to save multiple versions of your&nbsp;Zaps</li>\n\n<li>Retries for any task&nbsp;failures</li>\n\n<li>Custom logic based on certain&nbsp;conditions</li>\n\n\n<li>Advanced workflows</li>\n\n\n<li>Shared app connections (Team&nbsp;plan)</li>\n\n<li>Live chat (Team&nbsp;plan)</li></ul>\n\n\n<h4 class=\"wp-block-heading\">Ease of&nbsp;use:</h4>\n\n\n<p>Zapier easily makes connections between various apps, so you don’t need to manage them all separately. Better yet, since Zapier automates actions between apps, you don&#8217;t need to monitor tasks yourself. In Zapier’s well-organized interface, you’ll lay out the triggers and steps that you want to occur, and the tool takes care of all the behind-the-scenes coding.&nbsp;</p>\n\n\n\n<h4 class=\"wp-block-heading\">Pricing:</h4>\n\n\n\n<p>You can start with Zapier for free, but this will only give you access to 100 tasks per month and single-step Zaps. <a href=\"https://zapier.com/pricing\" target=\"_blank\" rel=\"noreferrer noopener\">Premium Zapier plans</a> are highly customizable. You can choose from four tiers, then select the number of tasks you can use per month, paying accordingly. Plans start at $19.99 per month for 750 tasks per month.&nbsp;</p>\n\n\n\n<img width=\"1600\" height=\"853\" src=\"https://akismet455732288.files.wordpress.com/2023/09/image-29.png\" alt=\"Chatfuel homepage with a bright green background\" class=\"wp-image-283386\" />\n\n\n\n<h3 class=\"wp-block-heading\">9. <a href=\"https://chatfuel.com/\" target=\"_blank\" rel=\"noreferrer noopener\">ChatFuel</a></h3>\n\n\n<p>ChatFuel is one of the best AI tools for ecommerce businesses and marketers. It can help boost your lead generation and increase revenue on WhatsApp. It enables you to improve your customer service and response times by adding unlimited agents to just one business&nbsp;number.</p>\n\n\n<p>You’ll also get the verified green badge, so customers know you’re trustworthy. Then, you can display personalized messages, collect customer feedback, and activate drip campaigns with an automated triggering system.&nbsp;</p>\n\n\n\n<h4 class=\"wp-block-heading\">Key features:</h4>\n\n\n\n<ul><li>99.99 percent uptime&nbsp;guarantee</li>\n\n\n<li>GDPR compliance</li>\n\n\n\n<li>A/B testing</li>\n\n\n<li>Audience segmentation based on behavior and&nbsp;preferences</li>\n\n<li>Auto&#8209;replies to Instagram messages or&nbsp;mentions</li>\n\n<li>The ability to chat with visitors via the Messenger&nbsp;button</li>\n\n<li>Integration with&nbsp;ChatGPT</li>\n\n<li>The ability to sell products on&nbsp;WhatsApp</li>\n\n<li>Personalized messages to recover abandoned&nbsp;carts</li></ul>\n\n\n<h4 class=\"wp-block-heading\">Ease of&nbsp;use:</h4>\n\n\n<p>ChatFuel provides one of the easiest and most intuitive chatbots on the market. It gives you access to a straightforward platform that’s simple and scalable. Plus, there’s a wide range of features to configure more complex chatbots if you need them.&nbsp;</p>\n\n\n\n<h4 class=\"wp-block-heading\">Pricing:</h4>\n\n\n<p>You can try out ChatFuel at no cost. The free plan supports 50 conversions per month. You can upgrade, with <a href=\"https://chatfuel.com/pricing-main\" target=\"_blank\" rel=\"noreferrer noopener\">premium ChatFuel plans</a> starting at $14.99 per&nbsp;month.</p>\n\n\n<img width=\"1600\" height=\"698\" src=\"https://akismet455732288.files.wordpress.com/2023/09/image-30.png\" alt=\"Keyword Insights AI homepage\" class=\"wp-image-283388\" />\n\n\n<h3 class=\"wp-block-heading\">10. <a href=\"https://www.keywordinsights.ai/\" target=\"_blank\" rel=\"noreferrer noopener\">Keyword Insights&nbsp;AI</a></h3>\n\n<p>With Keyword Insights AI, you’re able to generate thousands of keyword ideas and group them into topic clusters. Then, it’s easy to create and optimize content without spending lots of time implementing key search engine optimization&nbsp;techniques.</p>\n\n<p>Better yet, you can quickly identify the search intent behind your chosen keywords, whether it’s transactional, informational, or something else. Then, when you’re happy with your keyword choice, you can send the cluster for brief creation in just a click. All of this contributes to a smoother, faster content creation&nbsp;process.</p>\n\n\n<h4 class=\"wp-block-heading\">Key features:</h4>\n\n\n\n<ul><li>Clusters for up to 45,000&nbsp;keywords</li>\n\n<li>The ability to create content&nbsp;briefs</li>\n\n<li>Up to 20 keyword searches per&nbsp;month</li>\n\n<li>Live Chat&nbsp;support</li>\n\n<li>SERP Similarity&nbsp;Pro</li>\n\n<li>SERP Explorer&nbsp;Pro</li>\n\n<li>Team sharing and reporting (with paid&nbsp;plans)</li>\n\n\n<li>Cluster analysis</li>\n</ul>\n\n\n<h4 class=\"wp-block-heading\">Ease of&nbsp;use:</h4>\n\n\n<p>Keyword Insights AI gives you access to a user-friendly interface where you can generate a large list of keywords around a certain topic quickly and easily. Then, you can group keywords and uncover topical clusters that are missing from your content.&nbsp;</p>\n\n\n\n<p>Next, with the AI-driven content brief generator, you’re able to create an outline for a piece of content. And in just one click, you can send off the outline to your team for review, or direct the brief straight to your content writer.&nbsp;</p>\n\n\n\n<h4 class=\"wp-block-heading\">Pricing:</h4>\n\n\n<p>You can try Keyword Insights AI for $1 for four days. Then, upgrade to one of its <a href=\"https://www.keywordinsights.ai/pricing/\" target=\"_blank\" rel=\"noreferrer noopener\">paid plans</a> from $58 per month. This includes 6000 keyword clusters, ten content briefs, and five keyword searches per&nbsp;month.</p>\n\n\n<h2 class=\"wp-block-heading\">Factors to consider when choosing an AI marketing tool&nbsp;</h2>\n\n\n<p>While there are many useful AI marketing tools available, it’s important to find the right option for your unique business needs. Here are some key factors to consider when choosing artificial intelligence platforms to&nbsp;implement.</p>\n\n\n<h3 class=\"wp-block-heading\">Algorithm type</h3>\n\n\n<p>There are four main types of machine learning algorithms to choose from. Since each algorithm can result in a different level of accuracy and performance, this is an important factor to consider before opting for a particular AI&nbsp;tool.</p>\n\n<p>For instance, supervised learning algorithms can draw conclusions, make estimations, and develop an understanding between different algorithms. Typically, this type of learning is used to analyze trends or make predictions about your&nbsp;content.</p>\n\n\n<p>You can also find tools that rely on semi-supervised learning. This works similarly to supervised learning, but it uses labeled (contains tags to help sort information) and unlabeled data.&nbsp;</p>\n\n\n<p>Meanwhile, unsupervised learning is a great way to identify patterns and correlations. It’s often used to cluster similar data sets for tasks like customer&nbsp;segmentation.</p>\n\n\n<p>Lastly, reinforced algorithms provide a set of parameters to teach the software using trial and error. These tools learn through experience and can adapt their approach according to different situations.&nbsp;</p>\n\n\n<h3 class=\"wp-block-heading\">Integration with other&nbsp;systems</h3>\n\n<p>While there are plenty of excellent AI tools, it’s important to assess whether the platform will fit nicely within your current workflow. So, it’s a good idea to take a look at the possible integrations, and how easy it is to connect the&nbsp;platforms.</p>\n\n\n<img width=\"1600\" height=\"916\" src=\"https://akismet455732288.files.wordpress.com/2023/09/image-31.png\" alt=\"list of available Akismet integrations\" class=\"wp-image-283390\" />\n\n\n<p>What’s more, it’s best to plan ahead when possible. For example, if you plan on expanding your business, you might be looking to upgrade certain systems. Keep this in mind when selecting your AI marketing tools. This way, you can prevent any future disruptions to your usual&nbsp;procedures.</p>\n\n<h3 class=\"wp-block-heading\">Ease of&nbsp;use</h3>\n\n\n<p>Most platforms that feature AI boast about speed and automation. It’s these qualities that enable you to increase productivity and manage (or monitor) your business more efficiently.&nbsp;</p>\n\n\n\n<p>But some AI tools for businesses can be tricky to set up. For instance, some complex platforms can require access to your CRM or other types of data, which can be difficult to establish.&nbsp;</p>\n\n\n<p>Additionally, while most AI tools don’t require any coding skills, they might not be suitable for beginners. That’s why it’s a good idea to thoroughly read the customer reviews to get a sense of a tool’s&nbsp;usability.</p>\n\n<p>Sometimes, you can even try a demo or access a free trial first. That way, you can determine whether the tool will be accessible and manageable for everybody on your team. Plus, you can sometimes find free resources and forums where you can gain support and solutions to your&nbsp;problems.</p>\n\n\n<h3 class=\"wp-block-heading\">Updates</h3>\n\n\n\n<p>No matter what kind of tool you add to your business (whether AI or not), it’s important to make sure that it’s updated regularly. This way, you know that the development team is still active, and the tool isn’t running outdated technology. You should expect new features to be released, which can give your business a competitive edge.&nbsp;</p>\n\n\n<p>But updates are also important for security. That’s because the longer a piece of software has been available, the more likely hackers can find a way around its security barriers. Meaning, outdated software can be used as a backdoor to your site. Plus, most updates come with fixes for common bugs and&nbsp;errors.</p>\n\n\n<p>When you’re dealing with an AI-powered tool specifically, updates are even more vital to the success of your business. This is because AI content creation tools are trained on resources until a certain point.&nbsp;</p>\n\n\n<p>For instance, <a href=\"https://openai.com/blog/chatgpt\" target=\"_blank\" rel=\"noreferrer noopener\">ChatGPT</a> is only trained on data until late 2021. Essentially, if your chosen AI tool isn’t being updated frequently, you risk publishing outdated content, which can affect your search ranking and&nbsp;trustworthiness.</p>\n\n\n<h3 class=\"wp-block-heading\">Scalability</h3>\n\n\n<p>Typically, when business owners and marketers start looking for new tools, they consider their current situation. But it’s important to consider future plans as well. Are you expecting any significant growth? Does your business fluctuate at certain times of the&nbsp;year?</p>\n\n<p>If this is the case, you can outgrow your new tool and require an upgrade, or, an entirely new solution. Therefore, it’s best to factor this into your decision&#8209;making process. You can even find specific AI marketing tools that offer plans that make it easy to scale resources up and&nbsp;down.</p>\n\n<h3 class=\"wp-block-heading\">Security and&nbsp;privacy</h3>\n\n<p>One of the most important factors when choosing the best AI tool is security and privacy. You’ll want to make sure that your business is protected, and that any sensitive data like customer information and payment details are kept&nbsp;confidential.</p>\n\n\n<p>With this in mind, pay attention to the tool’s data handling practices, encryption methods, and compliance with regulations like GDPR. That way, you can assess whether there are any risks associated with implementing the tool on your website.&nbsp;</p>\n\n\n\n<h2 class=\"wp-block-heading\">Frequently asked questions&nbsp;</h2>\n\n\n<p>Up to now, we’ve tried to cover everything you need to know about AI marketing tools, but you still may have a few doubts. So, in this section, we’ll answer some of the most common questions on the&nbsp;subject.</p>\n\n<h3 class=\"wp-block-heading\">How do I know which AI marketing tool to&nbsp;choose?</h3>\n\n\n<p>Since there are so many diverse AI marketing tools, it can be difficult to choose the right solution for your business. Typically, this will depend on your own unique needs.&nbsp;</p>\n\n\n\n<p>In any case, Akismet is a great tool for practically every business, since spam will always be an issue for any website. With Akismet, you can block all comment, form, and text spam without the need to manually analyze every submission.&nbsp;</p>\n\n\n<p>Better yet, Akismet boasts a 99.99% detection accuracy rate. Unlike other anti&#8209;spam solutions such as CAPTCHAs, Akismet performs these tasks without disrupting the user&nbsp;experience.</p>\n\n<h3 class=\"wp-block-heading\">How can AI tools help businesses improve their marketing&nbsp;strategies?</h3>\n\n<p>There are tons of artificial intelligence tools that can help businesses improve their marketing strategies. Most of these platforms make it easier and quicker to perform certain functions, enabling you to increase your content output and make your campaigns more&nbsp;effective.</p>\n\n\n<p>For instance, you can identify thousands of keywords and topical clusters using a content strategy tool like AI Keyword Insights. Meanwhile, ChatFuel enables you to boost lead generation and revenue across social media marketing apps like WhatsApp, Instagram, and Facebook. Synthesia transforms simple text prompts into engaging videos in just a few minutes.&nbsp;</p>\n\n\n<h3 class=\"wp-block-heading\">How does AI help businesses with lead&nbsp;generation?</h3>\n\n\n<p>By implementing the best AI marketing tools, you can improve many aspects of your business, including lead generation.&nbsp;</p>\n\n\n\n<p>In particular, Akismet is a great way to get more leads on your website. That’s because the tool <a href=\"https://akismet.com/blog/best-anti-spam-wordpress-plugins-compared/\">protects your site against spam</a> (and the associated risks), without adding friction to the user experience.&nbsp;</p>\n\n\n\n<p>Many websites ask visitors to prove that they’re not a robot using protocols like CAPTCHA, this can be frustrating for visitors who might decide to exit your page.&nbsp;</p>\n\n\n<p>Akismet is more user&#8209;friendly, so it can help you increase conversions and sales on your&nbsp;site.</p>\n\n<h3 class=\"wp-block-heading\">What are the technical requirements for implementing AI tools in&nbsp;marketing?</h3>\n\n\n<p>The requirements for integrating and using AI tools will vary depending on your choice. Adding them to your workflows and practices may take a while, though the efficiency gained will quickly make it a worthwhile effort.&nbsp;</p>\n\n\n<p>But, if your site is on WordPress, implementing Akismet is as easy as installing the plugin directly from your WordPress&nbsp;dashboard.</p>\n\n\n<p>To do this, go to <strong>Plugins </strong>→ <strong>Add New </strong>within your WordPress dashboard. Here, search for “Akismet” and it will be the top option that’s presented.&nbsp;</p>\n\n\n\n<img width=\"1280\" height=\"636\" src=\"https://akismet455732288.files.wordpress.com/2023/09/image-32.png\" alt=\"Akismet plugin in the WordPress dashboard\" class=\"wp-image-283393\" />\n\n\n\n<p>Then, select <strong>Install Now </strong>→ <strong>Activate. </strong>After that, navigate to <strong>Settings </strong>→ <strong>Akismet Anti-Spam.&nbsp;</strong></p>\n\n\n\n<img width=\"316\" height=\"548\" src=\"https://akismet455732288.files.wordpress.com/2023/09/image-33.png\" alt=\"Aksimet Anti-Spam settings in the dashboard\" class=\"wp-image-283394\" />\n\n\n<p>If you already have an API key, click on <strong>Manually enter an API key. </strong>Or, choose <strong>Set up your Akismet&nbsp;account</strong>.</p>\n\n\n<img width=\"1600\" height=\"760\" src=\"https://akismet455732288.files.wordpress.com/2023/09/image-34.png\" alt=\"Akismet setup wizard\" class=\"wp-image-283395\" />\n\n\n\n<p>Since the tool starts working automatically, you can start enjoying robust anti-spam protection without lifting a finger.&nbsp;</p>\n\n\n<h3 class=\"wp-block-heading\">What is an example of an AI tool that addresses a significant marketing&nbsp;challenge?</h3>\n\n<p>One of the biggest challenges in marketing is finding a way to block spam without ruining the user experience. Traditionally, website owners and marketers use methods like CAPTCHA to reduce spam, since this entails the visitor proving that they aren’t a&nbsp;robot.</p>\n\n\n<img width=\"770\" height=\"925\" src=\"https://akismet455732288.files.wordpress.com/2023/09/image-35.png\" alt=\"CAPTCHA example with red spheres\" class=\"wp-image-283396\" />\n\n\n<p>The problem with CAPTCHA is that it can lead to fewer conversions since it adds friction to the user experience. This can be frustrating for visitors who might choose to leave your website, ditch your form, or abandon their&nbsp;cart.</p>\n\n<p>But, Akismet is a clever AI tool that filters your comment, text, and form spam automatically. It eliminates the need for CAPTCHA by analyzing submissions in real&#8209;time with 99.99%&nbsp;accuracy.</p>\n\n<h3 class=\"wp-block-heading\">What are the benefits of using Akismet’s AI&#8209;powered spam&nbsp;protection?</h3>\n\n<p>There are tons of benefits to using Akismet’s AI&#8209;powered spam protection. First off, it enables you to filter spam from your site without implementing intrusive alternatives like CAPTCHA. This way, you can keep visitors on your website and increase your conversion&nbsp;rate.</p>\n\n<p>Akismet blocks form and comment spam with incredible accuracy. By analyzing any piece of user&#8209;submitted text, you can keep your website better protected against common security&nbsp;threats.</p>\n\n\n<p>What’s more, using Akismet saves site administrators an average of 20 hours per month when it replaces a manual spam filtering process.&nbsp;</p>\n\n\n<p>Akismet provides a flexible API, so it’s easy to build it into any enterprise application your organization may&nbsp;use.</p>\n\n<h3 class=\"wp-block-heading\">What types of companies generally use&nbsp;Akismet?</h3>\n\n<p>Akismet is a powerful anti&#8209;spam solution that can be used by complete beginners. But, it’s also a great option for small businesses and <a href=\"https://akismet.com/enterprise/\">large&nbsp;enterprises</a>.</p>\n\n\n<p>For instance, there are currently over 100 million websites using the AI-powered Akismet tool. Some of these brands include Microsoft, WordPress.com, Bluehost, and ConvertKit. And across these websites, Akismet has blocked over 545,000,000,000 pieces of spam.&nbsp;</p>\n\n\n<h2 class=\"wp-block-heading\">Akismet: AI&#8209;powered spam protection that boosts conversion&nbsp;rates</h2>\n\n<p>AI marketing tools can simplify many aspects of running your business. This way, you can complete tons of tasks in a much shorter time frame. Plus, you can offload routine procedures and free up time to invest into other areas of your business, like&nbsp;growth.</p>\n\n<p>With this in mind, you might want to implement a tool like <a href=\"https://www.grammarly.com/\">Grammarly</a> to enhance your copy. <a href=\"https://zapier.com/\">Zapier</a> can enable you to build custom workflows by connecting tons of apps. Or you could use a tool like <a href=\"https://www.synthesia.io/\">Synthesia</a> to create high&#8209;quality videos with no&nbsp;equipment.</p>\n\n<p>Additionally, Akismet provides robust anti&#8209;spam protection. Using advanced AI, Akismet filters out comment and form spam with 99.99% accuracy. Better yet, user submissions are analyzed in real time, and Akismet works without disrupting the user experience. <a href=\"https://akismet.com/pricing/\">Get started with Akismet&nbsp;today</a>!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Oct 2023 13:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Jen Swisher\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Matt: Cost of Spam\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"https://ma.tt/?p=101397\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://ma.tt/2023/10/cost-of-spam/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1551:\"<p><a href=\"https://fortune.com/2023/10/17/twitter-x-charging-new-users-1-dollar-year-to-tweet/\">Twitter/X is testing charging users $1/year</a> with the idea that will keep out bots and spam. It&#8217;s an appealing idea, and charging definitely does introduce a &#8220;proof of work&#8221; that wasn&#8217;t there before, but the history of the web shows this is not really a big deterrent. Domains cost money, usually a lot more than a dollar a year, and millions are used for spam or nefarious purposes. The spammers obviously thought their benefit would be more than the cost of the domain, or they use stolen credit cards and identities. Charging may cause a short-term drop in bots while the bad guys update their scripts, but the value of manipulating X/Twitter is so high I imagine there is already millions of dollars being spent on it.</p>\n\n\n\n<p>Long term to keep a platform healthy you really have to take a nuanced look at behavior and content, like Automattic does with <a href=\"https://akismet.com/\">Akismet</a>, and have a fairly sophisticated trust and safety operation with great engineers. T&amp;S is really important, not an enemy of progress, which would have been my chief edit to the otherwise exciting <a href=\"https://a16z.com/the-techno-optimist-manifesto/\">The Techno-Optimist Manifesto by Marc Andreessen</a>. (If you missed Marc&#8217;s <a href=\"https://a16z.com/ai-will-save-the-world/\">Why AI Will Save the World</a>, that&#8217;s also an excellent read with dozens of references you can go down a rabbit hole with.)</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Oct 2023 09:18:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"HeroPress: The Fuel Of Everything That’s Great In The World – Rotițele care fac lumea să se miște\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=5952\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:168:\"https://heropress.com/essays/the-fuel-of-everything-thats-great-in-the-world/#utm_source=rss&utm_medium=rss&utm_campaign=the-fuel-of-everything-thats-great-in-the-world\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:24704:\"<img width=\"1024\" height=\"512\" src=\"https://heropress.com/wp-content/uploads/2023/10/101723-min.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I think people are the fuel of everything that’s great in this world. — Cred că oamenii sunt catalizatorul a ceea ce este mai bun în lume.\" /><p><a href=\"https://heropress.com/feed/#romanian\">Eseul este disponibil și în română.</a></p>\n\n\n\n<p>It&#8217;s a beautiful coincidence how, at the time of writing this story, I&#8217;m a few weeks shy of celebrating nine years of working at Themeisle. I think it&#8217;s a big deal to have this continuity and consistency in something.&nbsp;</p>\n\n\n\n<p>This anniversary also marks nine years of being part of the WordPress community. But let&#8217;s start from the beginning.</p>\n\n\n\n<h2 class=\"wp-block-heading\" id=\"h-from-journalism-to-content-writing\">From journalism to content writing</h2>\n\n\n\n<p>When I started working at Themeisle, I barely knew anything about WordPress. My only links to it were a personal blog on WordPress.com that I had created in college and writing for a few press websites in Romania that were built on WordPress.&nbsp;</p>\n\n\n\n<p>That was all I knew about WordPress, which was not zero (I just knew how to write a post and publish it) but still far from what I should have known for the job. I was willing to learn, though, and here I am nine years later. Actually, I would say that I got here, in the WordPress community, rather accidentally than intentionally.</p>\n\n\n\n<p>Having a degree in Journalism and Communication Studies, my initial plans were revolving around being a sports reporter or press journalist. Funny enough, I ended up doing a different kind of press… WordPress. Haha!</p>\n\n\n\n<p>But before getting into the WordPress world, I was an aspiring journalist for a short time. Or a wanna-be journalist, if you will. I was adding brick by brick to the career in journalism that I had envisioned for myself.&nbsp;</p>\n\n\n\n<p>One of these bricks was an <a href=\"https://www.sportrevolution.ro/catalina-ponor-mi-am-dorit-sa-fiu-printre-putinele-gimnaste-din-tara-care-au-mers-la-doua-olimpiade/\">interview with Cătălina Ponor</a> &#8211; a three-time Olympic champion in artistic gymnastics and one of the best Romanian gymnasts. She used to be one of my sports idols growing up.&nbsp;</p>\n\n\n\n<p>Another brick to the journalism career was a feature article about how corruption in Romania was slowly killing performance in sports. This article, initially published on a website called Semnal Plus, received a lot of engagement and appreciation from Romanian sports fans. It eventually <a href=\"https://treizecizero.ro/burse/2015/12/08/sportul-comoara-nationala-care-ne-scapa-printre-degete/\">ended up on a popular tennis publication</a> in Romania &#8211; Treizecizero &#8211; as part of a writing contest, which brought me an internship with their editorial team.</p>\n\n\n\n<p>I did write more similar content during college about sports for a popular sports newspaper in Romania and about rock/metal music for a niche news website. I remember being particularly proud of a bunch of them. They gave me the confidence that I had it in me for this career.&nbsp;</p>\n\n\n\n<p>But the future had different plans for me.&nbsp;</p>\n\n\n\n<p>Soon after, I began to realize that being a reporter or press writer would bring too much stress, lack of free time, and little money. Let alone giving away a little bit of your dignity every day. At least, this is how I would describe most of the journalism work in Romania.&nbsp;</p>\n\n\n\n<p>For me, these factors played a big role in thinking that maybe, just maybe, I could explore some other options to see if there was something there for me that wasn’t a direct affront to these values that were paramount to me.</p>\n\n\n\n<h2 class=\"wp-block-heading\" id=\"h-working-at-themeisle\">Working at Themeisle</h2>\n\n\n\n<p>I’m not exaggerating for the sake of the story when I tell you that I got lucky finding Themeisle’s job announcement on a Facebook group. They were looking for a WordPress content writer. I didn’t even know what that meant, really. I just knew that yes, I did publish some articles on WordPress, so what could go wrong? I mean, I’ve used the platform before.&nbsp;</p>\n\n\n\n<p>Well, it turned out to be different from what I expected because the job didn’t imply writing on WordPress but writing <em>about</em> WordPress. Which got me confused. So I had to learn the inside-outs of WordPress <em>while</em> I was trying to do my job.</p>\n\n\n\n<p>Even more, the job implied writing in English, which I had never done before. All my writing up until that point used to be in Romanian. This was also a struggle, to completely switch the language and make it sound okay and readable.&nbsp;</p>\n\n\n\n<p>It was not easy to start from almost zero experience and knowledge. And not once did I feel like an impostor seeing other people excelling at their jobs. I used to be so hard on myself, beating myself up for every little mistake and feedback that was not meeting my expectations.&nbsp;</p>\n\n\n\n<p>In a way, that’s a good thing because this is how you evolve. But now, as I’m getting wiser, I understand that this was a sign of perfectionism, which I will never achieve and I don’t even want to anymore. Simply because it doesn’t exist.&nbsp;</p>\n\n\n\n<p>As I was saying, I started my journey at Vertigo Studio (the company behind <a href=\"https://themeisle.com/\">Themeisle</a> and <a href=\"https://www.codeinwp.com/\">CodeinWP</a>) at the age of 22. At that time, the company had around six or seven employees. This picture was taken a few years after when new people got on board:</p>\n\n\n\n<a href=\"https://heropress.com/wp-content/uploads/2023/10/image1.jpg\"><img width=\"1024\" height=\"685\" src=\"https://heropress.com/wp-content/uploads/2023/10/image1-1024x685.jpg\" alt=\"\" class=\"wp-image-5958\" /></a>\n\n\n\n<p>My role was that of a content writer. But I&#8217;m a person who loves to experiment and try new things, so I have juggled many roles over the years.&nbsp;</p>\n\n\n\n<p>I went through social media, recruiting interns, mentoring, copywriting, outreach, email marketing, interviews, and partnerships with WordPress companies. The variety of activities kept me engaged, curious, and motivated. It’s always exciting and challenging when you do something for the first time.&nbsp;</p>\n\n\n\n<p>But my favorite would still be writing. My first love.&nbsp;</p>\n\n\n\n<p>Even though I was mainly writing content for the Themeisle and CodeinWP blogs, I had the opportunity to collaborate with other WordPress blogs, too. So I contributed a few pieces of content to websites like <a href=\"https://www.smashingmagazine.com/author/adelina-tuca/\">Smashing Magazine</a>, <a href=\"https://torquemag.io/2018/04/is-that-plugin-reliable-how-to-test-wordpress-plugins/\">TorqueMag</a>, <a href=\"https://www.wpexplorer.com/wordpress-block-patterns/\">WPExplorer</a>, <a href=\"https://oceanwp.org/blog/are-ad-blockers-affecting-your-income-heres-how-to-prevent-them-from-harming-your-wordpress-business/\">OceanWP</a>, or <a href=\"https://www.wpzoom.com/blog/how-to-start-travel-blog-wordpress/\">WPZoom</a>.&nbsp;</p>\n\n\n\n<p>Even if I&#8217;m doing it in different forms, it all comes down to writing in the end. Interviews, for example, do count as writing plus a little bit of spice to the mix, which is connecting and meeting inspiring people in the community. It&#8217;s always interesting to meet people &#8211; even virtually &#8211; and hear their perspectives. You learn and become more open to different ideas and standpoints.&nbsp;</p>\n\n\n\n<p>It&#8217;s also interesting how a socially anxious person like me finds meaning in connecting with other people. It&#8217;s like a paradox, healing my social anxiety through socializing.</p>\n\n\n\n<p><a href=\"https://themeisle.com/blog/category/wordpress-community/interviews/\">Here</a>’s the full collection of interviews that I did on the Themeisle blog with the cool people we have in our WordPress ecosystem.&nbsp;</p>\n\n\n\n<p>At Themeisle, I grew not only as a professional but also as a person. As a bonus, I had the chance to meet the amazing people that are my colleagues. In our company, we always motivate each other to grow and improve. So I had the opportunity to build meaningful bonds and valuable friendships that I hope will last a long, long time.</p>\n\n\n\n<h2 class=\"wp-block-heading\" id=\"h-contributing-to-wordcamps\">Contributing to WordCamps</h2>\n\n\n\n<p>As a team, we always strove to engage more with the WordPress community. This means getting involved in the local and international community. I, personally, enjoy WordCamps more when I play a bigger part than just attending.&nbsp;</p>\n\n\n\n<p>Almost every year I either volunteered or enrolled in the media partners program which, yet again, meant meeting and interviewing people in person. The latter made me feel that journalist vibe again, bringing back old memories and emotions. It was about conversing with someone live, in real time, and getting into that nice sense of belonging. I wrote about this unique experience from WordCamp Europe <a href=\"https://www.codeinwp.com/blog/behind-the-scenes-of-wceu-media-partners/\">here</a>.&nbsp;</p>\n\n\n\n<p>I still remember my first WordCamp Europe in Vienna, which I will never forget. I was all over the place, trying to do many things at once. I remember that I barely slept back then, trying to be on my volunteer duty early in the morning and also not miss any parties that would take place at night. That one was an event when I kind of forgot about my social anxiety and simply went with the flow, socializing and making friends. At that time I was a <a href=\"https://twitter.com/WCEurope/status/967051319923150849\">volunteer in the Communication Team</a>.</p>\n\n\n\n<a href=\"https://heropress.com/wp-content/uploads/2023/10/image2.jpg\"><img width=\"1024\" height=\"673\" src=\"https://heropress.com/wp-content/uploads/2023/10/image2-1024x673.jpg\" alt=\"\" class=\"wp-image-5959\" /></a>\n\n\n\n<p>I mean, yes, signing up for extra work does put some pressure on your shoulders. But it’s worth it. You feel more fulfilled and useful to the world.&nbsp;</p>\n\n\n\n<p>My message is, if you’re up for something, try to step out of your comfort zone a little bit. Know your comfort zone and step out a little bit every time. You’ll enjoy the experience more and most of the time you’ll be surprised by the outcome. This is how you grow.&nbsp;</p>\n\n\n\n<h2 class=\"wp-block-heading\" id=\"h-what-s-next\">What’s next</h2>\n\n\n\n<p>Honestly, I don’t know what the future has in store for me. I might find myself doing a totally different thing years from now or, who knows, still being part of the WordPress community. But no matter what’s next for me, I wouldn’t change a thing about the past and these awesome experiences that I shared together with amazing, inspiring people.&nbsp;</p>\n\n\n\n<p>I think people are the fuel of everything that’s great in this world. And I want to believe that I’m one of these people who always strive to bring their best into the world and do good. At least, I’m trying.</p>\n\n\n\n<div class=\"kb-row-layout-wrap kb-row-layout-id5952_c190c2-15 alignnone kt-row-has-bg wp-block-kadence-rowlayout\"><div class=\"kt-row-column-wrap kt-has-1-columns kt-row-layout-equal kt-tab-layout-inherit kt-mobile-layout-row kt-row-valign-top\">\n\n<div class=\"wp-block-kadence-column kadence-column5952_1ad0f6-31\"><div class=\"kt-inside-inner-col\">\n<h2 id=\"work-environment\" class=\"kt-adv-heading5952_886b34-83 wp-block-kadence-advancedheading\">Adelina&#8217;s Work Environment</h2>\n\n\n\n<p>We asked Adelina for a view into her development life and this is what she sent! </p>\n\n\n	<div class=\"hotspots-image-container\">\n		<img width=\"1024\" height=\"768\" src=\"https://heropress.com/wp-content/uploads/2023/10/office-workspace-twin-peaks.jpg\" alt=\"Adelina Tuca\" class=\"hotspots-image skip-lazy\" />\n	</div>\n\n\n\n\n<p class=\"kt-adv-heading5952_976380-bf wp-block-kadence-advancedheading has-theme-palette-9-background-color has-background\">HeroPress would like to thank <a href=\"https://wpdrawattention.com/\">Draw Attention</a> for their donation of the plugin to make this interactive image!</p>\n</div></div>\n\n</div></div>\n\n\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity\" />\n\n\n\n<h1 id=\"romanian\" class=\"kt-adv-heading5952_361701-44 wp-block-kadence-advancedheading\">Rotițele care fac lumea să se miște</h1>\n\n\n\n<p>E o frumoasă coincidență că, în timp ce scriu acest articol, sunt foarte aproape de a celebra nouă ani de când lucrez la Themeisle. Mai lipsesc câteva săptămâni până la aniversare. Cred că este mare lucru să ai o continuitate și consistență în ceva, oricare ar fi acel ceva.</p>\n\n\n\n<p>Această aniversare mai înseamnă și nouă ani de când fac parte din comunitatea WordPress. Dar să începem cu începutul.&nbsp;</p>\n\n\n\n<h2 class=\"wp-block-heading\" id=\"h-de-la-jurnalism-la-content-writing\">De la jurnalism la content writing</h2>\n\n\n\n<p>Când am început să lucrez la Themeisle, abia dacă știam ceva despre WordPress. Toate cunoștințele mele legate de asta se rezumau la un blog personal avut în facultate și câteva articole scrise pe niște site-uri de presă din România care foloseau platforma WordPress.</p>\n\n\n\n<p>Cam asta știam despre WordPress. Nu înseamnă neapărat că nu știam nimic, dar eram totuși departe de ce ar fi trebuit să știu pentru job. Totuși, eram o persoană dornică să învețe, așa că iată-mă tot aici nouă ani mai târziu. De fapt, aș putea spune că am nimerit în comunitatea WordPress mai mult dintr-un accident decât intenționat.&nbsp;</p>\n\n\n\n<p>Având studii în Jurnalism și Științele Comunicării, planul meu inițial era să ajung reporter sportiv sau jurnalist de presă sportivă. Ca să fac un joc de cuvinte care are sens mai mult în engleză, am sfârșit prin a face tot un fel de press, doar că WordPress. Sună mai bine în engleză partea asta. Haha!&nbsp;</p>\n\n\n\n<p>Dar înainte să pătrund în lumea WordPress, am făcut jurnalism pentru puțin timp. Eram o jurnalistă în devenire, dacă pot să spun așa. Cert e că începusem să construiesc în această direcție, punând cărămidă cu cărămidă.&nbsp;</p>\n\n\n\n<p>Una dintre aceste cărămizi a fost <a href=\"https://www.sportrevolution.ro/catalina-ponor-mi-am-dorit-sa-fiu-printre-putinele-gimnaste-din-tara-care-au-mers-la-doua-olimpiade/\">interviul pe care l-am făcut cu Cătălina Ponor</a> &#8211; triplă campioană olimpică la gimnastică artistică și una dintre cele mai bune gimnaste din istoria României. Ea a fost unul dintre idolii mei din sport când eram copil și chiar adolescentă.</p>\n\n\n\n<p>O altă cărămidă pe care o puneam la cariera în jurnalism a fost un articol de tip feature despre cum corupția din România ucide performanța sportivă încetul cu încetul. Inițial, articolul fusese publicat pe un website numit Semnal Plus, unde a primit multe reacții și apreciere din partea consumatorilor de sport din România. Acum mai apare online într-o populară publicație despre tenis &#8211; <a href=\"https://treizecizero.ro/burse/2015/12/08/sportul-comoara-nationala-care-ne-scapa-printre-degete/\">Treizecizero</a> &#8211; ca urmare a unui concurs la care am participat cu acest articol și pentru care am primit un internship la ei în redacție.</p>\n\n\n\n<p>Tot cam în aceeași perioadă am mai scris conținut similar despre sport pentru o publicație sportivă cunoscută în țară și despre muzica rock/metal pentru un site de știri de nișă. Îmi amintesc că am fost mândră de multe dintre ele. Toate acestea la un loc îmi dăduseră încredere că aveam ce îmi trebuie ca să continui pe drumul ăsta.</p>\n\n\n\n<p>Dar viitorul avea alte planuri pentru mine.&nbsp;</p>\n\n\n\n<p>La puțin timp după, începeam să realizez că a fi reporter sau jurnalist de presă venea la pachet cu mult prea mult stres, puțin timp liber și puțini bani în comparație cu efortul depus. Lăsând la o parte faptul că trebuia să îți calci pe demnitate puțin câte puțin, până când aveai să ți-o pierzi pe toată. Cel puțin, așa aș descrie eu jurnalismul din România din acest moment.&nbsp;</p>\n\n\n\n<p>Pentru mine, acești factori au jucat un rol foarte important când am început să mă gândesc că poate aș putea să mă reorientez către ceva mai apropiat de valorile mele morale. Valori pe care nu îmi permiteam să mi le încalc.&nbsp;</p>\n\n\n\n<h2 class=\"wp-block-heading\" id=\"h-munca-la-themeisle\">Munca la Themeisle</h2>\n\n\n\n<p>Nu de dragul poveștii spun că am dat ca printr-un noroc de anunțul celor de la Themeisle pe un grup de Facebook. Căutau un content writer care să scrie despre WordPress. Nici măcar nu știam ce însemna asta. Știam doar că mai folosisem WordPress în trecut, deci ce putea să fie așa de greu?&nbsp;</p>\n\n\n\n<p>Ei bine, s-a dovedit a fi diferit față de ce mă așteptam eu pentru că jobul nu presupunea a scrie pe platforma WordPress, ci a scrie <em>despre</em> platforma WordPress. Lucru care m-a bulversat puțin. Așa că am fost nevoită să învăț WordPress de la zero.&nbsp;</p>\n\n\n\n<p>Mai mult decât atât, jobul presupunea să scriu în limba engleză, ceea ce nu mai făcusem înainte. Tot ce scrisesem până atunci fusese în română. Asta iarăși a îngreunat puțin lucrurile pentru că trebuia să schimb complet limba și s-o fac într-un mod în care să sune bine, inteligibil.&nbsp;</p>\n\n\n\n<p>Nu a fost ușor să o iau aproape de la zero cu experiența și cunoștințele. Și nu de puține ori m-am simțit ca un impostor văzând cum alte persoane erau atât de bune în domeniul lor. Eram foarte dură cu mine, criticându-mă pentru orice greșeală sau feedback care nu îmi îndeplinea așteptările.</p>\n\n\n\n<p>Într-un fel, asta poate fi un lucru bun pentru că te ajută să evoluezi. Dar acum, cu cât devin mai înțeleaptă, înțeleg că era perfecționismul din mine care nu-mi dădea pace. Un perfecționism pe care nu-l voi atinge niciodată pentru că el nu există. Acum sunt mai tolerantă cu mine.&nbsp;</p>\n\n\n\n<p>Mi-am început călătoria la Vertigo Studio (compania din spatele <a href=\"https://themeisle.com/\">Themeisle</a> și <a href=\"https://www.codeinwp.com/\">CodeinWP</a>) la vârsta de 22 de ani. La acea vreme, compania avea în jur de șase sau șapte angajați. Poza următoare a fost făcută câțiva ani mai târziu, când deja firma angajase colegi noi:</p>\n\n\n\n<a href=\"https://heropress.com/wp-content/uploads/2023/10/image1.jpg\"><img width=\"1024\" height=\"685\" src=\"https://heropress.com/wp-content/uploads/2023/10/image1-1024x685.jpg\" alt=\"\" class=\"wp-image-5958\" /></a>\n\n\n\n<p>Rolul meu era acela de content writer. Dar, fiind o persoană căreia îi place să experimenteze și să încerce lucruri noi, am explorat mai multe roluri de-a lungul anilor.&nbsp;</p>\n\n\n\n<p>Am făcut social media, recrutare de interni, mentorat, copywriting, outreach, email marketing, interviuri și parteneriate cu companii din comunitatea WordPress. Această varietate de activități m-a ținut în priză, curioasă și motivată. E mereu mișto când faci ceva pentru prima oară.</p>\n\n\n\n<p>Dar principala și prima dragoste a rămas și va rămâne scrisul.&nbsp;</p>\n\n\n\n<p>Chiar dacă am scris exclusiv pe blogurile Themeisle și CodeinWP în toți acești ani, am avut ocazia de a mai colabora și cu alte bloguri din WordPress. Am contribuit cu câteva articole pe site-uri precum <a href=\"https://www.smashingmagazine.com/author/adelina-tuca/\">Smashing Magazine</a>, <a href=\"https://torquemag.io/2018/04/is-that-plugin-reliable-how-to-test-wordpress-plugins/\">TorqueMag</a>, <a href=\"https://www.wpexplorer.com/wordpress-block-patterns/\">WPExplorer</a>, <a href=\"https://oceanwp.org/blog/are-ad-blockers-affecting-your-income-heres-how-to-prevent-them-from-harming-your-wordpress-business/\">OceanWP</a>, sau <a href=\"https://www.wpzoom.com/blog/how-to-start-travel-blog-wordpress/\">WPZoom</a>.</p>\n\n\n\n<p>Chiar dacă ia diverse forme, la sfârșitul zilei totul se rezumă la scris. Interviurile, de exemplu, îmbină scrisul cu conectarea. E mereu interesant să întâlnești persoane noi &#8211; chiar și virtual &#8211; și să vezi ce perspective au ele. Înveți din chestia asta și devii mai deschis la noi puncte de vedere și idei.&nbsp;</p>\n\n\n\n<p>Totodată, mai e interesant cum o persoană anxioasă ca mine găsește confort în conexiunea cu alți oameni. E ca un paradox în care îți vindeci anxietatea socială prin socializare.</p>\n\n\n\n<p><a href=\"https://themeisle.com/blog/category/wordpress-community/interviews/\">Aici</a> găsiți întreaga colecție de interviuri pe care le-am făcut pe blogul Themeisle cu oameni mișto din comunitatea noastră de WordPress.&nbsp;</p>\n\n\n\n<p>La Themeisle, nu doar am crescut ca om și ca profesionist. Pe deasupra, am avut șansa să cunosc și să lucrez cu niște oameni minunați cum sunt colegii mei. În compania noastră, ne motivăm unii pe alții să ne îmbunătățim și să evoluăm. Am avut oportunitatea să construiesc legături semnificative și prietenii valoroase care sper că vor rămâne neschimbate.</p>\n\n\n\n<h2 class=\"wp-block-heading\" id=\"h-contribuția-la-wordcamps\">Contribuția la WordCamps</h2>\n\n\n\n<p>La nivel de echipă, ne-am dorit mereu să ne implicăm în comunitate și să contribuim cât putem de mult. Atât pe piața locală, cât și internațională. Personal, eu mă bucur mai mult de experiența unui WordCamp când fac ceva în plus decât să particip.&nbsp;</p>\n\n\n\n<p>Aproape în fiecare an în care am participat, am ales fie să fiu voluntar, fie să mă implic în echipa de Media Partners, să simt că fac ceva.&nbsp;</p>\n\n\n\n<p>Prin programul de Media Partners am intervievat oameni din WordPress, de data asta live, în persoană. Ceea ce m-a făcut să simt din nou vibe-ul jurnalistic, aducând cu sine un soi de nostalgie. Acolo aveai o conversație cu cineva fizic, în timp real, ceea ce îți aducea un sentiment de apartenență. Am scris despre experiența de a fi partener media la WordCamp Europe <a href=\"https://www.codeinwp.com/blog/behind-the-scenes-of-wceu-media-partners/\">aici</a>.</p>\n\n\n\n<p>Încă îmi amintesc primul meu WordCamp Europe din Viena, pe care nu o să-l uit niciodată. Eram peste tot atunci, încercând să fac cât mai multe lucruri deodată. Îmi amintesc că abia dacă dormeam, încercând să îmi fac și datoria de voluntar dis de dimineață, dar și să particip la petrecerile care aveau loc seara. Acela a fost un eveniment care m-a făcut să uit de anxietatea mea socială, în care pur și simplu am profitat la maximum de toate ocaziile de a socializa și cunoaște oameni mișto. Atunci am făcut parte din echipa de Comunicare, ca <a href=\"https://twitter.com/WCEurope/status/967051319923150849\">voluntar</a>.</p>\n\n\n\n<a href=\"https://heropress.com/wp-content/uploads/2023/10/image2.jpg\"><img width=\"1024\" height=\"673\" src=\"https://heropress.com/wp-content/uploads/2023/10/image2-1024x673.jpg\" alt=\"\" class=\"wp-image-5959\" /></a>\n\n\n\n<p>Este adevărat că, atunci când te înscrii la muncă extra, vine la pachet cu presiune și cu emoții mai grele. Dar merită. Te face să te simți mai împlinit, mai util celor din jur.&nbsp;</p>\n\n\n\n<p>Mesajul meu pentru voi este să ieșiți din zona de confort măcar puțin atunci când vă implicați în ceva. Cunoașteți-vă zona de confort și ieșiți din ea câte puțin de fiecare dată. Vă veți bucura mai mult de experiență și, de cele mai multe ori, veți fi surprinși de rezultate. Așa reușim să creștem.</p>\n\n\n\n<h2 class=\"wp-block-heading\" id=\"h-ce-urmeaza\">Ce urmează</h2>\n\n\n\n<p>Sincer, nu știu ce îmi pregătește viitorul, dacă o să mai fiu în comunitatea WordPress peste ani sau dacă o să fac cu totul altceva, în alt domeniu. Cine știe? Dar oricare ar fi viitorul, nu aș schimba nimic din ce s-a întâmplat până acum, din trecut. Nu aș schimba aceste experiențe pe care le-am împărțit cu oameni minunați.&nbsp;</p>\n\n\n\n<p>Cred că oamenii sunt catalizatorul a ceea ce este mai bun în lume. Și vreau să cred că și eu sunt unul dintre acești oameni care caută mereu să fie cea mai bună versiune a lor și să facă bine pe oriunde merg. Cel puțin, încerc.&nbsp;</p>\n<p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/the-fuel-of-everything-thats-great-in-the-world/\">The Fuel Of Everything That’s Great In The World &#8211; Rotițele care fac lumea să se miște</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Oct 2023 08:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Adelina Tuca\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"WPTavern: WordPress 6.4 RC1 Released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150315\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wptavern.com/wordpress-6-4-rc1-released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2332:\"<p>WordPress 6.4 is one step closer to prime time with <a href=\"https://wordpress.org/news/2023/10/wordpress-6-4-release-candidate-1/\">RC1 available today</a>. The <a href=\"https://make.wordpress.org/core/tag/dev-notes-6-4/\">dev notes</a> are rolling out with details on technical improvements in the upcoming release &#8211;<a href=\"https://make.wordpress.org/core/2023/10/15/introducing-block-hooks-for-dynamic-blocks/\">block hooks for dynamic blocks</a>, <a href=\"https://make.wordpress.org/core/2023/10/17/improvements-to-template-loading-in-wordpress-6-4/\">improvements to template loading</a>, <a href=\"https://make.wordpress.org/core/2023/10/16/changes-to-attachment-pages/\">changes to attachment pages</a>, and many more.</p>\n\n\n\n<p>RC1 is ready for another round of testing. There are <a href=\"https://core.trac.wordpress.org/query?status=closed&changetime=10%2F12%2F2023..10%2F17%2F2023&milestone=6.4&col=id&col=milestone&col=owner&col=type&col=priority&order=id\">40 additional closed Trac tickets</a> since 6.4 Beta 4, <a href=\"https://github.com/WordPress/gutenberg/commits/wp/6.4\">dozens of GitHub commits</a>, and <a href=\"https://github.com/WordPress/twentytwentyfour/commits/\">commits for Twenty Twenty-Four</a>. </p>\n\n\n\n<p>Although the flagship font library feature had to be <a href=\"https://wptavern.com/wordpress-6-4-font-library-feature-punted-to-6-5-release\">punted to 6.5</a> due to gaps in the Font APIs that couldn&#8217;t be resolved in time, the upcoming release is still packed with new features and improvements. A few highlights include a new lightbox functionality, redesigned command palette, block hooks, expanded design tools, and a new default theme.</p>\n\n\n\n<p>The release candidate phase marks the hard string freeze where no new strings can be added so that the Polyglots team can ensure WordPress 6.4 gets translated. At this point, only regressions introduced during this development cycle and expansions to the test suite can be addressed in the 6.4 milestone.</p>\n\n\n\n<p>Theme and plugin developers are encouraged to test their extensions against the release candidate. Plugin authors are also advised to update the<em>“Tested up to”</em> version in their readme files to 6.4.</p>\n\n\n\n<p>A second RC is expected next week. WordPress 6.4 is on track to be released on November 7, 2023.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Oct 2023 03:35:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WPTavern: Preview WordPress Core Pull Requests with Playground\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150295\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wptavern.com/preview-wordpress-core-pull-requests-with-playground\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3999:\"<p>Adam Zieliński, creator of WordPress Playground, <a href=\"https://twitter.com/adamzielin/status/1714311403849363944\">announced</a> today that the WordPress Core PR previewer is now live. Playground is an experimental project that uses WebAssembly (WASM) to <a href=\"https://wptavern.com/new-prototype-runs-wordpress-in-the-browser-with-no-php-server\">run WordPress in the browser</a>. It creates a WordPress instance with admin access without having to install PHP, MySQL, or Apache, making it nearly instantaneous to fire up a test site.</p>\n\n\n\n<p>Testing pull requests is one of the most exciting use cases for the Playground project. The newly launched WordPress Core PR previewer can be found at <a href=\"https://playground.wordpress.net/wordpress.html\">playground.wordpress.net/wordpress.html</a>. Users can enter the PR number or the URL.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<img width=\"2332\" height=\"1298\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/Screen-Shot-2023-10-17-at-4.10.46-PM.png\" alt=\"\" class=\"wp-image-150303\" />\n\n\n\n<p>The <a href=\"https://github.com/WordPress/wordpress-playground/pull/700\">PR for for previewing wordpress-develop repository pull pequests</a> adds support for a few query parameters that developers can use to customize how the preview loads:<a href=\"https://user-images.githubusercontent.com/205419/274972437-e30e9ac6-c99e-4e81-b68f-45e14116f6c9.png\" target=\"_blank\" rel=\"noreferrer noopener\"></a></p>\n\n\n\n<ul>\n<li><code>?pr=5481</code>&nbsp;– preview that PR</li>\n\n\n\n<li><code>?url=/wp-admin/post-new.php</code>&nbsp;– load that URL in WordPress</li>\n\n\n\n<li><code>?mode=seamless</code>&nbsp;– redirect to a full-screen Playground without the browser chrome and any other extra UI elements</li>\n</ul>\n\n\n\n<p>Zieliński identified a couple of known issues with this first implementation that developers should be aware of when working with the previewer: Existing PRs need a rebase to work but new PRs work just fine. Additionally, if you test it out, you will find that downloading WordPress may take a long time, as the bundle is ~45MB. Contributors are working on finding a way to optimize this so that it&#8217;s quicker and more efficient to preview PRs. Any problems or bugs can be reported to the <a href=\"https://github.com/WordPress/wordpress-playground/issues\">Playground repository&#8217;s issues</a>.</p>\n\n\n\n<p>As part of the <a href=\"https://github.com/WordPress/wordpress-playground/issues/696\">Playground roadmap</a>, Zieliński is working on making <a href=\"https://github.com/WordPress/wordpress-playground/issues/696\">a pull request previewer for all WordPress projects</a>, not just core, as he outlined in a planning issue:</p>\n\n\n\n<blockquote class=\"wp-block-quote\">\n<p>Previewing WordPress Pull Requests requires either a local development setup or a staging setup.</p>\n\n\n\n<p>WordPress developers often use either a staging environment that can only run a single branch at a time, or no staging environment at all. This makes testing and team workflows difficult.</p>\n\n\n\n<p>Providing an easy way to preview pull requests using Playground would alleviate that burden, catalyze more reviews across the ecosystem, and make calls for testing easier.</p>\n</blockquote>\n\n\n\n<p>WordPress meta contributors recently implemented a “Live Preview” button for plugins in the official directory but ended up <a href=\"https://wptavern.com/wordpress-reverts-live-preview-button-on-plugins-after-developer-backlash\">reverting it after many plugins were broken</a> due to inadequate support in the Playground environment.  Zieliński and contributors are  still refining the <a href=\"https://github.com/WordPress/wordpress-playground/issues/662\">live preview experience for plugins</a> hosted on WordPress.org, and are <a href=\"https://github.com/WordPress/wordpress-playground/issues/664\">creating a Blueprints API</a> that will be easy for developers to use for customizing their Playground instances.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Oct 2023 22:07:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"BuddyPress: BuddyPress 11.3.2 Security Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=331640\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://buddypress.org/2023/10/buddypress-11-3-2-security-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2823:\"<p><a href=\"https://downloads.wordpress.org/plugin/buddypress.11.3.2.zip\">BuddyPress 11.3.2</a> is now available. This is a security release. <strong>All BuddyPress installations should be updated as soon as possible</strong>.</p>\n\n\n\n<p>The 11.3.2 release addresses the following security issue:</p>\n\n\n\n<ul>\n<li>A Potential Cross Site Scripting using Members/Groups block props by a user having a contributor role vulnerability. Discovered by Rafie Muhammad (Patchstack).</li>\n</ul>\n\n\n\n<p>This vulnerability was reported privately to the BuddyPress team, in accordance with&nbsp;<a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">WordPress’s security policies</a>. Our thanks to the reporter for practicing coordinated disclosure.</p>\n\n\n\n<p>For complete details, visit the <a href=\"https://codex.buddypress.org/releases/version-11-3-2/\">11.3.2 changelog</a>.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-buttons is-horizontal is-content-justification-center is-layout-flex wp-container-2 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-white-background-color has-text-color has-background no-border-radius wp-element-button\" href=\"https://downloads.wordpress.org/plugin/buddypress.11.3.2.zip\">Get BuddyPress 11.3.2</a></div>\n</div>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<p>You can get the latest version by clicking on the above button, downloading it from the&nbsp;<a href=\"https://wordpress.org/plugins/buddypress/\">WordPress.org plugin directory</a>&nbsp;or checking it out from our&nbsp;<a href=\"https://buddypress.trac.wordpress.org/browser/branches/11.0\">Subversion repository.</a></p>\n\n\n\n<p>If for a specific reason you can&#8217;t upgrade to 11.3.2, we have also ported the security fix to BuddyPress versions going all the way back to 7.0. Here&#8217;s the list of the available downloads for the corresponding tags, you can also find these links on our <a href=\"https://wordpress.org/plugins/buddypress/advanced/\">WordPress.org Plugin Directory &#8220;Advanced&#8221; page:</a></p>\n\n\n\n<ul>\n<li>If you are using BP 7.x and can&#8217;t upgrade to 11.3.1, please upgrade to <a href=\"https://downloads.wordpress.org/plugin/buddypress.7.3.4.zip\">7.3.4</a></li>\n\n\n\n<li>If you are using BP 8.x and can&#8217;t upgrade to 11.3.1, please upgrade to <a href=\"https://downloads.wordpress.org/plugin/buddypress.8.0.4.zip\">8.0.4</a></li>\n\n\n\n<li>If you are using BP 9.x and can&#8217;t upgrade to 11.3.1, please upgrade to <a href=\"https://downloads.wordpress.org/plugin/buddypress.9.2.2.zip\">9.2.2</a></li>\n\n\n\n<li>If you are using BP 10.x and can&#8217;t upgrade to 11.3.1, please upgrade to <a href=\"https://downloads.wordpress.org/plugin/buddypress.10.6.2.zip\">10.6.2</a></li>\n</ul>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Oct 2023 20:14:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mathieu Viet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"WordPress.org blog: WordPress 6.4 Release Candidate 1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=16147\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2023/10/wordpress-6-4-release-candidate-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:11774:\"<p>The first release candidate (RC1) for WordPress 6.4 is now available!</p>\n\n\n\n<p><strong>This version of the WordPress software is under development</strong>. Please do not install, run, or test this version of WordPress on production or mission-critical websites. Instead, it’s recommended that you evaluate RC1 on a test server and site.</p>\n\n\n\n<p>Reaching this phase of the release cycle is an important milestone. While release candidates are considered ready for release, testing remains vital to ensure that everything in WordPress 6.4 is the best it can be.</p>\n\n\n\n<p>You can test WordPress 6.4 RC1 in three ways:</p>\n\n\n\n<ol>\n<li><strong>Plugin</strong>: Install and activate the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin on a WordPress install (select the “Bleeding edge” channel and “Beta/RC Only” stream).</li>\n\n\n\n<li><strong>Direct download</strong>: Download the <a href=\"https://wordpress.org/wordpress-6.4-RC1.zip\">RC1 version (zip)</a> and install it on a WordPress site.</li>\n\n\n\n<li><strong>Command line</strong>: Use the following <a href=\"https://make.wordpress.org/cli/\">WP-CLI</a> command:<br /><code>wp core update --version=6.4-RC1</code></li>\n</ol>\n\n\n\n<p>The current target for the WordPress 6.4 release is <strong>November 7, 2023</strong>. Get an overview of the <a href=\"https://make.wordpress.org/core/6-4/\">6.4 release cycle</a>, and check the <a href=\"https://make.wordpress.org/core/\">Make WordPress Core blog</a> for <a href=\"https://make.wordpress.org/core/tag/6-4/\">6.4-related posts</a>.</p>\n\n\n\n<p>The WordPress 6.4 release is brought to you by an <a href=\"https://make.wordpress.org/core/2023/06/05/wordpress-6-4-development-cycle/\"><strong>underrepresented gender release squad</strong></a> to welcome the participation and partnership of those who identify as gender-underrepresented in the WordPress open source project.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"wp-block-heading\">What’s in WordPress 6.4 RC1?</h2>\n\n\n\n<p>This release contains 420 enhancements and 445 bug fixes for the editor, including more than <a href=\"https://core.trac.wordpress.org/query?status=closed&milestone=6.4&group=component&max=500&col=id&col=summary&col=owner&col=type&col=priority&col=component&col=version&order=priority\">260 tickets for WordPress 6.4 core</a>. Browse the technical details for all issues recently addressed using these links:</p>\n\n\n\n<ul>\n<li><a href=\"https://github.com/WordPress/gutenberg/commits/wp/6.4\">GitHub commits for 6.4</a></li>\n\n\n\n<li><a href=\"https://core.trac.wordpress.org/query?status=closed&changetime=10%2F12%2F2023..10%2F17%2F2023&milestone=6.4&col=id&col=milestone&col=owner&col=type&col=priority&order=id\">Closed Trac tickets since Beta 4</a></li>\n\n\n\n<li><a href=\"https://github.com/WordPress/twentytwentyfour/commits/\">GitHub commits for Twenty Twenty-Four</a></li>\n</ul>\n\n\n\n<h3 class=\"wp-block-heading\">Highlights</h3>\n\n\n\n<p>WordPress 6.4 is the third and last major release of 2023. It introduces a multi-purpose default theme, new features, and a keen focus on details to enhance every aspect of your creation journey—from site editing and design to writing flows.</p>\n\n\n\n<ul>\n<li><strong>A new flexible default theme</strong> brings together the latest and greatest of WordPress. Discover its vast collection of templates and patterns to tweak and match your brand. Built for versatility, <a href=\"https://make.wordpress.org/core/2023/08/24/introducing-twenty-twenty-four/\"><strong>Twenty Twenty-Four</strong></a> is an ideal fit for nearly any type of website.</li>\n\n\n\n<li>Enable <strong>lightbox functionality</strong> in images for immersive viewing experiences.</li>\n\n\n\n<li><strong>Organize your patterns with your own custom categories</strong>. Find them all more intuitively with advanced filtering in the Patterns section of the inserter.</li>\n\n\n\n<li><strong>Enjoy <a href=\"https://make.wordpress.org/core/2023/10/05/core-editor-improvement-ensuring-excellence-in-the-writing-experience/\">more writing improvements</a></strong>, including new keyboard shortcuts, smoother list merging, and enhanced control over your link settings. A revamped toolbar experience for Navigation, List, and Quote blocks ensures cohesive and organized access to the tooling options you work with.</li>\n\n\n\n<li><strong>A redesigned </strong><a href=\"https://make.wordpress.org/core/2023/09/12/core-editor-improvement-commanding-the-command-palette/\"><strong>Command Palette</strong></a><strong> with new commands</strong> helps you find what you need, perform tasks efficiently, and speed up your workflow.</li>\n\n\n\n<li><strong>Rename Group blocks</strong> to organize and distinguish areas of your content easily.</li>\n\n\n\n<li>See and locate your content’s media assets at a glance with new <strong>gallery and image previews in List View</strong>.</li>\n\n\n\n<li>Build beautiful yet functional layouts with an <strong>expanded set of design tools</strong>. Play with background images in Group blocks for unique creative designs, keep image dimensions consistent with placeholder aspect ratios, and effortlessly add buttons to your Navigation block without custom CSS—among other new capabilities.</li>\n\n\n\n<li><strong>Block Hooks</strong> enable developers to automatically insert blocks at their chosen content locations, enriching the extensibility of block themes through plugins. While developer-centric, this new feature improves your building experience with blocks and gives you complete control to customize Block Hooks to your needs.</li>\n\n\n\n<li><strong>Over 60 accessibility updates</strong>, including significant List View enhancements, aria-label support for the Navigation block, and upgrades to the admin user interface.</li>\n\n\n\n<li><strong>More than 100 performance updates</strong>, focusing on template loading performance for classic and block themes, usage of the script loading strategies “defer” and “async,” and optimization of autoloaded options.</li>\n</ul>\n\n\n\n<p>Are you looking for a deeper dive into details and technical notes? <a href=\"https://make.wordpress.org/core/tag/dev-notes+6-4/\">These recent posts</a> cover a few of the latest updates:</p>\n\n\n\n<ul>\n<li><a href=\"https://make.wordpress.org/core/2023/10/16/changes-to-attachment-pages/\">Changes to attachment pages for improved SEO</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/17/miscellaneous-editor-changes-in-wordpress-6-4/\">Miscellaneous Editor changes in WordPress 6.4</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/15/introducing-block-hooks-for-dynamic-blocks/\">Introducing Block Hooks for dynamic blocks</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/17/script-loading-changes-in-wordpress-6-4/\">Script loading changes in WordPress 6.4</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/17/improvements-to-template-loading-in-wordpress-6-4/\">Improvements to template loading in WordPress 6.4</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/16/introducing-admin-notice-functions-in-wordpress-6-4/\">Introducing admin notice functions in WordPress 6.4</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/16/editor-components-updates-in-wordpress-6-4/\">Updates to user-interface components in WordPress 6.4</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/16/new-registerinsertermediacategory-api/\">New `registerInserterMediaCategory` API</a></li>\n</ul>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"wp-block-heading\">Ways to contribute</h2>\n\n\n\n<p>WordPress is open source software made possible by a community of people collaborating on and contributing to its development. The resources below outline various ways you can help, regardless of your technical expertise.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Get involved in testing</h3>\n\n\n\n<p>Testing for issues is critical to developing the software and ensuring its quality. It’s also a meaningful way for anyone to contribute—whether you have experience or not. <a href=\"https://make.wordpress.org/test/2023/09/26/help-test-wordpress-6-4/\">Check out this guide</a> for detailed instructions on testing key features in WordPress 6.4.</p>\n\n\n\n<p>If you encounter an issue, please report it to the <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta area</a> of the support forums or directly to <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac</a> if you are comfortable writing a reproducible bug report. You can also check your issue against a list of <a href=\"https://core.trac.wordpress.org/tickets/major\">known bugs</a>.</p>\n\n\n\n<p>Curious about testing releases in general? Follow along with the <a href=\"https://make.wordpress.org/test/\">testing initiatives in Make Core</a> and join the <a href=\"https://wordpress.slack.com/messages/core-test/\">#core-test channel</a> on <a href=\"https://wordpress.slack.com/\">Making WordPress Slack</a>.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Search for vulnerabilities</h3>\n\n\n\n<p>During the release candidate phase of WordPress 6.4, the <a href=\"https://make.wordpress.org/security/2023/09/26/bug-bounty-for-wordpress-6-4-beta/\">monetary reward for reporting new, unreleased security vulnerabilities</a> is doubled. Please follow responsible disclosure practices as detailed in the project’s security practices and policies outlined on the <a href=\"https://hackerone.com/wordpress\">HackerOne page</a> and in the <a href=\"https://wordpress.org/about/security/\">security white paper</a>.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Update your theme or plugin</h3>\n\n\n\n<p>Do you build themes and plugins? Your products play an integral role in extending the functionality and value of WordPress for users worldwide.</p>\n\n\n\n<p>You most likely have already been testing your latest themes and plugins with the WordPress 6.4 betas. With RC1, you will want to complete your testing and update the <em>&#8220;Tested up to&#8221;</em> version in your <a href=\"https://developer.wordpress.org/plugins/wordpress-org/how-your-readme-txt-works/\">plugin&#8217;s readme file</a> to 6.4.</p>\n\n\n\n<p>Please post detailed information to the <a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a> if you find compatibility issues.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Help translate WordPress</h3>\n\n\n\n<p>Do you speak a language other than English? ¿Español? Français? Português? Русский? 日本? <a href=\"https://translate.wordpress.org/projects/wp/dev/\">Help translate WordPress into more than 100 languages</a>. This release also marks the <a href=\"https://make.wordpress.org/polyglots/handbook/glossary/#hard-freeze\">hard string freeze</a> point of the 6.4 release cycle.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"wp-block-heading\">A haiku for RC1</h2>\n\n\n\n<p>RC1 in hand<br />WordPress evolves and takes shape<br />Testing, a sneak peek, in place</p>\n\n\n\n<p><em>Thank you to the following contributors for collaborating on this post: <a href=\"https://profiles.wordpress.org/meher/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>meher</a>, <a href=\"https://profiles.wordpress.org/rmartinezduque/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>rmartinezduque</a>, <a href=\"https://profiles.wordpress.org/webcommsat/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>webcommsat</a>, <a href=\"https://profiles.wordpress.org/annezazu/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>annezazu</a>, <a href=\"https://profiles.wordpress.org/cbringmann/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>cbringmann</a>, <a href=\"https://profiles.wordpress.org/priethor/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>priethor</a>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Oct 2023 17:48:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Reyes Martínez\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"Do The Woo Community: Security, From the Basics to Enterprise with Calvin Alkan\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"https://dothewoo.io/?p=77093\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://dothewoo.io/security-from-the-basics-to-enterprise-with-calvin-alkan/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:459:\"<p>Calvin Alkan joins our hosts to talk security. From malware scanners to firewalls to enterprise sites, with a layered security approach.</p>\n<p>&gt;&gt; The post <a rel=\"nofollow\" href=\"https://dothewoo.io/security-from-the-basics-to-enterprise-with-calvin-alkan/\">Security, From the Basics to Enterprise with Calvin Alkan</a> appeared first on <a rel=\"nofollow\" href=\"https://dothewoo.io\">Do the Woo - a WooCommerce and WordPress Builder Podcast</a>	.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Oct 2023 09:13:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"BobWP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WordPress.org blog: WP Briefing: Episode 64: Patterns in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/?post_type=podcast&p=16109\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2023/10/episode-64-patterns-in-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7414:\"<p>Join WordPress Executive Director, Josepha Haden Chomphosy, as she goes back to the basics and offers some insight into block patterns for WordPress. Don&#8217;t miss this exciting insider&#8217;s look!</p>\n\n\n\n<p><em><strong>Have a question you&#8217;d like answered? You can submit them to&nbsp;<a href=\"mailto:wpbriefing@wordpress.org\">wpbriefing@wordpress.org</a>, either written or as a voice recording.</strong></em></p>\n\n\n\n<h2 class=\"wp-block-heading\">Credits</h2>\n\n\n\n<p>Host:&nbsp;<a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden Chomphosy</a><br />Editor:&nbsp;<a href=\"https://profiles.wordpress.org/dustinhartzler/\">Dustin Hartzler</a><br />Logo:&nbsp;<a href=\"https://profiles.wordpress.org/javiarce/\">Javier Arce</a><br />Production:&nbsp;<a href=\"https://profiles.wordpress.org/bjmcsherry/\">Brett McSherry</a><br />Song: Fearless First by Kevin MacLeod</p>\n\n\n\n<h2 class=\"wp-block-heading\">Show Notes</h2>\n\n\n\n<ul>\n<li><a href=\"https://learn.wordpress.org/tutorial/using-block-patterns/\">Using Block Patterns</a></li>\n\n\n\n<li><a href=\"https://wordpress.org/patterns/\">Pattern Library</a></li>\n\n\n\n<li><a href=\"https://learn.wordpress.org/tutorial/taking-advantage-of-query-loops/\">Taking Advantage of Query Loops</a></li>\n\n\n\n<li><strong>Small List of Big Things</strong>\n<ul>\n<li><a href=\"https://survey.alchemer.com/s3/7439442/2023-WordPress-Annual-Survey?ref23=social\">The WP Annual Survey is available</a>! Each year, the WordPress community (users, site builders, extenders, and contributors) provides valuable feedback through an annual survey. </li>\n\n\n\n<li><a href=\"https://asia.wordcamp.org/2024/\">WordCamp Asia</a> is searching for volunteers for the upcoming WordCamp on March 7–9, 2024. They are looking for Contributor Stories, Event Volunteers, Emcee support, A/V Team Crew, and even designers to help create the official Wapuu for the event.</li>\n\n\n\n<li><a href=\"https://www.meetup.com/pro/wordpress/\">Local WordCamp Meetups</a>! Use this opportunity to find upcoming local events or volunteer to help at the next one. They are an excellent opportunity to meet with others in the community.</li>\n</ul>\n</li>\n</ul>\n\n\n\n<h2 class=\"wp-block-heading\">Transcript</h2>\n\n\n\n<span id=\"more-16109\"></span>\n\n\n\n<p>[00:00:00] <strong>Josepha:</strong> Hello everyone. And welcome to the WordPress Briefing, the podcast where you can catch quick explanations of the ideas behind the WordPress open source project, some insight into the community that supports it, and get a small list of big things coming up in the next two weeks. I&#8217;m your host, Josepha Haden Chomphosy. Here we go.</p>\n\n\n\n<p>[00:00:28] (Intro music)&nbsp;</p>\n\n\n\n<p>[00:00:39] <strong>Josepha:</strong> Today&#8217;s briefing topic is going to take a bit of a back-to-basics look at block patterns. Block patterns are one of my favorite enhancements that came through the Gutenberg project, and they&#8217;re pretty much exactly what they sound like. Groups of blocks that are arranged together. These patterns can be as simple as a block that holds a series of social sharing icons, but they can also be as complex as an entire landing page, complete with a call to action and interactive gallery.</p>\n\n\n\n<p>They can be used as a starting point where you activate an entire pattern and then modify the pieces that don&#8217;t quite work for you or as a sort of inspirational catalog of design elements for you to build your own patterns from.&nbsp;</p>\n\n\n\n<p>So, where do these block patterns come from? Who created them? As with most things in WordPress, the answer is lots of places. Some patterns are included with WordPress by default, and there are also sometimes specialized block patterns that are bundled with a particular theme or plugin. There&#8217;s also a pattern library that includes both curated block patterns and all the patterns that are created and shared by the WordPress community itself.</p>\n\n\n\n<p>So from the CMS, from themes, from plugins, from designers, from hobbyists, from people who just like love creating things and putting it out in the world, that&#8217;s, that&#8217;s where those patterns come from. But you can also create and curate your own block patterns, either to share back to the community as some folks do or because you are a site administrator and everyone needs to be able to add, I don&#8217;t know, an author block or something. But you don&#8217;t always want to be the one that has to put the photo on the page.&nbsp;</p>\n\n\n\n<p>There are a few blocks that have their patterns built into settings, most notably the Query Loop Block. I&#8217;ll share a tutorial about how to work with that in the show notes, but ultimately, what&#8217;s important to remember here is that block patterns are a really powerful tool with a lot of ways to implement them. You can start as simple as you want or as complex as you want, but either way, getting familiar with this concept in the software will give you a leg up on your next project.</p>\n\n\n\n<p>[00:02:53] (Music interlude)&nbsp;</p>\n\n\n\n<p>[00:03:00] <strong>Josepha:</strong> That brings us now to our small list of big things.&nbsp;</p>\n\n\n\n<p>First up, the annual survey is available. Each year, the WordPress community, so users, site builders, extenders, contributors, artists, you all provide valuable feedback through an annual survey. And every year, I look into the results to get a sense for what areas need the most attention in the project. So click the link in the show notes to take the 2023 survey and help co-create WordPress.&nbsp;</p>\n\n\n\n<p>The next thing on our small list of big things is WordCamp Asia is currently searching for volunteers for the upcoming event on March 7th through 9th, 2024. They&#8217;re looking for Contributor Stories, Event Volunteers, Emcee support, A/V Team Crew, and even designers to help create the official Wapuu for the event. I&#8217;ll include a link to applications for that in the show notes as well.&nbsp;</p>\n\n\n\n<p>And finally, I think it&#8217;s important to mention that if you don&#8217;t really know what a WordCamp is, so you don&#8217;t really understand why you should volunteer to help this one, or why you would want to, then head over to your local meetup. If you look in your WordPress dashboard, there&#8217;s a widget in there that tells you when the next local event will be. And I know that they will all be delighted to have you there. And who knows, maybe your city will be the next to host a WordCamp. I&#8217;ll also include in the show notes just a list of all of the meetup groups that we have in the world. And so if you don&#8217;t trust your dashboard or you don&#8217;t share your location there for some reason, you can just find it on your own.</p>\n\n\n\n<p>And that, my friends, is your small of big things.</p>\n\n\n\n<p>[00:04:32] <strong>Josepha:</strong> Thanks for tuning in today for the WordPress Briefing. Don&#8217;t forget to follow us on your favorite podcast app, or subscribe directly on WordPress.org/news. You&#8217;ll get a friendly reminder whenever a new episode drops. If you liked what you heard today, share it with a fellow WordPresser. Or, if you had questions about what you heard, you can share those directly with me at wpbriefing@WordPress.org. I&#8217;m your host, Josepha Haden Chomphosy. Thanks again for listening, and I&#8217;ll see you in a couple of weeks.&nbsp;</p>\n\n\n\n<p>[00:05:00] (Music outro)</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 16 Oct 2023 12:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Brett McSherry\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Matt: Do the work\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=94633\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://ma.tt/2023/10/do-the-work/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:321:\"<p>There&#8217;s a way to run a company like managing a government, with reports, surveys, and abstractions.</p>\n\n\n\n<p>There&#8217;s a way to run a company like building a ship, where every board and seam has to be understood and checked.</p>\n\n\n\n<p>Both can be successful, but you need to decide which you want to do.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 16 Oct 2023 05:05:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"Gutenberg Times: WordCamp Germany, Gutenberg 16.8, WordPress 6.4 and Barriers to building a block theme – Weekend Edition 272\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://gutenbergtimes.com/?p=25992\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:132:\"https://gutenbergtimes.com/wordcamp-germany-gutenberg-16-8-wordpress-6-4-and-barriers-to-building-a-block-theme-weekend-edition-272/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:16109:\"<p>Howdy, </p>\n\n\n\n<p>I am almost ready to head out for a two-week trip starting with <a href=\"https://germany.wordcamp.org/2023/\">WordCamp Germany</a> on Thursday. I can hardly wait to meet members of the German WordPress community for a collective nerd-out over WordPress. I loved their <a href=\"https://germany.wordcamp.org/2023/ueber-das-design-des-wordcamp-deutschland-2023/#english\">graphic design so much</a>, I used it as a featured image for this post on the web. Although there won&#8217;t be a livestream, I know the talks will be recorded and will show up on WordPress TV shortly after, and we&#8217;ll have a list of the <a href=\"https://germany.wordcamp.org/2023/schedule/\">English talks from Track 2</a> </p>\n\n\n\n\n\n<p>There will be a three week-break on the Gutenberg Times due to business travel and vacation. </p>\n\n\n\n<p>There will be lots to catch up in November. Be well. </p>\n\n\n\n<p>Yours, 💕<br /><em>Birgit</em></p>\n\n\n\n<p>PS: Oh, oh… Voting is open for <strong><a href=\"https://thewpweekly.com/awards/\">The WP Awards 2023</a></strong>. Pick your favorite<strong> </strong>blog (19) and podcast (20) , hint, hint 🙂 </p>\n\n\n\n\n\n\n<div class=\"wp-block-group has-light-background-background-color has-background is-layout-flow wp-block-group-is-layout-flow\"><div class=\"wp-block-group__inner-container\">\n<p><strong>Table of Contents</strong></p>\n\n\n\n<div class=\"wp-block-sortabrilliant-guidepost\"><ul><li><a href=\"https://gutenbergtimes.com/feed/#0-word-press-release-information\">Developing Gutenberg and WordPress</a></li><li><a href=\"https://gutenbergtimes.com/feed/#0-p\">Plugins, Themes, and Tools for #nocode site builders and owners</a></li><li><a href=\"https://gutenbergtimes.com/feed/#2-word-press-6-0-1-and-6-1-scheduled\">Theme Development for Full Site Editing and Blocks</a></li><li><a href=\"https://gutenbergtimes.com/feed/#3-building-themes-for-fse-and-word-press\">Building Blocks and Tools for the Block editor. </a></li></ul></div>\n</div></div>\n\n\n\n\n<h2 class=\"wp-block-heading\" id=\"0-word-press-release-information\">Developing Gutenberg and WordPress</h2>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/2023/10/12/wordpress-6-4-beta-4/\"><strong>WordPress 6.4 Beta 4</strong></a> is out, ahead of RC 1 there might be another Beta 5. Please continue testing over the weekend. </p>\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-wide\" />\n\n\n\n<p>In last week&#8217;s Hallway Hangout, <strong>Justin Tadlock</strong>, <strong>Nick Diego</strong> and <strong>Ryan Welcher</strong>, discussed <strong><a href=\"https://wordpress.tv/2023/10/12/hallway-hangout-whats-new-for-developers-in-wordpress-6-4/\">What’s new for developers in WordPress 6.4</a>,</strong> from Block Hooks and improved Editor flows to the new Twenty Twenty-Four theme. The recording is available on WordPress TV. </p>\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-wide\" />\n\n\n\n<p>If you are not a developer but still want to catch up what will be in WordPress 6.4 the secret tool is the <a href=\"https://nomad.blog/2023/10/09/wordpress-6-4-source-of-truth/\"><strong>Source of Truth WordPress 6.4</strong></a> post by <strong>Anne McCarthy</strong>. It takes a deep dive into all the nooks and grannies of the new version, in more detail, you&#8217;d ever wanted to know.  The good part is that it tags each feature for the various user groups</p>\n\n\n\n<ul>\n<li>[end user]: end user focus.&nbsp;</li>\n\n\n\n<li>[theme author]: block or classic theme author.&nbsp;</li>\n\n\n\n<li>[plugin author]: plugin author, whether block or otherwise.</li>\n\n\n\n<li>[site admin]: this includes a “builder” type.&nbsp;</li>\n</ul>\n\n\n\n<p>Now you can use your browser&#8217;s <strong>Find </strong>feature and look for the <em>tag strings</em> to surface relevant information for you. Or use the 35 items Table of Contents to navigate around the mother of a post.  </p>\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-wide\" />\n\n\n\n<p><strong>Vicente Canales</strong> managed the release of Gutenberg 16.8.  In his release post <strong><a href=\"https://make.wordpress.org/core/2023/10/11/whats-new-in-gutenberg-16-8-11-october/\">What’s new in Gutenberg 16.8 (11 October)</a></strong> he highlighted: </p>\n\n\n\n<ul>\n<li><a href=\"https://make.wordpress.org/core/2023/10/12/whats-new-in-gutenberg-16-8-11-october/#cover-block-automatically-set-overlay-color-when-applying-the-initial-background-image\">Cover block: automatically set overlay color when applying the initial background image</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/12/whats-new-in-gutenberg-16-8-11-october/#show-template-toggle-when-editing-pages\">Show template toggle when editing pages</a></li>\n\n\n\n<li><a href=\"https://make.wordpress.org/core/2023/10/12/whats-new-in-gutenberg-16-8-11-october/#font-library-add-an-uploads-tab\">Font Library: add Uploads tab</a></li>\n</ul>\n\n\n\n<p>Canales also pointed out the first iteration of a pages list in the Site editor, which is a start into Phase 3 of modernizing the Admin pages. </p>\n\n\n\n<a href=\"https://make.wordpress.org/core/2023/10/11/whats-new-in-gutenberg-16-8-11-october/\"><img width=\"652\" height=\"393\" src=\"https://i0.wp.com/gutenbergtimes.com/wp-content/uploads/2023/10/Screenshot-2023-10-14-at-12.42.26.png?resize=652%2C393&ssl=1\" alt=\"The color of the background overlay will be automatically chosen from the dominant color of the background image. - Screenshot\" class=\"wp-image-26005\" /></a>The color of the background overlay will be automatically chosen from the dominant color of the background image.\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-wide\" />\n\n\n\n<p>In her article <a href=\"https://wptavern.com/gutenberg-16-8-makes-cover-block-smarter-adds-experimental-pages-list-in-site-editor\"><strong>&#8220;Gutenberg 16.8 Makes Cover Block Smarter, Adds Experimental Pages List in Site Editor</strong></a>&#8221; <strong>Sarah Gooding </strong>discusses the  improvements to the cover block, making it smarter and more versatile. Additionally, she calls out an experimental feature:  the pages list has been added to the site editor, providing users with a different way to navigate and manage their pages. </p>\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-wide\" />\n\n\n\n<div class=\"wp-block-group has-light-background-background-color has-background is-layout-flow wp-block-group-is-layout-flow\"><div class=\"wp-block-group__inner-container\">\n<p class=\"is-style-no-vertical-margin\"><strong>🎙️ </strong> Latest episode:  <a href=\"https://gutenbergtimes.com/podcast/gutenberg-changelog-90-new-testing-call-for-the-fse-program-gutenberg-16-7-and-wordpress-6-4/\">Gutenberg Changelog #90 – New Testing Call for the FSE Program, Gutenberg 16.7 and WordPress 6.4</a> with Tammie Lister as special guest, hosted by Birgit Pauli-Haack</p>\n</div></div>\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-wide\" />\n\n\n\n<p><strong>Joen Asmussen</strong> shared in his post <a href=\"https://make.wordpress.org/design/2023/10/10/11610/\"><strong>Design Share: Sep 25-Oct 6</strong></a> the work the WordPress Design team has been producing. He recaps the work on the Lightbox improvements, the Toolbar button consistency, on the exploration of a color/token system package for the wp-admin redesign, and a few more site editor improvements. Some work could use some community input, and you&#8217;ll find in the post the links to the various GitHub Issues to comment. on. </p>\n\n\n\n<h2 class=\"wp-block-heading\" id=\"0-p\">Plugins, Themes, and Tools for #nocode site builders and owners</h2>\n\n\n\n<p>for the latest Call for Testing, <strong>Anne McCarthy</strong> published that summary <a href=\"https://make.wordpress.org/test/2023/10/10/fse-program-final-touches-summary/\"><strong>FSE Program Final Touches Summary</strong></a>. This testing call spanned numerous planned WordPress 6.4 features, including a focus on the Font Library (which is no longer planned for 6.4). Feedback covered more usability needs for pattern categories, more verbosity for command palette commands interface and the hope for more design tools around background images for blocks. </p>\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-wide\" />\n\n\n\n<p><strong>Bud Kraus</strong> scheduled a training event: <a href=\"https://www.meetup.com/learn-wordpress-online-workshops/events/296568956/\"><strong>What’s New In WordPress 6.4?</strong></a> for November 7, 2023, at 17:00 UTC the day of the release. He&#8217;ll focus on the improvements to the Site Editor, better ways to use patterns and show off the Lightbox functionality for image blocks. </p>\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-wide\" />\n\n\n\n<p><strong>Jamie Marsland</strong> wants you to watch his video before selecting a block theme for your next project: <a href=\"https://www.youtube.com/watch?v=QHn2uKkRJWI\"><strong>Don&#8217;t Choose a WordPress Theme Until You Watch This!</strong></a> as he has 10 questions you should consider before you make a final decision. He also explains the what and why. Marsland pulls his examples from <a href=\"https://wordpress.org/themes/ollie/\">Ollie</a> by Mike McAlister, the about to be released default theme <a href=\"https://github.com/wordpress/twentytwentyfour\">Twenty-Twenty-Four</a> and <a href=\"https://wordpress.org/themes/spectra-one/\">Spectra One</a> by Brainstorm Force, the team who also built Astra </p>\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-wide\" />\n\n\n\n<p><strong><a href=\"https://learn.wordpress.org/tutorial/choosing-and-installing-theme/\">Choosing and installing a theme</a></strong> was also the topic of a recent Learn.WordPress tutorial. The recording is now available. In this session, you&#8217;ll learn about the different types of themes as well as how to find and evaluate a theme. Furthermore, <strong>Wes Theron</strong>,  looked at how to install, update and delete a theme and where to go for support. </p>\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-wide\" />\n\n\n\n<p><strong>Sarah Gooding</strong> reported on how <a href=\"https://wptavern.com/wordpress-contributors-speed-up-twenty-twenty-four-default-theme-performance-by-40\"><strong>WordPress Contributors Speed Up Twenty Twenty-Four Default Theme Performance by 40%</strong></a>. &#8220;“I am very excited to report that most (if not all) of the server-side performance concerns have been addressed, via additional general performance fixes that landed in core,” Arntz said.&#8221; Gooding quoted Felix Arntz. </p>\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-wide\" />\n\n\n\n<p><strong>Wes Thereon</strong> invites every one to the workshop: <a href=\"https://www.meetup.com/learn-wordpress-online-workshops/events/296575670/\"><strong>Using the Query Loop block and Category templates</strong></a> on October 17, 2023, at 20:00 UTC. You&#8217;ll learn how to display posts using the Query Loop block and how to utilize category templates if you want to change the look and feel of a page that displays posts by category.</p>\n\n\n\n<h2 class=\"wp-block-heading\" id=\"2-word-press-6-0-1-and-6-1-scheduled\">Theme Development for Full Site Editing and Blocks</h2>\n\n\n\n<p><strong>Anne McCarthy</strong> invited WordPress theme authors to a Hallway Hangout <strong><a href=\"https://make.wordpress.org/test/2023/10/12/hallway-hangout-lets-chat-about-the-experience-of-building-a-block-theme/\">Let’s chat about the experience of building a block theme</a>. </strong>The recording and summary is now available on the make blog of the Test team. The overall question was What keeps developers from building block themes? </p>\n\n\n\n\n<p><strong> <a href=\"https://make.wordpress.org/core/handbook/references/keeping-up-with-gutenberg-index/\" target=\"_blank\" rel=\"noreferrer noopener\">&#8220;Keeping up with Gutenberg &#8211; Index 2022&#8221;</a> </strong><br />A chronological list of the WordPress Make Blog posts from various teams involved in Gutenberg development: Design, Theme Review Team, Core Editor, Core JS, Core CSS, Test, and Meta team from Jan. 2021 on. Updated by yours truly.  <a href=\"https://make.wordpress.org/core/handbook/references/keeping-up-with-gutenberg-index/keeping-up-with-gutenberg-index-2020/\"><em>The index 2020 is here</em></a></p>\n\n\n\n\n<h2 class=\"wp-block-heading\" id=\"3-building-themes-for-fse-and-word-press\">Building Blocks and Tools for the Block editor. </h2>\n\n\n\n<p>On the WordPress Developer News, I published the ninth edition of the <a href=\"https://developer.wordpress.org/news/2023/10/whats-new-for-developers-october-2023/\"><strong>What&#8217;s new for developers round-up posts: October 2023</strong></a>.You can find a list of updates for plugin and theme developers. Furthermore, you&#8217;ll learn about the beginning of the Gutenberg as a framework documentation site. I also highlight a new plugin to for plugin authors to check their plugins against the plugin guidelines, before they submit it to the plugin repository to shorten the length it spends with the plugin review team. It&#8217;s just at the beginning, but it should help new and seasoned plugin builders to cut down on review time, that is right now still at about 90 days. I couldn&#8217;t use the work plugin one more time 🙂 </p>\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-wide\" />\n\n\n\n<p><strong>Jonathan Bossenger</strong> published a tutorial on <a href=\"https://learn.wordpress.org/tutorial/custom-database-tables/\"><strong>Custom Database Tables</strong></a>. In this short video, you&#8217;ll learn when and how to create custom database tables and how to update, and delete custom database tables</p>\n\n\n\n<p></p>\n\n\n\n\n<p><strong><a href=\"https://gutenbergtimes.com/need-a-zip-from-master/\">Need a plugin .zip from Gutenberg&#8217;s master branch?</a></strong><br />Gutenberg Times provides daily build for testing and review. <br />Have you been using it? Hit reply and let me know.</p>\n\n\n\n<p><img alt=\"GitHub all releases\" src=\"https://img.shields.io/github/downloads/bph/gutenberg/total?style=for-the-badge\" /></p>\n\n\n\n\n<p class=\"has-text-align-right has-small-font-size\"><em>Questions? Suggestions? Ideas? Don&#8217;t hesitate to send <a href=\"mailto:pauli@gutenbergtimes.com\">them via email</a> or send me a message on WordPress Slack or Twitter @bph</em>. </p>\n\n\n\n<p class=\"has-text-align-right has-small-font-size\">For questions to be answered on the <a href=\"http://gutenbergtimes.com/podcast\">Gutenberg Changelog</a>, send them to <a href=\"mailto:changelog@gutenbergtimes.com\">changelog@gutenbergtimes.com</a></p>\n\n\n\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-wide\" />\n\n\n\n\n<p>Featured Image: <a href=\"https://germany.wordcamp.org/2023/ueber-das-design-des-wordcamp-deutschland-2023/#english\">Block Design for WordCamp Germany</a> by Lührsen &amp; Hendrik </p>\n\n\n\n<hr class=\"wp-block-separator has-css-opacity is-style-wide\" />\n\n\n\n<p class=\"has-text-align-left\"><strong>Don&#8217;t want to miss the next Weekend Edition? </strong></p>\n\n\n\n<form class=\"wp-block-newsletterglue-form ngl-form ngl-portrait\" action=\"https://gutenbergtimes.com/feed/\" method=\"post\"><div class=\"ngl-form-container\"><div class=\"ngl-form-field\"><label class=\"ngl-form-label\" for=\"ngl_email\"><br />Type in your Email address to subscribe.</label><div class=\"ngl-form-input\"><input type=\"email\" class=\"ngl-form-input-text\" name=\"ngl_email\" id=\"ngl_email\" /></div></div><button type=\"submit\" class=\"ngl-form-button\">Subscribe</button><p class=\"ngl-form-text\">We hate spam, too and won&#8217;t give your email address to anyone except Mailchimp to send out our Weekend Edition</p></div><div class=\"ngl-message-overlay\"><div class=\"ngl-message-svg-wrap\"></div><div class=\"ngl-message-overlay-text\">Thanks for subscribing.</div></div><input type=\"hidden\" name=\"ngl_list_id\" id=\"ngl_list_id\" value=\"26f81bd8ae\" /><input type=\"hidden\" name=\"ngl_double_optin\" id=\"ngl_double_optin\" value=\"yes\" /></form>\n\n\n\n<hr class=\"wp-block-separator has-css-opacity is-style-wide\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 14 Oct 2023 13:25:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Birgit Pauli-Haack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"WPTavern: Gutenberg 16.8 Makes Cover Block Smarter, Adds Experimental Pages List in Site Editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150166\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://wptavern.com/gutenberg-16-8-makes-cover-block-smarter-adds-experimental-pages-list-in-site-editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3806:\"<p><a href=\"https://make.wordpress.org/core/2023/10/11/whats-new-in-gutenberg-16-8-11-october/\">Gutenberg 16.8</a> was released this week with improvements to existing blocks and some experiments that lay the foundation for Phase 3 focused on collaboration. </p>\n\n\n\n<p>The Cover block now <a href=\"https://github.com/WordPress/gutenberg/pull/54054\">automatically sets an overlay color</a> when a user applies the initial background image. If the user doesn&#8217;t manually set an overlay color prior to uploading the image, the code extracts the overlay color by computing the average color of the image. Automattic-sponsored core contributor Vicente Canales included a video, which demonstrates how expertly the block selects the most complimentary overlay color:</p>\n\n\n\nvideo credit: <a href=\"https://make.wordpress.org/core/2023/10/11/whats-new-in-gutenberg-16-8-11-october/\">Gutenberg 16.8 release post</a>\n\n\n\n<p>Work on the Font Library continues, even though the feature was <a href=\"https://wptavern.com/wordpress-6-4-font-library-feature-punted-to-6-5-release\">punted to WordPress 6.5</a>. Gutenberg 16.8 moves font uploads to a new Upload tab, improves error messaging, and removes the use of snackbar. This feature can be seen under Global Style > Typography in the Site Editor.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<img width=\"1698\" height=\"1260\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/image-1.png\" alt=\"\" class=\"wp-image-150239\" />image credit: Gutenberg <a href=\"https://github.com/WordPress/gutenberg/pull/54655\">PR #54655</a>\n\n\n\n<p>There is still a wide chasm between the post and site editors, but version 16.8 introduces a new option toggling templates when editing pages. This allows users to switch back and forth from focusing on the content to seeing the page within the context of the template.</p>\n\n\n\nvideo credit: <a href=\"https://github.com/WordPress/gutenberg/pull/52674\">Gutenberg PR #52674</a>\n\n\n\n<p>Gutenberg 16.8 adds some experiments on the roadmap for Phase 3, including an initial implementation of <a href=\"https://github.com/WordPress/gutenberg/pull/54966\">the pages list in the site editor</a>. Users can test it by enabling the &#8220;New admin views&#8221; experiment under Gutenberg > Experiments. The experiment can be found in the site editor by navigating to <code>Pages->Manage all pages</code>. The list is paginated and there are options to sort and filter it. This is one small part of the DataViews roadmap to <a href=\"https://github.com/WordPress/gutenberg/issues/55083\">improve table and list views</a> in the site editor and other interfaces. </p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\nvideo credit: Gutenberg <a href=\"https://github.com/WordPress/gutenberg/pull/54966\">PR #54966</a>\n\n\n\n<p>Other improvements in this release include the following: </p>\n\n\n\n<ul>\n<li>Add template replace flow to template inspector (<a href=\"https://github.com/WordPress/gutenberg/pull/54609\">54609</a>).</li>\n\n\n\n<li>Adds ‘nofollow’ setting to Button block. (<a href=\"https://github.com/WordPress/gutenberg/pull/54110\">54110</a>)</li>\n\n\n\n<li>Footnotes: Use core’s meta revisioning if available. (<a href=\"https://github.com/WordPress/gutenberg/pull/52988\">52988</a>)</li>\n\n\n\n<li>Show confirmation dialog when moving a post to the trash. (<a href=\"https://github.com/WordPress/gutenberg/pull/50219\">50219</a>)</li>\n\n\n\n<li>Add template replace flow to template inspector. (<a href=\"https://github.com/WordPress/gutenberg/pull/54609\">54609</a>)</li>\n</ul>\n\n\n\n<p>Check out the <a href=\"https://make.wordpress.org/core/2023/10/11/whats-new-in-gutenberg-16-8-11-october/\">Gutenberg 16.8 release post</a> for the full changelog with links to all the fixes, enhancements, tooling, performance, and accessibility improvements.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 14 Oct 2023 02:56:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Matt: Nasdaq Chat\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"https://ma.tt/?p=100741\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://ma.tt/2023/10/nasdaq-chat/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:338:\"<p class=\"is-style-matt-rothko-style\">When I was at <a href=\"https://summit.siliconslopes.com/\">Silicon Slopes Summit</a> in Salt Lake City I got a chance to talk to folks from Nasdaq about my latest thoughts on the WordPress project, open source, and distributed work.</p>\n\n\n\n		\n			<div class=\"jetpack-videopress-player__wrapper\"> </div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 13 Oct 2023 19:03:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"Do The Woo Community: State of the Woo and the Seshies\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"https://dothewoo.io/?p=76897\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://dothewoo.io/state-of-the-woo-and-the-seshies/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:382:\"<p>In WooBits, we look at the WooSesh State of the Woo and their community awards for WooCommerce, the Seshies.</p>\n<p>&gt;&gt; The post <a rel=\"nofollow\" href=\"https://dothewoo.io/state-of-the-woo-and-the-seshies/\">State of the Woo and the Seshies</a> appeared first on <a rel=\"nofollow\" href=\"https://dothewoo.io\">Do the Woo - a WooCommerce and WordPress Builder Podcast</a>	.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 13 Oct 2023 11:15:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"BobWP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"WPTavern: Behind the Lens: WordPress Photos Directory Surpasses 10,000 Images, Moderators Explore Future Enhancements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150168\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:125:\"https://wptavern.com/behind-the-lens-wordpress-photos-directory-surpasses-10000-images-moderators-explore-future-enhancements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:11175:\"<img width=\"1422\" height=\"1058\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/Screen-Shot-2023-10-12-at-12.39.13-PM.png\" alt=\"\" class=\"wp-image-150170\" />\n\n\n\n<p>The <a href=\"https://wordpress.org/photos/\">WordPress Photos Directory</a> crossed a major milestone this week, surpassing 10,000 photos. It&#8217;s a growing resource that exists to provide free, publicly-contributed, CC0-licensed photographs. Every photo submitted is moderated by a volunteer.</p>\n\n\n\n<p>I’m super excited about this milestone,&#8221; Photos team moderator Michelle Frechette said. &#8220;Most (if not all) of the moderators are also photographers, and we appreciate the photography skills and the time it takes for people to take, edit, and submit a photo. It’s really fulfilling to see the numbers grow and include so many people and their art.&#8221;</p>\n\n\n\n<p>All the images included in the directory are also available through Openverse, which aggregates various media sources. One distinction about the directory is that it accepts user submissions from anyone &#8211; they don&#8217;t have to be professional-level photos.</p>\n\n\n\n<p>&#8220;The fact that there are now over 10,000 photos in the directory that folks can use &#8211; completely attribution-free &#8211; is incredible,&#8221; Photos team moderator Marcus Burnette said. &#8220;What I love even more, though, is that there are 1400+ contributors that make up that number! While submitting a photo is simple, often times composing, taking, and editing a photo is not. I appreciate everyone who has taken the time to make the directory as high-quality as it is.&#8221;</p>\n\n\n\n<p>Selections from the WordPress Photos Directory were featured as hanging prints in the Open Source | Open Canvas art gallery at WordCamp US 2023. The QR codes below each photo linked to their respective pages on <a href=\"http://wp.org/photos\" target=\"_blank\" rel=\"noreferrer noopener\">WP.org/photos</a>.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n\n<img width=\"355\" height=\"500\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/IMG_7939-355x500.jpg\" alt=\"\" class=\"wp-image-150183\" />\n\n\n\n<img width=\"500\" height=\"375\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/IMG_7987-500x375.jpg\" alt=\"\" class=\"wp-image-150184\" />\nphoto credit: Christy Nyiri\n\n\n\n<p>Moderators report that roughly 85.5% of the photos submitted so far have been approved. Photos getting rejected are usually not following the guidelines (ex: human face in the photo, private info like a license plate in image), or are not high enough quality (ex: low resolution, crooked horizon.)</p>\n\n\n\n<p>Moderating photos only takes a minute or two on average and the queue has been fairly manageable. The moderators use various checks to ensure photos are high quality and original, include accurate alt text, cross-check subject tags, and add the main colors of the image. In some cases, when a submission is rejected, moderators will email asking them to correct the issues and re-submit. Most photos are moderated within two to three business days. </p>\n\n\n\n<p>Becoming a photo moderator after starting as someone who submits photos, is one of the natural paths many contributors have taken to joining the team. It&#8217;s one of the many opportunities to contribute back to the open source project without writing code.</p>\n\n\n\n<p>&#8220;Some of my photos were the first to seed the directory for the announcement and launch, which was a huge honor,&#8221; Frechette said. &#8220;Becoming a moderator and helping others submit their photos is really fulfilling.</p>\n\n\n\n<p>&#8220;Although it doesn’t always make you happy to decline a photo, it’s helping the project be competitive and high quality, and oftentimes a photographer can make a small tweak (like blurring a license plate or leveling a horizon) and then re-submit it.</p>\n\n\n\n<p>&#8220;I’ve learned a ton about the world and the WordPress community &#8211; and about what they love &#8211; by moderating photos.&#8221;</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n\n<img width=\"375\" height=\"500\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/40064ff8de0c50228.88755667-1536x2048-1-375x500.jpg\" alt=\"A Cup of white tea on a wooden table besides an open window.\" class=\"wp-image-150194\" /><a href=\"https://wordpress.org/photos/photo/40064ff8de/\" rel=\"nofollow\">A Cup of white tea on a wooden table besides an open window.</a> by <a href=\"https://ajithrn.com\" rel=\"nofollow\">ajithrn</a> is licensed under <a href=\"https://creativecommons.org/publicdomain/zero/1.0/\" rel=\"nofollow\">CC-CC0 1.0</a>\n\n\n\n<img width=\"500\" height=\"333\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/98864ef7e987db857.41234681-2048x1365-1-500x333.jpg\" alt=\"Abondant bike without a seat.\" class=\"wp-image-150193\" /><a href=\"https://wordpress.org/photos/photo/98864ef7e9/\" rel=\"nofollow\">Abondant bike without a seat.</a> by <a href=\"http://vnima.lt\" rel=\"nofollow\">vatoyiit</a> is licensed under <a href=\"https://creativecommons.org/publicdomain/zero/1.0/\" rel=\"nofollow\">CC-CC0 1.0</a>\n\n\n\n<img width=\"500\" height=\"375\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/4246321d58607e375.52860513-2048x1536-1-500x375.jpg\" alt=\"Estuary at Ölfus, Iceland\" class=\"wp-image-150192\" /><a href=\"https://wordpress.org/photos/photo/4246321d58/\" rel=\"nofollow\">Estuary at Ölfus, Iceland</a> by <a href=\"https://github.com/Pierre-Lannoy\" rel=\"nofollow\">Pierre Lannoy</a> is licensed under <a href=\"https://creativecommons.org/publicdomain/zero/1.0/\" rel=\"nofollow\">CC-CC0 1.0</a>\n\n\n\n<img width=\"500\" height=\"281\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/6216321d556284699.47023750-2048x1152-1-500x281.jpeg\" alt=\"Dried mud texture\" class=\"wp-image-150191\" /><a href=\"https://wordpress.org/photos/photo/6216321d55/\" rel=\"nofollow\">Dried mud texture</a> by <a href=\"https://github.com/Pierre-Lannoy\" rel=\"nofollow\">Pierre Lannoy</a> is licensed under <a href=\"https://creativecommons.org/publicdomain/zero/1.0/\" rel=\"nofollow\">CC-CC0 1.0</a>\nA few moderator-selected favorites from the WordPress Photos Directory\n\n\n\n<h3 class=\"wp-block-heading\">Making WordPress&#8217; Photos Directory a More Competitive Resource for CC0 Images</h3>\n\n\n\n<p>The photo moderators have many ideas for making the directory a more competitive resource for CC0 photos but currently do not have quantifiable ways to measure the growth in traffic and usage.</p>\n\n\n\n<p>&#8220;As far as I know, we (the moderators) don’t have access to any traffic data,&#8221; Burnette said.</p>\n\n\n\n<p>&#8220;I’d love to see the directory more prominently featured as a source of media inside WordPress core. In addition, having some access to stats (search queries, traffic patterns, photo downloads) would give us a better view of where we are and how to focus our future growth.&#8221;</p>\n\n\n\n<p>Most of the promotion for the directory has happened during photo walks at WordCamps and contributor tables where photographers are trained to understand what makes a good photo, how the process works, and moderate as many as they can that day.</p>\n\n\n\n<p>&#8220;There has been some promotion on Twitter through official WordPress channels, but I’d love to see some of these images used in the yearly themes and in the block pattern directory,&#8221; moderator Chuck Grimmett said.</p>\n\n\n\n<p>&#8220;Another thing we are missing is easy selection in the block editor.&#8221;</p>\n\n\n\n<p>Users have a few different sources to select from, depending on whether they have plugins like Jetpack installed that add more. All of the WordPress Photo Directory images are included in Openverse, but searching for CC0 images from the WordPress directory itself is not an option. Grimmett opened a <a href=\"https://github.com/WordPress/gutenberg/issues/55286\">ticket</a> on GitHub to put the idea on contributors&#8217; radar.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<img width=\"1332\" height=\"860\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/image.png\" alt=\"\" class=\"wp-image-150189\" />\n\n\n\n<p>One of the biggest hurdles to expanding the volume of the directory is that images that include human faces are prohibited from getting listed in the collection. This is a a legal requirement that the team would have to work out with legal council to change.</p>\n\n\n\n<p>&#8220;We’ve attempted to get this cleared on several occasions over the last year or two,&#8221; Burnette said. &#8220;The legal hurdle seems to be quite large to allow for this, so the status of that is in a holding pattern.&#8221;</p>\n\n\n\n<p>As a result, nature is the most popular category with more than 6,000 images. Athletics is the least popular, as it&#8217;s not easy to get great photos without the faces. </p>\n\n\n\n<p>&#8220;We do not have access to the searches that folks are making, so it’s hard to know what people are looking for specifically,&#8221; Burnette said.</p>\n\n\n\n<p>&#8220;Something that no doubt is searched for frequently is corporate type images (offices, desk setups, meetings, etc) and we don’t have a ton of those &#8211; likely also due in part to the requirement about not including human faces.&#8221;</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<img width=\"1862\" height=\"926\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/CleanShot-2023-10-11-at-15.11.50@2x.jpg\" alt=\"\" class=\"wp-image-150187\" />\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<p>&#8220;Another big thing is search,&#8221; Photo moderator Topher DeRosia said. &#8220;Early on in the project, and sometimes even now, the alt text is not great, and tags aren&#8217;t well thought out, so a keyword search may not find what we&#8217;re really looking for.  I&#8217;d love for a set of skilled moderators to review all 10,000 photos and make the alt text amazing. I think a really good AI search tool that can look at the images and try to get it right might be a great inclusion.&#8221;</p>\n\n\n\n<p>The Photos Directory project is a unique contribution opportunity that gives moderators a glimpse into the beauty of things and places around the world that photographers were inspired to capture and submit. The fact that the images are available inside the WordPress editor makes it more than just another collection of photos on the web. It&#8217;s an important, growing resource that showcases the creative lives of contributors.</p>\n\n\n\n<p>&#8220;I added the incoming stream to my RSS reader, so I&#8217;ve literally laid eyes on every single image in there, whether I moderated it or not,&#8221; DeRosia said. &#8220;Because of this I&#8217;ve seen photos from everyplace in the world that WordPressers have submitted them, and that&#8217;s a lot. </p>\n\n\n\n<p>&#8220;I&#8217;ve learned that we have some amazingly talented photographers in the community.  I&#8217;ve learned about geography and history.  I&#8217;ve also met some new and wonderful people. As always, contribution pays great dividends.&#8221;<a href=\"https://files.slack.com/files-pri/T024MFP4J-F061ET96XCG/cleanshot_2023-10-11_at_16.25.28_2x.png\"></a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 13 Oct 2023 04:20:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"WordPress.org blog: WordPress 6.3.2 – Maintenance and Security release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=16122\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2023/10/wordpress-6-3-2-maintenance-and-security-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9798:\"<p>This security and maintenance release features <a href=\"https://core.trac.wordpress.org/query?milestone=6.3.2&group=component&col=id&col=summary&col=milestone&col=owner&col=type&col=status&col=priority&order=priority\">19 bug fixes on Core</a>, 22 bug fixes for the Block Editor, and 8 security fixes.</p>\n\n\n\n<p>WordPress 6.3.2 is a short-cycle release. You can review a summary of the maintenance updates in this release by reading the <a href=\"https://make.wordpress.org/core/2023/10/06/wordpress-6-3-2-rc1-is-now-available/\">Release Candidate announcement</a>. Because this is a <strong>security release</strong>, it is recommended that you update your sites immediately. Backports are also available for other major WordPress releases, 4.1 and later.</p>\n\n\n\n<p>The next major release will be <a href=\"https://make.wordpress.org/core/6-4/\">version 6.4</a> planned for 7 November 2023.</p>\n\n\n\n<p>If you have sites that support automatic background updates, the update process will begin automatically.</p>\n\n\n\n<p>You can <a href=\"https://wordpress.org/wordpress-6.3.2.zip\">download WordPress 6.3.2 from WordPress.org</a>, or visit your WordPress Dashboard, click “Updates”, and then click “Update Now”.</p>\n\n\n\n<p>For more information on this release, please <a href=\"https://wordpress.org/support/wordpress-version/version-6-3-2\">visit the HelpHub site</a>.</p>\n\n\n\n<h2 class=\"wp-block-heading\">Security updates included in this release</h2>\n\n\n\n<p>The security team would like to thank the following people for responsibly reporting vulnerabilities, and allowing them to be fixed in this release:</p>\n\n\n\n<ul>\n<li>Marc Montpas of Automattic for finding a potential disclosure of user email addresses.</li>\n\n\n\n<li>Marc Montpas of Automattic for finding an RCE POP Chains vulnerability.</li>\n\n\n\n<li>Rafie Muhammad and Edouard L of <a href=\"https://patchstack.com/\">Patchstack</a> along with a WordPress commissioned third-party audit for each independently identifying a XSS issue in the post link navigation block.</li>\n\n\n\n<li><a href=\"https://www.linkedin.com/in/audrasjb/\">Jb Audras</a> of the WordPress Security Team and Rafie Muhammad of <a href=\"https://patchstack.com/\">Patchstack</a> for each independently discovering an issue where comments on private posts could be leaked to other users.</li>\n\n\n\n<li>John Blackbourn (WordPress Security Team), <a href=\"https://hackerone.com/jamesgol?type=user\">James Golovich</a>, <a href=\"https://hackerone.com/jdgrimes\">J.D Grimes</a>, <a href=\"https://hackerone.com/numan\">Numan Turle</a>, <a href=\"https://hackerone.com/whitecybersec?type=user\">WhiteCyberSec</a> for each independently identifying a way for logged-in users to execute any shortcode.</li>\n\n\n\n<li><a href=\"https://facebook.com/zino.abdrahim\">mascara7784</a> and a third-party security audit for identifying a XSS vulnerability in the application password screen.</li>\n\n\n\n<li><a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a> of the WordPress Core Team for identifying XSS vulnerability in the footnotes block.</li>\n\n\n\n<li><a href=\"https://hackerone.com/s5s\">s5s</a> and <a href=\"http://twitter.com/Raoufmaklouf\">raouf_maklouf</a> for independently identifying a cache poisoning DoS vulnerability.</li>\n</ul>\n\n\n\n<h2 class=\"wp-block-heading\">Thank you to these WordPress contributors</h2>\n\n\n\n<p>This release was led by <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a> and <a href=\"https://profiles.wordpress.org/audrasjb\">Jb Audras</a>, with the help of<a href=\"https://profiles.wordpress.org/davidbaumwald/\"> David Baumwald</a> on mission control.</p>\n\n\n\n<p>WordPress 6.3.2 would not have been possible without the contributions of the following people. Their asynchronous coordination to deliver maintenance and security fixes into a stable release is a testament to the power and capability of the WordPress community.</p>\n\n\n\n<p class=\"is-style-wporg-props-long\"><a href=\"https://profiles.wordpress.org/jorbin\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/wildworks\">Aki Hamano</a>, <a href=\"https://profiles.wordpress.org/akihiroharai\">Akihiro Harai</a>, <a href=\"https://profiles.wordpress.org/xknown\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/azaozz\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/afragen\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/antpb\">Anthony Burchell</a>, <a href=\"https://profiles.wordpress.org/aurooba\">Aurooba Ahmed</a>, <a href=\"https://profiles.wordpress.org/scruffian\">Ben Dwyer</a>, <a href=\"https://profiles.wordpress.org/poena\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/costdev\">Colin Stewart</a>, <a href=\"https://profiles.wordpress.org/coreyw\">Corey Worrell</a>, <a href=\"https://profiles.wordpress.org/colorful tones\">Damon Cook</a>, <a href=\"https://profiles.wordpress.org/david.binda\">David Biňovec</a>, <a href=\"https://profiles.wordpress.org/desmith\">David E. Smith</a>, <a href=\"https://profiles.wordpress.org/dsas\">Dean Sas</a>, <a href=\"https://profiles.wordpress.org/dmsnell\">Dennis Snell</a>, <a href=\"https://profiles.wordpress.org/dhruvishah2203\">Dhruvi Shah</a>, <a href=\"https://profiles.wordpress.org/dd32\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ehtis\">Ehtisham S.</a>, <a href=\"https://profiles.wordpress.org/flixos90\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/Mamaduka\">George Mamadashvili</a>, <a href=\"https://profiles.wordpress.org/gziolo\">Greg Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/huzaifaalmesbah\">Huzaifa Al Mesbah</a>, <a href=\"https://profiles.wordpress.org/isabel_brison\">Isabel Brison</a>, <a href=\"https://profiles.wordpress.org/audrasjb\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/joehoyle\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/joemcgill\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/desrosj\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/greenshady\">Justin Tadlock</a>, <a href=\"https://profiles.wordpress.org/kadamwhite\">K. Adam White</a>, <a href=\"https://profiles.wordpress.org/kimannwall\">Kim Coleman</a>, <a href=\"https://profiles.wordpress.org/lhe2012\">LarryWEB</a>, <a href=\"https://profiles.wordpress.org/lgladdy\">Liam Gladdy</a>, <a href=\"https://profiles.wordpress.org/iammehedi1\">Mehedi Hassan</a>, <a href=\"https://profiles.wordpress.org/mcsf\">Miguel Fonseca</a>, <a href=\"https://profiles.wordpress.org/mukesh27\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/nicolefurlan\">Nicole Furlan</a>, <a href=\"https://profiles.wordpress.org/pbiron\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/paulkevan\">Paul Kevan</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/pooja1210\">Pooja N Muchandikar</a>, <a href=\"https://profiles.wordpress.org/rajinsharwar\">Rajin Sharwar</a>, <a href=\"https://profiles.wordpress.org/rmccue\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/salcode\">Sal Ferrarello</a>, <a href=\"https://profiles.wordpress.org/SergeyBiryukov\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shailu25\">Shail Mehta</a>, <a href=\"https://profiles.wordpress.org/sabernhardt\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/tykoted\">Teddy Patriarca</a>, <a href=\"https://profiles.wordpress.org/TimothyBlynJacobs\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/westonruter\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/zunaid321\">Zunaid Amin</a>, <a href=\"https://profiles.wordpress.org/ahardyjpl\">ahardyjpl</a>, <a href=\"https://profiles.wordpress.org/beryldlg\">beryldlg</a>, <a href=\"https://profiles.wordpress.org/floydwilde\">floydwilde</a>, <a href=\"https://profiles.wordpress.org/jastos\">jastos</a>, <a href=\"https://profiles.wordpress.org/martin.krcho\">martin.krcho</a>, <a href=\"https://profiles.wordpress.org/masteradhoc\">masteradhoc</a>, <a href=\"https://profiles.wordpress.org/petitphp\">petitphp</a>, <a href=\"https://profiles.wordpress.org/ramonopoly\">ramonopoly</a>, <a href=\"https://profiles.wordpress.org/vortfu\">vortfu</a>, <a href=\"https://profiles.wordpress.org/zieladam\">zieladam</a></p>\n\n\n\n<h2 class=\"wp-block-heading\">How to contribute</h2>\n\n\n\n<p>To get involved in WordPress core development, head over to Trac, <a href=\"https://core.trac.wordpress.org/report/6\">pick a ticket</a>, and join the conversation in the <a href=\"https://wordpress.slack.com/archives/C02RQBWTW\">#core</a> and <a href=\"https://wordpress.slack.com/archives/C055Y7FKS7N\">#6-4-release-leads channels</a>. Need help? Check out the <a href=\"https://make.wordpress.org/core/handbook/\">Core Contributor Handbook</a>.</p>\n\n\n\n<p><em>Already testing WordPress 6.4? The fourth beta is now available (<a href=\"https://wordpress.org/wordpress-6.4-beta4.zip\">zip</a>) and it contains these security fixes. For more on 6.4, see the&nbsp;<a rel=\"noreferrer noopener\" href=\"https://wordpress.org/news/2023/10/wordpress-6-4-beta-3/\" target=\"_blank\">beta 3 announcement post</a>.</em></p>\n\n\n\n<p class=\"has-text-align-right\"><em>Thanks to<em> <a href=\"https://profiles.wordpress.org/jeffpaul/\">@jeffpaul</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">@chanthaboune</a>, </em></em><a href=\"https://profiles.wordpress.org/peterwilsoncc/\">@peterwilsoncc</a><em><em> and <a href=\"https://profiles.wordpress.org/rawrly/\">@rawrly</a></em> for proofreading.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Oct 2023 20:44:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: WordPress.com Enters the Fediverse with ActivityPub Support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150137\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wptavern.com/wordpress-com-enters-the-fediverse-with-activitypub-support\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4623:\"<p>WordPress.com <a href=\"https://wordpress.com/blog/2023/10/11/activitypub/\">added support for ActivityPub</a> today, a decentralized social networking protocol that is now available for across free and paid plans. This allows users to join the fediverse from their WordPress.com sites, and interact with content across federated platforms like Mastodon (and many others) with replies automatically published back to the blog as comments.</p>\n\n\n\n<p>The <a href=\"https://wptavern.com/activitypub-1-0-0-released-introducing-blog-wide-accounts-and-new-blocks\">latest version</a> of the <a href=\"https://wordpress.org/plugins/activitypub/\">ActivityPub plugin</a> for WordPress allows blogs or sites to have their own ActivityPub profile. (Previously, profiles were limited to individual authors). Automattic acquired the plugin in March 2023, from German developer <a href=\"https://profiles.wordpress.org/pfefferle/\">Matthias Pfefferle</a> who joined the company and has continued to improve it and add new features.</p>\n\n\n\n<p>Practically speaking, this new ActivityPub support allows fediverse users to follow participating WordPress.com blogs on their chosen service, and comment on the content with those comments synced back to the blog &#8211; all without leaving their federated platform.</p>\n\n\n\n<p>WordPress.com users can activate ActivityPub support under <em>Settings > Discussion</em>. They also have the option to use a custom domain for a shorter, more memorable identifier.</p>\n\n\n\n<p>Once activated, ActivityPub support is available on new posts only &#8211; it is not retroactive. There may also be a delay in short delay for newly published posts appearing on federated platforms.</p>\n\n\n\n<p>One WordPress.com user asked &#8220;When will WordPress Reader be able to follow Fediverse accounts?&#8221; This isn&#8217;t yet on the roadmap, based on the response from WordPress.com representatives, but may now be on their radar for future improvements to ActivityPub support.</p>\n\n\n\n<p>This plugin and its addition to WordPress.com marks a significant expansion for the availability of ActivityPub interoperability, as support can now be effortlessly added for WordPress.com sites in addition to self-hosted sites. </p>\n\n\n\n<p>In 2022, Automattic CEO Matt Mullenweg said Tumbler would add support for ActivityPub but this has not yet materialized and a current Tumblr employee said in July 2023, that they are <a href=\"https://indieweb.social/@_jv_@mastodon.social/110692572899315822\">still evaluating it</a> but that it may cost more than it&#8217;s worth to the company. It may have become a lower priority, as Tumblr doesn&#8217;t appear to be in a position to embrace new projects that don&#8217;t generate cash flow. </p>\n\n\n\n<p>Adoption of the ActivityPub protocol has been slow moving and has not yet delivered the avalanche of new users that Twitter/X has practically gift wrapped with its many unfavorable changes and, most recently, its laughable <a href=\"https://slate.com/technology/2023/10/elon-musk-x-twitter-news-links-headlines-why.html\">treatment of external links</a>, which is an affront to the open web. Blogging pioneer and podcaster Dave Winer, who has watched social networks come and go, is not banking on ActivityPub and believes &#8220;<a href=\"http://scripting.com/2023/10/10/114018.html\">the world will not coalesce behind ActivityPub</a>&#8221; in its search for a standard. </p>\n\n\n\n<p>For those who are already active on fediverse platforms that support ActivityPub, WordPress.com&#8217;s new features may be useful for ensuring that blogs can meaningfully participate there. It&#8217;s a quick and easy way to allow more people to follow WordPress sites and give their content further reach into the fediverse. </p>\n\n\n\n<p>The future adoption of the ActivityPub protocol across more apps and platforms remains to be proven. In July, when Threads announced it would support the protocol, Mastodon CEO Eugen Rochko said in a <a href=\"https://blog.joinmastodon.org/2023/07/what-to-know-about-threads/\">blog post</a>, &#8220;The fact that large platforms are adopting ActivityPub is not only validation of the movement towards decentralized social media but a path forward for people locked into these platforms to switch to better providers.&#8221; Although this wider network of ActivityPub support gives users more choice about the platforms they use to communicate, the evolution of the social media landscape is still volatile and unpredictable, leaving many people with the burden of hedging their bets by interacting across multiple networks while waiting for the dust to settle.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Oct 2023 04:07:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WPTavern: WordPress Contributors Speed Up Twenty Twenty-Four Default Theme Performance by 40%\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150121\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://wptavern.com/wordpress-contributors-speed-up-twenty-twenty-four-default-theme-performance-by-40\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4348:\"<p>WordPress 6.4 will be shipping a new default theme, <a href=\"https://wptavern.com/wordpress-unveils-design-for-upcoming-twenty-twenty-four-default-theme\">Twenty Twenty-Four</a> (TT4), expected in early November. This theme is more feature-rich than previous default themes, and contributors have been working on <a href=\"https://core.trac.wordpress.org/ticket/59465\">identifying potential performance improvements</a> that can be made ahead of the release.</p>\n\n\n\n<p>As a starting point, Google-sponsored Performance team contributor Felix Arntz conducted several benchmarks comparing TT4 with the TT3 block theme. These included overall Web Vitals covering both server-side (TTFB) and client-side (LCP-TTFB), along with a separate server-side load time performance benchmark. Arntz posted a summary of this data:</p>\n\n\n\n<blockquote class=\"wp-block-quote\">\n<ul>\n<li>For the home page:\n<ul>\n<li>Overall load time (LCP) is 58.8% slower. <img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f534.png\" alt=\"🔴\" class=\"wp-smiley\" /></li>\n\n\n\n<li>Client-side performance (LCP-TTFB) is 93.5% slower. <img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f534.png\" alt=\"🔴\" class=\"wp-smiley\" /></li>\n\n\n\n<li>Server-Timing (<code>wp-total</code>) is 71.8% slower. <img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f534.png\" alt=\"🔴\" class=\"wp-smiley\" /></li>\n</ul>\n</li>\n\n\n\n<li>For the singular post:\n<ul>\n<li>Overall load time (LCP) is 3.9% slower. <img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f534.png\" alt=\"🔴\" class=\"wp-smiley\" /></li>\n\n\n\n<li>Client-side performance (LCP-TTFB) is 40.1% faster. <img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f7e2.png\" alt=\"🟢\" class=\"wp-smiley\" /></li>\n\n\n\n<li>Server-Timing (<code>wp-total</code>) is 42.3% slower. <img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f534.png\" alt=\"🔴\" class=\"wp-smiley\" /></li>\n</ul>\n</li>\n</ul>\n</blockquote>\n\n\n\n<p>He noted that the reason TT4 is slower is because it provides a lot more feature rich content out of the box than TT3.</p>\n\n\n\n<p>&#8220;Interestingly, the server-side performance difference between TT4 and TT3 seems to come almost exclusively from the number of block editor features used by the theme, but not by any problems from the theme itself,&#8221; Arntz said. &#8220;In fact, the theme only includes a single function of PHP logic. It does however include more complex content than TT3 and comes with a large number of patterns, so potentially that plays a role there.&#8221;</p>\n\n\n\n<p>After just two weeks of work on specific tickets for a few flagged issues, performance contributors were able to make the new Twenty Twenty-Four theme (and other themes) load more than 40% faster.</p>\n\n\n\n<p>&#8220;I am very excited to report that most (if not all) of the server-side performance concerns have been addressed, via additional general performance fixes that landed in core,&#8221; Arntz said.</p>\n\n\n\n<p>He summarized the improvements in the server-timing benchmarks when comparing TT4 and TT3 with the latest core trunk:</p>\n\n\n\n<blockquote class=\"wp-block-quote\">\n<ul>\n<li>TT4 home page loads in 85.91ms, compared to 78.08ms in TT3.\n<ul>\n<li>→&nbsp;<strong>10.0% slower, but before was 71.8% slower</strong>&nbsp;<img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f389.png\" alt=\"🎉\" class=\"wp-smiley\" /></li>\n</ul>\n</li>\n\n\n\n<li>TT4 &#8220;Hello world!&#8221; post loads in 96.44ms, compared to 86.35ms in TT3.\n<ul>\n<li>→&nbsp;<strong>11.7% slower, but before was 42.3% slower</strong>&nbsp;<img src=\"https://s.w.org/images/core/emoji/14.0.0/72x72/1f389.png\" alt=\"🎉\" class=\"wp-smiley\" /></li>\n</ul>\n</li>\n</ul>\n</blockquote>\n\n\n\n<p>There are a few outstanding client-side performance enhancements, but Arntz said these require more thought and time investment so they have been milestoned for the 6.5 release. </p>\n\n\n\n<p><a href=\"https://wordpress.org/news/2023/10/wordpress-6-4-beta-3/\">WordPress 6.4 Beta 3</a> was released yesterday. Although the flagship Font Library feature has been <a href=\"https://wptavern.com/wordpress-6-4-font-library-feature-punted-to-6-5-release\">punted to 6.5</a>, contributors said this change will not affect Twenty Twenty-Four, as the theme will ship with preselected fonts that get loaded from the theme assets, just like previous default themes.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Oct 2023 22:42:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"WPTavern: #94 – Birgit Olzem and Jill Binder on Creating a Diverse and Sustainable WordPress Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wptavern.com/?post_type=podcast&p=150098\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:118:\"https://wptavern.com/podcast/94-birgit-olzem-and-jill-binder-on-creating-a-diverse-and-sustainable-wordpress-community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:55141:\"Transcript<div>\n<p>[00:00:00] <strong>Nathan Wrigley:</strong> Welcome to the Jukebox podcast from WP Tavern. My name is Nathan Wrigley.</p>\n\n\n\n<p>Jukebox is a podcast which is dedicated to all things WordPress. The people, the events, the plugins, the blocks, the themes, and in this case, diversity in the WordPress community.</p>\n\n\n\n<p>If you&#8217;d like to subscribe to the podcast, you can do that by searching for WP Tavern in your podcast player of choice. Or by going to WPTavern.com forward slash feed forward slash podcast. And you can copy that URL into most podcast players.</p>\n\n\n\n<p>If you have a topic that you&#8217;d like us to feature on the podcast, I&#8217;m keen to hear from you, and hopefully get you, or your idea, featured on the show. Head to WPTavern.com forward slash contact forward slash jukebox, and use the form there.</p>\n\n\n\n<p>So on the podcast today, we have Birgit Olzem and Jill Binder.</p>\n\n\n\n<p>Birgit Olzem is a WordPress enthusiast who juggles diverse roles, and advocates for mental health awareness, diversity and unsung contributors. A proud mother and grandmother, she also consults on personal branding and explore surface pattern design. Birgit champions the WordPress community, as you&#8217;ll hear, in many ways.</p>\n\n\n\n<p>Jill Binder is the founder and CEO of Diverse In Tech. She leads the diverse speaker training group in the wordpress.org community team, which encourages people from underrepresented groups to speak at WordPress events. She helped organize the first BuddyCamp, and for three years, co-organized WordCamp Vancouver.</p>\n\n\n\n<p>Jill and Birgit join me today to discuss the importance of diversity, equity, inclusion, and belonging, D E I B for short, within the WordPress community.</p>\n\n\n\n<p>They share valuable insights regarding their efforts to create a more global and inclusive WordPress ecosystem. This includes the formation of a new working group on the make WordPress Slack account, and the use of GitHub project boards to track tasks and ideas.</p>\n\n\n\n<p>We talk about the need for unity within the community, the significance of diverse perspectives, and the importance of effective communication.</p>\n\n\n\n<p>We also get into Jill&#8217;s experience, organizing a training program for the Vancouver meetup. Emphasizing the importance of understanding the specific needs of different communities.</p>\n\n\n\n<p>We explore the concept of sustainability within the WordPress community, addressing the financial support and resources necessary to retain and support active contributors.</p>\n\n\n\n<p>Throughout the episode, both Jill and Birgit stress the importance of inclusivity, creating a welcoming environment, and providing opportunities for underrepresented voices to participate and contribute.</p>\n\n\n\n<p>If you&#8217;ve been wanting to know more about how to make the WordPress community more diverse and welcoming, this episode is for you.</p>\n\n\n\n<p>In some places, the audio is a little choppy, so apologies for that, but it really is more than listable.</p>\n\n\n\n<p>If you&#8217;re interested in finding out more, you can find all of the links in the show notes by heading to WPTavern.com forward slash podcast, where you&#8217;ll find all the other episodes as well.</p>\n\n\n\n<p>And so without further delay, I bring you Birgit Olzem and Jill Binder.</p>\n\n\n\n<p>I am joined on the podcast today by Birgit Olzem and Jill Binder. Hello.</p>\n\n\n\n<p>[00:04:11] <strong>Jill Binder:</strong> Hi there.</p>\n\n\n\n<p>[00:04:12] <strong>Birgit Olzem:</strong> Hello.</p>\n\n\n\n<p>[00:04:13] <strong>Nathan Wrigley:</strong> It is absolutely lovely to have you both on the show today. We&#8217;re going to get into an interesting topic. It really isn&#8217;t something that we&#8217;ve touched for a very long time. A new initiative, perhaps not a new initiative, new initiative for an old problem shall we say. And we&#8217;re going to talk about that.</p>\n\n\n\n<p>But before we begin the podcast and talk about the subject at hand, I think it would be important to give you both an opportunity to introduce yourself. Obviously we&#8217;re talking about a WordPress community issue today.</p>\n\n\n\n<p>Be nice to know a little bit about your involvement in the WordPress community. Perhaps a little bit about your backstory, which companies you work for? Anything really. And let&#8217;s start with Birgit, shall we?</p>\n\n\n\n<p>[00:04:53] <strong>Birgit Olzem:</strong> Yeah thank you Nathan. Thank you very much for giving us the room to talk about this amazing topic.</p>\n\n\n\n<p>So I&#8217;m from Germany and as a listener here I struggle a bit. But I&#8217;m a mom of five children, well almost grown up children. And I used WordPress since its first release. I was always curious how things work. I&#8217;m always curious looking behind the scenes, and I want to know how things are building up. I&#8217;ve contributed to WordPress for over a decade now. I was at my first WordCamp in 2010 and since then I&#8217;m totally invested into the WordPress community.</p>\n\n\n\n<p>And as my friend Carole Olinger always cites, &#8221; we came for the software and stayed for the people&#8221;. And I am a people person, and I love to connect people with each other. And I try to help people to find their way and their path on a big journey. And so that&#8217;s why I&#8217;m so invested into the WordPress community because we are building a great software environment, not just software at all, but also the people around it.</p>\n\n\n\n<p>I&#8217;m currently a freelancer, and not sponsored to contribute to WordPress yet, but I&#8217;d like to. I&#8217;m currently part of the new contributor mentorship program, with the cohort in July as a mentor. And I had a great mentee from Austria so we tried also the localised mentorship program.</p>\n\n\n\n<p>We are also currently organising WordCamp Germany at the time of this recording. We&#8217;re in the middle of August. WordCamp Germany will happen in October this year in my hometown, in a small hometown in Germany, Western Germany. So yeah. I will also be part of a female and non binary release squad for WordPress 6.4 as a cohort member for the test team. And besides that I&#8217;m locale manager for the de.wordpress.org site and organising also polyglots, and publishing posts on de.wordpress.org news, and do a lot of stuff.</p>\n\n\n\n<p>[00:07:05] <strong>Nathan Wrigley:</strong> Yeah that was going to be what I was going to say. You do a lot of stuff. That really is a remarkable litany. I know that everybody that uses WordPress realises that there&#8217;s a lot of people in the background doing bits and pieces, but that is quite the laundry list of achievement. So from me to you, thank you for all of the different things that you do. That&#8217;s pretty remarkable. Okay, Jill.</p>\n\n\n\n<p>[00:07:29] <strong>Jill Binder:</strong> How do I follow that? I don&#8217;t know.</p>\n\n\n\n<p>[00:07:32] <strong>Nathan Wrigley:</strong> Yeah. So it&#8217;s your turn. Basically the same question, just give us a little bit of a backstory about yourself and WordPress and so on.</p>\n\n\n\n<p>[00:07:39] <strong>Jill Binder:</strong> Sure thing. So I&#8217;m Jill Binder and I&#8217;m the lead of the diverse speaker training group, #wpdiversity. I was a web developer from 2011 to 2018 ish. And what happened is I was a co organiser for WordCamp Vancouver 2013 and we had hardly any women and people from other underrepresented groups apply to speak at our WordCamp. And that started me on a whole journey. I found out we weren&#8217;t the only ones who had the issue. I asked other groups you know, how do you get more applications? And they&#8217;re like, you had seven? That&#8217;s amazing.</p>\n\n\n\n<p>So in Vancouver we wound up solving the problem for us. We created a workshop that gathered as many women and non binary and other genders in the room who wanted to join, which was a full room. And we went through the myths of what it is to be a, well let me back up a second.</p>\n\n\n\n<p>So we wound up solving the problem for us in Vancouver. We created a workshop and we based the workshop around the issue that we were having which is, when we would ask people if they would apply to speak at our WordCamp they would say, oh well I don&#8217;t even know what I would talk about. Or I&#8217;m not good enough in anything to give a talk, I&#8217;m not an expert.</p>\n\n\n\n<p>So we created a workshop that answers both those questions. It busts through the myth of what it is to be the speaker at the front of the stage. And it goes through, helps people find a topic, and having a whole room of people saying yes, I want to hear you talk about that topic. Goes a huge way in helping people overcome any obstacles they have to wanting to speak.</p>\n\n\n\n<p>We had so much success with that other cities ran it, and it was so successful that in late 2017 Andrea Middleton asked if I would create this group. And I found that it was totally my purpose and passion. And now since 2019 this has been my full time job. This is what I do. Half for WordPress, half for other companies.</p>\n\n\n\n<p>The company that I have now is called diversein.tech. That&#8217;s the website. That&#8217;s what I do. Currently in WordPress I&#8217;m sponsored by Automattic and by Green Geeks to do this work.</p>\n\n\n\n<p>[00:09:47] <strong>Nathan Wrigley:</strong> Thank you so much. I feel that we should just lay the groundwork a little bit, because for many people, myself I think included, the discussion around diversity, I find it difficult sometimes to get my hands on that, and to know who we&#8217;re talking about and who we&#8217;re trying to push this message out to.</p>\n\n\n\n<p>So could you just lay the groundwork for, well I guess in Jill&#8217;s case, she&#8217;s just described how she came up with this training program for the Vancouver meetup and so on. So you obviously had some sort of handle there as what you thought was going wrong, because if you&#8217;re going to create training materials, you must have some idea of what was the problem and what the solution was to that.</p>\n\n\n\n<p>Could you just describe the problem? Because there&#8217;s bound to be people listening to this who will be just thinking, okay interesting podcast but I need more data, more information about who these people are.</p>\n\n\n\n<p>[00:10:37] <strong>Jill Binder:</strong> Yeah that&#8217;s a great question. So the way that we think about it is, each region has people who are well represented. In North America that&#8217;s typically straight, cisgender, meaning same gender now as they were at birth. Male, white, able bodied people. And basically everybody else is underrepresented.</p>\n\n\n\n<p>That&#8217;s specific to North America. So North America we&#8217;ve got ethnicity, race, neurodivergence, different physical abilities, age, different genders, that&#8217;s kind of typically who the underrepresented is.</p>\n\n\n\n<p>And I have learned a lot over the last couple of years that in other parts of the world there are different underrepresented groups. So there might be religion, different spoken languages, different countries that people come from, culture, caste, class, et cetera. Birgit, do you want to add anything to that?</p>\n\n\n\n<p>[00:11:31] <strong>Birgit Olzem:</strong> You put it in the right word and as you said, especially in European countries, but also Asian, African. Australia for instance, you are more difficult to find their BIPOC people on the stage. And when you go to Asia, colored people are more in the lower represented.</p>\n\n\n\n<p>But as Jill already said, diversity is not only race or gender, but also I think diversity is a bit broader as well. Like how we think. And this is influenced by where we are born into and where we are born at. So everyone shares and brings into an own perspective.</p>\n\n\n\n<p>And also the perspective itself is also diversity. When we bring not only people of a kind of label into the community, but also allowing different perspectives and diverse perspectives. Learn from this.</p>\n\n\n\n<p>[00:12:29] <strong>Jill Binder:</strong> 100% to what Birgit just said. Part of the whole reason that I&#8217;ve gotten so passionate about this is because of the different perspectives that different people bring into the communities.</p>\n\n\n\n<p>You know most of my work is around the people on stage and by having different voices on stage we bring in ideas that help bring in more of that kind of person. So make it more inclusive. As well as bring in ideas that wind up benefiting everyone. So for example, closed captioning used to be for people with hearing impairments, limited hearing. But it winds up being great for everyone, you know. Somebody has a crying baby, can&#8217;t hear, they&#8217;re on the bus, they&#8217;re watching something at work, winds up helping everybody.</p>\n\n\n\n<p>[00:13:09] <strong>Nathan Wrigley:</strong> Thank you for that. Yeah really interesting. So one piece that I just took out of that was that the location that you are on the planet might have a very significant effect on the work that you would be doing. So you described the scenario in North America and then you know we heard about all the different parts of the world.</p>\n\n\n\n<p>I&#8217;m really interested in that because I&#8217;m guessing that in the future, the materials that you&#8217;re going to provide, the bits and pieces that you&#8217;re hoping to promote, would be encouraging that. You&#8217;re not in this scenario trying to have a one template fits all. It&#8217;s more of a, look here&#8217;s the underlying things that need to be thought about. Now go and figure out what the jigsaw puzzle of life in your part of the world is like. And then work through what it is that you&#8217;re going to do based upon where you are.</p>\n\n\n\n<p>[00:14:00] <strong>Birgit Olzem:</strong> Yeah exactly. When you see it, not everyone has the privilege of a fast internet connection, for instance. We have contributors in a region where they are depending on mobile cell phones, and are only contributing on a mobile phone. I heard a story that someone was contributing on an old mobile phone with an old internet access browser and was able to do that, but with a hard effort.</p>\n\n\n\n<p>When you see the difference in culture, and where the people come from it influences us like that a lot. And the template that you mentioned, we can&#8217;t bring a one fits all solution. As you already said. We want to invite our contributors, or people who are interested into contributing, to find their own mission but also their values. What is diversity for their community, for their tribe? What is diversity? What makes their event diverse? What makes their contributing team diverse?</p>\n\n\n\n<p>When we see also our contributing teams in the global WordPress community, we have the makewordpress.org teams but we have also local communities with their own Make teams. What is the diversity for them? How can they include people? How can open the gate for new contributors, for instance? Maybe Jill might add something on this.</p>\n\n\n\n<p>[00:15:26] <strong>Jill Binder:</strong> In the team that I&#8217;ve been working in, it&#8217;s a pretty mature team at this point. And so we have completely refined materials, and we have already helped 100 cities in 50 countries around the world with these issues. And we&#8217;re actually now at three programs. One is the diverse speakers. One is actually placing underrepresented speakers at events. But the other one is creating more inclusive, and welcoming and diverse events.</p>\n\n\n\n<p>And so for that first and last one we have set materials, and we&#8217;ve basically generalised, and we&#8217;ve made it, for our material, we&#8217;ve made it like people of underrepresented groups and we&#8217;ve just kind of boxed them in. I&#8217;m really excited for Birgit&#8217;s work that is going to make it more customised for the other things in the project. And maybe even bring some of that into the work that my team is doing.</p>\n\n\n\n<p>But we also just added in some content into our organising inclusive and diverse events workshop to help people define what is diversity in their own region. And to compare what we think it is with actual data of, you know in Vancouver I&#8217;m like, okay I&#8217;m pretty sure that we want to reach out to more of the black community. And I look at the data and find oh the black community is tiny.</p>\n\n\n\n<p>We don&#8217;t want to forget about the black community, but we have to remember actually, there&#8217;s a lot of Asian, South Asian, East Asian and so if they&#8217;re not showing up to our events and not speaking at our stages, what is going on? But I also want to say I&#8217;m not an organiser in Vancouver right now, so I&#8217;m not actually having a say in it. It&#8217;s just an example in my workshop.</p>\n\n\n\n<p>[00:17:00] <strong>Nathan Wrigley:</strong> One curious thing that&#8217;s just popped into my head, as a result of what you&#8217;ve both been saying, we will get very much onto how WordPress is doing with all of this throughout the globe. But one thing that occurs to me is that, I guess as members of the WordPress community, let&#8217;s hope that we&#8217;re behind everything that you&#8217;ve just said, all of us. But there has been in the past sort of little disagreements within the WordPress community. Where people have raised concerns about a particular event which is happening over there. And maybe they&#8217;ve looked at the speaker lineup and they&#8217;ve been unhappy with the different faces that are in that list and all of that.</p>\n\n\n\n<p>But what you&#8217;ve just said is really important because we need to be mindful that if the teams in those different locations have different requirements, if you like around diversity, that&#8217;s just something we be mindful of.</p>\n\n\n\n<p>[00:17:48] <strong>Birgit Olzem:</strong> Exactly, especially this particular discussion sparked my idea, or brought this onto the surface of what was boiling for several years now. Our first attempt to start a global diversity team was in 2018. Germany started a kind of umbrella group awareness team for the WordCamps in Germany.</p>\n\n\n\n<p>But also we thought already about to create some global working group to connect all teams. And this idea sparked and growed over several years now. And the pandemic also showed us where we have issues, and where we are struggling to stay connected with our community and with the people around us.</p>\n\n\n\n<p>But also it opened the gate for new contributors and finding new ways to communicate with each other. But we still have to learn and grow much better. But I think it&#8217;s not only bringing diverse people into it and discuss and judge people about how they are pronouncing something if they are not a native speaker in English, for instance.</p>\n\n\n\n<p>Especially written communication is hard to understand. And when you are not a native English speaking person you&#8217;re trying to find the right words to express your thought on it. And someone else put on his or hers or theirs filter on. And there&#8217;s an expression in German that you have a different listening ear and a different filter when you read something online. And you have only one channel, input channel, into your understanding where you can digest information.</p>\n\n\n\n<p>And when we are seeing each other&#8217;s face in-person meeting, we have the full surrounding, like hearing, seeing, feeling. And text is very condensed and it&#8217;s difficult to understand ideas and concepts and written word. Especially in heated discussions on platforms with limited characters for instance.</p>\n\n\n\n<p>And as I said, it is really important that we stay open minded and instead of calling out, calling in. And contact the person first on one on one level. And ask, hey I see an issue, this is what I feel about, what is your thinking about it? And what can we do about it? Before we&#8217;re calling out something in public, for instance.</p>\n\n\n\n<p>It&#8217;s one thing which fuels a better inclusion feeling, and belonging feeling into the community. Instead of pointing a finger to someone, or a group of people for wrongdoing. Because everyone has an own value system and own experience. Instead of asking what is their different culture.</p>\n\n\n\n<p>And as you said, every event has an individual setting, an individual group around it, that needs to fulfill other requirements and legal requirements for instance. So we can&#8217;t ask for a gender or more details on personal level, for instance, in Germany. Because we have to obey the GDPR regulations. How we can collect data, and how can we work with this data. So it is really helpful when we also create documents to showcase how diverse our global community is. To educate our community members who are also willing to learn how different and diverse we are.</p>\n\n\n\n<p>[00:21:32] <strong>Nathan Wrigley:</strong> I think it&#8217;s a really amazing time that we live in, but it&#8217;s also full of so many tripwires and pitfalls. Because we are, well I don&#8217;t really know if the term we are the first generation. But certainly in the last 20 years, we&#8217;re the first generations of human beings that have been able to communicate with people really straightforwardly at any point in the globe.</p>\n\n\n\n<p>So all of a sudden we&#8217;re thrown into the mix of, okay I can see Australian things and I can see Cambodian things and I can see Mexican things and American things. And you are going to bring the prejudice, for want of a better word, the things that you have been brought up with. I guess some of that is going to be transferred into your expectations of what those things are.</p>\n\n\n\n<p>And it was lovely, the language that you use there. Because again, a new experiment that we&#8217;re running globally I guess is the whole social media thing. And one of the outcomes I have seen of that, is that it is very easy to adopt a tone that doesn&#8217;t, well that seems perhaps more aggressive than you may have intended. This truncated little portion of texts that you&#8217;ve got. Sometimes you don&#8217;t manage to be perhaps as polite as you wanted, and so on and so forth. So there&#8217;s an awful lot in there.</p>\n\n\n\n<p>But one of the things that I took out of that Birgit, was the need to, if you have something to say, and if you have something that you&#8217;d like to be changed. A good way to go about that is to think about saying, okay this is what I think, and here&#8217;s my suggestion, but not to sort of put the boot down and say you need to be doing in this way. That does seem to be a more wholesome and straightforward way of going about it. And Jill, I&#8217;m conscious that you didn&#8217;t get a chance to add anything to that.</p>\n\n\n\n<p>[00:23:12] <strong>Jill Binder:</strong> Birgit said it perfectly.</p>\n\n\n\n<p>[00:23:14] <strong>Nathan Wrigley:</strong> Great. Okay a completely different question. Slightly off piste from the topic that we&#8217;re covering directly. I just wonder, broadly, how does WordPress do in this sphere? Because it feels from the outside, or from the inside that, on the whole the WordPress community, which is fairly unique, it spans all the globe, it&#8217;s got thousands of people involved in it. It&#8217;s pretty unique and it&#8217;s very often a fairly philanthropic thing, people giving up their time and all of that kind of stuff.</p>\n\n\n\n<p>How does WordPress compare? I feel like this might be a question for Jill, given that she&#8217;s been looking around elsewhere. But Birgit perhaps it is for you as well. How do we compare to other industries? Other, yeah, industries is probably the best word I&#8217;ve got. Are we really behind in all of this, or are we at the vanguard, or are we just sort of somewhere in the middle?</p>\n\n\n\n<p>[00:24:04] <strong>Jill Binder:</strong> So I don&#8217;t have official data and I don&#8217;t actually know. But anecdotally from what I&#8217;ve seen, at least in the open source world, so looking at, I don&#8217;t want to name the other ones specifically. In the open source world, which is what WordPress is part of, WordPress tends to be more diverse overall. And we also have the resources to put into working on this issue.</p>\n\n\n\n<p>So WordPress tends to have an easier entry point, at least when I started doing this work back in 2011, 2013 ish, when I was thinking about this a lot. Such that anybody no matter their level of education, no matter their background, can jump into it, start creating blog posts. Then start wanting to tweak the CSS a little. Start coding, and then next thing you know the person is a full blown web dev agency, and so starting is easier.</p>\n\n\n\n<p>And then there&#8217;s this amazing, rich community of people to help teach, that people can learn from. And now we&#8217;ve got even more robust systems with Learn WordPress where there&#8217;s official, easy to grasp, knowledge on all things WordPress. And so our community tends to be more diverse from that standpoint.</p>\n\n\n\n<p>When I started my work the issue was, well our audience is diverse, but the people on stage are not. And now we&#8217;re looking more at contributors and Birgit can maybe talk more about that. But it&#8217;s definitely an issue with our contributors as well. So we&#8217;re anecdotally, unofficially, I would say we are ahead of the curve, but there&#8217;s so much more curve to get over.</p>\n\n\n\n<p>[00:25:55] <strong>Nathan Wrigley:</strong> I like that expression. We&#8217;re ahead of the curve but there&#8217;s lots more curve. Birgit, anything to add?</p>\n\n\n\n<p>[00:26:00] <strong>Birgit Olzem:</strong> Jill already said it nicely, and I just want to add my personal experience. When I was visiting open source events, WordPress was not the focus. And I heard a lot that the WordPress community is the most welcoming community over several years now. And I love that we improve. We are eager to improve our efforts to be more welcoming again.</p>\n\n\n\n<p>Jill mentioned the learn.wordpress.org platform, for instance. On my last WordPress Community Summit in 2014, I was part of the early years of the training team of the WordPress community. And to see how this evolved over the year, that we have a pillar into our WordPress community to educate our user base but also our contributors.</p>\n\n\n\n<p>The recent experience from the mentorship program was very helpful to digest and to evaluate where we have to improve, or where we can improve our ways into contributing. But as Jill mentioned it is easy to contribute to WordPress. The entry way has a lower barrier.</p>\n\n\n\n<p>But I think we have a big challenge to keep active contributors, and over a long term. Because I saw a lot of people burning out over the years, including myself. Over contributing to such an open source system in a higher amount of hours putting into it, for instance. I&#8217;m talking for the people who are more maintaining WordPress instead of contributing occasionally. I think there&#8217;s a lot of room for improvement to support and also create a sustainable social sustainability into our WordPress community.</p>\n\n\n\n<p>And I see the social component, social sustainable component and also a big pillar into the DEIB proposal I wrote, to make sure that active contributors who are investing more than 10 hours, for instance, are well funded, who need to be funded, and who asked to be funded.</p>\n\n\n\n<p>We have a great base of contributors who are already sponsored, or have the ability during their work time to contribute to WordPress. And there are people, for instance like me who are a freelancer, who invests on private time and has no financial backing. But also needs to decide, do I need to make client work to fill my fridge, or do I contribute to WordPress?</p>\n\n\n\n<p>I always have the struggle to maintain my time, for instance. And I think this experience translates also to the initiatives to create a sustainable WordPress community and keep contributors active, not losing that. I guess I went a bit away from it, but I think you get what I want to say.</p>\n\n\n\n<p>[00:29:04] <strong>Nathan Wrigley:</strong> Yeah, thank you. So I think we painted a reasonably good picture of what the issue at hand here is. Okay let&#8217;s pivot slightly and change the direction, because I feel like we&#8217;ve laid the groundwork pretty well there for what is going on, and what we would like to change. As I say, let&#8217;s move it on and let&#8217;s talk about the things that you are both involved with, amongst others I&#8217;m sure, to help change this.</p>\n\n\n\n<p>So one of the things, I&#8217;m going to use the acronym first, it&#8217;s DEIB. That stands for diversity, equity, inclusion, and belonging. Now we&#8217;re going to be referring to that. I&#8217;ll try to use those words instead of the acronym because it&#8217;s probably going to be a lot easier.</p>\n\n\n\n<p>The idea here is that there&#8217;s going to be a team put together. Maybe the team is already in existence and fully fledged. But I just want to flesh out what the things are that you&#8217;re hoping to tackle with that. Now as luck would have it, both Birgit and Jill, they have both been very helpful in providing me with some show notes to this episode. And there&#8217;s a bunch of links in those show notes which will provide an awful lot of context.</p>\n\n\n\n<p>So it&#8217;s links in all sorts of direction, explaining what the philosophy is, how it&#8217;s going to be achieved, how you can get involved, all of those kinds of things. So if at any point you&#8217;re curious about that, pause the podcast, search for this episode on WP Tavern and then come back and you&#8217;ll have more context to the discussion at hand.</p>\n\n\n\n<p>In the show notes you&#8217;ve put five key messages down. I&#8217;ll just run through them quickly now. The first one is diversity is strength. The second one is inclusion means everyone. Third one, unified efforts, bigger impacts. Fourth one, shared responsibility. And the fifth one, call to action. Now I don&#8217;t know who wants to take this first, but I&#8217;m guessing they&#8217;re the underpinnings.</p>\n\n\n\n<p>It looks like it&#8217;s going to be Birgit who&#8217;s going to take this first. I&#8217;m guessing these are the underpinnings. I don&#8217;t know if you want to just take them in the round or do them one at a time. But maybe we should talk through what those individual pieces are for, and why it&#8217;s been distilled to those five key messages.</p>\n\n\n\n<p>[00:31:10] <strong>Birgit Olzem:</strong> Thank you Nathan. Yeah, I was thinking about to find the really key messages to digest the information better because it&#8217;s a very, very complex topic. Diversity, equity, inclusion and belonging is a mouthful to speak for many people, but the meaning behind it. Diversity, it&#8217;s not a buzzword.</p>\n\n\n\n<p>As we already said, you need to have diverse perspectives, diverse input, that a sustainable WordPress can grow and grow much better and more sturdy. Imagine you&#8217;re buying a house, you need strong basement where you put your house on. Diversity brings the strengths to keep the house sturdy and build the pillar.</p>\n\n\n\n<p>And inclusion is, for my instance, you&#8217;re inviting people and lowering the barrier to come into your house and celebrate a party with you. Work with you on the house building. And that&#8217;s also translated to the unified efforts. If you are building a house you need more people that only, you can&#8217;t build it on your own. So the more people the better impact you have.</p>\n\n\n\n<p>But also when you see shared responsibility, no one in the WordPress community has the weight of all decisions on their shoulder. It&#8217;s a team effort, and everyone takes a part of the responsibility. So you don&#8217;t have to put the weight of the world on your shoulders alone, you can share the responsibility with others.</p>\n\n\n\n<p>My perspective, and also what I was proposing with the team, the global team, is that everyone can contribute to that. We in the WordPress community have more diversity, more equity, and more inclusion, and everyone feels belonging to the WordPress community.</p>\n\n\n\n<p>It&#8217;s late in the day for me. I&#8217;m struggling for words. I apologise to our listeners and it&#8217;s a very important message and I invite everyone to read the proposal. It&#8217;s a long proposal, and I also digested it from seven pages down to four pages. But it&#8217;s full of information and so please read it when you have time and find your personal key points also in it.</p>\n\n\n\n<p>[00:33:33] <strong>Nathan Wrigley:</strong> I will copy and paste the exact phrasing of your five key messages there because I just paraphrased them very quickly, but there&#8217;s more in depth. And as I said, all of the links will be provided. So Jill, I think you might have something to add to that.</p>\n\n\n\n<p>[00:33:45] <strong>Jill Binder:</strong> I just want to add that Birgit&#8217;s proposal is brilliant and yes you should read it, audience members of this podcast. The only things that I&#8217;ll add is that I&#8217;m going to add another link to the show notes on an article that I wrote called, why is diversity important to WordPress and your local community?</p>\n\n\n\n<p>And that&#8217;s specifically to do with you know, why do we care about this for meetups and WordCamps? Whereas Birgit is talking about overall all contributing groups, why is it important? So, if anybody is wondering for the specific niche of events, I&#8217;ll add a link for people to read there.</p>\n\n\n\n<p>[00:34:23] <strong>Nathan Wrigley:</strong> Great thank you for that. What&#8217;s the status of this team at the moment? So we&#8217;re recording this right in the middle of August 2023. I don&#8217;t know the status, whether this is an official team, whether it&#8217;s become an official part of the WordPress project. Maybe it&#8217;s an aspirational thing at the moment. So just let&#8217;s clarify that for everybody.</p>\n\n\n\n<p>[00:34:44] <strong>Birgit Olzem:</strong> Yeah at the current status we have already managed to create a new Slack channel on a Make WordPress Slack account. It&#8217;s called deib-working-group, and everyone is invited to join. And we also have GitHub project board to track tasks, ideas, et cetera, where we can work together on this big topic.</p>\n\n\n\n<p>It&#8217;s a long term project and we are in the very first beginning to make it more global, and incorporate the current pillars, like WP Diversity initiative. Like the speaker support group.</p>\n\n\n\n<p>But also the sustainability team which was officially announced during WordCamp Europe this year. So where also the social sustainability is also part of the sustainability team. And with the upcoming WordPress Community Summit, we are also running a session about the diversity, equity, inclusion and belonging team efforts. My hope is that we get an official team sooner than later, so that we can form a team and start working on the key objectives.</p>\n\n\n\n<p>[00:36:05] <strong>Nathan Wrigley:</strong> I have a question surrounding the second of your bullet points, which is inclusion means everyone. And I just want to get some context nailed down here. And I&#8217;m going to read what you said, because I think it sums it up beautifully. Inclusion means everyone. So that&#8217;s clarifying the D E I B, the acronym we&#8217;ve been mentioning, efforts aren&#8217;t about favouring some over others, but ensuring that everyone has equal opportunity and feels welcomed.</p>\n\n\n\n<p>And I guess that&#8217;s the crucial point, isn&#8217;t it? The intention here isn&#8217;t to have some sort of tick list of things which must be achieved at every event, and it must look like this, and sound like this, and be written in this. It&#8217;s more about making sure that everybody, well, I say it&#8217;s. Is it more about just laying the groundwork, making sure that everybody knows that they are welcome, and hoping that they feel welcomed enough to show up and then contribute, and make it their own, and feel that they&#8217;re part of the whole thing?</p>\n\n\n\n<p>So again, it&#8217;s not a tick list of things which must be done. It&#8217;s more, well, here&#8217;s what we would like to have happen. Let&#8217;s just make it an open, welcoming space, make sure that everybody understands that it&#8217;s open and welcoming and therefore, we hope, that they will show up. I may have misrepresented that, but if I haven&#8217;t, I will be happy with myself.</p>\n\n\n\n<p>[00:37:24] <strong>Jill Binder:</strong> This is sort of my area of stuff. It&#8217;s a great question. I love this question. We&#8217;ll just make it open and welcoming and people will show up. There&#8217;s a lot of things that, we see the world through our own lens, and there&#8217;s a lot of things that we don&#8217;t think about.</p>\n\n\n\n<p>So we make it open welcoming for ourselves, and don&#8217;t think about things for other people. For example, for my first few years of participating with Meetup and WordCamp Vancouver, our events were held in an amazing space on a third floor, up three flights of really rickety stairs.</p>\n\n\n\n<p>And even me, as a mostly able bodied person still hated those stairs, and we excluded a lot of people from our community. But it was such a beautiful space, and we were getting it for free and so nobody really questioned it. When we held our first speaker workshop for underrepresented members of our community, I insisted we have to find a space with elevators.</p>\n\n\n\n<p>And then I suggested that, and then we wound up having people with wheelchairs, walkers, people who&#8217;d never come out to our events before attend that event. And then I asked if we could move all of our meetups there, and we did. So, it&#8217;s just a simple little thing that, try to make it welcoming. There&#8217;s a lot of things we don&#8217;t think about.</p>\n\n\n\n<p>People might be thinking, well, what can I do? How can I learn how to do this? Oh, well, I&#8217;m so glad to tell you there&#8217;s a workshop on Learn that you can watch. The workshop on Learn, the name of it there is, creating more diverse and inclusive WordPress spaces. I think that&#8217;s what it&#8217;s called. But also I am putting together all of my knowledge and material into one spot. And I&#8217;m going to have a link to it there. So, that along with some other articles that people should read to learn more about what can we do. It&#8217;s all going to be there, the short link is tiny.cc/wpdiversity. And that links to a page in our WordPress handbook. And so it goes through like mindset, community, spaces, allyship, et cetera. Lots of great info.</p>\n\n\n\n<p>[00:39:25] <strong>Nathan Wrigley:</strong> I guess the whole premise of, I don&#8217;t know because I don&#8217;t know, that&#8217;s what you&#8217;re tackling really, isn&#8217;t it? You are saying, well, if you don&#8217;t know, here&#8217;s how to know. Here&#8217;s a bunch of stuff that you can access. It&#8217;s all online. We know you&#8217;re in the WordPress community. Very likely you have access to a computer, so you can read these things. So here it is.</p>\n\n\n\n<p>[00:39:45] <strong>Jill Binder:</strong> Yeah, yeah.</p>\n\n\n\n<p>[00:39:46] <strong>Nathan Wrigley:</strong> That, kind of excuse, I guess, going forward of, I don&#8217;t know, because I don&#8217;t know, becomes a little bit more difficult to maintain. If you don&#8217;t know, here&#8217;s the resources, go and have a look, educate yourself in those things, and hopefully in the future, we can have a more diverse WordPress than we do currently.</p>\n\n\n\n<p>I have asked all of the things that I wish to ask. However, I&#8217;m keen to let you just take the floor. If there&#8217;s something that you wish to mention or something that I just neglected to ask.</p>\n\n\n\n<p>[00:40:16] <strong>Birgit Olzem:</strong> Yeah, I just want to add something on my mind. It&#8217;s the part of the digital accessibility. It&#8217;s also part of the diversity, equity, inclusion and belonging. Especially for people with, I don&#8217;t want to focus on that, but for instance, people who are are in a neurodivergent spectrum. Accessing information, digesting information, understand how to contribute to GitHub, for instance. It can be a barrier contributing to Slack. It&#8217;s also a barrier.</p>\n\n\n\n<p>I learned that Slack is not that accessible as it should be, for instance. But also the WordPress backend itself, complies not yet to digital accessibility. That is something we also want to think about, and also to understand that there are barriers. An able person don&#8217;t think of it, because as Jill also said, everyone has, looks through their own lens.</p>\n\n\n\n<p>That&#8217;s the aim also of this initiative, to bring all Make teams to one table. Ask question, how can we improve, and where are the blind spots we also have? Because everyone has a blind spot. Where we very not aware, be aware of what someone might be hindering someone to access the community, access the software itself.</p>\n\n\n\n<p>And, I think that is something we need to focus on. To have also this in mind. Not only the visible disabilities, for instance, like a wheelchair or someone with a cane. I&#8217;m circling a bit to events.</p>\n\n\n\n<p>Events need to be also inclusive for people with neurodivergent spectrum. Where they can find some quiet room, but also attendees who need to take some breaks in between walking distances. When I attend to a WordCamp, I need to overcome distances. I need to take sitting breaks in between, because I need to catch my breath, especially after I got COVID two years ago. It&#8217;s difficult for me to navigate through a large venue, to come from spot A to spot B, without taking a break in between. And we need to take this also into consideration when we are looking for event venues.</p>\n\n\n\n<p>My key message on it, we have a lot of good material already gathered, but it&#8217;s freckled around the community handbooks. I imagine to have a central place where we can guide and have a kind of a contributor or user journey, and a learning path. Where can willing people or contributors find the information easier? Currently, it&#8217;s all over, spread over every head book and, yeah, creating a central place to find this information.</p>\n\n\n\n<p>[00:43:15] <strong>Nathan Wrigley:</strong> Could I ask Birgit, where currently, I know you&#8217;ve just said that it&#8217;s spread all over the place, if somebody having listened to this podcast, their interest is piqued and you would have just one memorable thing, memorable place, where you would send them to a page or a contact form or whatever it may be. What would be in your mind, the quickest way to get involved and express your interest in all of this?</p>\n\n\n\n<p>[00:43:39] <strong>Birgit Olzem:</strong> As I said, it&#8217;s currently difficult to tackle this specifically because there is no central place yet.</p>\n\n\n\n<p>[00:43:46] <strong>Jill Binder:</strong> I have a suggestion of where to point people to. Birgit, I&#8217;ll ask if agree, but I think the Slack channel might be kind of a easy first.</p>\n\n\n\n<p>[00:43:57] <strong>Birgit Olzem:</strong> Yes. Yeah.</p>\n\n\n\n<p>[00:43:58] <strong>Nathan Wrigley:</strong> Okay. So that is most certainly going to be linked in the show, and I will make sure that that&#8217;s in there. I&#8217;m conscious Jill that I asked Birgit if there was anything that she wanted to say. So I&#8217;ll pass the torch to you. Did we miss anything? Was there anything that you thought we failed to discuss?</p>\n\n\n\n<p>[00:44:13] <strong>Jill Binder:</strong> Things that I will add are that I&#8217;m really excited about Birgit&#8217;s proposal and Birgit&#8217;s new group. I feel like this is something that we&#8217;ve needed for a long time. And to have somebody as passionate and driven as Birgit behind it to see it through is so amazing.</p>\n\n\n\n<p>You know, the work that I&#8217;m doing with events is just one small piece of the puzzle. One of the things that I&#8217;ve said all along is when we get more people on stage, magic things happen, like they become contributors, they help out more with the project.</p>\n\n\n\n<p>And pre pandemic we had systems in place for that to happen, and post pandemic we haven&#8217;t really had that anymore. And so Birgit&#8217;s group is going to be one of the things that is going to help with that. And her group to have diversity considered in all of our Make teams, is going to be just incredible. It&#8217;s going to be so vital for our work. And I&#8217;m so excited it&#8217;s happening. And I&#8217;m really honored that the events work, the diverse speaker training group, is going to be able to basically be a piece of this bigger picture that Birgit is putting together.</p>\n\n\n\n<p>[00:45:21] <strong>Nathan Wrigley:</strong> One of the nice things about doing this podcast is getting to meet wonderful people, doing wonderful things. And I kind of feel this is a really important, really interesting, really meaningful, impactful work. So full bravo to the pair of you, and anyone else who is in fact touching this.</p>\n\n\n\n<p>I&#8217;m sure there&#8217;s more people that we could thank, as well. And Birgit&#8217;s nodding her head. So yeah, the answer to that is yes. But, I have you two on the call. So I&#8217;m thanking you. Really amazing stuff.</p>\n\n\n\n<p>Very final question. A very brief one. If somebody wants to reach out to you personally, A, is that possible? And B, what&#8217;s your preferred method for them reaching out? I guess it could be a, an email address or a website, or a social media handle, whatever you like.</p>\n\n\n\n<p>[00:46:06] <strong>Jill Binder:</strong> Can I add, not just me, but our group as well. There&#8217;s a few links I wanted to mention for our work. So to read up more on the diverse speaker training group, as well as to get all of our resources that I am, in August right now, currently putting together before I&#8217;m away for a few months starting in September, and I want to make sure the community has all of the resources there.</p>\n\n\n\n<p>They can all be found at tiny.cc/wpdiversity. And this is going to answer things like how do you achieve more diversity inclusion at your WordCamps? And how do you actually get that diverse speaker lineup? And also being able to hold our workshops for your local communities. So holding our diverse speaker workshop, which we&#8217;ve renamed to, how to own your expertise and find a topic to speak on. As well as holding the how to create a diverse and inclusive WordPress event.</p>\n\n\n\n<p>And so that&#8217;s all at tiny.cc/wpdiversity. I also invite people to join our Slack channel, which is purely around supporting the underrepresented voices in WordPress to speak at events. Which is diverse-speaker-support. I will make sure it&#8217;s in the show notes.</p>\n\n\n\n<p>And also to mention that the first part of my break is not an entire break. I&#8217;m still holding two big events, speaker workshop for women in India is happening September, the weekend of September 23rd, Saturday and Sunday morning in India time.</p>\n\n\n\n<p>And also a women, both of them are for WordPress, a women in WordPress Speaker Workshop, for Latin America that we&#8217;re holding in San Jose, Costa Rica, in person. Except that I&#8217;m unable to travel myself, so my head on a giant screen. It&#8217;s worked out very well when we&#8217;ve done this previously, along with a Spanish translator, and that&#8217;s happening November 11th in person for everyone but me.</p>\n\n\n\n<p>And to reach me, I won&#8217;t really be available from September to December of this year, but I would love if people go ahead and follow me on social media, and I might post some of my adventures from my break. And of course, more diversity knowledge when I come back, and maybe some things while I&#8217;m on break too if I want to put things out into the world. On Twitter, LinkedIn and Mastodon.social, I am Jill Binder on all three.</p>\n\n\n\n<p>[00:48:22] <strong>Nathan Wrigley:</strong> Thank you very much. And Birgit.</p>\n\n\n\n<p>[00:48:25] <strong>Birgit Olzem:</strong> Yeah. Thank you. And I&#8217;m kind of a sad little face for Jill leaving us for a sabbatical. But I&#8217;m also very grateful that Jill has opportunity to take a break after a long, long work in the WordPress project. And I&#8217;m very thankful for the groundwork you did already. Yeah, thank you.</p>\n\n\n\n<p>When someone wants to reach me, I&#8217;m always with my handle coachbirgit on all socials. Also on my personal website coachbirgit.com. And I&#8217;m really inviting everyone to join our Slack channel to discuss and contribute to the initiative on, dib-working-group on a Making WordPress Slack account.</p>\n\n\n\n<p>[00:49:10] <strong>Nathan Wrigley:</strong> Jill Binder, Birgit Olzem, thank you so much for chatting to me on the podcast today. I really appreciate it.</p>\n\n\n\n<p>[00:49:17] <strong>Jill Binder:</strong> Thank you.</p>\n\n\n\n<p>[00:49:18] <strong>Birgit Olzem:</strong> Thank you. Bye.</p>\n</div>\n\n\n\n<p>On the podcast today we have <a href=\"https://twitter.com/coachbirgit\">Birgit Olzem</a> and <a href=\"https://twitter.com/jillbinder\">Jill Binder</a>.</p>\n\n\n\n<p>Birgit Olzem is a WordPress enthusiast who juggles diverse roles and advocates for mental health awareness, diversity, and unsung contributors. A proud mother and grandmother, she also consults on personal branding and explores surface pattern design. Birgit champions the WordPress community, as you’ll hear, in many ways.</p>\n\n\n\n<p>Jill Binder is the Founder and CEO of Diverse in Tech. She leads the Diverse Speaker Training Group in the WordPress.org Community Team, which encourages people from underrepresented groups to speak at WordPress events. She helped organise the first BuddyCamp, and for three years co-organised WordCamp Vancouver.</p>\n\n\n\n<p>Jill and Birgit join me today to discuss the importance of diversity, equity, inclusion, and belonging (DEIB for short) within the WordPress community.</p>\n\n\n\n<p>They share valuable insights regarding their efforts to create a more global and inclusive WordPress ecosystem. This includes the formation of a new working group on the Make WordPress Slack account and the use of GitHub project boards to track tasks and ideas.</p>\n\n\n\n<p>We talk about the need for unity within the community, the significance of diverse perspectives, and the importance of effective communication.</p>\n\n\n\n<p>We also get into Jill&#8217;s experience organising a training program for the Vancouver Meetup, emphasising the importance of understanding the specific needs of different communities.</p>\n\n\n\n<p>We explore the concept of sustainability within the WordPress community, addressing the financial support and resources necessary to retain and support active contributors.</p>\n\n\n\n<p>Throughout the episode both Jill and Birgit stress the importance of inclusivity, creating a welcoming environment, and providing opportunities for underrepresented voices to participate and contribute.</p>\n\n\n\n<p>If you’ve been wanting to know more about how to make the WordPress community more diverse and welcoming, this episode is for you.</p>\n\n\n\n<p>In some places the audio is a little choppy, so apologies for that, but it really is more than listenable.</p>\n\n\n\n<h2 class=\"wp-block-heading\">5 key messages mentioned in the podcast.</h2>\n\n\n\n<ol>\n<li><strong>Diversity is Strength:</strong>&nbsp;Emphasize that diversity isn’t just a buzzword; it’s the backbone of innovation and progress, especially in collaborative spaces like the WordPress community.</li>\n\n\n\n<li><strong>Inclusion Means Everyone:</strong>&nbsp;Clarify that DEIB efforts aren’t about favoring some over others, but ensuring everyone has equal opportunity and feels welcomed.</li>\n\n\n\n<li><strong>Unified Efforts, Bigger Impact:</strong>&nbsp;Talk about the importance of consolidating individual initiatives for a broader, more cohesive impact on the WordPress ecosystem.</li>\n\n\n\n<li><strong>Shared Responsibility:</strong>&nbsp;It’s not just up to a single group or team to promote DEIB; it’s a collective responsibility of the entire community.</li>\n\n\n\n<li><strong>Call to Action:</strong>&nbsp;Everyone can and should play a role in fostering DEIB in the WordPress community. Get involved, offer support, and be part of the change.</li>\n</ol>\n\n\n\n<h2 class=\"wp-block-heading\">Useful links provided by Birgit and Jill.</h2>\n\n\n\n<ul>\n<li>Diversity, Equity and Inclusion Statement: <a href=\"https://make.wordpress.org/handbook/diversity-equity-and-inclusion-in-wordpress/\">https://make.wordpress.org/handbook/diversity-equity-and-inclusion-in-wordpress/</a></li>\n\n\n\n<li>DEIB team proposal: <a href=\"https://make.wordpress.org/project/2023/07/13/proposal-for-establishing-a-make-diversity-equity-inclusion-and-belonging-deib-team-within-the-wordpress-community/\">https://make.wordpress.org/project/2023/07/13/proposal-for-establishing-a-make-diversity-equity-inclusion-and-belonging-deib-team-within-the-wordpress-community/</a></li>\n\n\n\n<li>Quicklink to the Diverse Speaker Training Group (#WPDiversity) <a href=\"https://tiny.cc/wpdiversity\">https://tiny.cc/wpdiversity</a></li>\n\n\n\n<li>For tasks of the working-group: <a href=\"https://github.com/WordPress/DEIB-Issue-Tracker/issues\">DEIB-Issue-Tracker</a> and the <a href=\"https://github.com/orgs/WordPress/projects/131\">related project board</a></li>\n\n\n\n<li>Slack channel for the DEIB working group: <a href=\"https://wordpress.slack.com/archives/C05ND1KPW0Y\">#deib-working-group</a></li>\n\n\n\n<li>Slack channel to support underrepresented speakers in WP: <a href=\"https://wordpress.slack.com/archives/C028SE81N3H\">#diverse-speaker-support</a></li>\n\n\n\n<li>WP Briefing Podcast: <a href=\"https://wordpress.org/news/2021/07/episode-13-cherishing-wordpress-diversity/\">Episode 13: Cherishing WordPress Diversity</a></li>\n</ul>\n\n\n\n<h2 class=\"wp-block-heading\">Other links mentioned in the podcast.</h2>\n\n\n\n<p><a href=\"https://make.wordpress.org/project/2023/05/17/wordpress-contributor-mentorship-program-pilot-program-proposal/\">Contributor Mentorship Program</a></p>\n\n\n\n<p><a href=\"https://germany.wordcamp.org/2023/\">WordCamp Germany</a></p>\n\n\n\n<p><a href=\"https://vancouver.wordcamp.org/2023/\">WordCamp Vancouver</a></p>\n\n\n\n<p><a href=\"https://diversein.tech/\">Diverse in Tech website</a></p>\n\n\n\n<p><a href=\"https://learn.wordpress.org/\">Learn WordPress</a></p>\n\n\n\n<p><a href=\"https://make.wordpress.org/community/2021/10/19/tuesday-training-why-is-diversity-important-to-wordpress-and-your-local-community/\">Why is diversity important — To WordPress and YOUR local community?</a></p>\n\n\n\n<p><a href=\"https://make.wordpress.org/summit/\">WordPress Community Summit</a></p>\n\n\n\n<p><a href=\"https://twitter.com/jillbinder\">Jill&#8217;s Twitter</a></p>\n\n\n\n<p><a href=\"https://twitter.com/coachbirgit\">Birgit&#8217;s Twitter</a></p>\n\n\n\n<p><a href=\"https://coachbirgit.com/\">Birgit&#8217;s website</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Oct 2023 14:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Nathan Wrigley\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"WPTavern: State of the Woo 2023: WooCommerce Highlights AI-Powered Future and Continued Core Blockification\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wptavern.com/?p=150044\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"https://wptavern.com/state-of-the-woo-2023-woocommerce-highlights-ai-powered-future-and-continued-core-blockification\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5792:\"<p><a href=\"https://woosesh.com/\">WooSesh 2023</a>, the virtual conference for WooCommerce store builders, kicked off today with the State of the Woo address. This year’s theme is “Next Generation Commerce,&#8221; featuring advances across the e-commerce industry, as well as WooCommerce core and the wider ecosystem of tools and payment integrations. </p>\n\n\n\n<p>WooCommerce CEO Paul Maiorana began the presentation with a few stats on Woo&#8217;s growth in 2023:</p>\n\n\n\n<ul>\n<li>4.4M+ live websites currently using WooCommerce (<a href=\"https://storeleads.app/\">StoreLeads.app</a> Woo usage)</li>\n\n\n\n<li>33% of the top 1 million online store are powered by Woo </li>\n\n\n\n<li>8.9% of the internet is powered by Woo (<a href=\"https://w3techs.com/technologies/details/cm-woocommerce\">W3Techs</a>)</li>\n\n\n\n<li>270M+ Woo downloads to date (WooCommerce internal data)</li>\n\n\n\n<li>908 products in the Marketplace</li>\n\n\n\n<li>66 languages supported</li>\n</ul>\n\n\n\n<p>Maiorana highlighted a few e-commerce trends the company is watching, including the expansion of chatbots, on-site search, and AR. WooCommerce is seeing more merchants attracting non-local buyers through cross-boarder selling strategies, with high-growth stores focused on expanding across countries, languages, channels, and payment methods. Maiorana said customers are now expecting seamless experiences across devices and store must be fast, smooth, and intuitive from screen to screen.</p>\n\n\n\n<p>Maiorana also shared insights from <a href=\"https://woocommerce.com/partner-program/\">WooExperts</a>, officially endorsed WooCommerce agencies, who are seeing an increase in merchants embracing multi-channel selling, diversified payment options, and immersive buying experience that leverage AI, AR, virtual try-ons, and 3D images.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<img width=\"2100\" height=\"1178\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/Screen-Shot-2023-10-10-at-12.13.52-PM.png\" alt=\"\" class=\"wp-image-150047\" />\n\n\n\n<p>The State of the Woo featured several milestones WooCommerce logged this year. WooCommerce Payments is now available in 38 countries. WooPay, the gateway&#8217;s opt-in single-click cross-site checkout experience, is out of beta. WooCommerce has also continued expanding its payment integrations covering more geographies and localized payment methods. The company recently launched <a href=\"https://woocommerce.com/products/tiktok-for-woocommerce/\">TikTok for WooCommerce</a> as a new integration to help merchants improve conversion by selling directly via TikTok Shop.</p>\n\n\n\n<p>WooExperts onboarded 88 new agencies, who are ambassadors for Woo, building enterprise projects at scale. They are also invited to collaborate with WooCommerce on technical planning.</p>\n\n\n\n<p>WooCommerce core has crossed several important milestones in 2023, including making High-Performance Order Storage (HPOS), more commonly known as custom order tables, the default on <a href=\"https://developer.woocommerce.com/2023/10/10/woocommerce-8-2-0-released/\">version 8.2</a>. This major overhaul delivers significant performance gains and makes databases more scalable.</p>\n\n\n\n<p>The full blockification of WooCommerce core is on the way <a href=\"https://developer.woocommerce.com/roadmap/block-based-product-creation-experience/\">a new product management experience using the Blocks API</a>. It was auto-enabled for a subset of new stores in 7.9, released in July, and will be enabled for more stores as soon as WooCommerce adds variable product management support.</p>\n\n\n\n<p>Block-based order confirmation is next on the roadmap, and block-based cart and checkout will soon be the default, as WooCommerce is working closely with partners to increase extension support.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Woo Express: More AI-Powered Features Coming Soon</h3>\n\n\n\n<img width=\"2440\" height=\"1242\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/Screen-Shot-2023-10-10-at-12.32.27-PM.png\" alt=\"\" class=\"wp-image-150061\" />\n\n\n\n<p>During today&#8217;s WooSesh keynote, WooCommerce also highlighted a few milestones for Woo Express, the all-in-one WooCommerce plan hosted on WordPress.com. The product launched in 2023 as &#8220;Woo&#8217;s biggest bet ever.&#8221; It kicked off in September 2022, launched free trials in April 2023, and had 1,000 paying customers as of July 2023.</p>\n\n\n\n<p>The team demonstrated the new onboarding flow and store personalization experience. Woo Express&#8217; current priorities are making store setup easier with an AI-driven assistant to guide merchants through setup and growing stores, along with offering smart recommendations to drive more revenue, based on store analytics. The product defaults to a block-based theme, cart, and checkout. It includes the Woo AI plugin for early feedback.</p>\n\n\n\n<p>Woo Express is currently only available on WordPress.com, but WooCommerce representatives said what its features will also be surfaced in Woo core. The product is being used as a proving ground for the next phases of product development.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<img width=\"2056\" height=\"1132\" src=\"https://149611589.v2.pressablecdn.com/wp-content/uploads/2023/10/Screen-Shot-2023-10-10-at-12.31.30-PM.png\" alt=\"\" class=\"wp-image-150059\" />\n\n\n\n<p><a href=\"https://woosesh.com/\">WooSesh</a> will be live again tomorrow with more sessions on using AI tools for support, creating effective landing pages, using Amazon Pay, shipping trends, case studies, and more. Registration is free but the sessions must be viewed live. The sessions will be recorded and published to <a href=\"https://wpsessions.com/?utm_source=WooSesh\">WPSessions</a> after the live event has ended, available with a subscription.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Oct 2023 03:39:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"WordPress.org blog: WordPress 6.4 Beta 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"https://wordpress.org/news/?p=16101\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2023/10/wordpress-6-4-beta-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7126:\"<p>WordPress 6.4 Beta 3 is now available for testing!</p>\n\n\n\n<p><strong>This beta version of the WordPress software is under development</strong>. Please do not install, run, or test this version of WordPress on production or mission-critical websites. Instead, it is recommended that you evaluate Beta 3 on a test server and site.</p>\n\n\n\n<p>You can test WordPress 6.4 Beta 3 in three ways:</p>\n\n\n\n<ol>\n<li><strong>Plugin</strong>: Install and activate the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin on a WordPress install (select the “Bleeding edge” channel and “Beta/RC Only” stream).</li>\n\n\n\n<li><strong>Direct download</strong>: Download the <a href=\"https://wordpress.org/wordpress-6.4-beta3.zip\">Beta 3 version (zip)</a> and install it on a WordPress website.</li>\n\n\n\n<li><strong>Command line</strong>: Use the following <a href=\"https://make.wordpress.org/cli/\">WP-CLI</a> command:<br /><code>wp core update --version=6.4-beta3</code></li>\n</ol>\n\n\n\n<p>The current target for the final release of WordPress 6.4 is <strong>November 7, 2023</strong>. Get an overview of the <a href=\"https://make.wordpress.org/core/6-4/\">6.4 release cycle</a>, and check the <a href=\"https://make.wordpress.org/core/\">Make WordPress Core blog</a> for <a href=\"https://make.wordpress.org/core/tag/6-4/\">6.4-related posts</a> in the coming weeks for more information.</p>\n\n\n\n<p>The WordPress 6.4 release is brought to you by an <a href=\"https://make.wordpress.org/core/2023/06/05/wordpress-6-4-development-cycle/\"><strong>underrepresented gender release squad</strong></a> to welcome the participation and partnership of those who identify as gender-underrepresented in the WordPress open source project.</p>\n\n\n\n<p><strong>Want to know what&#8217;s new in WordPress 6.4?</strong> <a href=\"https://wordpress.org/news/2023/09/wordpress-6-4-beta-1/\">Read the Beta 1 announcement</a> for details.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"wp-block-heading\">Get involved in testing</h2>\n\n\n\n<p>Your help testing WordPress 6.4 Beta 3 is key to ensuring its quality. While testing the upgrade process is essential, trying out new features is equally important. <a href=\"https://make.wordpress.org/test/2023/09/26/help-test-wordpress-6-4/\">This detailed guide</a> will walk you through testing features in WordPress 6.4.</p>\n\n\n\n<p>If you encounter an issue, please report it to the <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta area</a> of the support forums or directly to <a href=\"https://core.trac.wordpress.org/newticket\">WordPress Trac</a> if you are comfortable writing a reproducible bug report. You can also check your issue against a list of <a href=\"https://core.trac.wordpress.org/tickets/major\">known bugs</a>.</p>\n\n\n\n<p>Learn more about Gutenberg updates debuting in WordPress 6.4 by reviewing prior editions of <a href=\"https://make.wordpress.org/core/tag/gutenberg-new/\">What’s New in Gutenberg</a> posts for <a href=\"https://make.wordpress.org/core/2023/07/14/whats-new-in-gutenberg-16-2-12-july/\">16.2</a>, <a href=\"https://make.wordpress.org/core/2023/07/26/whats-new-in-gutenberg-16-3-26-july/\">16.3</a>, <a href=\"https://make.wordpress.org/core/2023/08/10/whats-new-in-gutenberg-16-4-9-august/\">16.4</a>, <a href=\"https://make.wordpress.org/core/2023/08/23/whats-new-in-gutenberg-16-5-23-august/\">16.5</a>, <a href=\"https://make.wordpress.org/core/2023/09/06/whats-new-in-gutenberg-16-6-06-september/\">16.6</a>, and <a href=\"https://make.wordpress.org/core/2023/09/28/whats-new-in-gutenberg-16-7-27-september/\">16.7</a>.</p>\n\n\n\n<p>Curious about testing releases in general? Follow along with the <a href=\"https://make.wordpress.org/test/\">testing initiatives in Make Core</a> and join the <a href=\"https://wordpress.slack.com/messages/core-test/\">#core-test channel</a> on <a href=\"https://wordpress.slack.com/\">Making WordPress Slack</a>.</p>\n\n\n\n<h3 class=\"wp-block-heading\">Vulnerability bounty doubles during Beta 3</h3>\n\n\n\n<p>Between Beta 1 and the final release candidate (RC) for each new WordPress version, the <a href=\"https://make.wordpress.org/security/2023/09/26/bug-bounty-for-wordpress-6-4-beta/\">monetary reward for reporting new, unreleased security vulnerabilities</a> is doubled. Please follow responsible disclosure practices as detailed in the project’s security practices and policies outlined on the <a href=\"https://hackerone.com/wordpress\">HackerOne page</a> and in the <a href=\"https://wordpress.org/about/security/\">security white paper</a>.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"wp-block-heading\">Update on the Font Library</h2>\n\n\n\n<p><strong>The Font Library feature, initially planned for WordPress 6.4, is now set to release in 6.5</strong>. WordPress is committed to delivering the best possible experience. This decision allows time to address enhancement opportunities, <a href=\"https://make.wordpress.org/test/2023/10/03/help-test-the-font-library/\">test</a>, and get enough feedback to meet WordPress&#8217;s quality standards. Thanks for your support as contributors work towards an exceptional Font Library experience.</p>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"wp-block-heading\">Beta 3 highlights</h2>\n\n\n\n<p>WordPress 6.4 Beta 3 contains more than 60 updates since the Beta 2 release, including <a href=\"https://core.trac.wordpress.org/query?status=closed&changetime=10%2F04%2F2023..10%2F10%2F2023&milestone=6.4&col=id&col=milestone&col=owner&col=type&col=priority&order=id\">29 tickets for WordPress core</a>.</p>\n\n\n\n<p>Each beta cycle focuses on bug fixes; more are on the way with your help through testing. You can browse the technical details for all issues addressed since Beta 2 using these links:</p>\n\n\n\n<ul>\n<li><a href=\"https://github.com/WordPress/gutenberg/commits/wp/6.4\">GitHub commits for 6.4</a></li>\n\n\n\n<li><a href=\"https://core.trac.wordpress.org/query?status=closed&changetime=10%2F04%2F2023..10%2F10%2F2023&milestone=6.4&col=id&col=milestone&col=owner&col=type&col=priority&order=id\">Closed Trac tickets since Beta 2</a></li>\n\n\n\n<li><a href=\"https://github.com/WordPress/twentytwentyfour/commits/\">GitHub commits for Twenty Twenty-Four</a></li>\n</ul>\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"wp-block-heading\">A Beta 3 haiku</h2>\n\n\n\n<p>Beta 3 arrives<br />Testing where progress derives<br />Iterate, it thrives</p>\n\n\n\n<p><em>Thank you to the following contributors for collaborating on this post: </em><a href=\"https://profiles.wordpress.org/meher/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>meher</a>, <a href=\"https://profiles.wordpress.org/rmartinezduque/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>rmartinezduque</a>, <a href=\"https://profiles.wordpress.org/cbringmann/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>cbringmann</a>, <a href=\"https://profiles.wordpress.org/sereedmedia/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>sereedmedia</a> and <a href=\"https://profiles.wordpress.org/michelleames/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>michelleames</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Oct 2023 16:37:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Meher Bala\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"Do The Woo Community: Breaking Down YMIR and a Lot of Other Things in Carl Alexander’s Mind\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"https://dothewoo.io/?p=76836\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://dothewoo.io/breaking-down-ymir-and-a-lot-of-other-things-in-carl-alexanders-mind/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:469:\"<p>When you dive deep into Carl\'s mind to learn more about what he built for WordPress, the end result is today\'s show.</p>\n<p>&gt;&gt; The post <a rel=\"nofollow\" href=\"https://dothewoo.io/breaking-down-ymir-and-a-lot-of-other-things-in-carl-alexanders-mind/\">Breaking Down YMIR and a Lot of Other Things in Carl Alexander&#8217;s Mind</a> appeared first on <a rel=\"nofollow\" href=\"https://dothewoo.io\">Do the Woo - a WooCommerce and WordPress Builder Podcast</a>	.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Oct 2023 11:15:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"BobWP\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:48:\"WpOrg\\Requests\\Utility\\CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sun, 29 Oct 2023 14:54:33 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:13:\"last-modified\";s:29:\"Sun, 29 Oct 2023 14:45:49 GMT\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20231022022720\";}',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        349,
        '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9',
        '1698634473',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        350,
        '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9',
        '1698591273',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        351,
        '_transient_timeout_dash_v2_01e18dead815ce736e3b9cccfbd773a5',
        '1698634473',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        352,
        '_transient_dash_v2_01e18dead815ce736e3b9cccfbd773a5',
        '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://br.wordpress.org/2023/10/25/wordpress-6-4-release-candidate-2/\'>WordPress 6.4 Release Candidate 2</a></li><li><a class=\'rsswidget\' href=\'https://br.wordpress.org/2023/10/17/wordpress-6-4-release-candidate-1/\'>WordPress 6.4 Release Candidate 1</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/gutenberg-16-9-lets-you-rename-almost-any-block-adds-experimental-form-and-input-blocks\'>WPTavern: Gutenberg 16.9 Lets You Rename (Almost) Any Block, Adds Experimental Form and Input Blocks</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordpress-6-4-disables-attachment-pages-for-new-installations\'>WPTavern: WordPress 6.4 Disables Attachment Pages for New Installations</a></li><li><a class=\'rsswidget\' href=\'https://dothewoo.io/never-say-never-with-linkedin/\'>Do The Woo Community: Never Say Never with LinkedIn</a></li></ul></div>',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        354,
        '_transient_is_multi_author',
        '0',
        'yes'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        359,
        '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a',
        '1698633623',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        360,
        '_site_transient_poptags_40cd750bba9870f18aada2478b24840a',
        'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:6167;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4824;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2788;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2683;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2057;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1927;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1914;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1658;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1573;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1564;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1550;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1512;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1503;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1498;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1382;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1316;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1278;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1176;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1161;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1155;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:1076;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:1034;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:1003;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:971;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:908;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:906;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:888;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:883;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:881;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:877;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:872;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:843;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:824;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:796;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:781;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:780;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:776;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:764;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:750;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:734;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:732;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:730;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:730;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:694;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:688;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:683;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:676;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:668;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:635;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:629;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:621;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:617;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:610;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:608;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:601;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:597;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:594;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:593;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:577;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:576;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:573;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:571;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:571;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:562;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:559;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:544;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:543;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:533;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:533;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:532;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:531;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:519;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:511;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:510;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:509;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:506;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:494;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:484;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:480;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:471;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:451;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:449;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:449;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:439;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:434;}s:8:\"payments\";a:3:{s:4:\"name\";s:8:\"payments\";s:4:\"slug\";s:8:\"payments\";s:5:\"count\";i:431;}s:7:\"gateway\";a:3:{s:4:\"name\";s:7:\"gateway\";s:4:\"slug\";s:7:\"gateway\";s:5:\"count\";i:427;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:426;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:426;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:425;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:422;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:421;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:420;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:414;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:408;}s:8:\"checkout\";a:3:{s:4:\"name\";s:8:\"checkout\";s:4:\"slug\";s:8:\"checkout\";s:5:\"count\";i:401;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:400;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:396;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:396;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:391;}}',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        362,
        '_site_transient_timeout_theme_roots',
        '1698624693',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        363,
        '_site_transient_theme_roots',
        'a:6:{s:13:\"author-writer\";s:7:\"/themes\";s:18:\"ecommerce-bookshop\";s:7:\"/themes\";s:8:\"retailsy\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        364,
        '_site_transient_update_core',
        'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.3.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1698622897;s:15:\"version_checked\";s:5:\"6.3.2\";s:12:\"translations\";a:0:{}}',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        365,
        '_site_transient_update_plugins',
        'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1698622897;s:8:\"response\";a:1:{s:43:\"ecommerce-companion/ecommerce-companion.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/ecommerce-companion\";s:4:\"slug\";s:19:\"ecommerce-companion\";s:6:\"plugin\";s:43:\"ecommerce-companion/ecommerce-companion.php\";s:11:\"new_version\";s:3:\"5.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/ecommerce-companion/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/ecommerce-companion.5.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/ecommerce-companion/assets/icon-128x128.png?rev=2857634\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/ecommerce-companion/assets/banner-772x250.jpg?rev=2857692\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";s:6:\"tested\";s:5:\"6.3.2\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.79\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.79.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2969581\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2969581\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:37:\"wp-books-gallery/wp-books-gallery.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/wp-books-gallery\";s:4:\"slug\";s:16:\"wp-books-gallery\";s:6:\"plugin\";s:37:\"wp-books-gallery/wp-books-gallery.php\";s:11:\"new_version\";s:5:\"4.5.8\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/wp-books-gallery/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-books-gallery.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-books-gallery/assets/icon-256x256.png?rev=2142129\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-books-gallery/assets/icon-128x128.png?rev=2142129\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/wp-books-gallery/assets/banner-772x250.jpg?rev=2142129\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}}s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:3:\"5.3\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.79\";s:43:\"ecommerce-companion/ecommerce-companion.php\";s:3:\"5.1\";s:9:\"hello.php\";s:5:\"1.7.2\";s:37:\"wp-books-gallery/wp-books-gallery.php\";s:5:\"4.5.8\";}}',
        'no'
    );

INSERT INTO
    `SERVMASK_PREFIX_options`
VALUES (
        366,
        '_site_transient_update_themes',
        'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1698622897;s:7:\"checked\";a:6:{s:13:\"author-writer\";s:3:\"0.6\";s:18:\"ecommerce-bookshop\";s:3:\"1.9\";s:8:\"retailsy\";s:3:\"4.7\";s:15:\"twentytwentyone\";s:3:\"1.9\";s:17:\"twentytwentythree\";s:3:\"1.2\";s:15:\"twentytwentytwo\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:8:\"retailsy\";a:6:{s:5:\"theme\";s:8:\"retailsy\";s:11:\"new_version\";s:3:\"4.8\";s:3:\"url\";s:38:\"https://wordpress.org/themes/retailsy/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/theme/retailsy.4.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:5:{s:13:\"author-writer\";a:6:{s:5:\"theme\";s:13:\"author-writer\";s:11:\"new_version\";s:3:\"0.6\";s:3:\"url\";s:43:\"https://wordpress.org/themes/author-writer/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/author-writer.0.6.zip\";s:8:\"requires\";s:3:\"5.0\";s:12:\"requires_php\";s:3:\"5.6\";}s:18:\"ecommerce-bookshop\";a:6:{s:5:\"theme\";s:18:\"ecommerce-bookshop\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:48:\"https://wordpress.org/themes/ecommerce-bookshop/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/theme/ecommerce-bookshop.1.9.zip\";s:8:\"requires\";s:3:\"5.0\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.9.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.5.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}',
        'no'
    );

COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_postmeta`;

CREATE TABLE
    `SERVMASK_PREFIX_postmeta` (
        `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
        `meta_key` varchar(255) DEFAULT NULL,
        `meta_value` longtext DEFAULT NULL,
        PRIMARY KEY (`meta_id`),
        KEY `post_id` (`post_id`),
        KEY `meta_key` (`meta_key`(191))
    ) ENGINE = InnoDB AUTO_INCREMENT = 425 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

START TRANSACTION;

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        1,
        2,
        '_wp_page_template',
        'default'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        2,
        3,
        '_wp_page_template',
        'default'
    );

INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES (3, 6, '_edit_last', '1');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        4,
        6,
        '_edit_lock',
        '1698108402:1'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        5,
        7,
        '_wp_attached_file',
        '2023/10/a_arte_da_guerra_.jpg'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        6,
        7,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:658;s:6:\"height\";i:1000;s:4:\"file\";s:29:\"2023/10/a_arte_da_guerra_.jpg\";s:8:\"filesize\";i:46046;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (7, 6, '_thumbnail_id', '7');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (9, 6, 'wbg_author', 'Sun Tzu');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        10,
        6,
        'wbg_download_link',
        'https://doc-0k-70-docs.googleusercontent.com/docs/securesc/nf4vl7bc7rs6jqgd95936749uop5m98t/rq14c20699hhtsgqq6ooagamsa3g5rg1/1698108300000/18157093437177021428/12967222853889809424/1aX8WZCxUIGd2raYLd3rkcYNM60AX5FIn?e=view&ax=AI0foUo0SZyazES0GkNtouOjl2S8_KhD8JkT0LwtSRtGh2qWLz8IpNjNCaSAwGAQcWegcnTy3JqJikfNLCg-42FWxWjftTflwLB4VbLV_R5nBIJutDs6t80PqzXCv-SbCUwpxiMbpWlBmpdcMwkNbRXEAs5eJl2kl1XAAZTSNMvO3lFp7BgRIcZVZC1as41w7fEUaVafTxulpcUYpZzqrYOaMJlJ3qY58STPjMczgBdt35eiJrlsfMmAf_g_Ee8ItdbkXzXtyxRdZDVQmnD2f65lRI9MZBaXq3hg3GNpgqd_uRcZt1ygTMz_3C2E5_2zq3m6Pi3ZXcDtR_H2xibivuAh3FVYXrGKvWdWTz9Im29TO01Zkc72F9DuuwAJ-Aorks-XXGti-bchQMGm-eWWK9H7mUvY8TcE0NxibZzcVnwgbHVBsmoqyZIpU2nlV2zQilEcFGjSiMf-g1xYuSUoEFrpi6ZIjU3cjolo0A_LuzR6aAUBgEMOXdRWysO7bf-0F0x5Q_XQNFXzOcuJehMl3PaxpqTKGT-cDyJH5pk1g5Bz2Hblnu_7UaBnXWihJz0duL4O_vt5D99yJBI253Rml4BjyqIN_DO-EK4K86ObFBgn7GkeiE3peOugoS6-Hi58zs3_inGb-ez61jmeTGyWnEmqI58L4tGEHE4VbH5Hy7IYsQOQIQso0oZkq83JeG8FnKiZu9fYKOPkLH5gvie76OuU3bX_tXXDwk-zg9ugsnWuBZIiP6-xb395HMArNH_vI32gsOKkHg3jpv6vXqZY_L-2KWUFhPlifwU-HrqfdVySbBsV36EumDTNcbzz5yKsvjotNzEnTUIflMddbh7uxQdnnyEQyZVfhpn3Njdu2rH2Ohr2eh9jncroXz-DNUICVXcRYw&uuid=9b3e3a53-2515-444d-a237-d1040746df3b&authuser=0&nonce=bmc22nji6ndiq&user=12967222853889809424&hash=is3q5abv08bdqrbrp7hk50476kd5sh40'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        12,
        6,
        'wbg_publisher',
        'Cultura Brasil'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        14,
        6,
        'wbg_published_on',
        '2010'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (18, 6, 'wbg_pages', '58');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (23, 6, 'wbg_status', 'active');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (47, 8, '_edit_last', '1');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        48,
        8,
        '_edit_lock',
        '1698108859:1'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        49,
        9,
        '_wp_attached_file',
        '2023/10/alice_no_pais_das_maravilhas.jpg'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        50,
        9,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:424;s:6:\"height\";i:600;s:4:\"file\";s:40:\"2023/10/alice_no_pais_das_maravilhas.jpg\";s:8:\"filesize\";i:47164;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (51, 8, '_thumbnail_id', '9');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        53,
        8,
        'wbg_author',
        'Lewis Carroll'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        54,
        8,
        'wbg_download_link',
        'https://www.ebooksbrasil.org/adobeebook/alicep.pdf'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        56,
        8,
        'wbg_publisher',
        'eBooks Brasil'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        58,
        8,
        'wbg_published_on',
        '2002'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (62, 8, 'wbg_pages', '125');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (67, 8, 'wbg_status', 'active');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (91, 10, '_edit_last', '1');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        92,
        10,
        '_edit_lock',
        '1698109310:1'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        93,
        11,
        '_wp_attached_file',
        '2023/10/500_comandos_linux.png'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        94,
        11,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:1047;s:6:\"height\";i:1238;s:4:\"file\";s:30:\"2023/10/500_comandos_linux.png\";s:8:\"filesize\";i:442506;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (95, 10, '_thumbnail_id', '11');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        97,
        10,
        'wbg_author',
        'Bruno Andrade'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        98,
        10,
        'wbg_download_link',
        'https://www.linuxpro.com.br/dl/guia_500_comandos_Linux.pdf'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (100, 10, 'wbg_publisher', 'GNU');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        102,
        10,
        'wbg_published_on',
        '2016'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (106, 10, 'wbg_pages', '32');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (111, 10, 'wbg_status', 'active');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (135, 12, '_edit_last', '1');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        136,
        12,
        '_edit_lock',
        '1698110465:1'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        137,
        13,
        '_wp_attached_file',
        '2023/10/bg1.png'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        138,
        13,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:1191;s:6:\"height\";i:1684;s:4:\"file\";s:15:\"2023/10/bg1.png\";s:8:\"filesize\";i:426284;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (139, 12, '_thumbnail_id', '13');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        141,
        12,
        'wbg_author',
        'Marco Agner'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        142,
        12,
        'wbg_download_link',
        'https://itsrio.org/wp-content/uploads/2018/06/bitcoin-para-programadores.pdf'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        146,
        12,
        'wbg_published_on',
        '2018'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (155, 12, 'wbg_status', 'active');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (179, 14, '_edit_last', '1');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        180,
        14,
        '_edit_lock',
        '1698110982:1'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        181,
        15,
        '_wp_attached_file',
        '2023/10/historia_das_americas.png'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        182,
        15,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:468;s:6:\"height\";i:661;s:4:\"file\";s:33:\"2023/10/historia_das_americas.png\";s:8:\"filesize\";i:679195;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (183, 14, '_thumbnail_id', '15');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        185,
        14,
        'wbg_author',
        'Luciane Chaves'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        186,
        14,
        'wbg_download_link',
        'https://md.uninta.edu.br/geral/historia-das-americas-i/pdf/Historia-das-Americas-I.pdf'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        188,
        14,
        'wbg_publisher',
        'INTA'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        190,
        14,
        'wbg_published_on',
        '2016'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (194, 14, 'wbg_pages', '96');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (199, 14, 'wbg_status', 'active');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (223, 16, '_edit_last', '1');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        224,
        16,
        '_edit_lock',
        '1698111639:1'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        225,
        17,
        '_wp_attached_file',
        '2023/10/o_saci.jpg'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        226,
        17,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:855;s:6:\"height\";i:1360;s:4:\"file\";s:18:\"2023/10/o_saci.jpg\";s:8:\"filesize\";i:104818;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (227, 16, '_thumbnail_id', '17');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        229,
        16,
        'wbg_author',
        'Monteiro Lobato'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        230,
        16,
        'wbg_download_link',
        'https://5ca0e999-de9a-47e0-9b77-7e3eeab0592c.usrfiles.com/ugd/5ca0e9_de4ef4557f714ac58aa0e1054c073314.pdf'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        232,
        16,
        'wbg_publisher',
        'IBAMENDES'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        234,
        16,
        'wbg_published_on',
        '1921'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (238, 16, 'wbg_pages', '83');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (243, 16, 'wbg_status', 'active');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        267,
        2,
        '_edit_lock',
        '1698361043:1'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        269,
        20,
        '_wp_attached_file',
        '2023/10/logo.png'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        270,
        20,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:155;s:6:\"height\";i:65;s:4:\"file\";s:16:\"2023/10/logo.png\";s:8:\"filesize\";i:3637;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        271,
        21,
        '_wp_attached_file',
        '2023/10/blog-1.jpg'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        272,
        21,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:950;s:6:\"height\";i:950;s:4:\"file\";s:18:\"2023/10/blog-1.jpg\";s:8:\"filesize\";i:51556;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        273,
        22,
        '_wp_attached_file',
        '2023/10/blog-2.jpg'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        274,
        22,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:950;s:6:\"height\";i:950;s:4:\"file\";s:18:\"2023/10/blog-2.jpg\";s:8:\"filesize\";i:71441;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        275,
        23,
        '_wp_attached_file',
        '2023/10/blog-3.jpg'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        276,
        23,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:950;s:6:\"height\";i:950;s:4:\"file\";s:18:\"2023/10/blog-3.jpg\";s:8:\"filesize\";i:39360;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        277,
        24,
        '_wp_attached_file',
        '2023/10/product-1.jpg'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        278,
        24,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2023/10/product-1.jpg\";s:8:\"filesize\";i:25359;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        279,
        25,
        '_wp_attached_file',
        '2023/10/product-2.jpg'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        280,
        25,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2023/10/product-2.jpg\";s:8:\"filesize\";i:25643;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        281,
        26,
        '_wp_attached_file',
        '2023/10/product-3.jpg'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        282,
        26,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2023/10/product-3.jpg\";s:8:\"filesize\";i:30716;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        283,
        27,
        '_wp_attached_file',
        '2023/10/product-4.jpg'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        284,
        27,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2023/10/product-4.jpg\";s:8:\"filesize\";i:19585;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        285,
        28,
        '_wp_attached_file',
        '2023/10/product-5.jpg'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        286,
        28,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2023/10/product-5.jpg\";s:8:\"filesize\";i:21034;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        287,
        29,
        '_wp_attached_file',
        '2023/10/product-6.jpg'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        288,
        29,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2023/10/product-6.jpg\";s:8:\"filesize\";i:15819;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        289,
        30,
        '_wp_attached_file',
        '2023/10/product-7.jpg'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        290,
        30,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2023/10/product-7.jpg\";s:8:\"filesize\";i:19892;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        291,
        31,
        '_wp_attached_file',
        '2023/10/product-8.jpg'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        292,
        31,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2023/10/product-8.jpg\";s:8:\"filesize\";i:22872;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        293,
        32,
        '_wp_page_template',
        ''
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (295, 33, '_thumbnail_id', '21');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (297, 34, '_thumbnail_id', '22');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (299, 35, '_thumbnail_id', '23');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (300, 36, '_thumbnail_id', '24');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (301, 37, '_thumbnail_id', '25');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (302, 38, '_thumbnail_id', '26');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (303, 39, '_thumbnail_id', '27');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (304, 40, '_thumbnail_id', '28');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (305, 41, '_thumbnail_id', '29');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (306, 42, '_thumbnail_id', '30');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (307, 43, '_thumbnail_id', '31');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        309,
        32,
        '_edit_lock',
        '1698283154:1'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        310,
        19,
        '_customize_restore_dismissed',
        '1'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        311,
        47,
        '_wp_trash_meta_status',
        'publish'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        312,
        47,
        '_wp_trash_meta_time',
        '1698282204'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        313,
        48,
        '_edit_lock',
        '1698282230:1'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        314,
        48,
        '_wp_trash_meta_status',
        'publish'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        315,
        48,
        '_wp_trash_meta_time',
        '1698282243'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        316,
        49,
        '_wp_trash_meta_status',
        'publish'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        317,
        49,
        '_wp_trash_meta_time',
        '1698282354'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        318,
        50,
        '_wp_trash_meta_status',
        'publish'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        319,
        50,
        '_wp_trash_meta_time',
        '1698282360'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        320,
        51,
        '_edit_lock',
        '1698282365:1'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        321,
        51,
        '_wp_trash_meta_status',
        'publish'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        322,
        51,
        '_wp_trash_meta_time',
        '1698282375'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        323,
        52,
        '_wp_trash_meta_status',
        'publish'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        324,
        52,
        '_wp_trash_meta_time',
        '1698282843'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        325,
        53,
        '_wp_trash_meta_status',
        'publish'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        326,
        53,
        '_wp_trash_meta_time',
        '1698283129'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        327,
        54,
        '_wp_trash_meta_status',
        'publish'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        328,
        54,
        '_wp_trash_meta_time',
        '1698283299'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        329,
        55,
        '_edit_lock',
        '1698284023:1'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        330,
        55,
        '_wp_trash_meta_status',
        'publish'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        331,
        55,
        '_wp_trash_meta_time',
        '1698284037'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        332,
        58,
        '_edit_lock',
        '1698284473:1'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        333,
        58,
        '_wp_trash_meta_status',
        'publish'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        334,
        58,
        '_wp_trash_meta_time',
        '1698284489'
    );

INSERT INTO `SERVMASK_PREFIX_postmeta` VALUES (335, 2, 'footnotes', '');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        336,
        3,
        '_edit_lock',
        '1698443449:1'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (337, 64, '_edit_last', '1');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        338,
        64,
        '_edit_lock',
        '1698591398:1'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        339,
        65,
        '_wp_attached_file',
        '2023/10/o_alienista.jpg'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        340,
        65,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:667;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2023/10/o_alienista.jpg\";s:8:\"filesize\";i:83378;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (341, 64, '_thumbnail_id', '65');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        343,
        64,
        'wbg_author',
        'Machado de Assis'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        344,
        64,
        'wbg_download_link',
        'https://5ca0e999-de9a-47e0-9b77-7e3eeab0592c.usrfiles.com/ugd/5ca0e9_634cd7437373422587ffdcd13f5782ce.pdf'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        346,
        64,
        'wbg_publisher',
        'Virtual Books'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        348,
        64,
        'wbg_published_on',
        '1999'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (352, 64, 'wbg_pages', '48');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (357, 64, 'wbg_status', 'active');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (381, 66, '_edit_last', '1');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        382,
        66,
        '_edit_lock',
        '1698591609:1'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        383,
        67,
        '_wp_attached_file',
        '2023/10/robotica.png'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        384,
        67,
        '_wp_attachment_metadata',
        'a:6:{s:5:\"width\";i:329;s:6:\"height\";i:468;s:4:\"file\";s:20:\"2023/10/robotica.png\";s:8:\"filesize\";i:223059;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (385, 66, '_thumbnail_id', '67');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        387,
        66,
        'wbg_author',
        'Deise Peralta'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        388,
        66,
        'wbg_download_link',
        'https://3c290742-53df-4d6f-b12f-6b135a606bc7.usrfiles.com/ugd/48d206_1b5275571b234d739eaa722ca244015c.pdf'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (390, 66, 'wbg_publisher', 'Fi');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (
        392,
        66,
        'wbg_published_on',
        '2012'
    );

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (396, 66, 'wbg_pages', '272');

INSERT INTO
    `SERVMASK_PREFIX_postmeta`
VALUES (401, 66, 'wbg_status', 'active');

COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_posts`;

CREATE TABLE
    `SERVMASK_PREFIX_posts` (
        `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
        `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `post_content` longtext NOT NULL,
        `post_title` text NOT NULL,
        `post_excerpt` text NOT NULL,
        `post_status` varchar(20) NOT NULL DEFAULT 'publish',
        `comment_status` varchar(20) NOT NULL DEFAULT 'open',
        `ping_status` varchar(20) NOT NULL DEFAULT 'open',
        `post_password` varchar(255) NOT NULL DEFAULT '',
        `post_name` varchar(200) NOT NULL DEFAULT '',
        `to_ping` text NOT NULL,
        `pinged` text NOT NULL,
        `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `post_content_filtered` longtext NOT NULL,
        `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
        `guid` varchar(255) NOT NULL DEFAULT '',
        `menu_order` int(11) NOT NULL DEFAULT 0,
        `post_type` varchar(20) NOT NULL DEFAULT 'post',
        `post_mime_type` varchar(100) NOT NULL DEFAULT '',
        `comment_count` bigint(20) NOT NULL DEFAULT 0,
        PRIMARY KEY (`ID`),
        KEY `post_name` (`post_name`(191)),
        KEY `type_status_date` (
            `post_type`,
            `post_status`,
            `post_date`,
            `ID`
        ),
        KEY `post_parent` (`post_parent`),
        KEY `post_author` (`post_author`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 68 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

START TRANSACTION;

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        1,
        1,
        '2023-10-21 23:47:19',
        '2023-10-22 02:47:19',
        '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->',
        'Olá, mundo!',
        '',
        'publish',
        'open',
        'open',
        '',
        'ola-mundo',
        '',
        '',
        '2023-10-21 23:47:19',
        '2023-10-22 02:47:19',
        '',
        0,
        'http://cloudbooks.onlab.click/?p=1',
        0,
        'post',
        '',
        1
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        2,
        1,
        '2023-10-21 23:47:19',
        '2023-10-22 02:47:19',
        '<!-- wp:paragraph -->\n<p><strong>Sobre Nós</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bem-vindo ao nosso mundo de palavras, onde a literatura ganha vida e a imaginação é infinita. Nossa jornada começou com um sonho simples: tornar o conhecimento e o entretenimento literário acessíveis a todos, em qualquer lugar do mundo. E assim nasceu este espaço digital, onde os amantes da leitura se encontram para explorar um vasto universo de eBooks.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Quem Somos</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Somos uma equipe apaixonada de leitores vorazes, escritores talentosos e entusiastas da tecnologia. Nosso objetivo é criar uma experiência literária inigualável, onde a escrita e a leitura se encontram perfeitamente no ambiente digital. Acreditamos que cada livro é uma porta para um mundo diferente, uma oportunidade de aprender, sonhar e escapar para novas realidades.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Nossa Missão</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nossa missão é democratizar o acesso à literatura e proporcionar uma plataforma que celebre a diversidade de histórias e autores. Queremos conectar leitores ávidos com autores brilhantes e oferecer uma variedade de títulos que abrangem gêneros, idiomas e culturas. Nosso compromisso é impulsionar a paixão pela leitura, promovendo a descoberta de novos mundos através das palavras.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>O Que Oferecemos</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Em nosso site, você encontrará uma vasta biblioteca de eBooks cuidadosamente selecionados, abrangendo desde clássicos atemporais até os mais recentes lançamentos. Oferecemos uma experiência de leitura envolvente, com recursos que permitem personalizar sua leitura, como ajuste de fonte, marcadores, realces e muito mais. Acessar sua biblioteca pessoal nunca foi tão fácil, com suporte para uma variedade de dispositivos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Junte-se a Nós</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Estamos comprometidos em melhorar constantemente nossa plataforma e expandir nosso catálogo para atender às suas necessidades literárias. Sua jornada conosco é importante, e esperamos que cada visita ao nosso site o transporte para novos horizontes literários.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Agradecemos por fazer parte da nossa comunidade de leitores e autores. Seja bem-vindo a este mundo de palavras e histórias, e junte-se a nós nessa incrível aventura literária. Se tiver alguma pergunta ou feedback, não hesite em entrar em contato. Estamos ansiosos para ajudá-lo a descobrir seu próximo livro favorito e enriquecer sua paixão pela leitura.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Obrigado por escolher nosso site de eBooks como seu destino literário. Explore, leia, e mergulhe em um oceano de histórias que aguardam por você.</p>\n<!-- /wp:paragraph -->',
        'Sobre',
        '',
        'publish',
        'closed',
        'open',
        '',
        'pagina-exemplo',
        '',
        '',
        '2023-10-26 19:56:31',
        '2023-10-26 22:56:31',
        '',
        0,
        'http://cloudbooks.onlab.click/?page_id=2',
        0,
        'page',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        3,
        1,
        '2023-10-21 23:47:19',
        '2023-10-22 02:47:19',
        '<!-- wp:paragraph -->\n<p><strong>Política de Privacidade para Downloads de eBooks</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Na CloudBooks, a sua privacidade é uma prioridade e estamos comprometidos em proteger as informações pessoais que você compartilha conosco ao fazer o download de eBooks. Esta política de privacidade foi elaborada para fornecer a você, nosso usuário, uma compreensão clara de como suas informações serão coletadas, usadas e protegidas. Leia atentamente o seguinte para compreender nossas práticas em relação aos downloads de eBooks:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Informações Coletadas</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li><strong>Informações Pessoais:</strong> Ao fazer o download de um eBook, podemos coletar informações pessoais limitadas, como nome, endereço de e-mail e informações de pagamento, conforme aplicável. Essas informações são necessárias para fornecer acesso ao eBook e processar qualquer transação relacionada.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><strong>Informações de Download:</strong> Registramos informações sobre os eBooks que você baixa, como títulos, datas e formatos preferidos.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><strong>Informações de Dispositivo:</strong> Podemos coletar informações sobre o dispositivo que você usa para fazer o download dos eBooks, incluindo o tipo de dispositivo, sistema operacional e informações de identificação do dispositivo.</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Uso das Informações</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>As informações coletadas são usadas com o objetivo de:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li><strong>Entrega de Conteúdo:</strong> Fornecer a você o eBook que você solicitou para download.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><strong>Melhoria da Experiência do Usuário:</strong> Analisar dados de download para entender as preferências dos usuários e aprimorar nossa seleção de eBooks e funcionalidades do site.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><strong>Comunicação:</strong> Enviar notificações sobre atualizações, ofertas especiais e informações relacionadas a eBooks, desde que você tenha consentido em receber tais comunicações.</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Proteção de Dados</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Estamos comprometidos em proteger suas informações pessoais e empregamos medidas de segurança adequadas para garantir que suas informações permaneçam seguras e confidenciais. No entanto, é importante lembrar que nenhum método de transmissão de dados pela Internet ou armazenamento eletrônico é totalmente seguro. Portanto, não podemos garantir a segurança absoluta de suas informações.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Compartilhamento de Informações</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Não compartilhamos informações pessoais de usuários com terceiros, exceto nos seguintes casos:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li><strong>Fornecedores de Serviços:</strong> Podemos compartilhar informações com prestadores de serviços terceirizados que nos auxiliam na operação do site, na entrega de eBooks e em outros serviços relacionados.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><strong>Cumprimento da Lei:</strong> Podemos divulgar informações pessoais em conformidade com leis, regulamentos ou solicitações governamentais aplicáveis.</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Seus Direitos</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Você tem direitos relacionados às suas informações pessoais, incluindo o direito de acessar, corrigir, excluir e contestar o uso de suas informações. Para exercer esses direitos ou fazer perguntas sobre nossa política de privacidade, entre em contato conosco através das informações de contato fornecidas no site.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Alterações na Política de Privacidade</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Reservamo-nos o direito de atualizar ou modificar esta política de privacidade. Quaisquer alterações significativas serão comunicadas a você através do site ou por e-mail, quando aplicável.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Agradecemos por confiar em nós para suas necessidades de leitura digital. Estamos dedicados a manter a privacidade e segurança de suas informações pessoais enquanto proporcionamos uma experiência de leitura excepcional. Se você tiver alguma dúvida ou preocupação, não hesite em nos contatar.</p>\n<!-- /wp:paragraph -->',
        'Política',
        '',
        'publish',
        'closed',
        'open',
        '',
        'politica-de-privacidade',
        '',
        '',
        '2023-10-27 18:24:26',
        '2023-10-27 21:24:26',
        '',
        0,
        'http://cloudbooks.onlab.click/?page_id=3',
        0,
        'page',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        4,
        0,
        '2023-10-21 23:47:19',
        '2023-10-22 02:47:19',
        '<!-- wp:page-list /-->',
        'Navegação',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'navigation',
        '',
        '',
        '2023-10-21 23:47:19',
        '2023-10-22 02:47:19',
        '',
        0,
        'http://cloudbooks.onlab.click/2023/10/21/navigation/',
        0,
        'wp_navigation',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        5,
        1,
        '2023-10-23 21:32:00',
        '0000-00-00 00:00:00',
        '',
        'Rascunho automático',
        '',
        'auto-draft',
        'open',
        'open',
        '',
        '',
        '',
        '',
        '2023-10-23 21:32:00',
        '0000-00-00 00:00:00',
        '',
        0,
        'http://cloudbooks.onlab.click/?p=5',
        0,
        'post',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        6,
        1,
        '2023-10-23 21:48:49',
        '2023-10-24 00:48:49',
        'Filósofo que se tornou general cujo nome individual era Wu, nasceu no Estado de Ch’i na China, próximo de 500 a.C., em um auge das ciências militares e legislativas daquele país. Sun Tzu escreveu a “Arte da Guerra”.',
        'A Arte da Guerra – Sun Tzu',
        '',
        'publish',
        'open',
        'closed',
        '',
        'a-arte-da-guerra-sun-tzu',
        '',
        '',
        '2023-10-23 21:48:49',
        '2023-10-24 00:48:49',
        '',
        0,
        'http://cloudbooks.onlab.click/?post_type=books&#038;p=6',
        0,
        'books',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        7,
        1,
        '2023-10-23 21:48:22',
        '2023-10-24 00:48:22',
        '',
        'a_arte_da_guerra_',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'a_arte_da_guerra_',
        '',
        '',
        '2023-10-23 21:48:22',
        '2023-10-24 00:48:22',
        '',
        6,
        'http://cloudbooks.onlab.click/wp-content/uploads/2023/10/a_arte_da_guerra_.jpg',
        0,
        'attachment',
        'image/jpeg',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        8,
        1,
        '2023-10-23 21:56:37',
        '2023-10-24 00:56:37',
        'Charles Lutwidge Dodgson mais conhecido como CARROLL, LEWIS, seu nome está inscrito na história da literatura mundial por ser o autor de Alice no País das Maravilhas, o mais estranho e fascinante livro para crianças jamais escrito.',
        'Alice no País das Maravilhas – Lewis Carroll',
        '',
        'publish',
        'open',
        'closed',
        '',
        'alice-no-pais-das-maravilhas-lewis-carroll',
        '',
        '',
        '2023-10-23 21:56:37',
        '2023-10-24 00:56:37',
        '',
        0,
        'http://cloudbooks.onlab.click/?post_type=books&#038;p=8',
        0,
        'books',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        9,
        1,
        '2023-10-23 21:56:28',
        '2023-10-24 00:56:28',
        '',
        'alice_no_pais_das_maravilhas',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'alice_no_pais_das_maravilhas',
        '',
        '',
        '2023-10-23 21:56:28',
        '2023-10-24 00:56:28',
        '',
        8,
        'http://cloudbooks.onlab.click/wp-content/uploads/2023/10/alice_no_pais_das_maravilhas.jpg',
        0,
        'attachment',
        'image/jpeg',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        10,
        1,
        '2023-10-23 22:02:51',
        '2023-10-24 01:02:51',
        'Neste livro, você irá encontrar mais de 500 comandos via terminal do Linux. Todos bem explicados da forma como funcionam e o que executam. Totalmente em português, com uma linguagem simples e objetiva que pode ser compreendida por todos os usuários (desde o nível mais simples ao avançado).',
        '500 Comandos de Linux – Bruno Andrade',
        '',
        'publish',
        'open',
        'closed',
        '',
        '500-comandos-de-linux-bruno-andrade',
        '',
        '',
        '2023-10-23 22:02:51',
        '2023-10-24 01:02:51',
        '',
        0,
        'http://cloudbooks.onlab.click/?post_type=books&#038;p=10',
        0,
        'books',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        11,
        1,
        '2023-10-23 22:02:42',
        '2023-10-24 01:02:42',
        '',
        '500_comandos_linux',
        '',
        'inherit',
        'open',
        'closed',
        '',
        '500_comandos_linux',
        '',
        '',
        '2023-10-23 22:02:42',
        '2023-10-24 01:02:42',
        '',
        10,
        'http://cloudbooks.onlab.click/wp-content/uploads/2023/10/500_comandos_linux.png',
        0,
        'attachment',
        'image/png',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        12,
        1,
        '2023-10-23 22:23:13',
        '2023-10-24 01:23:13',
        'Este material tem o objetivo de introduzir programadores com interesse nascente nesta tecnologia aos conceitos básicos necessários para o entendimento e desenvolvimento de aplicações Bitcoin. O foco é o mais prático sem perder de vista a teoria necessária.',
        'Bitcoin para Programadores – Marco Agner',
        '',
        'publish',
        'open',
        'closed',
        '',
        'bitcoin-para-programadores-marco-agner',
        '',
        '',
        '2023-10-23 22:23:13',
        '2023-10-24 01:23:13',
        '',
        0,
        'http://cloudbooks.onlab.click/?post_type=books&#038;p=12',
        0,
        'books',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        13,
        1,
        '2023-10-23 22:22:57',
        '2023-10-24 01:22:57',
        '',
        'bg1',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'bg1',
        '',
        '',
        '2023-10-23 22:22:57',
        '2023-10-24 01:22:57',
        '',
        12,
        'http://cloudbooks.onlab.click/wp-content/uploads/2023/10/bg1.png',
        0,
        'attachment',
        'image/png',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        14,
        1,
        '2023-10-23 22:30:02',
        '2023-10-24 01:30:02',
        'Em História da América, o estudante poderá conhecer os modos de vida dos primeiros habitantes do continente americano desde a época que antecede a colonização, até adentrar o período da chegada dos europeus e o início da colonização.',
        'História das Américas – Luciane Chaves',
        '',
        'publish',
        'open',
        'closed',
        '',
        'historia-das-americas-luciane-chaves',
        '',
        '',
        '2023-10-23 22:30:02',
        '2023-10-24 01:30:02',
        '',
        0,
        'http://cloudbooks.onlab.click/?post_type=books&#038;p=14',
        0,
        'books',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        15,
        1,
        '2023-10-23 22:29:49',
        '2023-10-24 01:29:49',
        '',
        'historia_das_americas',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'historia_das_americas',
        '',
        '',
        '2023-10-23 22:29:49',
        '2023-10-24 01:29:49',
        '',
        14,
        'http://cloudbooks.onlab.click/wp-content/uploads/2023/10/historia_das_americas.png',
        0,
        'attachment',
        'image/png',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        16,
        1,
        '2023-10-23 22:43:00',
        '2023-10-24 01:43:00',
        'Pedrinho foi caçar no Capoeirão dos Tucanos, a mata virgem do Sítio do Picapau Amarelo, e encontrou um saci, que lhe contou os segredos da floresta e várias lendas do folclore brasileiro, como a Mula-sem-cabeça, o Boitatá, o Lobisomem, o Negrinho do Pastoreio e muitas outras coisas…',
        'O Saci – Monteiro Lobato',
        '',
        'publish',
        'open',
        'closed',
        '',
        'o-saci-monteiro-lobato',
        '',
        '',
        '2023-10-23 22:43:00',
        '2023-10-24 01:43:00',
        '',
        0,
        'http://cloudbooks.onlab.click/?post_type=books&#038;p=16',
        0,
        'books',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        17,
        1,
        '2023-10-23 22:42:35',
        '2023-10-24 01:42:35',
        '',
        'o_saci',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'o_saci',
        '',
        '',
        '2023-10-23 22:42:35',
        '2023-10-24 01:42:35',
        '',
        16,
        'http://cloudbooks.onlab.click/wp-content/uploads/2023/10/o_saci.jpg',
        0,
        'attachment',
        'image/jpeg',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        18,
        1,
        '2023-10-23 22:47:30',
        '2023-10-24 01:47:30',
        '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }',
        'Custom Styles',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'wp-global-styles-twentytwentythree',
        '',
        '',
        '2023-10-23 22:47:30',
        '2023-10-24 01:47:30',
        '',
        0,
        'http://cloudbooks.onlab.click/2023/10/23/wp-global-styles-twentytwentythree/',
        0,
        'wp_global_styles',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        19,
        1,
        '2023-10-25 21:55:16',
        '0000-00-00 00:00:00',
        '{\n    \"retailsy::hide_show_sticky\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 00:52:00\"\n    },\n    \"retailsy::header_textcolor\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 00:55:16\"\n    },\n    \"retailsy::logo_width\": {\n        \"value\": \"{\\\"desktop\\\":\\\"115\\\",\\\"tablet\\\":\\\"140\\\",\\\"mobile\\\":\\\"140\\\"}\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 00:55:16\"\n    }\n}',
        '',
        '',
        'auto-draft',
        'closed',
        'closed',
        '',
        'be699d45-d08e-4b09-8b90-2960f2867354',
        '',
        '',
        '2023-10-25 21:55:16',
        '2023-10-26 00:55:16',
        '',
        0,
        'http://cloudbooks.onlab.click/?p=19',
        0,
        'customize_changeset',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        20,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        'logo',
        'retailsy caption',
        'inherit',
        'open',
        'closed',
        '',
        'logo',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/logo/',
        0,
        'attachment',
        'image/png',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        21,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        'blog-1',
        'retailsy caption',
        'inherit',
        'open',
        'closed',
        '',
        'blog-1',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/blog-1/',
        0,
        'attachment',
        'image/jpeg',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        22,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        'blog-2',
        'retailsy caption',
        'inherit',
        'open',
        'closed',
        '',
        'blog-2',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/blog-2/',
        0,
        'attachment',
        'image/jpeg',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        23,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        'blog-3',
        'retailsy caption',
        'inherit',
        'open',
        'closed',
        '',
        'blog-3',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/blog-3/',
        0,
        'attachment',
        'image/jpeg',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        24,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        'product-1',
        'retailsy caption',
        'inherit',
        'open',
        'closed',
        '',
        'product-1',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/product-1/',
        0,
        'attachment',
        'image/jpeg',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        25,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        'product-2',
        'retailsy caption',
        'inherit',
        'open',
        'closed',
        '',
        'product-2',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/product-2/',
        0,
        'attachment',
        'image/jpeg',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        26,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        'product-3',
        'retailsy caption',
        'inherit',
        'open',
        'closed',
        '',
        'product-3',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/product-3/',
        0,
        'attachment',
        'image/jpeg',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        27,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        'product-4',
        'retailsy caption',
        'inherit',
        'open',
        'closed',
        '',
        'product-4',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/product-4/',
        0,
        'attachment',
        'image/jpeg',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        28,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        'product-5',
        'retailsy caption',
        'inherit',
        'open',
        'closed',
        '',
        'product-5',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/product-5/',
        0,
        'attachment',
        'image/jpeg',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        29,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        'product-6',
        'retailsy caption',
        'inherit',
        'open',
        'closed',
        '',
        'product-6',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/product-6/',
        0,
        'attachment',
        'image/jpeg',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        30,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        'product-7',
        'retailsy caption',
        'inherit',
        'open',
        'closed',
        '',
        'product-7',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/product-7/',
        0,
        'attachment',
        'image/jpeg',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        31,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        'product-8',
        'retailsy caption',
        'inherit',
        'open',
        'closed',
        '',
        'product-8',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/product-8/',
        0,
        'attachment',
        'image/jpeg',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        32,
        1,
        '2023-10-25 22:00:01',
        '2023-10-26 01:00:01',
        '<!-- wp:paragraph -->\n<p>[wp_books_gallery]</p>\n<!-- /wp:paragraph -->',
        'Home',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'home',
        '',
        '',
        '2023-10-25 22:16:46',
        '2023-10-26 01:16:46',
        '',
        0,
        'http://cloudbooks.onlab.click/?page_id=32',
        0,
        'page',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        33,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '<p>Here are a few of our primary fashion blog categories.</p>',
        'Cooking Healthful Joyful',
        '',
        'publish',
        'open',
        'open',
        '',
        'cooking-healthful-joyful',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/2023/10/25/cooking-healthful-joyful/',
        0,
        'post',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        34,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '<p>Here are a few of our primary fashion blog categories.</p>',
        'Clothing Blog Section Contains',
        '',
        'publish',
        'open',
        'open',
        '',
        'clothing-blog-section-contains',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/2023/10/25/clothing-blog-section-contains/',
        0,
        'post',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        35,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '<p>Here are a few of our primary fashion blog categories.</p>',
        'How to Have More Focused',
        '',
        'publish',
        'open',
        'open',
        '',
        'how-to-have-more-focused',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/2023/10/25/how-to-have-more-focused/',
        0,
        'post',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        36,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '<p>Here are a few of our primary fashion blog categories.</p>',
        'Bridal Dress',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'bridal-dress',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/?p=36',
        0,
        'product',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        37,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '<p>Here are a few of our primary fashion blog categories.</p>',
        'Fit Sopie',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'fit-sopie',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/?p=37',
        0,
        'product',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        38,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '<p>Here are a few of our primary fashion blog categories.</p>',
        'Stylish Wear',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'stylish-wear',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/?p=38',
        0,
        'product',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        39,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '<p>Here are a few of our primary fashion blog categories.</p>',
        'Smart Watch',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'smart-watch',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/?p=39',
        0,
        'product',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        40,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '<p>Here are a few of our primary fashion blog categories.</p>',
        'Alarm Clock',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'alarm-clock',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/?p=40',
        0,
        'product',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        41,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '<p>Here are a few of our primary fashion blog categories.</p>',
        'Camera',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'camera',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/?p=41',
        0,
        'product',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        42,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '<p>Here are a few of our primary fashion blog categories.</p>',
        'Snaeakers',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'snaeakers',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/?p=42',
        0,
        'product',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        43,
        1,
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '<p>Here are a few of our primary fashion blog categories.</p>',
        'Hat',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'hat',
        '',
        '',
        '2023-10-25 21:53:33',
        '2023-10-26 00:53:33',
        '',
        0,
        'http://cloudbooks.onlab.click/?p=43',
        0,
        'product',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        44,
        1,
        '2023-10-25 21:58:30',
        '2023-10-26 00:58:30',
        '<!-- wp:paragraph -->\n<p>[wp_books_gallery]</p>\n<!-- /wp:paragraph -->',
        'Home',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '32-revision-v1',
        '',
        '',
        '2023-10-25 21:58:30',
        '2023-10-26 00:58:30',
        '',
        32,
        'http://cloudbooks.onlab.click/?p=44',
        0,
        'revision',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        45,
        1,
        '2023-10-25 22:00:01',
        '2023-10-26 01:00:01',
        '<!-- wp:paragraph -->\n<p>[wp_books_gallery]</p>\n<!-- /wp:paragraph -->',
        '',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '32-revision-v1',
        '',
        '',
        '2023-10-25 22:00:01',
        '2023-10-26 01:00:01',
        '',
        32,
        'http://cloudbooks.onlab.click/?p=45',
        0,
        'revision',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        46,
        1,
        '2023-10-25 22:02:01',
        '2023-10-26 01:02:01',
        '<!-- wp:paragraph -->\n<p>[wp_books_gallery]</p>\n<!-- /wp:paragraph -->',
        'Home',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '32-revision-v1',
        '',
        '',
        '2023-10-25 22:02:01',
        '2023-10-26 01:02:01',
        '',
        32,
        'http://cloudbooks.onlab.click/?p=46',
        0,
        'revision',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        47,
        1,
        '2023-10-25 22:03:24',
        '2023-10-26 01:03:24',
        '{\n    \"retailsy::hs_browse_cat\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 01:03:24\"\n    },\n    \"retailsy::hs_product_search\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 01:03:24\"\n    }\n}',
        '',
        '',
        'trash',
        'closed',
        'closed',
        '',
        '6502a050-6bbf-46b2-a2aa-84d4200b9961',
        '',
        '',
        '2023-10-25 22:03:24',
        '2023-10-26 01:03:24',
        '',
        0,
        'http://cloudbooks.onlab.click/2023/10/25/6502a050-6bbf-46b2-a2aa-84d4200b9961/',
        0,
        'customize_changeset',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        48,
        1,
        '2023-10-25 22:04:03',
        '2023-10-26 01:04:03',
        '{\n    \"retailsy::hide_show_sticky\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 01:03:45\"\n    }\n}',
        '',
        '',
        'trash',
        'closed',
        'closed',
        '',
        '96a98413-3ed0-4c11-9ebf-4433d0a9fb4d',
        '',
        '',
        '2023-10-25 22:04:03',
        '2023-10-26 01:04:03',
        '',
        0,
        'http://cloudbooks.onlab.click/?p=48',
        0,
        'customize_changeset',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        49,
        1,
        '2023-10-25 22:05:54',
        '2023-10-26 01:05:54',
        '{\n    \"retailsy::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 01:05:54\"\n    }\n}',
        '',
        '',
        'trash',
        'closed',
        'closed',
        '',
        '3aeaf106-3785-4c32-a875-35a45142864d',
        '',
        '',
        '2023-10-25 22:05:54',
        '2023-10-26 01:05:54',
        '',
        0,
        'http://cloudbooks.onlab.click/2023/10/25/3aeaf106-3785-4c32-a875-35a45142864d/',
        0,
        'customize_changeset',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        50,
        1,
        '2023-10-25 22:06:00',
        '2023-10-26 01:06:00',
        '{\n    \"retailsy::header_textcolor\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 01:06:00\"\n    }\n}',
        '',
        '',
        'trash',
        'closed',
        'closed',
        '',
        '82283338-cffd-4e77-95d7-2bcef751b0a5',
        '',
        '',
        '2023-10-25 22:06:00',
        '2023-10-26 01:06:00',
        '',
        0,
        'http://cloudbooks.onlab.click/2023/10/25/82283338-cffd-4e77-95d7-2bcef751b0a5/',
        0,
        'customize_changeset',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        51,
        1,
        '2023-10-25 22:06:15',
        '2023-10-26 01:06:15',
        '{\n    \"retailsy::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 01:06:05\"\n    },\n    \"retailsy::logo_width\": {\n        \"value\": \"{\\\"desktop\\\":\\\"30\\\",\\\"tablet\\\":\\\"140\\\",\\\"mobile\\\":\\\"140\\\"}\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 01:06:15\"\n    }\n}',
        '',
        '',
        'trash',
        'closed',
        'closed',
        '',
        '09f42031-ae9c-43e9-a419-7d7ae4b18689',
        '',
        '',
        '2023-10-25 22:06:15',
        '2023-10-26 01:06:15',
        '',
        0,
        'http://cloudbooks.onlab.click/?p=51',
        0,
        'customize_changeset',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        52,
        1,
        '2023-10-25 22:14:03',
        '2023-10-26 01:14:03',
        '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"archives-2\",\n                \"search-2\",\n                \"text-2\",\n                \"text-3\",\n                \"categories-2\",\n                \"block-2\",\n                \"block-3\",\n                \"block-4\",\n                \"block-5\",\n                \"block-6\"\n            ],\n            \"wbg-gallery-sidebar\": [],\n            \"retailsy-header-above-first\": [],\n            \"retailsy-header-above-second\": [],\n            \"retailsy-sidebar-primary\": [\n                \"search-1\",\n                \"recent-posts-1\",\n                \"archives-1\"\n            ],\n            \"retailsy-footer-widget\": [\n                \"text-1\",\n                \"categories-1\",\n                \"archives-1\",\n                \"search-1\"\n            ],\n            \"retailsy-woocommerce-sidebar\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 01:14:03\"\n    }\n}',
        '',
        '',
        'trash',
        'closed',
        'closed',
        '',
        'd15bc7ae-1ccb-4be3-9bab-30d865e36d81',
        '',
        '',
        '2023-10-25 22:14:03',
        '2023-10-26 01:14:03',
        '',
        0,
        'http://cloudbooks.onlab.click/2023/10/25/d15bc7ae-1ccb-4be3-9bab-30d865e36d81/',
        0,
        'customize_changeset',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        53,
        1,
        '2023-10-25 22:18:49',
        '2023-10-26 01:18:49',
        '{\n    \"ecommerce-bookshop::author_writer_tp_body_layout_settings\": {\n        \"value\": \"Full\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 01:18:49\"\n    }\n}',
        '',
        '',
        'trash',
        'closed',
        'closed',
        '',
        '98bd4c2d-cf9f-48fd-a95d-0e0afee36130',
        '',
        '',
        '2023-10-25 22:18:49',
        '2023-10-26 01:18:49',
        '',
        0,
        'http://cloudbooks.onlab.click/2023/10/25/98bd4c2d-cf9f-48fd-a95d-0e0afee36130/',
        0,
        'customize_changeset',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        54,
        1,
        '2023-10-25 22:21:39',
        '2023-10-26 01:21:39',
        '{\n    \"page_on_front\": {\n        \"value\": \"32\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 01:21:39\"\n    }\n}',
        '',
        '',
        'trash',
        'closed',
        'closed',
        '',
        '4d6fc6ad-9f3d-49b6-8a98-32255ae026b2',
        '',
        '',
        '2023-10-25 22:21:39',
        '2023-10-26 01:21:39',
        '',
        0,
        'http://cloudbooks.onlab.click/2023/10/25/4d6fc6ad-9f3d-49b6-8a98-32255ae026b2/',
        0,
        'customize_changeset',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        55,
        1,
        '2023-10-25 22:33:57',
        '2023-10-26 01:33:57',
        '{\n    \"ecommerce-bookshop::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 01:24:19\"\n    },\n    \"custom_css[ecommerce-bookshop]\": {\n        \"value\": \".top-header {\\n\\tbackground-color: #f59300; \\n}\\n\\na, a:hover {\\n\\tcolor: #f59300;\\n}\\n\\n.toggle-nav i {\\n\\tbackground-color: #f59300;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 01:33:43\"\n    }\n}',
        '',
        '',
        'trash',
        'closed',
        'closed',
        '',
        'a70a6e45-3b92-4acf-99af-fedbb0cd0920',
        '',
        '',
        '2023-10-25 22:33:57',
        '2023-10-26 01:33:57',
        '',
        0,
        'http://cloudbooks.onlab.click/?p=55',
        0,
        'customize_changeset',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        56,
        1,
        '2023-10-25 22:33:57',
        '2023-10-26 01:33:57',
        '.top-header {\n	background-color: #f59300; \n}\n\na, a:hover {\n	color: #f59300;\n}\n\n.toggle-nav i {\n	background-color: #f59300;\n}\n\n.site-info {\n	background-color: #f59300;\n}',
        'ecommerce-bookshop',
        '',
        'publish',
        'closed',
        'closed',
        '',
        'ecommerce-bookshop',
        '',
        '',
        '2023-10-25 22:41:29',
        '2023-10-26 01:41:29',
        '',
        0,
        'http://cloudbooks.onlab.click/2023/10/25/ecommerce-bookshop/',
        0,
        'custom_css',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        57,
        1,
        '2023-10-25 22:33:57',
        '2023-10-26 01:33:57',
        '.top-header {\n	background-color: #f59300; \n}\n\na, a:hover {\n	color: #f59300;\n}\n\n.toggle-nav i {\n	background-color: #f59300;\n}',
        'ecommerce-bookshop',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '56-revision-v1',
        '',
        '',
        '2023-10-25 22:33:57',
        '2023-10-26 01:33:57',
        '',
        56,
        'http://cloudbooks.onlab.click/?p=57',
        0,
        'revision',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        58,
        1,
        '2023-10-25 22:41:29',
        '2023-10-26 01:41:29',
        '{\n    \"custom_css[ecommerce-bookshop]\": {\n        \"value\": \".top-header {\\n\\tbackground-color: #f59300; \\n}\\n\\na, a:hover {\\n\\tcolor: #f59300;\\n}\\n\\n.toggle-nav i {\\n\\tbackground-color: #f59300;\\n}\\n\\n.site-info {\\n\\tbackground-color: #f59300;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-26 01:41:29\"\n    }\n}',
        '',
        '',
        'trash',
        'closed',
        'closed',
        '',
        'cf3dc5e5-b00a-47e4-9d2f-76221d51f27e',
        '',
        '',
        '2023-10-25 22:41:29',
        '2023-10-26 01:41:29',
        '',
        0,
        'http://cloudbooks.onlab.click/?p=58',
        0,
        'customize_changeset',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        59,
        1,
        '2023-10-25 22:41:29',
        '2023-10-26 01:41:29',
        '.top-header {\n	background-color: #f59300; \n}\n\na, a:hover {\n	color: #f59300;\n}\n\n.toggle-nav i {\n	background-color: #f59300;\n}\n\n.site-info {\n	background-color: #f59300;\n}',
        'ecommerce-bookshop',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '56-revision-v1',
        '',
        '',
        '2023-10-25 22:41:29',
        '2023-10-26 01:41:29',
        '',
        56,
        'http://cloudbooks.onlab.click/?p=59',
        0,
        'revision',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        60,
        1,
        '2023-10-26 19:53:29',
        '2023-10-26 22:53:29',
        '<!-- wp:paragraph -->\n<p><strong>Sobre Nós</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bem-vindo ao nosso mundo de palavras, onde a literatura ganha vida e a imaginação é infinita. Nossa jornada começou com um sonho simples: tornar o conhecimento e o entretenimento literário acessíveis a todos, em qualquer lugar do mundo. E assim nasceu este espaço digital, onde os amantes da leitura se encontram para explorar um vasto universo de eBooks.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Quem Somos</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Somos uma equipe apaixonada de leitores vorazes, escritores talentosos e entusiastas da tecnologia. Nosso objetivo é criar uma experiência literária inigualável, onde a escrita e a leitura se encontram perfeitamente no ambiente digital. Acreditamos que cada livro é uma porta para um mundo diferente, uma oportunidade de aprender, sonhar e escapar para novas realidades.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Nossa Missão</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nossa missão é democratizar o acesso à literatura e proporcionar uma plataforma que celebre a diversidade de histórias e autores. Queremos conectar leitores ávidos com autores brilhantes e oferecer uma variedade de títulos que abrangem gêneros, idiomas e culturas. Nosso compromisso é impulsionar a paixão pela leitura, promovendo a descoberta de novos mundos através das palavras.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>O Que Oferecemos</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Em nosso site, você encontrará uma vasta biblioteca de eBooks cuidadosamente selecionados, abrangendo desde clássicos atemporais até os mais recentes lançamentos. Oferecemos uma experiência de leitura envolvente, com recursos que permitem personalizar sua leitura, como ajuste de fonte, marcadores, realces e muito mais. Acessar sua biblioteca pessoal nunca foi tão fácil, com suporte para uma variedade de dispositivos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Junte-se a Nós</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Estamos comprometidos em melhorar constantemente nossa plataforma e expandir nosso catálogo para atender às suas necessidades literárias. Sua jornada conosco é importante, e esperamos que cada visita ao nosso site o transporte para novos horizontes literários.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Agradecemos por fazer parte da nossa comunidade de leitores e autores. Seja bem-vindo a este mundo de palavras e histórias, e junte-se a nós nessa incrível aventura literária. Se tiver alguma pergunta ou feedback, não hesite em entrar em contato. Estamos ansiosos para ajudá-lo a descobrir seu próximo livro favorito e enriquecer sua paixão pela leitura.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Obrigado por escolher nosso site de eBooks como seu destino literário. Explore, leia, e mergulhe em um oceano de histórias que aguardam por você.</p>\n<!-- /wp:paragraph -->',
        'Sobre',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '2-autosave-v1',
        '',
        '',
        '2023-10-26 19:53:29',
        '2023-10-26 22:53:29',
        '',
        2,
        'http://cloudbooks.onlab.click/?p=60',
        0,
        'revision',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        61,
        1,
        '2023-10-26 19:56:31',
        '2023-10-26 22:56:31',
        '<!-- wp:paragraph -->\n<p><strong>Sobre Nós</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bem-vindo ao nosso mundo de palavras, onde a literatura ganha vida e a imaginação é infinita. Nossa jornada começou com um sonho simples: tornar o conhecimento e o entretenimento literário acessíveis a todos, em qualquer lugar do mundo. E assim nasceu este espaço digital, onde os amantes da leitura se encontram para explorar um vasto universo de eBooks.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Quem Somos</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Somos uma equipe apaixonada de leitores vorazes, escritores talentosos e entusiastas da tecnologia. Nosso objetivo é criar uma experiência literária inigualável, onde a escrita e a leitura se encontram perfeitamente no ambiente digital. Acreditamos que cada livro é uma porta para um mundo diferente, uma oportunidade de aprender, sonhar e escapar para novas realidades.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Nossa Missão</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nossa missão é democratizar o acesso à literatura e proporcionar uma plataforma que celebre a diversidade de histórias e autores. Queremos conectar leitores ávidos com autores brilhantes e oferecer uma variedade de títulos que abrangem gêneros, idiomas e culturas. Nosso compromisso é impulsionar a paixão pela leitura, promovendo a descoberta de novos mundos através das palavras.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>O Que Oferecemos</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Em nosso site, você encontrará uma vasta biblioteca de eBooks cuidadosamente selecionados, abrangendo desde clássicos atemporais até os mais recentes lançamentos. Oferecemos uma experiência de leitura envolvente, com recursos que permitem personalizar sua leitura, como ajuste de fonte, marcadores, realces e muito mais. Acessar sua biblioteca pessoal nunca foi tão fácil, com suporte para uma variedade de dispositivos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Junte-se a Nós</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Estamos comprometidos em melhorar constantemente nossa plataforma e expandir nosso catálogo para atender às suas necessidades literárias. Sua jornada conosco é importante, e esperamos que cada visita ao nosso site o transporte para novos horizontes literários.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Agradecemos por fazer parte da nossa comunidade de leitores e autores. Seja bem-vindo a este mundo de palavras e histórias, e junte-se a nós nessa incrível aventura literária. Se tiver alguma pergunta ou feedback, não hesite em entrar em contato. Estamos ansiosos para ajudá-lo a descobrir seu próximo livro favorito e enriquecer sua paixão pela leitura.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Obrigado por escolher nosso site de eBooks como seu destino literário. Explore, leia, e mergulhe em um oceano de histórias que aguardam por você.</p>\n<!-- /wp:paragraph -->',
        'Sobre',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '2-revision-v1',
        '',
        '',
        '2023-10-26 19:56:31',
        '2023-10-26 22:56:31',
        '',
        2,
        'http://cloudbooks.onlab.click/?p=61',
        0,
        'revision',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        62,
        1,
        '2023-10-27 18:23:59',
        '2023-10-27 21:23:59',
        '<!-- wp:paragraph -->\n<p><strong>Política de Privacidade para Downloads de eBooks</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Na CloudBooks, a sua privacidade é uma prioridade e estamos comprometidos em proteger as informações pessoais que você compartilha conosco ao fazer o download de eBooks. Esta política de privacidade foi elaborada para fornecer a você, nosso usuário, uma compreensão clara de como suas informações serão coletadas, usadas e protegidas. Leia atentamente o seguinte para compreender nossas práticas em relação aos downloads de eBooks:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Informações Coletadas</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li><strong>Informações Pessoais:</strong> Ao fazer o download de um eBook, podemos coletar informações pessoais limitadas, como nome, endereço de e-mail e informações de pagamento, conforme aplicável. Essas informações são necessárias para fornecer acesso ao eBook e processar qualquer transação relacionada.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><strong>Informações de Download:</strong> Registramos informações sobre os eBooks que você baixa, como títulos, datas e formatos preferidos.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><strong>Informações de Dispositivo:</strong> Podemos coletar informações sobre o dispositivo que você usa para fazer o download dos eBooks, incluindo o tipo de dispositivo, sistema operacional e informações de identificação do dispositivo.</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Uso das Informações</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>As informações coletadas são usadas com o objetivo de:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li><strong>Entrega de Conteúdo:</strong> Fornecer a você o eBook que você solicitou para download.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><strong>Melhoria da Experiência do Usuário:</strong> Analisar dados de download para entender as preferências dos usuários e aprimorar nossa seleção de eBooks e funcionalidades do site.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><strong>Comunicação:</strong> Enviar notificações sobre atualizações, ofertas especiais e informações relacionadas a eBooks, desde que você tenha consentido em receber tais comunicações.</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Proteção de Dados</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Estamos comprometidos em proteger suas informações pessoais e empregamos medidas de segurança adequadas para garantir que suas informações permaneçam seguras e confidenciais. No entanto, é importante lembrar que nenhum método de transmissão de dados pela Internet ou armazenamento eletrônico é totalmente seguro. Portanto, não podemos garantir a segurança absoluta de suas informações.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Compartilhamento de Informações</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Não compartilhamos informações pessoais de usuários com terceiros, exceto nos seguintes casos:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li><strong>Fornecedores de Serviços:</strong> Podemos compartilhar informações com prestadores de serviços terceirizados que nos auxiliam na operação do site, na entrega de eBooks e em outros serviços relacionados.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><strong>Cumprimento da Lei:</strong> Podemos divulgar informações pessoais em conformidade com leis, regulamentos ou solicitações governamentais aplicáveis.</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Seus Direitos</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Você tem direitos relacionados às suas informações pessoais, incluindo o direito de acessar, corrigir, excluir e contestar o uso de suas informações. Para exercer esses direitos ou fazer perguntas sobre nossa política de privacidade, entre em contato conosco através das informações de contato fornecidas no site.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Alterações na Política de Privacidade</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Reservamo-nos o direito de atualizar ou modificar esta política de privacidade. Quaisquer alterações significativas serão comunicadas a você através do site ou por e-mail, quando aplicável.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Agradecemos por confiar em nós para suas necessidades de leitura digital. Estamos dedicados a manter a privacidade e segurança de suas informações pessoais enquanto proporcionamos uma experiência de leitura excepcional. Se você tiver alguma dúvida ou preocupação, não hesite em nos contatar.</p>\n<!-- /wp:paragraph -->',
        'Política de privacidade',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '3-revision-v1',
        '',
        '',
        '2023-10-27 18:23:59',
        '2023-10-27 21:23:59',
        '',
        3,
        'http://cloudbooks.onlab.click/?p=62',
        0,
        'revision',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        63,
        1,
        '2023-10-27 18:24:26',
        '2023-10-27 21:24:26',
        '<!-- wp:paragraph -->\n<p><strong>Política de Privacidade para Downloads de eBooks</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Na CloudBooks, a sua privacidade é uma prioridade e estamos comprometidos em proteger as informações pessoais que você compartilha conosco ao fazer o download de eBooks. Esta política de privacidade foi elaborada para fornecer a você, nosso usuário, uma compreensão clara de como suas informações serão coletadas, usadas e protegidas. Leia atentamente o seguinte para compreender nossas práticas em relação aos downloads de eBooks:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Informações Coletadas</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li><strong>Informações Pessoais:</strong> Ao fazer o download de um eBook, podemos coletar informações pessoais limitadas, como nome, endereço de e-mail e informações de pagamento, conforme aplicável. Essas informações são necessárias para fornecer acesso ao eBook e processar qualquer transação relacionada.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><strong>Informações de Download:</strong> Registramos informações sobre os eBooks que você baixa, como títulos, datas e formatos preferidos.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><strong>Informações de Dispositivo:</strong> Podemos coletar informações sobre o dispositivo que você usa para fazer o download dos eBooks, incluindo o tipo de dispositivo, sistema operacional e informações de identificação do dispositivo.</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Uso das Informações</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>As informações coletadas são usadas com o objetivo de:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li><strong>Entrega de Conteúdo:</strong> Fornecer a você o eBook que você solicitou para download.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><strong>Melhoria da Experiência do Usuário:</strong> Analisar dados de download para entender as preferências dos usuários e aprimorar nossa seleção de eBooks e funcionalidades do site.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><strong>Comunicação:</strong> Enviar notificações sobre atualizações, ofertas especiais e informações relacionadas a eBooks, desde que você tenha consentido em receber tais comunicações.</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Proteção de Dados</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Estamos comprometidos em proteger suas informações pessoais e empregamos medidas de segurança adequadas para garantir que suas informações permaneçam seguras e confidenciais. No entanto, é importante lembrar que nenhum método de transmissão de dados pela Internet ou armazenamento eletrônico é totalmente seguro. Portanto, não podemos garantir a segurança absoluta de suas informações.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Compartilhamento de Informações</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Não compartilhamos informações pessoais de usuários com terceiros, exceto nos seguintes casos:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><!-- wp:list-item -->\n<li><strong>Fornecedores de Serviços:</strong> Podemos compartilhar informações com prestadores de serviços terceirizados que nos auxiliam na operação do site, na entrega de eBooks e em outros serviços relacionados.</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><strong>Cumprimento da Lei:</strong> Podemos divulgar informações pessoais em conformidade com leis, regulamentos ou solicitações governamentais aplicáveis.</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Seus Direitos</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Você tem direitos relacionados às suas informações pessoais, incluindo o direito de acessar, corrigir, excluir e contestar o uso de suas informações. Para exercer esses direitos ou fazer perguntas sobre nossa política de privacidade, entre em contato conosco através das informações de contato fornecidas no site.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Alterações na Política de Privacidade</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Reservamo-nos o direito de atualizar ou modificar esta política de privacidade. Quaisquer alterações significativas serão comunicadas a você através do site ou por e-mail, quando aplicável.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Agradecemos por confiar em nós para suas necessidades de leitura digital. Estamos dedicados a manter a privacidade e segurança de suas informações pessoais enquanto proporcionamos uma experiência de leitura excepcional. Se você tiver alguma dúvida ou preocupação, não hesite em nos contatar.</p>\n<!-- /wp:paragraph -->',
        'Política',
        '',
        'inherit',
        'closed',
        'closed',
        '',
        '3-revision-v1',
        '',
        '',
        '2023-10-27 18:24:26',
        '2023-10-27 21:24:26',
        '',
        3,
        'http://cloudbooks.onlab.click/?p=63',
        0,
        'revision',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        64,
        1,
        '2023-10-29 11:57:56',
        '2023-10-29 14:57:56',
        'Quem é louco? Esta é a grande questão proposta neste livro. Conto extenso, quase uma novela, O alienista é uma obra-prima da nossa literatura. Nessa narrativa, publicada pela primeira vez em 1882, ASSIS, MACHADO DE (1839-1908), o autor de Dom Casmurro.',
        'O Alienista – Machado de Assis',
        '',
        'publish',
        'open',
        'closed',
        '',
        'o-alienista-machado-de-assis',
        '',
        '',
        '2023-10-29 11:57:56',
        '2023-10-29 14:57:56',
        '',
        0,
        'http://cloudbooks.onlab.click/?post_type=books&#038;p=64',
        0,
        'books',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        65,
        1,
        '2023-10-29 11:57:10',
        '2023-10-29 14:57:10',
        '',
        'o_alienista',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'o_alienista',
        '',
        '',
        '2023-10-29 11:57:10',
        '2023-10-29 14:57:10',
        '',
        64,
        'http://cloudbooks.onlab.click/wp-content/uploads/2023/10/o_alienista.jpg',
        0,
        'attachment',
        'image/jpeg',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        66,
        1,
        '2023-10-29 12:01:21',
        '2023-10-29 15:01:21',
        'A robótica diz respeito a sistemas compostos por partes mecânicas controladas por circuitos elétricos. Na realidade, a robótica é atualmente uma das principais e mais relevantes vertentes.',
        'Robótica e Processos Formativos – Deise Peralta',
        '',
        'publish',
        'open',
        'closed',
        '',
        'robotica-e-processos-formativos-deise-peralta',
        '',
        '',
        '2023-10-29 12:01:21',
        '2023-10-29 15:01:21',
        '',
        0,
        'http://cloudbooks.onlab.click/?post_type=books&#038;p=66',
        0,
        'books',
        '',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_posts`
VALUES (
        67,
        1,
        '2023-10-29 12:01:11',
        '2023-10-29 15:01:11',
        '',
        'robotica',
        '',
        'inherit',
        'open',
        'closed',
        '',
        'robotica',
        '',
        '',
        '2023-10-29 12:01:11',
        '2023-10-29 15:01:11',
        '',
        66,
        'http://cloudbooks.onlab.click/wp-content/uploads/2023/10/robotica.png',
        0,
        'attachment',
        'image/png',
        0
    );

COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_term_relationships`;

CREATE TABLE
    `SERVMASK_PREFIX_term_relationships` (
        `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
        `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
        `term_order` int(11) NOT NULL DEFAULT 0,
        PRIMARY KEY (
            `object_id`,
            `term_taxonomy_id`
        ),
        KEY `term_taxonomy_id` (`term_taxonomy_id`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

START TRANSACTION;

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (1, 1, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (6, 2, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (8, 2, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (10, 3, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (10, 4, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (12, 3, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (12, 4, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (14, 5, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (14, 6, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (16, 7, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (18, 8, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (33, 1, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (33, 12, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (34, 1, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (34, 13, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (35, 1, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (35, 14, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (64, 7, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (66, 3, 0);

INSERT INTO `SERVMASK_PREFIX_term_relationships` VALUES (66, 4, 0);

COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_term_taxonomy`;

CREATE TABLE
    `SERVMASK_PREFIX_term_taxonomy` (
        `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
        `taxonomy` varchar(32) NOT NULL DEFAULT '',
        `description` longtext NOT NULL,
        `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
        `count` bigint(20) NOT NULL DEFAULT 0,
        PRIMARY KEY (`term_taxonomy_id`),
        UNIQUE KEY `term_id_taxonomy` (`term_id`, `taxonomy`),
        KEY `taxonomy` (`taxonomy`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 15 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

START TRANSACTION;

INSERT INTO
    `SERVMASK_PREFIX_term_taxonomy`
VALUES (1, 1, 'category', '', 0, 4);

INSERT INTO
    `SERVMASK_PREFIX_term_taxonomy`
VALUES (2, 2, 'category', '', 0, 2);

INSERT INTO
    `SERVMASK_PREFIX_term_taxonomy`
VALUES (3, 3, 'category', '', 0, 3);

INSERT INTO
    `SERVMASK_PREFIX_term_taxonomy`
VALUES (4, 4, 'category', '', 3, 3);

INSERT INTO
    `SERVMASK_PREFIX_term_taxonomy`
VALUES (5, 5, 'category', '', 0, 1);

INSERT INTO
    `SERVMASK_PREFIX_term_taxonomy`
VALUES (6, 6, 'category', '', 5, 1);

INSERT INTO
    `SERVMASK_PREFIX_term_taxonomy`
VALUES (7, 7, 'category', '', 0, 2);

INSERT INTO
    `SERVMASK_PREFIX_term_taxonomy`
VALUES (8, 8, 'wp_theme', '', 0, 1);

INSERT INTO
    `SERVMASK_PREFIX_term_taxonomy`
VALUES (
        9,
        9,
        'category',
        'example category',
        0,
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_term_taxonomy`
VALUES (
        10,
        10,
        'category',
        'example category',
        0,
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_term_taxonomy`
VALUES (
        11,
        11,
        'category',
        'example category',
        0,
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_term_taxonomy`
VALUES (12, 12, 'post_tag', '', 0, 1);

INSERT INTO
    `SERVMASK_PREFIX_term_taxonomy`
VALUES (13, 13, 'post_tag', '', 0, 1);

INSERT INTO
    `SERVMASK_PREFIX_term_taxonomy`
VALUES (14, 14, 'post_tag', '', 0, 1);

COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_termmeta`;

CREATE TABLE
    `SERVMASK_PREFIX_termmeta` (
        `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
        `meta_key` varchar(255) DEFAULT NULL,
        `meta_value` longtext DEFAULT NULL,
        PRIMARY KEY (`meta_id`),
        KEY `term_id` (`term_id`),
        KEY `meta_key` (`meta_key`(191))
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_terms`;

CREATE TABLE
    `SERVMASK_PREFIX_terms` (
        `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `name` varchar(200) NOT NULL DEFAULT '',
        `slug` varchar(200) NOT NULL DEFAULT '',
        `term_group` bigint(10) NOT NULL DEFAULT 0,
        PRIMARY KEY (`term_id`),
        KEY `slug` (`slug`(191)),
        KEY `name` (`name`(191))
    ) ENGINE = InnoDB AUTO_INCREMENT = 15 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

START TRANSACTION;

INSERT INTO
    `SERVMASK_PREFIX_terms`
VALUES (
        1,
        'Sem categoria',
        'sem-categoria',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_terms`
VALUES (
        2,
        'Literatura estrangeira',
        'literatura-estrangeira',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_terms`
VALUES (
        3,
        'Exatas e tecnologias',
        'exatas-e-tecnologias',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_terms`
VALUES (
        4,
        'Ciência da computação',
        'ciencia-da-computacao',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_terms`
VALUES (
        5,
        'Ciências humanas e sociais',
        'ciencias-humanas-e-sociais',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_terms`
VALUES (6, 'História', 'historia', 0);

INSERT INTO
    `SERVMASK_PREFIX_terms`
VALUES (
        7,
        'Literatura brasileira',
        'literatura-brasileira',
        0
    );

INSERT INTO
    `SERVMASK_PREFIX_terms`
VALUES (
        8,
        'twentytwentythree',
        'twentytwentythree',
        0
    );

INSERT INTO `SERVMASK_PREFIX_terms` VALUES (9, 'Fashion', 'fashion', 0);

INSERT INTO
    `SERVMASK_PREFIX_terms`
VALUES (10, 'Designer', 'designer', 0);

INSERT INTO
    `SERVMASK_PREFIX_terms`
VALUES (11, 'Lifestyle', 'lifestyle', 0);

INSERT INTO
    `SERVMASK_PREFIX_terms`
VALUES (12, 'Lifestyle', 'lifestyle', 0);

INSERT INTO
    `SERVMASK_PREFIX_terms`
VALUES (13, 'Fashion', 'fashion', 0);

INSERT INTO
    `SERVMASK_PREFIX_terms`
VALUES (14, 'Designer', 'designer', 0);

COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_usermeta`;

CREATE TABLE
    `SERVMASK_PREFIX_usermeta` (
        `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
        `meta_key` varchar(255) DEFAULT NULL,
        `meta_value` longtext DEFAULT NULL,
        PRIMARY KEY (`umeta_id`),
        KEY `user_id` (`user_id`),
        KEY `meta_key` (`meta_key`(191))
    ) ENGINE = InnoDB AUTO_INCREMENT = 23 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

START TRANSACTION;

INSERT INTO
    `SERVMASK_PREFIX_usermeta`
VALUES (1, 1, 'nickname', 'admin');

INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES (2, 1, 'first_name', '');

INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES (3, 1, 'last_name', '');

INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES (4, 1, 'description', '');

INSERT INTO
    `SERVMASK_PREFIX_usermeta`
VALUES (5, 1, 'rich_editing', 'true');

INSERT INTO
    `SERVMASK_PREFIX_usermeta`
VALUES (
        6,
        1,
        'syntax_highlighting',
        'true'
    );

INSERT INTO
    `SERVMASK_PREFIX_usermeta`
VALUES (
        7,
        1,
        'comment_shortcuts',
        'false'
    );

INSERT INTO
    `SERVMASK_PREFIX_usermeta`
VALUES (8, 1, 'admin_color', 'fresh');

INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES (9, 1, 'use_ssl', '0');

INSERT INTO
    `SERVMASK_PREFIX_usermeta`
VALUES (
        10,
        1,
        'show_admin_bar_front',
        'true'
    );

INSERT INTO `SERVMASK_PREFIX_usermeta` VALUES (11, 1, 'locale', '');

INSERT INTO
    `SERVMASK_PREFIX_usermeta`
VALUES (
        12,
        1,
        'SERVMASK_PREFIX_capabilities',
        'a:1:{s:13:\"administrator\";b:1;}'
    );

INSERT INTO
    `SERVMASK_PREFIX_usermeta`
VALUES (
        13,
        1,
        'SERVMASK_PREFIX_user_level',
        '10'
    );

INSERT INTO
    `SERVMASK_PREFIX_usermeta`
VALUES (
        14,
        1,
        'dismissed_wp_pointers',
        ''
    );

INSERT INTO
    `SERVMASK_PREFIX_usermeta`
VALUES (
        15,
        1,
        'show_welcome_panel',
        '1'
    );

INSERT INTO
    `SERVMASK_PREFIX_usermeta`
VALUES (
        17,
        1,
        'SERVMASK_PREFIX_dashboard_quick_press_last_post_id',
        '5'
    );

INSERT INTO
    `SERVMASK_PREFIX_usermeta`
VALUES (
        18,
        1,
        'community-events-location',
        'a:1:{s:2:\"ip\";s:12:\"186.235.99.0\";}'
    );

INSERT INTO
    `SERVMASK_PREFIX_usermeta`
VALUES (
        19,
        1,
        'SERVMASK_PREFIX_user-settings',
        'libraryContent=browse'
    );

INSERT INTO
    `SERVMASK_PREFIX_usermeta`
VALUES (
        20,
        1,
        'SERVMASK_PREFIX_user-settings-time',
        '1698108524'
    );

INSERT INTO
    `SERVMASK_PREFIX_usermeta`
VALUES (
        21,
        1,
        'SERVMASK_PREFIX_persisted_preferences',
        'a:3:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-10-26T01:07:15.470Z\";s:22:\"core/customize-widgets\";a:1:{s:12:\"welcomeGuide\";b:0;}}'
    );

INSERT INTO
    `SERVMASK_PREFIX_usermeta`
VALUES (
        22,
        1,
        'session_tokens',
        'a:1:{s:64:\"a40440f1c3c3dc065d906adc6c7f30101a131c06f1cda41e6e3ccacf8ef29e87\";a:4:{s:10:\"expiration\";i:1698764059;s:2:\"ip\";s:14:\"186.235.99.186\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36\";s:5:\"login\";i:1698591259;}}'
    );

COMMIT;

DROP TABLE IF EXISTS `SERVMASK_PREFIX_users`;

CREATE TABLE
    `SERVMASK_PREFIX_users` (
        `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
        `user_login` varchar(60) NOT NULL DEFAULT '',
        `user_pass` varchar(255) NOT NULL DEFAULT '',
        `user_nicename` varchar(50) NOT NULL DEFAULT '',
        `user_email` varchar(100) NOT NULL DEFAULT '',
        `user_url` varchar(100) NOT NULL DEFAULT '',
        `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
        `user_activation_key` varchar(255) NOT NULL DEFAULT '',
        `user_status` int(11) NOT NULL DEFAULT 0,
        `display_name` varchar(250) NOT NULL DEFAULT '',
        PRIMARY KEY (`ID`),
        KEY `user_login_key` (`user_login`),
        KEY `user_nicename` (`user_nicename`),
        KEY `user_email` (`user_email`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

START TRANSACTION;

INSERT INTO
    `SERVMASK_PREFIX_users`
VALUES (
        1,
        'admin',
        '$P$BA672OfDDAfbl97/aktEuavYkr3OAX/',
        'admin',
        'dev.isaque21@gmail.com',
        'http://cloudbooks.onlab.click',
        '2023-10-22 02:47:19',
        '',
        0,
        'admin'
    );

COMMIT;