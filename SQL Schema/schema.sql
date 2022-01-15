SELECT * FROM subscriptionservice.plan;CREATE TABLE `card` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `card_number` varchar(255) DEFAULT NULL,
  `name_on_card` varchar(255) DEFAULT NULL,
  `valid_until` date DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `is_default` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq5apcc4ddrab8t48q2uqvyquq` (`user_id`),
  CONSTRAINT `FKq5apcc4ddrab8t48q2uqvyquq` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `plan_id` bigint DEFAULT NULL,
  `active` tinyint DEFAULT NULL,
  `subscription_start_date` date DEFAULT NULL,
  `subscription_type` varchar(45) DEFAULT NULL,
  `is_subscription_active` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlu0sv25vofylr3phnsnftsdx1` (`plan_id`),
  CONSTRAINT `FKlu0sv25vofylr3phnsnftsdx1` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `card` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `card_number` varchar(255) DEFAULT NULL,
  `name_on_card` varchar(255) DEFAULT NULL,
  `valid_until` date DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `is_default` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq5apcc4ddrab8t48q2uqvyquq` (`user_id`),
  CONSTRAINT `FKq5apcc4ddrab8t48q2uqvyquq` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

