-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-11-2024 a las 12:14:29
-- Versión del servidor: 8.0.40-0ubuntu0.24.04.1
-- Versión de PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `relacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_19_114600_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id` bigint UNSIGNED NOT NULL,
  `titulo` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entrada` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `titulo`, `entrada`, `texto`, `created_at`, `updated_at`) VALUES
(3, '¿Puede una izquierda ser \'iliberal\'?', 'Seis voces analizan, a raíz de los buenos resultados de Alianza Sahra Wagenknecht en Sajonia y Turingia, la aparición en el ecosistema de las izquierdas de partidos que defienden argumentos propios de la derecha o la extrema derecha.', '\"La derrota en la que se encuentra la izquierda se demuestra con que todavía nos estemos preguntando si el partido de Sahra Wagenknecht es de izquierdas o no\". Son palabras de Miguel Urbán, quien fuera eurodiputado y dirigente de Anticapitalistas: \"No es izquierda, punto\". Sin embargo, la BSW —por las siglas en alemán del partido de Wagenknecht— es una escisión de Die Linke y se define a sí misma como una fuerza de \"izquierda conservadora\". Comparte algunas cosas con planteamientos iliberales propios de lo que se conoce como el \"rojipardismo\" y Fernández Barbudo la ha ubicado en el \"socialnacionalismo\". Es difícil, en cualquier caso, relacionarla con otros partidos europeos para inaugurar una nueva categoría política.\r\n\r\nLas izquierdas finlandesa o sueca, por ejemplo, también rebasan los postulados propios izquierdistas, pero por extremos distintos (por ejemplo, un apoyo a ultranza a la OTAN) a los de BSW, tal y como recuerda Marga Ferré, copresidenta del think tank Transform Europe y miembro de Izquierda Unida. Ferré comparte con el resto de voces consultadas que existe un momento de retroceso de los marcos de izquierda a nivel europeo que dan lugar a ese tipo de partidos, pero que \"es muy difícil etiquetarlos\". ¿Puede haber una izquierda iliberal? ¿Una izquierda conservadora? ¿Reaccionaria? ¿Es, simplemente, derecha? ¿Qué partidos caben en esa colección de sintagmas? ¿A qué se debe esta deriva? ¿Cuáles son las respuestas posibles por parte de la izquierda tradicional? ¿Hay hueco en el electorado español para un partido como el de <b> Sahra Wagenknecht</b>?', '2024-11-19 14:16:15', '2024-11-19 14:16:29'),
(4, 'El aprendizaje automático ayuda a atacar problemas ', 'Investigadores diseñan una red neuronal para dar soluciones aproximadas a un célebre problema de geometría', 'El problema de <i>Hadwiger-Nelson</i> es posiblemente uno de los más conocidos del área de la geometría discreta. Se trata de la siguiente cuestión: ¿cuál es el número mínimo de colores que se necesitan para pintar el plano, de tal modo que siempre, al tomar dos puntos cualesquiera, con una distancia de una unidad entre ellos, estos hayan sido pintados con colores distintos? Aun siendo una pregunta aparentemente inocente, lleva sin respuesta más de 70 años. Sin embargo, gracias a herramientas de aprendizaje automático, recientemente se ha conseguido avanzar en su comprensión.\n\nHasta el momento, se sabe que el número de colores necesarios puede ser cinco, seis o siete. Para estudiar el número mínimo de colores necesarios, basta con encontrar configuraciones concretas de puntos en el plano que no puedan pintarse con un número –llamémosle n– de colores y cumplir la propiedad indicada. Así, sabemos que necesitamos más, al menos, n+1 colores para pintar el plano completo –que incluye ese dibujo específico–, si queremos que se verifique la propiedad.<script>alert(1)</script>', '2024-11-19 14:16:26', '2024-11-19 14:16:32'),
(5, '‘Pedro Páramo’: la corrección de una adaptación imposible', 'El director de fotografía Rodrigo Prieto debuta con esta versión de Netflix de una de las grandes obras de la literatura universal', '<div>\r\nAdaptar al cine <b>Pedro Páramo</b>, una de las grandes obras de la literatura universal y punta de lanza de la renovación de la narrativa latinoamericana, es una de esas empresas condenadas al fracaso. Nada nuevo: también es imposible trasladar a la pantalla Moby Dick, Ulises o el Quijote, aunque ahí estén los intentos de hacerlo, algunos de ellos con imborrables destellos.</div>\r\n<div>alert(2)\r\nDe Pedro Páramo existen al menos dos versiones anteriores a esta, la de 1967, de Carlos Velo, en cuya escritura participó Carlos Fuentes, y, 10 años después, la de José Bolaños, con sus casi tres horas de duración. La principal dificultad siempre fue la misma: capturar en imágenes un tiempo circular en el que habitan las pobres ánimas del desierto de Juan Rulfo; hacer real un lugar imaginario, heredero a su manera del condado de Yoknapatawpha de Faulkner, en el que emerge un mundo de ultratumba cercano a lo fantástico que atrapa al lector en una tela de araña plagada de voces y fantasmas. Pedro Páramo es una novela sobre la orfandad y sobre la búsqueda del origen cuyo legendario arranque —”Vine a Comala porque me dijeron que aquí vivía mi padre, un tal Pedro Páramo. Mi madre me lo dijo. Y yo le dije que vendría a verlo en cuanto ella muriera”— abre la versión que ahora estrena Netflix mientras la cámara se sumerge en el fondo de la tierra y en sus raíces.\r\n</div>', '2024-11-20 13:20:05', '2024-11-20 13:20:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('EO8yZ3hxyZVd8jAPOoFmxHWLrSCc7LlUllbbXQq3', NULL, '80.28.211.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGt4enAxenk4YklnQ2ZKNzlOVTJ5cnh1Y0YxMnVEa0hXb24xVEdlMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly8xMDcuMjMuMjQzLjE4Ni9sYXJhdmVsZXMvcmVsYWNpb25lc0FwcC9wdWJsaWMvcG9zdC9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732109815);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_titulo_unique` (`titulo`),
  ADD UNIQUE KEY `post_entrada_unique` (`entrada`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
