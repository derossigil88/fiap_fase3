CREATE TABLE `order_location` (
                                  `id` bigint NOT NULL,
                                  `date` datetime(6) DEFAULT NULL,
                                  `latitude` double DEFAULT NULL,
                                  `longitude` double DEFAULT NULL,
                                  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `orders` (
                          `id` bigint NOT NULL,
                          `operator_id` bigint NOT NULL,
                          `end_order_location_id` bigint DEFAULT NULL,
                          `start_order_location_id` bigint DEFAULT NULL,
                          PRIMARY KEY (`id`),
                          KEY `FK_end_order_id` (`end_order_location_id`),
                          KEY `FK_start_order_id` (`start_order_location_id`),
                          CONSTRAINT `FK_end_order_id` FOREIGN KEY (`end_order_location_id`) REFERENCES `order_location` (`id`),
                          CONSTRAINT `FK_start_order_id` FOREIGN KEY (`start_order_location_id`) REFERENCES `order_location` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `orders_assists` (
                                  `order_id` bigint NOT NULL,
                                  `assists_id` bigint NOT NULL,
                                  KEY `FKacj1ecadqrc20chrl86ndyubd` (`assists_id`),
                                  KEY `FK1akhrl2x32yvxo2ijmb5ksjb0` (`order_id`),
                                  CONSTRAINT FK_orders_id_orders_assists
                                      FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
                                  CONSTRAINT FK_assist_id_orders_assists
                                      FOREIGN KEY (`assists_id`) REFERENCES `assistance` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
