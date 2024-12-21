CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(20) NOT NULL,
    `last_name` VARCHAR(20) NOT NULL,
    `username` VARCHAR(64) NOT NULL,
    `password` VARCHAR(128) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `schools` (
    `name` VARCHAR(64),
    `type` ENUM('Primary', 'Secondary', 'Higher Education') NOT NULL,
    `location` VARCHAR(20) NOT NULL,
    `year_founded` YEAR NOT NULL,
    PRIMARY KEY (`name`)
);

CREATE TABLE `companies` (
    `name` VARCHAR(64),
    `industry` ENUM('Technology', 'Education', 'Business') NOT NULL,
    `location` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`name`)
);

CREATE TABLE `connections` (
    `user_id` INT AUTO_INCREMENT,
    `school` VARCHAR(64),
    `company` VARCHAR(64),
    `start_school_date` DATE NOT NULL,
    `end_school_date` DATE NOT NULL,
    `degree_type` VARCHAR(4) NOT NULL,
    `start_company_date` DATE NOT NULL,
    `end_company_date` DATE NOT NULL,
    `title` VARCHAR(32) NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`school`) REFERENCES `schools`(`name`),
    FOREIGN KEY (`company`) REFERENCES `companies`(`name`)
);
