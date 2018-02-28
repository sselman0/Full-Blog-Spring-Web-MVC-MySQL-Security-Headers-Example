CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `source` varchar(255) NOT NULL,
  `img_source` varchar(255) NOT NULL DEFAULT 'img',
  `summary_one` varchar(255) NOT NULL,
  `summary_two` varchar(255) NOT NULL,
  `published_at` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `source_UNIQUE` (`source`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `subscribe_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `subscribed` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `subscriber` varchar(255) NOT NULL,
  `expiry` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `token_UNIQUE` (`token`),
  UNIQUE KEY `subscriber_UNIQUE` (`subscriber`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) NOT NULL,
  `source` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `Title_UNIQUE` (`Title`),
  UNIQUE KEY `source_UNIQUE` (`source`),
  UNIQUE KEY `description_UNIQUE` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `contact_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*
  Pre-populate posts table with two posts
*/
INSERT INTO `contact`.`posts`
(`title`,
`source`,
`img_source`,
`summary_one`,
`summary_two`,
`published_at`)
VALUES
('Google Search Advanced Tricks','https://localhost:8443/webapp/posts/google-search-advanced-tricks','https://localhost:8443/webapp/resources/img/post1.jpg','If you are the type of person that uses Google often without knowing any search techniques, it can get frustrating filtering through the enourmous list of results.','You can be searching for whichever purpose, school essay, online tutorials, restaurants, etc. This can be very handy!!' ,'2018-02-20');

INSERT INTO `contact`.`posts`
(`title`,
`source`,
`img_source`,
`summary_one`,
`summary_two`,
`published_at`)
VALUES
('OWASP ZAP WEB Vulnerability Scanner', 'https://localhost:8443/webapp/posts/owasp-zap-tutorial', 'https://localhost:8443/webapp/resources/img/post2.jpg', 'OWASP ZAP is one of the world\'s most popular free security tool that is actively maintained by valunteers around the world.', 'OWASP ZAP is the swiss army knife of web assessment tools.It can provide great assistant in automating some of the security\ntesting or payload injection.', '2018-02-22');

