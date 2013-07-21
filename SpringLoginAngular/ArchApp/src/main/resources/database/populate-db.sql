USE `arch-app` ;

-- TODO: hash/salt
INSERT INTO `users` (`username`, `password`, `enabled`)
VALUES
	('alice', 'alicepassword', TRUE),
	('john', 'johnpassword', TRUE);
	
INSERT INTO `authorities` (`authority_id`, `username`, `authority`)
VALUES
	('1', 'alice', 'ROLE_USER'),
	('2', 'alice', 'ROLE_ADMIN'),
	('3', 'john', 'ROLE_USER');