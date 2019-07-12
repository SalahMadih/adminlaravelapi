-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 12 juil. 2019 à 17:32
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nakessorapi`
--

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_06_25_143710_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Structure de la table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 2),
(1, 'App\\User', 3);

-- --------------------------------------------------------

--
-- Structure de la table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\User', 2);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('05fc778600fc3e16c411a7cf7b0a87b4a5df6e88fe3b3d4ad104903fb0052c88b32bc53dde70b692', 1, 2, NULL, '[]', 0, '2019-06-24 16:28:37', '2019-06-24 16:28:37', '2020-06-24 17:28:37'),
('0ac38d1cc48991b5889eea0ba1c08becf053b81fe5c623c45d4febb505cb8da502fc482fafeaa0e2', 1, 2, NULL, '[]', 0, '2019-07-12 10:33:21', '2019-07-12 10:33:21', '2020-07-12 11:33:21'),
('13cb10724056399ea324d163f37108e12ca384b3f0cd01ff88e23dc2ec30bee2bdcf3187481b8642', 1, 2, NULL, '[]', 0, '2019-07-12 10:38:17', '2019-07-12 10:38:17', '2020-07-12 11:38:17'),
('4d989cb1f4b36ab48cd1f7a8817cbb55562addade1bf471c37d1adcaa4c21669cd2b02613cfd353c', 1, 2, NULL, '[]', 0, '2019-07-12 10:36:58', '2019-07-12 10:36:58', '2020-07-12 11:36:58'),
('4e53a4809e27a0f07d199c92bc1bd3dfed0825218cf923874b13eb17cdcd8a67753728b14cac880e', 1, 2, NULL, '[]', 0, '2019-07-12 10:31:37', '2019-07-12 10:31:37', '2020-07-12 11:31:37'),
('60b2c7b3e536bbbb4dc6c4f41ac7a20ca339cecf2bad092cfe34ab746bed10258d275b7b6f1c6846', 1, 2, NULL, '[]', 0, '2019-07-12 10:14:14', '2019-07-12 10:14:14', '2020-07-12 11:14:14'),
('6c9908eae41a4bf6bdd917a4856a0ab6316924e4deda68b0d6deb41a49e470626b76f4252a4cbd18', 1, 2, NULL, '[]', 0, '2019-07-09 07:58:35', '2019-07-09 07:58:35', '2020-07-09 08:58:35'),
('74ae3b762ef487811fafba2ae7128a2fca09e97298b61df204a2ea5f7e0898c0fa4fd718984369bc', 1, 2, NULL, '[]', 0, '2019-07-12 10:33:09', '2019-07-12 10:33:09', '2020-07-12 11:33:09'),
('7508cc33aff9f8ee14ae18a40f5760eea3fba419d6ae63a31bcd15443122dab3d41c08e1a295366a', 1, 2, NULL, '[]', 0, '2019-07-12 10:30:11', '2019-07-12 10:30:11', '2020-07-12 11:30:11'),
('79c4ac7daee980b167a9cabaff033b5398e3a8c0334a9065ac22146ab548a1656986cd07385e8f68', 1, 2, NULL, '[]', 0, '2019-07-12 10:37:08', '2019-07-12 10:37:08', '2020-07-12 11:37:08'),
('a3892e4cd0cdcfceae8ad36c2e059f84217537a1ee8041dab499e57f2f2c75336e03003c8e35cf1f', 1, 2, NULL, '[]', 0, '2019-06-24 15:56:37', '2019-06-24 15:56:37', '2020-06-24 16:56:37'),
('dd0dc68b3f908511f47e16e160b2926a190be9eb403386c04117e8ec2b687f767bfba626166857fb', 1, 2, NULL, '[]', 0, '2019-07-09 08:01:34', '2019-07-09 08:01:34', '2020-07-09 09:01:34'),
('fe5fab2bc9f46ff30eb2bfdae1638111480c5206d8f1b188d3d8836ca54f997b3e6c5a695d761b67', 1, 2, NULL, '[]', 0, '2019-07-12 10:14:10', '2019-07-12 10:14:10', '2020-07-12 11:14:10');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'NAVahE2uZfGfuB6kivtoQsUyIKPEbjlccPfiM001', 'http://localhost', 1, 0, 0, '2019-06-24 14:37:44', '2019-06-24 14:37:44'),
(2, NULL, 'Laravel Password Grant Client', 'ukvg2LOWzNti1eR4pBmYruLlEA0TgDIFrxmdbFhw', 'http://localhost', 0, 1, 0, '2019-06-24 14:37:44', '2019-06-24 14:37:44'),
(3, NULL, 'Laravel Personal Access Client', 'ChZJsgO9iPMXoDpkyjaha3tLRnaVwnIWFdEr8MSp', 'http://localhost', 1, 0, 0, '2019-06-24 14:38:08', '2019-06-24 14:38:08'),
(4, NULL, 'Laravel Password Grant Client', '2x6m7cHZFrruiq2ynONiZ3woVSGpE4RmJHvZKx5O', 'http://localhost', 0, 1, 0, '2019-06-24 14:38:08', '2019-06-24 14:38:08');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-06-24 14:37:44', '2019-06-24 14:37:44'),
(2, 3, '2019-06-24 14:38:08', '2019-06-24 14:38:08');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('08e12404c4c5323b8dc11bc5d58940b8765b5e7e689aeadbab51ab8d2d24590b87203e49e67b6e22', '0ac38d1cc48991b5889eea0ba1c08becf053b81fe5c623c45d4febb505cb8da502fc482fafeaa0e2', 0, '2020-07-12 11:33:21'),
('3965d3e48137cf7d127c1d177d6daf2984758d6bc0cd32957b0a110d7c2a45ab315c8099a29e969f', '13cb10724056399ea324d163f37108e12ca384b3f0cd01ff88e23dc2ec30bee2bdcf3187481b8642', 0, '2020-07-12 11:38:18'),
('45fdc85a24227787f04775885925598630861fbc7dbc6d7dcd5cb6654bbf30280a013ee0a6020c74', '4d989cb1f4b36ab48cd1f7a8817cbb55562addade1bf471c37d1adcaa4c21669cd2b02613cfd353c', 0, '2020-07-12 11:36:58'),
('7d4fdbcc015ab036fd4c312e6ae6f80354a290fc037fc9090e9c22ea1d6c2844d7379a8bab433d39', '4e53a4809e27a0f07d199c92bc1bd3dfed0825218cf923874b13eb17cdcd8a67753728b14cac880e', 0, '2020-07-12 11:31:37'),
('7d76c96d546050ba30861d0edb037558c0e4570d1f2603cb8e67917fd856376e7b68a5a14a1bfa57', '7508cc33aff9f8ee14ae18a40f5760eea3fba419d6ae63a31bcd15443122dab3d41c08e1a295366a', 0, '2020-07-12 11:30:11'),
('86c9a8186a1a006884263c8a730c72389ef7660b41e4964824681427a70951c356684ad71a177e1b', '79c4ac7daee980b167a9cabaff033b5398e3a8c0334a9065ac22146ab548a1656986cd07385e8f68', 0, '2020-07-12 11:37:08'),
('9bc7396ed7fe6976871428d8c304b2c5442baa70942952a1597d080824d1cc3c44cda60cc25ee27e', '60b2c7b3e536bbbb4dc6c4f41ac7a20ca339cecf2bad092cfe34ab746bed10258d275b7b6f1c6846', 0, '2020-07-12 11:14:14'),
('a46b079de76b96d652ee1b1987afd8d4dbd099ff8e5c9f54da7f524840470161e24a59b723106ee3', '6c9908eae41a4bf6bdd917a4856a0ab6316924e4deda68b0d6deb41a49e470626b76f4252a4cbd18', 0, '2020-07-09 08:58:38'),
('a66d7e4116a8f54ef43ac047e4a68ae6a67dde21a581602cc6a747b0725e8531ddc2448828810681', 'fe5fab2bc9f46ff30eb2bfdae1638111480c5206d8f1b188d3d8836ca54f997b3e6c5a695d761b67', 0, '2020-07-12 11:14:10'),
('bf735b60548825456e12a0a2b9ea35889ac15d10cfba3d60963ae9fde4d6e8589ba95613ce935aa9', '74ae3b762ef487811fafba2ae7128a2fca09e97298b61df204a2ea5f7e0898c0fa4fd718984369bc', 0, '2020-07-12 11:33:09'),
('ea16edc7df48d411167df2ea8e4ef62e1bca58feae28e5f5e7256fb12eccc0c652e4f967d18f9ceb', 'a3892e4cd0cdcfceae8ad36c2e059f84217537a1ee8041dab499e57f2f2c75336e03003c8e35cf1f', 0, '2020-06-24 16:56:37'),
('eb842a0c411937bb976332397737f2c62a11ddd520c92c8083e43a545c2d3e6eeae64c471c2f1cdd', 'dd0dc68b3f908511f47e16e160b2926a190be9eb403386c04117e8ec2b687f767bfba626166857fb', 0, '2020-07-09 09:01:35'),
('f6f1c692b8e6215a5132b7bef960a0f157f59ac3220446dc2aabb664a710fe3c2eee25697f8fd21a', '05fc778600fc3e16c411a7cf7b0a87b4a5df6e88fe3b3d4ad104903fb0052c88b32bc53dde70b692', 0, '2020-06-24 17:28:38');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'edit articles', 'web', '2019-06-25 13:46:04', '2019-06-25 13:46:04'),
(2, 'writer articles', 'web', '2019-06-25 13:56:09', '2019-06-25 13:56:09');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'writer', '', 'web', '2019-06-25 13:46:04', '2019-06-25 13:46:04'),
(2, 'subscriber', 'User is the subscriber of a given project', 'web', '2019-07-09 09:49:27', '2019-07-09 09:49:27'),
(3, 'admin', 'User is allowed to manage all', 'web', '2019-07-09 09:49:27', '2019-07-09 09:49:27');

-- --------------------------------------------------------

--
-- Structure de la table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kamille Konopelski', 'wiley.kirlin@example.net', '2019-06-24 15:45:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UXDEUJBHGZ', '2019-06-24 15:45:49', '2019-06-24 15:45:49'),
(2, 'Gladyce Considine', 'vparisian@example.com', '2019-06-24 15:46:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '42LiHrHqLh', '2019-06-24 15:46:09', '2019-06-24 15:46:09'),
(3, 'salah', 'salah@madih.com', NULL, '$2y$10$ZDPZNu7akbRdObNlQDNi5.XDqjRyPAv3BaxLecy7scjxoyhuNh6MC', NULL, '2019-06-25 13:45:15', '2019-06-25 13:45:15');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Index pour la table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
