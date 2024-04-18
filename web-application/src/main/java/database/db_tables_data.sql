CREATE TABLE `departments_lesson6_2023_2024` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `students_lesson6_2023_2024` (
  `am` varchar(45) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`am`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `FK_students_lesson6_2023_2024_1` (`department_id`),
  CONSTRAINT `FK_students_lesson6_2023_2024_1` FOREIGN KEY (`department_id`) REFERENCES `departments_lesson6_2023_2024` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `users_lesson6_2023_2024` (
  `username` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `departments_lesson6_2023_2024` (`id`,`name`) VALUES (1,'Accounting and Finance');
INSERT INTO `departments_lesson6_2023_2024` (`id`,`name`) VALUES (2,'Business Administration');
INSERT INTO `departments_lesson6_2023_2024` (`id`,`name`) VALUES (3,'Economics');
INSERT INTO `departments_lesson6_2023_2024` (`id`,`name`) VALUES (4,'International and European Economic Studies');
INSERT INTO `departments_lesson6_2023_2024` (`id`,`name`) VALUES (5,'Informatics');
INSERT INTO `departments_lesson6_2023_2024` (`id`,`name`) VALUES (6,'Management Science and Technology');
INSERT INTO `departments_lesson6_2023_2024` (`id`,`name`) VALUES (7,'Marketing and Communication');
INSERT INTO `departments_lesson6_2023_2024` (`id`,`name`) VALUES (8,'Statistics');

INSERT INTO `users_lesson6_2023_2024` (`username`,`name`,`surname`,`email`,`password`) VALUES ('jdoe','Jim','Doe','jdoe@example.com','1234');