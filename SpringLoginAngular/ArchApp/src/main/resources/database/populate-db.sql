USE `arch-app` ;

INSERT INTO `users` (`username`, `password`, `enabled`)
VALUES
	('alice', '/yrm1Tpz3c/zKtXTQn5EXBWi1/QVeEpydqk+3zXj/mg=', TRUE),
	('john', 'TSPS0dpfNAwy1XVyYhu34noKe2cXfNySLq2xr4bQ+9w=', TRUE);
	
INSERT INTO `authorities` (`authority_id`, `username`, `authority`)
VALUES
	('1', 'alice', 'ROLE_USER'),
	('2', 'alice', 'ROLE_ADMIN'),
	('3', 'john', 'ROLE_USER');