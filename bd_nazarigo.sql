-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2025 a las 12:00:01
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_nazarigo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bar`
--

CREATE TABLE `bar` (
  `tapasAElegir` tinyint(1) DEFAULT NULL,
  `juegosDeMesa` tinyint(1) DEFAULT NULL,
  `deportes` tinyint(1) DEFAULT NULL,
  `horario` varchar(200) DEFAULT NULL,
  `servicios` varchar(200) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(300) DEFAULT NULL,
  `transporte` varchar(200) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bar`
--

INSERT INTO `bar` (`tapasAElegir`, `juegosDeMesa`, `deportes`, `horario`, `servicios`, `web`, `nombre`, `descripcion`, `transporte`, `entrada`) VALUES
(0, 1, 1, '16:00 - 1:00', 'Coctelería, juegos de mesa, merienda, billar, sala de baile para eventos', 'https://www.instagram.com/continentalgranada/?hl=es', 'Continental', 'Somos un café-pub ubicado en Granada centro, con más de 230 juegos de mesa, 33 televisores, 3 mesas de billar ,salas privadas y 2 pantallas gigantes.', 'Acceso mediante transporte público y taxis disponibles para la vuelta.', 0),
(1, 0, 0, '8:00 - 00:00', 'Cafetería, comidas y cenas', 'http://www.gardentapasxxl.com/CodigoQR/Carta.pdf', 'Garden', 'Desenfadado y colorido local con fotomurales de naturaleza para tapas, bocadillos y hamburguesas.', 'Acceso mediante transporte público y taxis disponibles para la vuelta.', 0),
(1, 0, 1, 'Mañanas: Lunes a jueves 12:00 - 17:00 Tardes: 19:30 - 1:00Viernes a Domingo 12:00 - 1:00', 'Cervecería artesana e importada, visualización de grandesacontecimientos deportivos', 'https://carta.menu/restaurants/granada-4/rhin-barril-ii', 'Rhim Barril', 'Rhin Barril se ha consolidado como un referente de las tapas en Granada, especialmente apreciado por estudiantes y locales. Su variada oferta de platos, desde carnes en salsa hasta paellas, destaca por su buena relación calidad-precio.', 'Acceso mediante transporte público y taxis disponiblespara la vuelta.', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_artistico`
--

CREATE TABLE `evento_artistico` (
  `artista` varchar(200) DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `duracion` varchar(200) NOT NULL,
  `coste` varchar(200) NOT NULL,
  `aforo` int(10) NOT NULL,
  `horario` varchar(200) DEFAULT NULL,
  `servicios` varchar(200) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `transporte` varchar(200) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evento_artistico`
--

INSERT INTO `evento_artistico` (`artista`, `tipo`, `duracion`, `coste`, `aforo`, `horario`, `servicios`, `web`, `nombre`, `descripcion`, `transporte`, `entrada`) VALUES
('Morad', 'Drill/Trap', '2h aprox', 'Entre 40 y 100 euros', 14500, '9 de Mayo', 'Bar', 'https://ticketrona.com/evento/morad-en-granada', 'Plaza de Toros', '', 'Acceso mediante transporte público y taxis disponibles ', 1),
('Manuel Carrasco', 'Pop flamenco', '2h aprox', 'Entre 50 y 100 euros', 14500, '23 y 24 de Mayo', 'bar', 'https://provenue.es/granada/manuel-carrasco-2-fecha/', 'Plaza de Toros', 'Tour salvaje', 'Acceso mediante transporte público y taxis disponibles', 1),
('Myke Towers', 'Urbana Latino', '2h aprox', 'Entre 45 y 90 euros', 14500, '1 de Junio', 'Bar', 'https://provenue.es/granada/myke-towers/', 'Plaza de Toros', 'Europe Tour', 'Acceso mediante transporte público y taxis disponibles', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_cultural`
--

CREATE TABLE `evento_cultural` (
  `historia` varchar(200) DEFAULT NULL,
  `festividad` varchar(200) DEFAULT NULL,
  `duracion` varchar(200) NOT NULL,
  `coste` varchar(200) NOT NULL,
  `aforo` int(30) NOT NULL,
  `horario` varchar(200) DEFAULT NULL,
  `servicios` varchar(200) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `transporte` varchar(200) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evento_cultural`
--

INSERT INTO `evento_cultural` (`historia`, `festividad`, `duracion`, `coste`, `aforo`, `horario`, `servicios`, `web`, `nombre`, `descripcion`, `transporte`, `entrada`) VALUES
('Corpus Christi: Celebración local, La fiesta tiene sus raices en la conquista de Granada por los Reyes Católicos en 1942 y se ha ido enriqueciendo con el paso de los siglos', 'Se celebra del 14 al 21 de Junio, destacando la Tarasca día 18 y la procesión día 19', 'Una semana', 'Gratuito', 15000, '14 al 21 de Junio', 'Casetas, atracciones y restaurantes', 'https://www.spain.info/es/agenda/corpus-christi-granada/', 'Corpus Christi', 'Teatro, zarzuela, conciertos, exposiciones y espectáculos inundan la ciudad. Las casetas del recinto ferial se llenan de alegría y música, mientras en la plaza de toros se desarrolla la feria taurina.', 'Lineas de autobus reservadas ymetropolitano disponible', 0),
('Corpus Christi: Celebración local, La fiesta tiene sus raices en la conquista de Granada por los Reyes Católicos en 1942 y se ha ido enriqueciendo con el paso de los siglos', 'Se celebra del 14 al 21 de Junio, destacando la Tarasca día 18 y la procesión día 19', 'Una semana', 'Gratuito', 15000, '14 al 21 de Junio', 'Casetas, atracciones y restaurantes', 'https://www.spain.info/es/agenda/corpus-christi-granada/', 'Corpus Christi', 'Teatro, zarzuela, conciertos, exposiciones y espectáculos inundan la ciudad. Las casetas del recinto ferial se llenan de alegría y música, mientras en la plaza de toros se desarrolla la feria taurina.', 'Lineas de autobus reservadas ymetropolitano disponible', 0),
('Corpus Christi: Celebración local, La fiesta tiene sus raices en la conquista de Granada por los Reyes Católicos en 1942 y se ha ido enriqueciendo con el paso de los siglos', 'Se celebra del 14 al 21 de Junio, destacando la Tarasca día 18 y la procesión día 19', 'Una semana', 'Gratuito', 15000, '14 al 21 de Junio', 'Casetas, atracciones y restaurantes', 'https://www.spain.info/es/agenda/corpus-christi-granada/', 'Corpus Christi', 'Teatro, zarzuela, conciertos, exposiciones y espectáculos inundan la ciudad. Las casetas del recinto ferial se llenan de alegría y música, mientras en la plaza de toros se desarrolla la feria taurina.', 'Lineas de autobus reservadas ymetropolitano disponible', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_deportivo`
--

CREATE TABLE `evento_deportivo` (
  `tipoDeDeporte` varchar(200) DEFAULT NULL,
  `tipoDeCompeticion` varchar(200) DEFAULT NULL,
  `duracion` varchar(200) NOT NULL,
  `coste` varchar(200) NOT NULL,
  `aforo` int(10) NOT NULL,
  `horario` varchar(200) DEFAULT NULL,
  `servicios` varchar(200) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `transporte` varchar(200) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evento_deportivo`
--

INSERT INTO `evento_deportivo` (`tipoDeDeporte`, `tipoDeCompeticion`, `duracion`, `coste`, `aforo`, `horario`, `servicios`, `web`, `nombre`, `descripcion`, `transporte`, `entrada`) VALUES
('Triatlón', '10º Sprint,Universidad de Granada', '3h-4h', 'Gratuito', 10000, '8 de junio, 11:00', '', 'https://deportes.ugr.es/competiciones/eventos-deportivos/triatlon-universidad', 'Universidad de Granada', '750m natación, 23km bicicleta 5km carrera', 'Acceso con transporte público', 0),
('Paddle Surf', '4º Campeonato', '3h-4h', 'Gratuito', 10000, '5 de abril 2025', '', 'https://deportes.ugr.es/competiciones/eventos-deportivos/triatlon-universidad', 'Universidad de Granada', 'Una carrera de Larga Distancia perteneciente al Circuito Andaluz de SUP y  puntuable para la Liga Fesurfing Costa del Sup.', 'Acceso mediante transporte público', 0),
('Ciclismo', 'Vuelta ciclista', '3 semanas', 'Gratuito', 0, 'Horario independiente a la localidad de Granada', '', 'https://www.lavuelta.es/es', 'Vuelta Ciclista España', '', 'Acceso mediante transporte público', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocionocturno`
--

CREATE TABLE `ocionocturno` (
  `edad` int(3) DEFAULT NULL,
  `reserva` varchar(200) DEFAULT NULL,
  `lista` varchar(200) DEFAULT NULL,
  `horario` varchar(200) DEFAULT NULL,
  `servicios` varchar(200) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `transporte` varchar(200) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ocionocturno`
--

INSERT INTO `ocionocturno` (`edad`, `reserva`, `lista`, `horario`, `servicios`, `web`, `nombre`, `descripcion`, `transporte`, `entrada`) VALUES
(18, 'Reservas: Disponibles', 'Lista: Exclusiva', 'Lunes a Viernes: 22:00 - 6:30 Festivos y Fines de semana: 22:00 - 7:00', 'Servicios: Coctelería y Cachimbas', 'https://maewestgranada.com/', 'Mae West Granada', 'DJs y cócteles en una bulliciosa discoteca con varias barras y pistas de bailes, además de terraza.', 'Acceso mediante transporte público y taxis disponibles para la vuelta. Cuenta con áreas de estacionamiento cercanas\n', 1),
(18, 'Reservas: Disponibles', 'Lista: Disponible', 'Jueves a Domingo 23:00 - 6:30', 'Servicios: Coctelería y Cachimbas', 'https://dsokogranada.es/', 'Dsoko Granada', 'DJs y cócteleria con varias barras y pista de baile, además de terraza.', 'Acceso mediante transporte público y taxis disponibles para la vuelta. Cuenta con áreas de estacionamiento cercanas\n', 1),
(18, 'Reservas: Disponibles', 'Lista: Disponible y Publica', 'Lunes a Sábado: 00:00 - 6:30', 'Servicios: Coctelería, cachimbas y Eventos', 'https://discotecagranada10.com/', 'Teatro Granada Diez', 'Música, cócteles, cerveza y sesiones de DJs en una popular discoteca con efectos de luces.', 'Acceso mediante transporte público y taxis disponibles para la vuelta.', 1),
(18, 'Reserva: Disponible para Terraza en horario café', 'Lista: No', 'Lunes a Domingo: 16:00 - 4:00', 'Servicios: Coctelería, cachimbas y café', 'https://www.instagram.com/atrivmgranada/?hl=es', 'PUB Atrivm Granada', 'Música, cócteles, cerveza, café y sesiones de DJs en una', 'Acceso mediante transporte público y taxis disponibles para la vuelta.', 0),
(18, 'Reservas: No', 'Lista: No', 'Lunes a Domingo: 22:00 - 4:00', 'Servicios: Coctelería y cachimbas', 'https://www.parabarap.com/?srsltid=AfmBOoq-rSlxtJ-Mo8rgqKv1mri4eSsebZpv4W8GEkSrKWxpeD3z-5er', 'PUB Parabarap', 'Parabarap en es un modelo de Negocio por y para tod@s que nunca deja de sorprenderte y darte el PRECIO JUSTO', 'Acceso mediante transporte público y taxis disponibles para la vuelta.', 0),
(16, 'Reservas: No', 'Lista: No', 'Miércoles a Sábado: 21:00 - 4:00', 'Servicios: Merchandising, Coctelería, Cervezas importadas artesanas, Billar, Futbolín, Dardos y Videoconsolas', 'https://www.instagram.com/namekpub/?hl=es', 'Namek Granada', 'Namek en es un modelo de Negocio por y para el mundo del frikismo que nunca deja de sorprenderte y darte el PRECIO JUSTO, musica alternativa', 'Acceso mediante transporte público y taxis disponibles para la vuelta.', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `punto_de_interes`
--

CREATE TABLE `punto_de_interes` (
  `añoFundacion` varchar(200) DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `vista` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(400) DEFAULT NULL,
  `transporte` varchar(200) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `punto_de_interes`
--

INSERT INTO `punto_de_interes` (`añoFundacion`, `tipo`, `vista`, `nombre`, `descripcion`, `transporte`, `entrada`) VALUES
('1460', 'Mercado/Zoco', 'Casco antiguo', 'Alcaicería', 'Antiguo zoco o mercado árabe, ubicado cerca de la Catedral y la calle Reyes Católicos', 'Acceso mediante transporte público', 0),
('1525', 'Mirador', 'Alhambra, Sierra nevada y ciudad antigua', 'Mirador de San Nicolas', 'https://miradorsanicolas.com/Este mirador es una visita obligada para los turistas que quieren maravillarse con la belleza de este enclave. La iglesia de San Nicolás, el aljibe y la plaza ofrecen unas vistas impresionantes de la Alhambra, la Sierra Nevada y la ciudad antigua.', 'Accesible mediante transporte público', 0),
('2014', 'Museo', 'Inquisición, carrera del darro', 'Palacio de los Olvidados', 'https://palaciodelosolvidados.es/ La selección de los instrumentos de tortura y de pena capital, corresponde a los más utilizados por los distintos tribunales inquisitoriales, tanto eclesiásticos como civiles, en toda Europa.', 'Acceso mediante transporte público unicamente cercanías', 0),
('1961', 'Mirador', 'Alhambra, Sierra Nevada y ciudad antigua', 'Mirador de los Carvajales', 'https://www.turgranada.es/es/pois/mirador-de-los-carvajales Este escondido mirador se encuentra en la recoleta Placeta de los Carvajales, en la parte baja del Albaicín y muy cerca de las calles Calderería y sus teterías. ', 'Acceso mediante transporte público unicamente cercanías', 0),
('1349', 'Palacio barroco', 'Casco antiguo', 'Palacio de la Madraza', 'https://www.andalucia.org/listing/palacio-de-la-madraza/16287102/Situado frente a la capilla real, el Palacio de la Madraza fue la sede de la Escuela Musulmana de la Ley Coránica que fundó Yusuf I. Tras la toma de la ciudad', 'Acceso mediante transporte público', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `distancia` varchar(200) DEFAULT NULL,
  `horarioRecomendado` varchar(200) DEFAULT NULL,
  `movilidad` varchar(200) DEFAULT NULL,
  `añoFundacion` varchar(200) DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `vista` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(400) DEFAULT NULL,
  `transporte` varchar(200) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ruta`
--

INSERT INTO `ruta` (`distancia`, `horarioRecomendado`, `movilidad`, `añoFundacion`, `tipo`, `vista`, `nombre`, `descripcion`, `transporte`, `entrada`) VALUES
('550 metros', '10:00 - 12:00 17:00 - 20:00', 'Andando', 'Palacio Olvidos: 2014, Carvajales: 1961 y San Nicolas: 1525', 'Museo y miradores', 'Alhambra, Sierra nevada, Paseo de los tristes y ciudad antigua', 'Ruta Turística Albayzín', 'En esta ruta veremos el museo de la inquisición, las maravillosas calles que componen el albayzín y las preciosas vistas que nos ofrence los miradores de Granada', 'Accesible mediante transporte público cercanías', 1),
('200 metros', '10:00 - 12:00 17:00 - 20:00', 'Andando', 'Zoco: 1460, Palacio de la Madraza: 1349', 'Mercado y Palacio', 'Casco antiguo', 'Ruta Turística comercios', 'En esta ruta contemplamos unas preciosas vistas de las calles antiguas originarias del siglo XV', 'Accesible mediante transporte públic', 0),
('9,45 Km', 'Comienzo: 9:00 - 11:00', 'Andando', 'No especificada', 'Senderismo', 'Paisaje natural', 'Cahorros Monachil', 'Un paraje de caprichosas esculturas naturales, creadas por las crecidas de la cuenca fluvial, que han excavado cuevas, bóvedas, paredes y formaciones rocosas a lo largo del tiempo.', 'Accesible mediante linea de bus o vehículo personal', 0),
('11,82 Km', 'Comienzo: 9:00 - 11:00', 'Ciclismo o andando', 'No especificado', 'Senderismo', 'Paisaje natural', 'Valle de Lecrín', 'El Valle de Lecrín se encuentra en una zona privilegiada de la Península, a los pies de Sierra Nevada, con la Alpujarra a un paso, a veinte minutos de la Costa Tropical, y a otros veinte de Granada Capital convirtiéndose así en una zona excepcional en cuanto a posibilidades de ocio y turismo activo.', 'Accesible mediante linea de bus o vehiculo personal, solo cercanías', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `nombre` varchar(20) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `contraseña` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
