CREATE TABLE `assistance` (
                              `id` bigint NOT NULL AUTO_INCREMENT,
                              `description` varchar(300) NOT NULL,
                              `name` varchar(100) NOT NULL,
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO assistance (name,description) VALUES ('Manutenção 1', 'Descrição 1');
INSERT INTO assistance (name,description) VALUES ('Manutenção 2', 'Descrição 2');
INSERT INTO assistance (name,description) VALUES ('Manutenção 3', 'Descrição 3');
INSERT INTO assistance (name,description) VALUES ('Manutenção 4', 'Descrição 4');
INSERT INTO assistance (name,description) VALUES ('Manutenção 5', 'Descrição 5');
INSERT INTO assistance (name,description) VALUES ('Manutenção 6', 'Descrição 6');
INSERT INTO assistance (name,description) VALUES ('Manutenção 7', 'Descrição 7');
INSERT INTO assistance (name,description) VALUES ('Manutenção 8', 'Descrição 9');
INSERT INTO assistance (name,description) VALUES ('Manutenção 9', 'Descrição 9');
INSERT INTO assistance (name,description) VALUES ('Manutenção 10', 'Descrição 10')