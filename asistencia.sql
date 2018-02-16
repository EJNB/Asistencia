/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : asistencia

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-06-19 17:08:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `reporte`
-- ----------------------------
DROP TABLE IF EXISTS `reporte`;
CREATE TABLE `reporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fechaCreacion` datetime NOT NULL,
  `fechaRealizacion` datetime DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `encabezado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `remitente` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5CB1214DB38439E` (`usuario_id`),
  CONSTRAINT `FK_5CB1214DB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of reporte
-- ----------------------------
INSERT INTO `reporte` VALUES ('168', '2017-06-15 11:39:34', '2017-06-16 21:18:33', 'Resuelto', 'Prueba No 1 ', 'Prueba No 1 15-06-2017\r\n\r\n \r\n\r\nSaludos Cordiales:\r\n\r\n \r\n\r\nEnio Javier Nieto Basnueva\r\n\r\nEspecialista Informático\r\n\r\nGrupo Cubanacan\r\n\r\nTelef Directo: (53) 78385297\r\n\r\nTelef Pizarra: (53) 78334090    Ext.360\r\n\r\n <mailto:informatico4@cubanacan.tur.cu> informatico4@cubanacan.tur.cu\r\n\r\n <mailto:javier@chat.cubanacan.tur.cu> javier@chat.cubanacan.tur.cu\r\n\r\n <http://www.hotelescubanacan.com/> www.hotelescubanacan.com\r\n\r\n <http://www.cubanacan.cu/> www.cubanacan.cu\r\n\r\n \r\n\r\n <http://www.hotelescubanacan.com/>\r\n<https://www.facebook.com/CubanacanHoteles>\r\n<https://twitter.com/CubanacanHotel> \r\n\r\n \r\n\r\n', 'Enio Javier Nieto Basnueva\n informatico4@cubanacan.tur.cu', null);
INSERT INTO `reporte` VALUES ('169', '2017-06-15 11:48:49', '2017-06-16 21:11:35', 'Resuelto', 'Prueba No 2', 'Prueba No 2 desde la pc de andy\r\n\r\n \r\n\r\nSaludos Cordiales:\r\n\r\n \r\n\r\nAndy García Mirabal\r\n\r\nTecnico Informatico\r\n\r\nGrupo Cubanacan\r\n\r\nTelef Pizarra: (53) 78334090    Ext.364\r\n\r\n <mailto:informatico1@cubanacan.tur.cu> informatico1@cubanacan.tur.cu\r\n\r\n <http://www.hotelescubanacan.com/> www.hotelescubanacan.com\r\n\r\n <http://www.cubanacan.cu/> www.cubanacan.cu\r\n\r\n \r\n\r\n <http://www.hotelescubanacan.com/>\r\n<https://www.facebook.com/CubanacanHoteles>\r\n<https://twitter.com/CubanacanHotel>\r\n<https://www.youtube.com/user/CubanacanHoteles> \r\n\r\n \r\n\r\n', 'Andy García Mirabal\n informatico1@cubanacan.tur.cu', null);
INSERT INTO `reporte` VALUES ('170', '2017-06-15 11:52:16', '2017-06-16 21:17:11', 'Resuelto', 'Prueba No 3 ', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo\r\nligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis\r\nparturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec,\r\npellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec\r\npede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo,\r\nrhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede\r\nmollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper\r\nnisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu,\r\nconsequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra\r\nquis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.\r\nQuisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur\r\nullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus,\r\ntellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing\r\nsem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit\r\nid, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut\r\nlibero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros\r\nfaucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec\r\nsodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue\r\nvelit cursus nunc,\r\n\r\n \r\n\r\nSaludos Cordiales:\r\n\r\n \r\n\r\nAndy García Mirabal\r\n\r\nTecnico Informatico\r\n\r\nGrupo Cubanacan\r\n\r\nTelef Pizarra: (53) 78334090    Ext.364\r\n\r\n <mailto:informatico1@cubanacan.tur.cu> informatico1@cubanacan.tur.cu\r\n\r\n <http://www.hotelescubanacan.com/> www.hotelescubanacan.com\r\n\r\n <http://www.cubanacan.cu/> www.cubanacan.cu\r\n\r\n \r\n\r\n <http://www.hotelescubanacan.com/>\r\n<https://www.facebook.com/CubanacanHoteles>\r\n<https://twitter.com/CubanacanHotel>\r\n<https://www.youtube.com/user/CubanacanHoteles> \r\n\r\n \r\n\r\n', 'Andy García Mirabal\n informatico1@cubanacan.tur.cu', null);
INSERT INTO `reporte` VALUES ('171', '2017-06-15 12:29:24', '2017-06-16 21:17:15', 'Resuelto', '[Everyone] OFERTA ESPECIAL POR EL DÍA DE LOS PADRES_HOTEL HORIZONTES SOROA', ' \r\n\r\n\r\n\r\n \r\n\r\n \r\n\r\nSaludos Cordiales:\r\n\r\n \r\n\r\nYelinet Valcarcel Mauri\r\n\r\nEjecutiva de Ventas\r\n\r\nGrupo Cubanacan\r\n\r\nTelef directo: (53) 7-838 5241  \r\n\r\nTelef Pizarra: (53) 7-833 4090  Ext.241\r\n\r\nventas4@cubanacan.tur.cu <mailto:ventas4@cubanacan.tur.cu> \r\n\r\n <http://www.hotelescubanacan.com/> www.hotelescubanacan.com\r\n\r\n <http://www.cubanacan.cu/> www.cubanacan.cu\r\n\r\n \r\n\r\n <http://www.hotelescubanacan.com/>\r\n<https://www.facebook.com/CubanacanHoteles>\r\n<https://twitter.com/CubanacanHotel>\r\n<https://www.youtube.com/user/CubanacanHoteles> \r\n\r\n \r\n\r\n \r\n\r\n', 'Ventas Yelinet Valcarcel Mauri\n ventas4@cubanacan.tur.cu', null);
INSERT INTO `reporte` VALUES ('172', '2017-06-15 13:37:30', null, 'Pendiente', '[Everyone] AFECTACIONES EN LOS SERVICIOS DE RED', 'Buenos días compañeros se van a cambiar algunos baterías en de los switch en\r\nel piso del lobby, el sótano y el gabinete de operaciones, por lo cual se\r\nverán afectados los servicios de red durante 15 a 20 minutos.\r\n\r\nLe pedimos disculpas por las molestias ocasionadas. Gracias\r\n\r\n \r\n\r\nSaludos Cordiales:\r\n\r\n \r\n\r\nEnio Javier Nieto Basnueva\r\n\r\nEspecialista Informático\r\n\r\nGrupo Cubanacan\r\n\r\nTelef Directo: (53) 78385297\r\n\r\nTelef Pizarra: (53) 78334090    Ext.360\r\n\r\n <mailto:informatico4@cubanacan.tur.cu> informatico4@cubanacan.tur.cu\r\n\r\n <mailto:javier@chat.cubanacan.tur.cu> javier@chat.cubanacan.tur.cu\r\n\r\n <http://www.hotelescubanacan.com/> www.hotelescubanacan.com\r\n\r\n <http://www.cubanacan.cu/> www.cubanacan.cu\r\n\r\n \r\n\r\n <http://www.hotelescubanacan.com/>\r\n<https://www.facebook.com/CubanacanHoteles>\r\n<https://twitter.com/CubanacanHotel> \r\n\r\n \r\n\r\n', 'Enio Javier Nieto Basnueva\n informatico4@cubanacan.tur.cu', null);
INSERT INTO `reporte` VALUES ('173', '2017-06-15 20:33:20', '2017-06-16 16:57:11', 'Pendiente', '[Everyone] Felicidades por el día de los padres', 'A todos mis compañeros les deseo muchas FELICIDADES por el día de los padres\r\ny lo pasen con mucho AMOR, SALUD y Paz. Un abrazo. René\r\n\r\n \r\n\r\nSaludos Cordiales:\r\n\r\n \r\n\r\nRene Gonzales Barban\r\n\r\nEspecialista en Gestión Documental Jurídica\r\n\r\nGrupo Cubanacan\r\n\r\nTelef Directo: \r\n\r\nTelef Pizarra: (53) 78334090    Ext.417\r\n\r\n <mailto:abogado3@cubanacan.tur.cu> abogado3@cubanacan.tur.cu\r\n\r\n <http://www.hotelescubanacan.com/> www.hotelescubanacan.com\r\n\r\n <http://www.cubanacan.cu/> www.cubanacan.cu\r\n\r\n \r\n\r\n <http://www.hotelescubanacan.com/>\r\n<https://www.facebook.com/CubanacanHoteles>\r\n<https://twitter.com/CubanacanHotel> \r\n\r\n \r\n\r\n\r\n\r\n \r\n\r\n', 'René González Barban\n abogado3@cubanacan.tur.cu', null);
INSERT INTO `reporte` VALUES ('174', '2017-06-15 20:48:23', '2017-06-16 21:11:41', 'Resuelto', '[Everyone] vespertino por el día de los padres ', 'Estimados trabajadores\r\n\r\n \r\n\r\nLes comunicamos que mañana a la 1:00 pm en el lobby de nuestro grupo\r\nrealizaremos un vespertino especial en saludo al día de los padres, momento\r\nideal para reunirnos y compartir . \r\n\r\n \r\n\r\nNo falten .!!!!! Te esperamos !! \r\n\r\n \r\n\r\nSaludos Cordiales:\r\n\r\n \r\n\r\nBuro Sindical \r\n\r\n \r\n\r\nNorys G. Alonso Gutiérrez \r\n\r\nEjecutiva de RRPP y Promoción \r\n\r\nGrupo Cubanacan\r\n\r\nTelef Pizarra: (53) 78334090    Ext. 258\r\n\r\n <mailto:esppromo2@cubanacan.tur.cu> esppromo2@cubanacan.tur.cu\r\n\r\n <http://www.hotelescubanacan.com/> www.hotelescubanacan.com\r\n\r\n <http://www.cubanacan.cu/> www.cubanacan.cu\r\n\r\n \r\n\r\n <http://www.hotelescubanacan.com/>\r\n<https://www.facebook.com/CubanacanHoteles>\r\n<https://twitter.com/CubanacanHotel>\r\n<https://www.youtube.com/user/CubanacanHoteles> \r\n\r\n \r\n\r\n', 'Norys G. Alonso Gutiérrez \n esppromo2@cubanacan.tur.cu', null);
INSERT INTO `reporte` VALUES ('175', '2017-06-15 21:06:27', null, 'Pendiente', '[Everyone] (DIRECTORIO DE VOIP DEL GRUPO CUBANACAN)-Se incorporó el Hotel Aguas Azules', 'Se incorporó el Hotel Aguas Azules\r\n\r\n \r\n\r\nEstimados usuarios aquí está el camino donde se encuentra el Directorio de\r\nVOIP de los Hoteles, según vallan entrando los mismos a este servicio, se\r\nirá actualizando el directorio. En este hipervínculo se encuentra el\r\ndirectorio en tabla en Excel ----\r\n\\\\Wsus\\Directorio_VOIP\\DIRECTORIO_TELEFONICO_VOIP.xls\r\n<file:///\\\\Wsus\\Directorio_VOIP\\DIRECTORIO_TELEFONICO_VOIP.xls> \r\n\r\nLos que están en verde son los Hoteles que están funcionando con este\r\nservicio. Por esta vía se ahorra mucho más, no se cobran las llamadas\r\nlocales en este caso está el Mintur y el Get, ni tampoco las provinciales\r\ncuando llama a los Hoteles que tienen este servicio.\r\n\r\nEn la tabla hay una columna que dice MODO DE MARCADO, de esa manera usted\r\npuede llamar y comunicar con los Hoteles.\r\n\r\nPara el MINTUR es 5  o *2    ese es el prefijo y después marca la ext.\r\ndeseada.\r\n\r\nEspero que sea de buena utilidad para ustedes,\r\n\r\nQue tengan buenos tardes.\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\nSaludos Cordiales:\r\n\r\n \r\n\r\nTavier Martínez Almanza\r\n\r\nAdministrador de Red (EP)\r\n\r\nGrupo Cubanacan\r\n\r\nTelef Directo: (53) 78385299\r\n\r\nTelef Pizarra: (53) 78334090    Ext.733\r\n\r\n <mailto:dirinfo@cubanacan.cyt.cu> spliner@cubanacan.tur.cu\r\n\r\n <http://www.hotelescubanacan.com/> www.hotelescubanacan.com\r\n\r\n <http://www.cubanacan.cu/> www.cubanacan.cu\r\n\r\n \r\n\r\n <http://www.hotelescubanacan.com/> Descripción: marca correo recortada\r\n<https://www.facebook.com/CubanacanHoteles> facebook\r\n<https://twitter.com/CubanacanHotel> twitter\r\n<https://www.youtube.com/user/CubanacanHoteles> youtube\r\n\r\n \r\n\r\n', 'Tavier Martínez Almanza\n spliner@cubanacan.tur.cu', null);
INSERT INTO `reporte` VALUES ('176', '2017-06-16 15:16:25', null, 'Pendiente', '[Everyone] VESPERTINO 1.00PM', 'Estimados Trabajadores \r\n\r\n \r\n\r\nRecordarles que deben calentar el almuerzo antes de la 1:00 pm, pues a esa\r\nhora comenzaremos el encuentro en el lobby por el día de los padres .. \r\n\r\n \r\n\r\nGRACIAS POR LA COMPRENSION \r\n\r\n \r\n\r\n \r\n\r\nSaludos Cordiales:\r\n\r\n \r\n\r\nNorys G. Alonso Gutiérrez \r\n\r\nEjecutiva de RRPP y Promoción \r\n\r\nGrupo Cubanacan\r\n\r\nTelef Pizarra: (53) 78334090    Ext. 258\r\n\r\n <mailto:esppromo2@cubanacan.tur.cu> esppromo2@cubanacan.tur.cu\r\n\r\n <http://www.hotelescubanacan.com/> www.hotelescubanacan.com\r\n\r\n <http://www.cubanacan.cu/> www.cubanacan.cu\r\n\r\n \r\n\r\n <http://www.hotelescubanacan.com/>\r\n<https://www.facebook.com/CubanacanHoteles>\r\n<https://twitter.com/CubanacanHotel>\r\n<https://www.youtube.com/user/CubanacanHoteles> \r\n\r\n \r\n\r\n', 'Norys G. Alonso Gutiérrez \n esppromo2@cubanacan.tur.cu', null);
INSERT INTO `reporte` VALUES ('177', '2017-06-16 16:25:20', null, 'Pendiente', '[Everyone] Importante', 'Para los interesados, con previa aprobación de su jefe inmediato.\r\n\r\n \r\n\r\nDe: Metodologodocente [mailto:metodologodocente@ehth.tur.cu] \r\nEnviado el: viernes, 16 de junio de 2017 12:03 p.m.\r\nPara: cafetería@anec.co.cu; Artex; toni@lnh.campismopopular.cu;\r\ntatiana@campismopopular.cu; leyanisgomez96@nauta.cu; haydee@terrazas.tur.cu;\r\ndirector@hab.campismopopular.cu; kioskoguira@campismopopular.cu;\r\nmaikel@lnh.campismopopular.cu; yosnel@terrazas.tur.cu; Campismo popular\r\nArtemisa; CARACOL; luis@playa.caracol.cu; xiomara@playa.caracol.cu;\r\nyamilka@playa.caracol.cu; estela@caracol.cu; magaly@veste.caracol.cu;\r\nadalbertoguevara53@nauta.cu; Complejo Hotelero Lido-Caribean;\r\ncomplejo.quinta@cubanacan.tur.cu; Cubamar; Roberto Torres González;\r\nrrhh10@cubanacan.tur.cu; Yanire del Valle - Capacitación\r\npersonal2@cubanacan. tur. cu; Cubanacán hoteles; ophabana@empleatur.tur.cu;\r\nEmpresa Comercial Caracol S. A; iriana@empresturhav.tur.cu;\r\nmagalysb@protocolo.palco.cu; Carmen Julia Suárez Lara;\r\ndirector@arenal.tur.cu; directorgeneral@complejo.gca.tur.cu; Hotel Bello\r\nCaribe; Hotel Bello Caribe; Hotel Bello Caribe;\r\nsubdirgeneral@capri.gca.tur.cu; Hotel Capri; Hotel Chateau-Miramar; Hotel\r\nChateau-Miramar; Hotel Chateau-Miramar; Hotel Colina\r\n(patricia.baro@colina.islazul.tur.cu); Hotel Colina; Hotel Colina;\r\njefe.rrhh@kohly.gav.tur.cu; Hotel Comodoro; Hotel Comodoro; Hotel Comodoro;\r\nHotel Copacabana; Hotel Copacabana alinarrhh@copa.tur.cu); Hotel Copacabana;\r\nHotel Deauville; Hotel Deauville; Hotel El Viejo y el Mar; Hotel H10\r\nPanorama; Hotel Habana Libre Trip; Hotel Habana Libre Trip; Hotel Habana\r\nLibre Trip; Hotel Habana Paseo-Bruzón; (capacitación@gcrivie.gca.tur.cu);\r\nHotel Inglaterra; Hotel Inglaterra; Hotel Kohly; Hotel Kohly; Hotel\r\nLido-Caribbean; Hotel Lincoln; Hotel Mariposa; Hotel Mariposa; Hotel\r\nMariposa; Hotel Meliá Cohíba; Hotel Meliá Cohíba; Hotel Meliá Cohíba; Hotel\r\nMeliá Habana; Hotel Meliá Habana; Hotel Nacional de Cuba; Hotel Nacional de\r\nCuba; Hotel Nacional de Cuba; Hotel Neptuno-Tritón\r\ndirrrhh@nep-tri.gca.tur.cu); Hotel Neptuno-Tritón; Hotel Parque Central;\r\nHotel Parque Central; Hotel Plaza; Hotel Plaza; Hotel Plaza; Hotel\r\nPresidente; Hotel Presidente; Hotel Presidente; Hotel Riviera; Hotel\r\nRiviera; Hotel San Alejandro; Hotel San Alejandro; Hotel Saratoga; Hotel\r\nSaratoga; Hotel Sevilla; Hotel Sevilla; Hotel Terrazas-Atlántico-Bacuranao;\r\nHotel Tropicoco; Hotel Tulipán-Bella Habana; Hotel Vedado-Saint Jon´s; Hotel\r\nVedado-Saint Jon´s; Ignacio@ice.rimed.cu; amanda@ice.rimed.cu;\r\nnieves@cimex.com.cu; Beatriz@ith.cu; Watson@ith.cu; Ivette Muñoz -\r\nCapacitadora; Iván Puerta Guerra - RRHH puerta@hlibre. caracol. cu; MINSAP;\r\nyaimi.galan@mintur.tur.cu; MINTUR; MINTUR; nieves@playa1.palmares.tur.cu;\r\npersonal3@gee.palmares.cu; Palmares Centro; Palmares Este; Palmares Este;\r\ncuadros2@centro.palmares.cu; Redelio; magnop@infomed.sld.cu;\r\nmarytvega@infomed.sld.cu; Servicios Técnicos PALCO; Sucursal Marina\r\nHeminguey; Turempleo; esp4.empleo@turoeste.tur.cu;\r\nmaria.valdes@yagruma.islazul.tur.cu\r\nAsunto: Importante\r\n\r\n \r\n\r\n \r\n\r\n', 'Yanire del Valle\n personal2@cubanacan.tur.cu', null);
INSERT INTO `reporte` VALUES ('178', '2017-06-16 21:11:36', null, 'Pendiente', '[Everyone] Atencion a la alerta temprana', 'Teniendo en cuenta la alerta temprana anunciando un fenómeno de intensas\r\nlluvias el fin de semana se le solicita a todos los trabajadores tomar las\r\nmedidas siguientes:\r\n\r\n \r\n\r\n1.     Dejar las ventanas cerradas de manera segura.\r\n\r\n2.     Desconectar de la corriente  todos los medios de computo.\r\n\r\n3.     Garantizar la protección a los vehículos y motos. Evitar transitar\r\npor lugares proclives a inundaciones.\r\n\r\n4.     Protegerse la vida y de sus familiares \r\n\r\n \r\n\r\nSaludos Cordiales,\r\n\r\n \r\n\r\n \r\n\r\nJosé Antonio Mesa Bejerano\r\n\r\nDirector Administrativo\r\n\r\nGrupo Cubanacan\r\n\r\nTeléf. Pizarra: (53) 78334090  Ext.700\r\n\r\nEmail: jadmin@cubanacan.tur.cu\r\n\r\n <http://www.hotelescubanacan.com/> www.hotelescubanacan.com      \r\n\r\n <http://www.cubanacan.cu/> www.cubanacan.cu\r\n\r\n <http://www.hotelescubanacan.com/>\r\n<https://www.facebook.com/CubanacanHoteles>\r\n<https://twitter.com/CubanacanHotel> \r\n\r\n \r\n\r\n', 'José Antonio Mesa Bejerano\n jadmin@cubanacan.tur.cu', null);
INSERT INTO `reporte` VALUES ('179', '2017-06-19 14:36:49', null, 'Pendiente', 'Prueba No1', 'Prueba No 1 19-06-2017\r\n\r\n \r\n\r\nSaludos Cordiales:\r\n\r\n \r\n\r\nEnio Javier Nieto Basnueva\r\n\r\nEspecialista Informático\r\n\r\nGrupo Cubanacan\r\n\r\nTelef Directo: (53) 78385297\r\n\r\nTelef Pizarra: (53) 78334090    Ext.360\r\n\r\n <mailto:informatico4@cubanacan.tur.cu> informatico4@cubanacan.tur.cu\r\n\r\n <mailto:javier@chat.cubanacan.tur.cu> javier@chat.cubanacan.tur.cu\r\n\r\n <http://www.hotelescubanacan.com/> www.hotelescubanacan.com\r\n\r\n <http://www.cubanacan.cu/> www.cubanacan.cu\r\n\r\n \r\n\r\n <http://www.hotelescubanacan.com/>\r\n<https://www.facebook.com/CubanacanHoteles>\r\n<https://twitter.com/CubanacanHotel> \r\n\r\n \r\n\r\n', 'Enio Javier Nieto Basnueva\n informatico4@cubanacan.tur.cu', null);

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_57698A6A57698A6A` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'Administrador', 'ROLE_ADMIN');
INSERT INTO `role` VALUES ('2', 'Usuario', 'ROLE_USUARIO');

