USE `arch-app` ;

INSERT INTO `users` (`username`, `password`, `enabled`)
VALUES
	('alice', 'xOsNourVPmdSjoXpCGEMX5sEO/8GwAO4CYIQEvenyEc=', TRUE),
	('john', 'B8GZQMWjmvk6WLDv/yEiaN9ItDprYr0MqzuW+SmDfHw=', TRUE);
	
INSERT INTO `authorities` (`authority_id`, `username`, `authority`)
VALUES
	('1', 'alice', 'ROLE_USER'),
	('2', 'alice', 'ROLE_ADMIN'),
	('3', 'john', 'ROLE_USER');