#
# TABLE STRUCTURE FOR: client
#

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `client` (`client_id`) VALUES (15);
INSERT INTO `client` (`client_id`) VALUES (53);
INSERT INTO `client` (`client_id`) VALUES (93);
INSERT INTO `client` (`client_id`) VALUES (4967);
INSERT INTO `client` (`client_id`) VALUES (493478);
INSERT INTO `client` (`client_id`) VALUES (888459);
INSERT INTO `client` (`client_id`) VALUES (2333346);
INSERT INTO `client` (`client_id`) VALUES (6984572);
INSERT INTO `client` (`client_id`) VALUES (23030607);
INSERT INTO `client` (`client_id`) VALUES (63500119);
INSERT INTO `client` (`client_id`) VALUES (90658451);
INSERT INTO `client` (`client_id`) VALUES (90672187);
INSERT INTO `client` (`client_id`) VALUES (166899562);
INSERT INTO `client` (`client_id`) VALUES (198858920);
INSERT INTO `client` (`client_id`) VALUES (433195109);
INSERT INTO `client` (`client_id`) VALUES (640838862);
INSERT INTO `client` (`client_id`) VALUES (798378162);


#
# TABLE STRUCTURE FOR: compound
#

DROP TABLE IF EXISTS `compound`;

CREATE TABLE `compound` (
  `compound_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_product_id` int(11) NOT NULL,
  `ingridients_idingredients_id` int(11) NOT NULL,
  PRIMARY KEY (`compound_id`),
  KEY `fk_compound_product_idx` (`product_product_id`),
  KEY `fk_compound_ingridients1_idx` (`ingridients_idingredients_id`),
  CONSTRAINT `fk_compound_ingridients1` FOREIGN KEY (`ingridients_idingredients_id`) REFERENCES `ingridients` (`idingredients_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_compound_product` FOREIGN KEY (`product_product_id`) REFERENCES `product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `compound` (`compound_id`, `quantity`, `product_product_id`, `ingridients_idingredients_id`) VALUES (0, 208520299, 5614395, 474);
INSERT INTO `compound` (`compound_id`, `quantity`, `product_product_id`, `ingridients_idingredients_id`) VALUES (7, 13641, 55, 8533849);
INSERT INTO `compound` (`compound_id`, `quantity`, `product_product_id`, `ingridients_idingredients_id`) VALUES (9, 0, 4120837, 474);
INSERT INTO `compound` (`compound_id`, `quantity`, `product_product_id`, `ingridients_idingredients_id`) VALUES (10, 46717, 771468569, 556);
INSERT INTO `compound` (`compound_id`, `quantity`, `product_product_id`, `ingridients_idingredients_id`) VALUES (77, 555382, 0, 8533849);
INSERT INTO `compound` (`compound_id`, `quantity`, `product_product_id`, `ingridients_idingredients_id`) VALUES (384, 318, 18496262, 6);
INSERT INTO `compound` (`compound_id`, `quantity`, `product_product_id`, `ingridients_idingredients_id`) VALUES (551, 823463, 4946, 81271);
INSERT INTO `compound` (`compound_id`, `quantity`, `product_product_id`, `ingridients_idingredients_id`) VALUES (751, 4952673, 1, 81271);
INSERT INTO `compound` (`compound_id`, `quantity`, `product_product_id`, `ingridients_idingredients_id`) VALUES (1658, 32503546, 771468569, 81271);
INSERT INTO `compound` (`compound_id`, `quantity`, `product_product_id`, `ingridients_idingredients_id`) VALUES (5633, 84548, 9, 5);
INSERT INTO `compound` (`compound_id`, `quantity`, `product_product_id`, `ingridients_idingredients_id`) VALUES (7667, 0, 8160716, 415019);
INSERT INTO `compound` (`compound_id`, `quantity`, `product_product_id`, `ingridients_idingredients_id`) VALUES (19696, 2491926, 9, 5);
INSERT INTO `compound` (`compound_id`, `quantity`, `product_product_id`, `ingridients_idingredients_id`) VALUES (5562006, 7089, 5614395, 5);
INSERT INTO `compound` (`compound_id`, `quantity`, `product_product_id`, `ingridients_idingredients_id`) VALUES (178837236, 4, 3697622, 0);
INSERT INTO `compound` (`compound_id`, `quantity`, `product_product_id`, `ingridients_idingredients_id`) VALUES (325098441, 0, 55, 474);
INSERT INTO `compound` (`compound_id`, `quantity`, `product_product_id`, `ingridients_idingredients_id`) VALUES (706011046, 7868, 18496262, 9893565);
INSERT INTO `compound` (`compound_id`, `quantity`, `product_product_id`, `ingridients_idingredients_id`) VALUES (918505271, 56022, 55, 8533849);


#
# TABLE STRUCTURE FOR: country
#

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `country` (`country_id`, `name`) VALUES (0, 'voluptates');
INSERT INTO `country` (`country_id`, `name`) VALUES (3, 'quo');
INSERT INTO `country` (`country_id`, `name`) VALUES (4, 'ut');
INSERT INTO `country` (`country_id`, `name`) VALUES (7, 'quo');
INSERT INTO `country` (`country_id`, `name`) VALUES (9, 'inventore');
INSERT INTO `country` (`country_id`, `name`) VALUES (393, 'minus');
INSERT INTO `country` (`country_id`, `name`) VALUES (846, 'a');
INSERT INTO `country` (`country_id`, `name`) VALUES (2628, 'ea');
INSERT INTO `country` (`country_id`, `name`) VALUES (3526, 'sed');
INSERT INTO `country` (`country_id`, `name`) VALUES (4444, 'modi');
INSERT INTO `country` (`country_id`, `name`) VALUES (6128, 'ratione');
INSERT INTO `country` (`country_id`, `name`) VALUES (9858, 'repudiandae');
INSERT INTO `country` (`country_id`, `name`) VALUES (40693, 'vel');
INSERT INTO `country` (`country_id`, `name`) VALUES (50105, 'molestiae');
INSERT INTO `country` (`country_id`, `name`) VALUES (54155, 'repellat');
INSERT INTO `country` (`country_id`, `name`) VALUES (663014, 'quis');
INSERT INTO `country` (`country_id`, `name`) VALUES (6624762, 'vel');


#
# TABLE STRUCTURE FOR: ingridients
#

DROP TABLE IF EXISTS `ingridients`;

CREATE TABLE `ingridients` (
  `idingredients_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `best_before_date` date NOT NULL,
  `unit_price` int(11) NOT NULL,
  PRIMARY KEY (`idingredients_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `ingridients` (`idingredients_id`, `name`, `best_before_date`, `unit_price`) VALUES (0, 'natus', '2021-11-30', 505);
INSERT INTO `ingridients` (`idingredients_id`, `name`, `best_before_date`, `unit_price`) VALUES (5, 'dolorem', '2011-01-21', 18714877);
INSERT INTO `ingridients` (`idingredients_id`, `name`, `best_before_date`, `unit_price`) VALUES (6, 'dolorum', '1980-03-25', 1963);
INSERT INTO `ingridients` (`idingredients_id`, `name`, `best_before_date`, `unit_price`) VALUES (9, 'soluta', '1981-11-26', 444055571);
INSERT INTO `ingridients` (`idingredients_id`, `name`, `best_before_date`, `unit_price`) VALUES (474, 'libero', '2019-01-25', 2);
INSERT INTO `ingridients` (`idingredients_id`, `name`, `best_before_date`, `unit_price`) VALUES (556, 'aut', '1980-03-07', 3766758);
INSERT INTO `ingridients` (`idingredients_id`, `name`, `best_before_date`, `unit_price`) VALUES (5744, 'consequatur', '2016-04-19', 0);
INSERT INTO `ingridients` (`idingredients_id`, `name`, `best_before_date`, `unit_price`) VALUES (81271, 'aut', '1981-05-27', 33080);
INSERT INTO `ingridients` (`idingredients_id`, `name`, `best_before_date`, `unit_price`) VALUES (415019, 'quibusdam', '1991-12-18', 29);
INSERT INTO `ingridients` (`idingredients_id`, `name`, `best_before_date`, `unit_price`) VALUES (798698, 'sint', '1978-07-22', 1943);
INSERT INTO `ingridients` (`idingredients_id`, `name`, `best_before_date`, `unit_price`) VALUES (5869516, 'deleniti', '1972-12-30', 6);
INSERT INTO `ingridients` (`idingredients_id`, `name`, `best_before_date`, `unit_price`) VALUES (8533849, 'atque', '1999-10-17', 72);
INSERT INTO `ingridients` (`idingredients_id`, `name`, `best_before_date`, `unit_price`) VALUES (9456909, 'quia', '2006-04-18', 1523499);
INSERT INTO `ingridients` (`idingredients_id`, `name`, `best_before_date`, `unit_price`) VALUES (9893565, 'non', '1985-01-07', 65770);
INSERT INTO `ingridients` (`idingredients_id`, `name`, `best_before_date`, `unit_price`) VALUES (55470105, 'rerum', '1972-12-05', 47);
INSERT INTO `ingridients` (`idingredients_id`, `name`, `best_before_date`, `unit_price`) VALUES (892521971, 'numquam', '2007-09-19', 0);
INSERT INTO `ingridients` (`idingredients_id`, `name`, `best_before_date`, `unit_price`) VALUES (972291407, 'est', '2000-10-25', 781);


#
# TABLE STRUCTURE FOR: manufacturer
#

DROP TABLE IF EXISTS `manufacturer`;

CREATE TABLE `manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `manufacturer` (`manufacturer_id`, `name_id`) VALUES (4, 2);
INSERT INTO `manufacturer` (`manufacturer_id`, `name_id`) VALUES (34, 7);
INSERT INTO `manufacturer` (`manufacturer_id`, `name_id`) VALUES (73, 2);
INSERT INTO `manufacturer` (`manufacturer_id`, `name_id`) VALUES (8075463, 9);


#
# TABLE STRUCTURE FOR: orders
#

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `client_client_id` int(11) NOT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `fk_orders_client1_idx` (`client_client_id`),
  CONSTRAINT `fk_orders_client1` FOREIGN KEY (`client_client_id`) REFERENCES `client` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `orders` (`orders_id`, `quantity`, `client_client_id`) VALUES (0, 33, 888459);
INSERT INTO `orders` (`orders_id`, `quantity`, `client_client_id`) VALUES (9, 140978, 63500119);
INSERT INTO `orders` (`orders_id`, `quantity`, `client_client_id`) VALUES (20, 20246, 93);
INSERT INTO `orders` (`orders_id`, `quantity`, `client_client_id`) VALUES (73, 11336, 493478);
INSERT INTO `orders` (`orders_id`, `quantity`, `client_client_id`) VALUES (130, 207167, 90672187);
INSERT INTO `orders` (`orders_id`, `quantity`, `client_client_id`) VALUES (384, 759320851, 93);
INSERT INTO `orders` (`orders_id`, `quantity`, `client_client_id`) VALUES (674, 236, 6984572);
INSERT INTO `orders` (`orders_id`, `quantity`, `client_client_id`) VALUES (5541, 0, 63500119);
INSERT INTO `orders` (`orders_id`, `quantity`, `client_client_id`) VALUES (8095, 2288, 4967);
INSERT INTO `orders` (`orders_id`, `quantity`, `client_client_id`) VALUES (224659, 0, 198858920);
INSERT INTO `orders` (`orders_id`, `quantity`, `client_client_id`) VALUES (684495, 0, 6984572);
INSERT INTO `orders` (`orders_id`, `quantity`, `client_client_id`) VALUES (2350584, 2, 198858920);
INSERT INTO `orders` (`orders_id`, `quantity`, `client_client_id`) VALUES (3488178, 32604843, 90658451);
INSERT INTO `orders` (`orders_id`, `quantity`, `client_client_id`) VALUES (4028620, 3388, 90658451);
INSERT INTO `orders` (`orders_id`, `quantity`, `client_client_id`) VALUES (53300417, 58992353, 53);
INSERT INTO `orders` (`orders_id`, `quantity`, `client_client_id`) VALUES (756970715, 67755434, 90658451);
INSERT INTO `orders` (`orders_id`, `quantity`, `client_client_id`) VALUES (976771938, 1, 23030607);


#
# TABLE STRUCTURE FOR: orders_has_product
#

DROP TABLE IF EXISTS `orders_has_product`;

CREATE TABLE `orders_has_product` (
  `orders_orders_id` int(11) NOT NULL,
  `product_product_id` int(11) NOT NULL,
  PRIMARY KEY (`orders_orders_id`,`product_product_id`),
  KEY `fk_orders_has_product_product1_idx` (`product_product_id`),
  KEY `fk_orders_has_product_orders1_idx` (`orders_orders_id`),
  CONSTRAINT `fk_orders_has_product_orders1` FOREIGN KEY (`orders_orders_id`) REFERENCES `orders` (`orders_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_has_product_product1` FOREIGN KEY (`product_product_id`) REFERENCES `product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `orders_has_product` (`orders_orders_id`, `product_product_id`) VALUES (9, 3697622);
INSERT INTO `orders_has_product` (`orders_orders_id`, `product_product_id`) VALUES (20, 477);
INSERT INTO `orders_has_product` (`orders_orders_id`, `product_product_id`) VALUES (73, 0);
INSERT INTO `orders_has_product` (`orders_orders_id`, `product_product_id`) VALUES (73, 33158435);
INSERT INTO `orders_has_product` (`orders_orders_id`, `product_product_id`) VALUES (130, 3697622);
INSERT INTO `orders_has_product` (`orders_orders_id`, `product_product_id`) VALUES (384, 8160716);
INSERT INTO `orders_has_product` (`orders_orders_id`, `product_product_id`) VALUES (674, 55);
INSERT INTO `orders_has_product` (`orders_orders_id`, `product_product_id`) VALUES (5541, 3);
INSERT INTO `orders_has_product` (`orders_orders_id`, `product_product_id`) VALUES (5541, 4120837);
INSERT INTO `orders_has_product` (`orders_orders_id`, `product_product_id`) VALUES (8095, 8160716);
INSERT INTO `orders_has_product` (`orders_orders_id`, `product_product_id`) VALUES (224659, 3);
INSERT INTO `orders_has_product` (`orders_orders_id`, `product_product_id`) VALUES (2350584, 398);
INSERT INTO `orders_has_product` (`orders_orders_id`, `product_product_id`) VALUES (2350584, 5614395);
INSERT INTO `orders_has_product` (`orders_orders_id`, `product_product_id`) VALUES (4028620, 9);
INSERT INTO `orders_has_product` (`orders_orders_id`, `product_product_id`) VALUES (4028620, 8160716);
INSERT INTO `orders_has_product` (`orders_orders_id`, `product_product_id`) VALUES (53300417, 18496262);
INSERT INTO `orders_has_product` (`orders_orders_id`, `product_product_id`) VALUES (976771938, 4946);


#
# TABLE STRUCTURE FOR: prodiction
#

DROP TABLE IF EXISTS `prodiction`;

CREATE TABLE `prodiction` (
  `prodiction_id` int(11) NOT NULL,
  `implementation_date` int(11) NOT NULL,
  `manufacturer_manufacturer_id` int(11) NOT NULL,
  `product_product_id` int(11) NOT NULL,
  PRIMARY KEY (`prodiction_id`),
  KEY `fk_prodiction_manufacturer1_idx` (`manufacturer_manufacturer_id`),
  KEY `fk_prodiction_product1_idx` (`product_product_id`),
  CONSTRAINT `fk_prodiction_manufacturer1` FOREIGN KEY (`manufacturer_manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_prodiction_product1` FOREIGN KEY (`product_product_id`) REFERENCES `product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `prodiction` (`prodiction_id`, `implementation_date`, `manufacturer_manufacturer_id`, `product_product_id`) VALUES (6, 0, 34, 3697622);
INSERT INTO `prodiction` (`prodiction_id`, `implementation_date`, `manufacturer_manufacturer_id`, `product_product_id`) VALUES (8, 0, 4, 5614395);
INSERT INTO `prodiction` (`prodiction_id`, `implementation_date`, `manufacturer_manufacturer_id`, `product_product_id`) VALUES (9, 0, 8075463, 18496262);
INSERT INTO `prodiction` (`prodiction_id`, `implementation_date`, `manufacturer_manufacturer_id`, `product_product_id`) VALUES (84, 0, 4, 401373745);
INSERT INTO `prodiction` (`prodiction_id`, `implementation_date`, `manufacturer_manufacturer_id`, `product_product_id`) VALUES (95, 0, 4, 5614395);
INSERT INTO `prodiction` (`prodiction_id`, `implementation_date`, `manufacturer_manufacturer_id`, `product_product_id`) VALUES (761, 0, 8075463, 5614395);
INSERT INTO `prodiction` (`prodiction_id`, `implementation_date`, `manufacturer_manufacturer_id`, `product_product_id`) VALUES (1287, 0, 4, 55);
INSERT INTO `prodiction` (`prodiction_id`, `implementation_date`, `manufacturer_manufacturer_id`, `product_product_id`) VALUES (7243, 0, 73, 55);
INSERT INTO `prodiction` (`prodiction_id`, `implementation_date`, `manufacturer_manufacturer_id`, `product_product_id`) VALUES (14387, 0, 34, 771468569);
INSERT INTO `prodiction` (`prodiction_id`, `implementation_date`, `manufacturer_manufacturer_id`, `product_product_id`) VALUES (38243, 0, 34, 5614395);
INSERT INTO `prodiction` (`prodiction_id`, `implementation_date`, `manufacturer_manufacturer_id`, `product_product_id`) VALUES (76471, 0, 8075463, 0);
INSERT INTO `prodiction` (`prodiction_id`, `implementation_date`, `manufacturer_manufacturer_id`, `product_product_id`) VALUES (95730, 0, 8075463, 4946);
INSERT INTO `prodiction` (`prodiction_id`, `implementation_date`, `manufacturer_manufacturer_id`, `product_product_id`) VALUES (536803, 0, 8075463, 477);
INSERT INTO `prodiction` (`prodiction_id`, `implementation_date`, `manufacturer_manufacturer_id`, `product_product_id`) VALUES (1474843, 0, 4, 33158435);
INSERT INTO `prodiction` (`prodiction_id`, `implementation_date`, `manufacturer_manufacturer_id`, `product_product_id`) VALUES (5133268, 0, 73, 18496262);
INSERT INTO `prodiction` (`prodiction_id`, `implementation_date`, `manufacturer_manufacturer_id`, `product_product_id`) VALUES (10809834, 0, 34, 1);
INSERT INTO `prodiction` (`prodiction_id`, `implementation_date`, `manufacturer_manufacturer_id`, `product_product_id`) VALUES (715650109, 0, 8075463, 3);


#
# TABLE STRUCTURE FOR: product
#

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `best_before_date` date NOT NULL,
  `price` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `product` (`product_id`, `name`, `weight`, `best_before_date`, `price`, `manufacturer`) VALUES (0, 'earum', '', '1989-12-22', '276.55', 'Beier, Hudson and Re');
INSERT INTO `product` (`product_id`, `name`, `weight`, `best_before_date`, `price`, `manufacturer`) VALUES (1, 'dolorem', '', '1988-11-04', '92960', 'Ferry, Predovic and ');
INSERT INTO `product` (`product_id`, `name`, `weight`, `best_before_date`, `price`, `manufacturer`) VALUES (3, 'officia', '', '2014-04-02', '862524085.78297', 'Halvorson-Schamberge');
INSERT INTO `product` (`product_id`, `name`, `weight`, `best_before_date`, `price`, `manufacturer`) VALUES (9, 'atque', '', '2022-04-15', '', 'Hegmann, Hoppe and D');
INSERT INTO `product` (`product_id`, `name`, `weight`, `best_before_date`, `price`, `manufacturer`) VALUES (55, 'aut', '', '1985-01-22', '239735.877661', 'Marvin, Schimmel and');
INSERT INTO `product` (`product_id`, `name`, `weight`, `best_before_date`, `price`, `manufacturer`) VALUES (398, 'quidem', '', '1975-06-12', '12044.07', 'Batz and Sons');
INSERT INTO `product` (`product_id`, `name`, `weight`, `best_before_date`, `price`, `manufacturer`) VALUES (477, 'tempore', '', '2021-03-05', '422381703.584', 'Marks-Sporer');
INSERT INTO `product` (`product_id`, `name`, `weight`, `best_before_date`, `price`, `manufacturer`) VALUES (4946, 'fuga', '', '1994-04-14', '18673.156830985', 'Eichmann-Satterfield');
INSERT INTO `product` (`product_id`, `name`, `weight`, `best_before_date`, `price`, `manufacturer`) VALUES (3697622, 'quam', '', '1979-08-31', '22937.764', 'Schaefer-Gusikowski');
INSERT INTO `product` (`product_id`, `name`, `weight`, `best_before_date`, `price`, `manufacturer`) VALUES (4120837, 'quaerat', '', '2011-09-05', '8.641', 'Keebler-Schuster');
INSERT INTO `product` (`product_id`, `name`, `weight`, `best_before_date`, `price`, `manufacturer`) VALUES (5614395, 'et', '', '1990-06-21', '31921648.734', 'Ryan Ltd');
INSERT INTO `product` (`product_id`, `name`, `weight`, `best_before_date`, `price`, `manufacturer`) VALUES (8160716, 'modi', '', '2007-01-03', '4823239.0755', 'Jacobs LLC');
INSERT INTO `product` (`product_id`, `name`, `weight`, `best_before_date`, `price`, `manufacturer`) VALUES (18496262, 'ipsam', '', '1983-07-03', '', 'Quitzon Inc');
INSERT INTO `product` (`product_id`, `name`, `weight`, `best_before_date`, `price`, `manufacturer`) VALUES (33158435, 'vero', '', '1993-03-12', '54.43967093', 'Wisozk, Weber and Em');
INSERT INTO `product` (`product_id`, `name`, `weight`, `best_before_date`, `price`, `manufacturer`) VALUES (82451112, 'excepturi', '', '2011-06-07', '577249.4152004', 'Schmitt Ltd');
INSERT INTO `product` (`product_id`, `name`, `weight`, `best_before_date`, `price`, `manufacturer`) VALUES (401373745, 'deleniti', '', '1997-07-17', '2264.06840536', 'Monahan, Carter and ');
INSERT INTO `product` (`product_id`, `name`, `weight`, `best_before_date`, `price`, `manufacturer`) VALUES (771468569, 'quis', '', '2021-05-07', '31481988.15', 'Wintheiser, Considin');


#
# TABLE STRUCTURE FOR: stock
#

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `country_country_id` int(11) NOT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `fk_stock_country1_idx` (`country_country_id`),
  CONSTRAINT `fk_stock_country1` FOREIGN KEY (`country_country_id`) REFERENCES `country` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `stock` (`stock_id`, `country_country_id`) VALUES (1, 3);
INSERT INTO `stock` (`stock_id`, `country_country_id`) VALUES (603684, 4);
INSERT INTO `stock` (`stock_id`, `country_country_id`) VALUES (276344612, 393);
INSERT INTO `stock` (`stock_id`, `country_country_id`) VALUES (12, 846);
INSERT INTO `stock` (`stock_id`, `country_country_id`) VALUES (2392402, 3526);
INSERT INTO `stock` (`stock_id`, `country_country_id`) VALUES (65317, 6128);
INSERT INTO `stock` (`stock_id`, `country_country_id`) VALUES (17517, 9858);
INSERT INTO `stock` (`stock_id`, `country_country_id`) VALUES (407934, 9858);
INSERT INTO `stock` (`stock_id`, `country_country_id`) VALUES (71986247, 9858);
INSERT INTO `stock` (`stock_id`, `country_country_id`) VALUES (7, 40693);
INSERT INTO `stock` (`stock_id`, `country_country_id`) VALUES (86746, 40693);
INSERT INTO `stock` (`stock_id`, `country_country_id`) VALUES (80, 54155);
INSERT INTO `stock` (`stock_id`, `country_country_id`) VALUES (808, 54155);
INSERT INTO `stock` (`stock_id`, `country_country_id`) VALUES (3570, 54155);
INSERT INTO `stock` (`stock_id`, `country_country_id`) VALUES (44243, 663014);
INSERT INTO `stock` (`stock_id`, `country_country_id`) VALUES (0, 6624762);
INSERT INTO `stock` (`stock_id`, `country_country_id`) VALUES (9943, 6624762);


#
# TABLE STRUCTURE FOR: stock_has_product
#

DROP TABLE IF EXISTS `stock_has_product`;

CREATE TABLE `stock_has_product` (
  `stock_stock_id` int(11) NOT NULL,
  `product_product_id` int(11) NOT NULL,
  PRIMARY KEY (`stock_stock_id`,`product_product_id`),
  KEY `fk_stock_has_product_product1_idx` (`product_product_id`),
  KEY `fk_stock_has_product_stock1_idx` (`stock_stock_id`),
  CONSTRAINT `fk_stock_has_product_product1` FOREIGN KEY (`product_product_id`) REFERENCES `product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_stock_has_product_stock1` FOREIGN KEY (`stock_stock_id`) REFERENCES `stock` (`stock_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `stock_has_product` (`stock_stock_id`, `product_product_id`) VALUES (1, 18496262);
INSERT INTO `stock_has_product` (`stock_stock_id`, `product_product_id`) VALUES (1, 33158435);
INSERT INTO `stock_has_product` (`stock_stock_id`, `product_product_id`) VALUES (1, 401373745);
INSERT INTO `stock_has_product` (`stock_stock_id`, `product_product_id`) VALUES (808, 5614395);
INSERT INTO `stock_has_product` (`stock_stock_id`, `product_product_id`) VALUES (3570, 9);
INSERT INTO `stock_has_product` (`stock_stock_id`, `product_product_id`) VALUES (3570, 5614395);
INSERT INTO `stock_has_product` (`stock_stock_id`, `product_product_id`) VALUES (3570, 33158435);
INSERT INTO `stock_has_product` (`stock_stock_id`, `product_product_id`) VALUES (3570, 82451112);
INSERT INTO `stock_has_product` (`stock_stock_id`, `product_product_id`) VALUES (17517, 401373745);
INSERT INTO `stock_has_product` (`stock_stock_id`, `product_product_id`) VALUES (44243, 771468569);
INSERT INTO `stock_has_product` (`stock_stock_id`, `product_product_id`) VALUES (65317, 4120837);
INSERT INTO `stock_has_product` (`stock_stock_id`, `product_product_id`) VALUES (407934, 1);
INSERT INTO `stock_has_product` (`stock_stock_id`, `product_product_id`) VALUES (407934, 398);
INSERT INTO `stock_has_product` (`stock_stock_id`, `product_product_id`) VALUES (407934, 18496262);
INSERT INTO `stock_has_product` (`stock_stock_id`, `product_product_id`) VALUES (2392402, 0);
INSERT INTO `stock_has_product` (`stock_stock_id`, `product_product_id`) VALUES (2392402, 18496262);
INSERT INTO `stock_has_product` (`stock_stock_id`, `product_product_id`) VALUES (71986247, 8160716);


