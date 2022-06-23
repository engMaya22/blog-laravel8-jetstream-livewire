-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2022 at 09:07 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Holidays', 'holidays', NULL, '2022-06-23 03:59:27', '2022-06-23 03:59:27'),
(2, 'Camping', 'Camping', NULL, '2022-06-23 03:59:27', '2022-06-23 03:59:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_04_28_184316_create_sessions_table', 1),
(7, '2021_04_29_121000_create_categories_table', 1),
(8, '2021_04_29_121001_create_posts_table', 1),
(9, '2021_04_29_121158_create_tags_table', 1),
(10, '2021_04_29_121333_create_post_tag_table', 1),
(11, '2021_04_30_123141_create_subscribers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cover_image`, `title`, `slug`, `body`, `meta_description`, `published_at`, `featured`, `author_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'https://via.placeholder.com/800x600.png/008800?text=iusto', 'Neque nihil fuga dolore sunt.', 'explicabo-libero-molestias-qui-excepturi-aut', 'Vero sint itaque asperiores repellendus voluptatum quam repellat. Nemo laudantium quis et est itaque. Nesciunt tenetur sint ullam porro numquam nemo. Atque quae nesciunt esse ex sed. Laborum odit sunt dolor ipsa et veniam. Dolores recusandae qui dolorem veniam molestias ratione nulla. Omnis quae ut ipsa aspernatur quaerat optio qui dolorem. Deleniti possimus sint velit sit corporis et.', NULL, '2022-06-23 03:59:29', 1, 1, 1, '2022-06-23 03:59:29', '2022-06-23 04:01:30'),
(2, 'https://via.placeholder.com/800x600.png/00dd99?text=corporis', 'Dolore aperiam laudantium facilis at consequuntur molestiae nisi.', 'ipsa-et-quia-aliquam-nihil', 'Ipsam minima sunt vero sunt. Voluptatum id ipsa beatae voluptatibus aut non. Suscipit magnam possimus aut pariatur dolor. Tempora voluptatibus et qui voluptas quas blanditiis et dolorem. Fugiat quaerat illum quos iste ut. Sed vel suscipit at aut mollitia commodi.', NULL, '2022-06-23 03:59:29', 1, 1, 1, '2022-06-23 03:59:29', '2022-06-23 04:01:32'),
(3, 'https://via.placeholder.com/800x600.png/00cc44?text=assumenda', 'Laboriosam sed perspiciatis illum voluptatibus reprehenderit numquam ipsum.', 'accusamus-et-doloremque-dignissimos', 'Placeat facere qui facilis. Enim unde ipsum minus esse voluptatem. Id aspernatur officiis placeat maiores eum rem. Eaque fugit id sit quibusdam id. Quidem et corrupti iusto. Iste enim quaerat veniam assumenda exercitationem et. Consequatur numquam autem sint corporis eveniet. Non sed deserunt neque ut blanditiis dolores recusandae ut. Eos aut velit neque ipsum.', NULL, '2022-06-23 03:59:29', 1, 1, 1, '2022-06-23 03:59:29', '2022-06-23 04:01:33'),
(4, 'https://via.placeholder.com/800x600.png/001111?text=provident', 'Rerum laborum sint eum at minus numquam.', 'est-alias-ducimus-voluptates-totam-officiis', 'Consectetur tempore quam saepe quo possimus provident repudiandae. Cum rerum natus non reprehenderit cum quia fugiat. Dolore laboriosam quia dolores modi repudiandae alias et ut. Incidunt doloribus pariatur aut explicabo vitae quia rerum. Illum voluptatem eligendi eius. Qui aut dolor iusto est fuga. Laboriosam sed architecto consequatur harum maxime vitae.', NULL, '2022-06-23 03:59:29', 0, 1, 1, '2022-06-23 03:59:29', '2022-06-23 03:59:29'),
(5, 'https://via.placeholder.com/800x600.png/0088ff?text=necessitatibus', 'Sequi quidem aliquam soluta laborum eligendi sed soluta enim.', 'cumque-magni-ducimus-eum-neque-odio-sit-fuga-hic', 'Provident eligendi est culpa. Cum sit eius porro voluptas et. Illum autem labore officiis nesciunt ipsam autem. Dolor harum atque dignissimos amet et architecto assumenda. Sit numquam adipisci odio exercitationem veritatis et eveniet. Voluptas et molestiae aut earum. Vitae quaerat nostrum fugiat consequatur expedita.', NULL, '2022-06-23 03:59:29', 0, 1, 1, '2022-06-23 03:59:29', '2022-06-23 03:59:29'),
(6, 'https://via.placeholder.com/800x600.png/0055ee?text=dicta', 'Saepe enim est unde velit eaque quibusdam voluptatum voluptatem.', 'dolorem-non-dolores-quod-quia-voluptates', 'Eaque iure error architecto ullam. Culpa repudiandae est molestiae error. Cumque molestiae quis expedita blanditiis. Nisi commodi enim voluptatum omnis praesentium. Cumque praesentium a architecto repudiandae magnam consequatur commodi quasi. Sapiente id qui magni rerum corrupti. Nisi aliquam earum repudiandae consequatur saepe.', NULL, '2022-06-23 03:59:29', 0, 1, 1, '2022-06-23 03:59:29', '2022-06-23 03:59:29'),
(7, 'https://via.placeholder.com/800x600.png/0011cc?text=ut', 'Et labore qui est.', 'nostrum-voluptates-dolores-rerum-non-necessitatibus-aut-quod', 'Nostrum et qui et dolor. Mollitia nobis alias laboriosam doloremque. Est cum debitis voluptas qui. Nisi temporibus deleniti id ducimus. Esse molestiae magnam dolor dolores. Enim provident repudiandae quos cumque consequuntur magni. Officia consequatur expedita maiores soluta ullam soluta iste fugiat.', NULL, '2022-06-23 03:59:29', 0, 1, 1, '2022-06-23 03:59:29', '2022-06-23 03:59:29'),
(8, 'https://via.placeholder.com/800x600.png/00cc66?text=sed', 'Illo voluptas sapiente ut blanditiis incidunt.', 'tenetur-dolore-est-accusamus-velit-accusamus', 'Beatae deleniti id rerum magni molestiae quas aut. Non sint unde quia dolorem quasi qui culpa. Non magni dolor dolorem nostrum libero. Molestias commodi voluptates quibusdam odio voluptate voluptatibus. Dolor iusto natus architecto ipsum culpa animi rerum.', NULL, '2022-06-23 03:59:29', 0, 1, 1, '2022-06-23 03:59:29', '2022-06-23 03:59:29'),
(9, 'https://via.placeholder.com/800x600.png/00dd33?text=tempore', 'Beatae est qui quod qui cumque qui libero.', 'delectus-aut-impedit-consequuntur-qui-doloribus', 'Debitis et repellendus molestias ipsa. Pariatur non odit necessitatibus sed pariatur quia fuga. Perferendis sed voluptate suscipit et. Facere eum quaerat possimus repellendus consequatur. Ut doloremque aut et quos. Perspiciatis facilis ratione et fugiat doloribus omnis illum quam. Sit rem sit dolor cumque. Incidunt quis ut sunt id.', NULL, '2022-06-23 03:59:29', 0, 1, 1, '2022-06-23 03:59:29', '2022-06-23 03:59:29'),
(10, 'https://via.placeholder.com/800x600.png/002255?text=reiciendis', 'Quia aliquam et eum neque vel.', 'voluptatem-qui-eum-minus-consequatur-iste', 'Qui sit illum eum beatae dolore velit reprehenderit. Dignissimos eos illo odit enim totam beatae et eum. Illum voluptates aut consectetur pariatur. Repellat voluptate quia perspiciatis fuga nostrum modi. Voluptates et aut debitis dolore inventore tempore.', NULL, '2022-06-23 03:59:29', 0, 1, 1, '2022-06-23 03:59:29', '2022-06-23 03:59:29'),
(11, 'https://via.placeholder.com/800x600.png/009933?text=consequatur', 'Nihil dolores libero minima rem officiis hic ut.', 'repellendus-nihil-voluptas-molestias-natus-in-omnis-dolores', 'Incidunt officia aut autem doloribus consectetur sint animi. Nobis ratione est tenetur totam et laborum consequuntur. Sit eum temporibus adipisci minus deserunt earum. Excepturi illo porro veniam est dignissimos.', NULL, '2022-06-23 03:59:29', 0, 1, 1, '2022-06-23 03:59:29', '2022-06-23 03:59:29'),
(12, 'https://via.placeholder.com/800x600.png/0011cc?text=sit', 'Et suscipit id distinctio quod laudantium autem beatae voluptatibus.', 'aliquam-possimus-non-voluptatum-necessitatibus-et-autem-eum', 'Aut porro vero laudantium dicta omnis quo. Aut omnis sunt sint. Veritatis ut numquam animi quaerat animi accusantium amet. Accusantium iure qui odit id. Laborum quibusdam eius sit distinctio ullam. Rerum qui aut tenetur dolorum unde consequatur aut. Occaecati ea deleniti ipsa.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(13, 'https://via.placeholder.com/800x600.png/00cc00?text=quos', 'Veritatis ut natus dolores.', 'quidem-non-nobis-sunt-sed', 'Nobis et eum voluptatem magni. Odit ea ut cum vel. Sunt est et deleniti molestiae assumenda consequuntur laudantium. Suscipit inventore debitis voluptatem esse accusantium corrupti. Eaque inventore qui quam repudiandae fuga accusantium voluptatem.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(14, 'https://via.placeholder.com/800x600.png/0044ee?text=eos', 'Eveniet autem eos a eos ut voluptatem repellat.', 'expedita-provident-sint-et-laborum-ipsa-hic', 'Vitae quidem qui officia repudiandae placeat non. Maiores quod nulla animi dignissimos omnis in maxime iure. Ad porro voluptas possimus. Atque beatae aut ducimus maxime distinctio praesentium hic sapiente. Enim aut fugit est ea vel tempora reiciendis. Eum accusantium repudiandae quia nihil fugiat rerum excepturi praesentium.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(15, 'https://via.placeholder.com/800x600.png/002266?text=ut', 'Hic tempore nesciunt et quia.', 'consectetur-voluptatem-sit-sequi-debitis', 'Eum quibusdam eius voluptatum iure consequatur voluptatem odit adipisci. Veritatis esse quia dolorem error nemo molestiae. Quis dolores delectus nihil iste cum. Ut doloremque quia veritatis eveniet earum accusamus laboriosam ducimus. Nemo laboriosam ab ut esse architecto. Voluptatum quisquam quis aut minus perferendis libero. Incidunt quam et et omnis. Molestias corrupti unde porro.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(16, 'https://via.placeholder.com/800x600.png/0000ff?text=quo', 'Ipsa pariatur accusantium et dignissimos blanditiis.', 'similique-quo-molestiae-earum-tenetur-doloribus', 'Ratione ipsam accusamus et. Consequatur quidem quod quia voluptas. Aut qui non molestiae aut eveniet. Libero similique numquam magnam esse. Asperiores culpa veniam maiores. Et voluptatum temporibus vel quia reprehenderit reprehenderit odit.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(17, 'https://via.placeholder.com/800x600.png/0055bb?text=quam', 'Minus accusantium ut qui impedit et deserunt quo.', 'sunt-iure-quae-accusantium-quasi-facere-rem', 'Maxime cupiditate harum officia laudantium reiciendis. Nemo voluptatum et nobis consequatur sunt blanditiis sed. Temporibus porro ea et et ea debitis quasi est. Adipisci sint dolor odio et ut suscipit sed. Omnis sequi inventore blanditiis molestiae soluta aut. Aperiam qui est voluptas sit possimus. Non officiis dolor est voluptas. Non tempora aut aperiam est quia.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(18, 'https://via.placeholder.com/800x600.png/009944?text=et', 'Nihil omnis sint voluptatibus voluptas nihil rerum cum.', 'quia-quibusdam-illo-minima-facilis-cum-ea-nemo', 'Quidem ipsam rem nobis dolor et id. Esse optio iste quis voluptatem itaque. Vero culpa consequuntur ducimus debitis. Rerum repudiandae expedita ea est. Minus expedita dolor qui exercitationem optio necessitatibus libero. Id veniam error libero nobis atque repellendus.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(19, 'https://via.placeholder.com/800x600.png/00ee77?text=aut', 'Alias quia laboriosam et.', 'omnis-magnam-alias-at-odit-sunt-et-doloribus', 'Maxime sed quaerat et. Voluptatem beatae nobis est repudiandae. Provident quia nihil ratione. Similique voluptatem est temporibus nobis voluptatem. Cum et vel eos ab. Labore dignissimos quis id beatae ex magnam praesentium.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(20, 'https://via.placeholder.com/800x600.png/00dd77?text=exercitationem', 'Cumque officia eaque illum qui qui sed voluptate dolorem.', 'ipsam-reprehenderit-ullam-dolor-minus-architecto-iusto-explicabo', 'Commodi facere aut ea voluptatem illo aspernatur. Ducimus soluta reprehenderit voluptas ratione quisquam nesciunt in. Corporis sequi et iure cumque. Consequuntur velit architecto cum sit porro. Nihil alias blanditiis rerum consequatur. Explicabo unde deserunt assumenda enim quibusdam repellendus qui dolorem. Corporis qui incidunt magnam. Tempora commodi temporibus et magnam. Est delectus rem quia officia.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(21, 'https://via.placeholder.com/800x600.png/00aaaa?text=ut', 'Dolorum ut est ea similique nemo autem.', 'sapiente-similique-commodi-nam-consequatur-nihil-qui', 'Harum quo magnam magnam nisi veniam numquam. Amet consequatur dolores cumque eius asperiores. Voluptas ut rerum officia. Voluptate quis voluptatibus molestiae possimus dolorem qui expedita. Quae quas rerum est eligendi officia at id. Et id sed ut eos rem quis et magni. Alias vitae voluptas in perspiciatis voluptates aliquid. Qui ipsam qui necessitatibus soluta. Et quae et voluptas aut quod et.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(22, 'https://via.placeholder.com/800x600.png/0088ee?text=voluptatem', 'Dolorum aut est provident enim nobis sint sit.', 'et-aut-ea-aut-et-eveniet-velit-voluptatum', 'Sed ut et corrupti quasi enim consequatur. Maiores officia repellat omnis recusandae. Et assumenda eos ut rem similique ipsa suscipit. Eius harum numquam ducimus mollitia temporibus.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(23, 'https://via.placeholder.com/800x600.png/0066ee?text=eligendi', 'Est unde dolore quis voluptas vel occaecati.', 'sint-dolor-quae-neque-quasi-voluptas-dolore', 'Similique omnis atque dolor et illum cum. Laborum omnis quibusdam sit tenetur alias. Ducimus architecto quae quaerat repellendus. Perferendis cum quasi dicta veniam molestias laborum sunt dolores. Laborum et et consequatur facilis est. Ad mollitia id unde quaerat. Reprehenderit voluptates omnis natus sed at neque asperiores. Occaecati earum provident quidem quas accusamus incidunt amet.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(24, 'https://via.placeholder.com/800x600.png/00aa33?text=fuga', 'Eligendi at id repellat laudantium assumenda rerum architecto.', 'eos-rem-reprehenderit-aut-saepe', 'Libero ex sed nesciunt expedita. Voluptatem ullam soluta deserunt. Esse doloremque quis harum quas dolorem voluptatem et. Quam placeat ut autem. Est nihil nobis et illo et. Nihil minima esse minima adipisci hic est. Et neque velit sunt maiores nisi quos eligendi. Sunt earum numquam sit asperiores.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(25, 'https://via.placeholder.com/800x600.png/0022ee?text=soluta', 'Soluta est nihil laborum est numquam autem nihil.', 'possimus-sint-ut-animi', 'Non dolores adipisci facilis culpa suscipit porro quia. Quas exercitationem eos culpa tempora. Ut distinctio iste omnis nihil aspernatur illo. Facere facilis velit necessitatibus similique. Sit labore repellat ea ea et amet magnam eveniet. Dicta ut culpa libero sed. Error nisi qui non.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(26, 'https://via.placeholder.com/800x600.png/00ccff?text=voluptas', 'Dolores sequi error quod neque quia.', 'similique-non-ut-unde-ut', 'Hic autem unde consequatur fugiat quaerat. Velit cumque laboriosam tempora iure autem nobis ut iusto. Et dolorum commodi maxime nostrum rerum molestiae et quia. Alias ullam neque ut. Voluptatem et hic eos dignissimos. Eos voluptate et labore modi ea dicta. Consequuntur quibusdam dolores veritatis consequatur quos expedita a animi.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(27, 'https://via.placeholder.com/800x600.png/001111?text=dolorum', 'Minus temporibus et veritatis hic.', 'nisi-qui-sed-quis-nostrum-ipsum-labore-et', 'Necessitatibus enim voluptas et error. Tempora ipsa eum accusantium. Excepturi eos est id sint. Qui quia accusamus quis qui rem quod voluptatem non. Quis laborum et ut vel molestiae et vitae assumenda.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(28, 'https://via.placeholder.com/800x600.png/0022ee?text=similique', 'Et eaque voluptatibus est aut possimus odit.', 'amet-a-excepturi-voluptatem-et-aliquid-sit', 'Natus in velit at. Laudantium eos nihil quisquam. Quaerat explicabo facilis enim. Ut ad aperiam error mollitia id libero dolores iure. Qui laboriosam eos odio ut sit ad asperiores cumque. Tempora temporibus ut voluptas laborum voluptatem itaque consequatur corporis. Qui tenetur dolore necessitatibus mollitia quasi. Ipsam dolores dolorem assumenda voluptas harum quasi debitis. Minima necessitatibus et quis ratione.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(29, 'https://via.placeholder.com/800x600.png/00ee99?text=aut', 'Ipsa modi eos aut sit.', 'reiciendis-laborum-illum-nam-qui-vel-eos', 'Fuga sunt nihil qui voluptas quia. Esse explicabo vitae reiciendis ullam voluptas neque non. Deserunt ratione ipsa veniam quis qui consectetur aliquam. Placeat voluptas eligendi accusamus. Quas voluptatem autem sed ducimus. Laborum sed eveniet nam delectus assumenda laborum.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(30, 'https://via.placeholder.com/800x600.png/00ee11?text=qui', 'Possimus necessitatibus minus molestiae modi ratione doloribus.', 'odit-corporis-iure-ad-provident-tenetur', 'Sapiente quaerat vel similique molestiae necessitatibus omnis modi consequatur. Voluptates impedit dolores iusto. Illo est quod quidem reprehenderit occaecati saepe. Adipisci esse vel pariatur recusandae.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(31, 'https://via.placeholder.com/800x600.png/00ee11?text=voluptatum', 'Esse autem sit nam illo laborum iure.', 'illo-dolorem-ab-et-magnam-quia-labore-sed-aut', 'Maxime maxime et ut soluta molestiae. Eius vero eum ullam exercitationem sint aut veritatis. Aut fugit ullam illo eum. Vero aspernatur ut architecto illum expedita. Numquam natus esse aut impedit saepe doloremque et. Eos autem laborum nostrum consectetur sint qui. Nisi esse quos veniam quis quisquam quam animi. Dignissimos nobis rerum eum deleniti et. Facere quaerat quis quo autem sapiente vitae.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(32, 'https://via.placeholder.com/800x600.png/00cc99?text=illum', 'Magnam cupiditate quos consequatur earum.', 'quis-omnis-harum-voluptates-saepe-aliquam-odit-sunt-nemo', 'Quisquam porro impedit ab qui quibusdam. Est consequatur eos delectus corporis tempora pariatur est. Sint rerum earum consequatur et accusantium. Odio eaque consequatur vel tempore illum eum a. Ea rem placeat fugiat et eos.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(33, 'https://via.placeholder.com/800x600.png/001177?text=aut', 'Aliquid quae perferendis atque omnis eaque.', 'labore-tempore-sapiente-porro-possimus', 'Nostrum et harum excepturi voluptas est. Quas rerum est aut et. Sit officia nihil repudiandae quas et. Autem soluta corrupti et architecto totam molestias iure. Autem quo saepe qui delectus deleniti voluptates quo iusto. Reiciendis optio provident est dolore non sapiente. Debitis nihil eaque ea laboriosam et.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(34, 'https://via.placeholder.com/800x600.png/0055cc?text=asperiores', 'Quia accusamus autem placeat occaecati dolorem non tempore.', 'illum-est-autem-quaerat-nobis-accusantium-ex-quo', 'Eligendi esse cupiditate voluptatem qui culpa quaerat voluptatem. Veniam repellat dolorem nesciunt voluptatibus. Ipsam quia autem quibusdam corporis placeat corporis in ea. Necessitatibus rerum rerum iste ab eos ex. Aut eos eos incidunt voluptas rerum aut consequatur. Quae pariatur minus eaque nihil officia repellat voluptas.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(35, 'https://via.placeholder.com/800x600.png/0033ee?text=rerum', 'Dignissimos ut dolorem veniam dignissimos magnam dolores.', 'iste-fuga-et-adipisci-magni-voluptatum-ad', 'Neque nostrum dolores cum quasi. Mollitia doloribus quod aut et. Saepe doloribus dolorem praesentium nostrum atque eum eveniet quidem. Perferendis saepe nulla quod aliquam odit voluptas ut impedit. Soluta delectus ut voluptatem dignissimos in ut in. Consequuntur optio doloribus totam cum. Debitis nulla accusamus ut sit autem doloribus in.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(36, 'https://via.placeholder.com/800x600.png/002222?text=facere', 'Libero qui reprehenderit atque expedita.', 'illo-aut-architecto-voluptas-illo-placeat-odit-suscipit-quisquam', 'Eveniet ut adipisci sit. Officia optio repellat architecto numquam sed. Et maxime velit id voluptatem. Aut ut quo aut aut deleniti in aperiam. Et et tempore ullam.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(37, 'https://via.placeholder.com/800x600.png/0033ee?text=nobis', 'Asperiores temporibus mollitia autem neque quam molestiae tempore.', 'perspiciatis-illum-cupiditate-ducimus-explicabo-fugiat-ut-in', 'Eum totam nobis sint fugit eveniet et tempore. Non vero officia at distinctio qui corporis error consequatur. Nihil saepe sit nostrum aliquam aut nihil quibusdam. Ullam praesentium adipisci consequuntur natus voluptas rerum. Quam recusandae quo aut ipsa doloremque.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(38, 'https://via.placeholder.com/800x600.png/00cc00?text=dolor', 'Esse non est corrupti aut modi ut eius.', 'velit-consequatur-saepe-ratione-voluptas-iste-nesciunt-unde', 'Iste sint fugit dolor laborum. Facere est rerum ut sit sunt autem tempore rerum. Ut sapiente dolor sint beatae eum ab explicabo. Aperiam ea in incidunt fugiat eius et debitis voluptatem. Et mollitia sint inventore voluptatum earum natus. Autem quibusdam quo rerum. Non repellat in eveniet. Veniam harum possimus illo eum. Tempora facere id in maiores et.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(39, 'https://via.placeholder.com/800x600.png/0088aa?text=et', 'Delectus aut consequatur impedit.', 'inventore-animi-facilis-qui-deserunt-perspiciatis-vitae', 'Aspernatur quis rem non autem vero. Maxime id molestiae accusantium ab. Officiis recusandae dolor earum nesciunt nostrum in est. Id provident mollitia qui maxime aut eius et. Corrupti aliquam qui eum perferendis quasi quod vitae. Ut voluptatem voluptatem beatae ipsum. Voluptatum fugit voluptatem et a.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(40, 'https://via.placeholder.com/800x600.png/008866?text=illo', 'Eius est ea quia aut voluptas.', 'provident-nobis-libero-earum-nesciunt-aspernatur-voluptatem-animi', 'At deleniti voluptas ut eos suscipit perferendis qui est. Voluptatem totam vel et veritatis. Ad nulla sapiente molestias dicta. Molestias quas nobis voluptatem dolores voluptatum. Dolores qui quia voluptas reiciendis. Harum vel voluptas similique molestias et ut. Nihil quo distinctio dolores aut saepe. Dicta et aut laboriosam sequi aperiam laborum consectetur tempora.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(41, 'https://via.placeholder.com/800x600.png/00bb22?text=qui', 'Omnis sequi quibusdam ea est debitis minus.', 'id-fugit-sed-veniam-quasi-provident-sit', 'Commodi enim tenetur ipsa id. Ipsa delectus ut possimus placeat molestiae sit. Exercitationem sed minima error laudantium fugit. Nulla et ad sequi ea. Porro similique dignissimos dolorum laudantium. Non placeat quia tempore voluptates optio.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(42, 'https://via.placeholder.com/800x600.png/00eeaa?text=cumque', 'Molestias dolore iure ut animi numquam.', 'voluptatum-consequatur-aperiam-id-consequatur', 'Nesciunt laboriosam blanditiis provident qui asperiores sapiente rem. Omnis culpa voluptas sed a debitis laboriosam impedit. Nesciunt quis quam doloremque excepturi. Animi fuga molestiae harum voluptatem corporis officiis provident. Molestiae quibusdam quo aperiam. Sunt qui vitae non nihil eum. Dolores et recusandae deleniti ea alias harum cupiditate a.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(43, 'https://via.placeholder.com/800x600.png/001155?text=accusantium', 'Ut cum cupiditate dolore sapiente et.', 'rerum-aspernatur-dolores-quis-dolor-esse-itaque-dicta', 'Praesentium perspiciatis consequatur voluptas consequuntur voluptatem aut perferendis in. Laudantium voluptas quaerat quo voluptatem et at. Repudiandae cumque voluptatem fugit a alias ipsa voluptas. Natus vel et consequatur dignissimos eligendi ea atque. Et sunt consequatur dolor aliquid laborum quia. Maiores modi et autem optio. Autem quae et ut placeat molestias earum assumenda pariatur. Quia laudantium fugit minus.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(45, 'https://via.placeholder.com/800x600.png/00eeee?text=quae', 'Delectus nisi qui tenetur quos officia dolores sint.', 'nam-sed-velit-reprehenderit-omnis', 'Sed ea enim at ut porro consectetur reprehenderit. Consectetur saepe consequuntur vel enim. Nihil vero ratione dolores eligendi assumenda repudiandae quasi. Distinctio sapiente nostrum vitae sint. Occaecati et eos facere quaerat aut. Alias hic cum et hic. Ut nisi debitis temporibus laudantium non.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(46, 'https://via.placeholder.com/800x600.png/006655?text=et', 'Dolorem reiciendis et praesentium est culpa et sit officia.', 'ut-quos-dolores-incidunt-illo-sint-eos-quae', 'Sit possimus a non illo. Maiores voluptatum minima aut. Cum quia sit vel maiores quaerat illo aliquam. Inventore labore iste reiciendis dolore recusandae dolore. Voluptas accusamus cum in quia. Suscipit aspernatur sit architecto accusantium rerum nulla quae. Et atque temporibus qui autem dolores.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(47, 'https://via.placeholder.com/800x600.png/006699?text=aperiam', 'Corporis esse quasi nihil rerum et qui.', 'ut-tempora-qui-iure-non-molestias-quis-minima', 'Dolores quia ad et est nemo ad. Velit iste tempore officiis quasi. Soluta sed inventore cupiditate saepe quia sunt rerum. Dicta adipisci eveniet pariatur aliquid voluptatem ipsam. Praesentium ex consequatur qui quo tenetur voluptates neque.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(48, 'https://via.placeholder.com/800x600.png/008800?text=sequi', 'Est eligendi et qui aut laudantium.', 'earum-molestias-omnis-natus-voluptatem-officia', 'Et qui tempore asperiores et. Quos ipsum aut doloribus aperiam molestiae. Ad quidem rem et quas rerum qui molestiae. Accusantium maiores omnis et dolores at eaque commodi. Qui voluptatem eum voluptatem non esse ut. Sed aut nisi cupiditate ipsam. Temporibus ipsam cumque voluptatem qui et neque quia. Enim et dolor aut illo consectetur.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(49, 'https://via.placeholder.com/800x600.png/009944?text=ex', 'Inventore aliquam libero ipsa accusamus atque in.', 'accusamus-veritatis-dolorem-et-non-rerum-quisquam', 'Optio consequuntur quos ipsa aliquam qui qui. Reprehenderit quas et ut aut suscipit officiis. Voluptatum et eum sunt. Qui voluptates repellat neque temporibus saepe. Eum officiis voluptates maxime qui.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30'),
(50, 'https://via.placeholder.com/800x600.png/00ff77?text=quas', 'Modi sunt nobis dolores at.', 'deleniti-praesentium-ut-et', 'Ut mollitia quia voluptatibus repudiandae. Accusantium ex a maxime cumque cupiditate. Enim excepturi quia et dolor nihil. Numquam numquam modi non vel quae provident maxime nemo. Molestiae nihil natus excepturi facere exercitationem eaque eveniet tempore. Optio accusantium iusto sed impedit asperiores.', NULL, '2022-06-23 03:59:30', 0, 1, 1, '2022-06-23 03:59:30', '2022-06-23 03:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ZsqcFu5YOuGoaK1Au2Gg6SMqA0IId3e1mk5GM4fh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.124 Safari/537.36 Edg/102.0.1245.44', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFZmSlNqeUZSMWxCYnNtbUxFVFVWOXgzUkwzeDV4NmVlWEg3SWd3ciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ibG9nIjt9fQ==', 1655967862);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@example.com', '2022-06-23 03:59:29', '$2y$10$TF2TL2JSbsIR88w1jozWV.WDYjgvcW63QjOcR5xP6KCSisGn9xhPG', NULL, NULL, '2A8uWyHSV4FFOkKcrXomIWqtAVDmFStS8ocG2SinVe6hNjeDuQ6jPkTxY9SC', NULL, NULL, '2022-06-23 03:59:29', '2022-06-23 03:59:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_author_id_foreign` (`author_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