-- ----------------------------
-- Table structure for `usuario`
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('7', 'admin', 'admin@example.cu', 'admin1', '$2y$12$zWeySK5OhxEIcu/cKiu8CegmM7CxVzJhgujvHGza3saZP/48IPUxa', '1');
INSERT INTO `usuario` VALUES ('8', 'Enio J. Nieto Basnueva', 'informatico4@cubanacan.tur.cu', 'javier', '$2y$12$pduIOpRU0e1qRNNnZTiT4.SkXjCblumA.h2Y.c29bZcU5ODehgQ3W', '1');
INSERT INTO `usuario` VALUES ('9', 'Andy García Mirabal', 'informatico1@cubanacan.tur.cu', 'andy', '$2y$12$Hxw2Or68NeEPgZOxH2ik/ekUpbd6MNRQbbRLjhh/.tDXvdbUU6/zK', '1');
INSERT INTO `usuario` VALUES ('10', 'Rainy Rodríguez Araque', 'informatico2@cubanacan.tur.cu', 'rainy', '$2y$12$64ZNB9r6O5ALFzOqwUXuo.sHGOHDdA.UdPtmwtM/yczv26DgLbUZ2', '1');

-- ----------------------------
-- Table structure for `usuario_role`
-- ----------------------------
DROP TABLE IF EXISTS `usuario_role`;
CREATE TABLE `usuario_role` (
  `usuario_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`usuario_id`,`role_id`),
  KEY `IDX_3E13F07ADB38439E` (`usuario_id`),
  KEY `IDX_3E13F07AD60322AC` (`role_id`),
  CONSTRAINT `FK_3E13F07AD60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_3E13F07ADB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usuario_role
-- ----------------------------
INSERT INTO `usuario_role` VALUES ('7', '1');
INSERT INTO `usuario_role` VALUES ('8', '1');
INSERT INTO `usuario_role` VALUES ('9', '2');
INSERT INTO `usuario_role` VALUES ('10', '2');
