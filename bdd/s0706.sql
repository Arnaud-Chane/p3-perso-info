CREATE TABLE `users` (
  `id` integer PRIMARY KEY,
  `first_name` varchar(255),
  `last_name` varchar(255),
  `email` varchar(255),
  `address` varchar(255),
  `zip_code` varchar(255),
  `city` varchar(255),
  `job` varchar(255),
  `role` varchar(255),
  `id_taste_sheet` integer,
  `id_creation_workshop` integer,
  `id_taste_profil` integer,
  `id_review` integer,
  `id_wine_selection` integer
);

CREATE TABLE `taste_sheet` (
  `id` integer PRIMARY KEY,
  `id_taste_option` varchar(255)
);

CREATE TABLE `taste_option` (
  `id` integer PRIMARY KEY,
  `name` varchar(255),
  `dosage` integer
);

CREATE TABLE `creation_workshop` (
  `id` integer PRIMARY KEY,
  `id_grape_variety` integer
);

CREATE TABLE `grape_variety` (
  `id` integer PRIMARY KEY,
  `name` varchar(255),
  `dosage` integer
);

CREATE TABLE `taste_profil` (
  `id` integer PRIMARY KEY,
  `name` varchar(255),
  `description` varchar(255),
  `img_creation_workshop` varchar(255),
  `img_wine_selection` varchar(255)
);

CREATE TABLE `review` (
  `id` integer PRIMARY KEY,
  `user_name` varchar(255),
  `user_last_name` varchar(255),
  `user_email` varchar(255),
  `message` varchar(255),
  `rating` integer
);

CREATE TABLE `wine_selection` (
  `id` integer PRIMARY KEY,
  `id_wine` integer
);

CREATE TABLE `wine` (
  `id` integer PRIMARY KEY,
  `name` varchar(255),
  `origin` varchar(255),
  `img_wine` varchar(255),
  `description` varchar(255)
);

CREATE TABLE `img` (
  `id` integer PRIMARY KEY,
  `name` varchar(255),
  `url` varchar(255)
);

CREATE TABLE `description` (
  `id` integer PRIMARY KEY,
  `name` varchar(255),
  `content` varchar(255)
);

ALTER TABLE `users` ADD FOREIGN KEY (`id_taste_sheet`) REFERENCES `taste_sheet` (`id`);

ALTER TABLE `users` ADD FOREIGN KEY (`id_creation_workshop`) REFERENCES `creation_workshop` (`id`);

ALTER TABLE `users` ADD FOREIGN KEY (`id_taste_profil`) REFERENCES `taste_profil` (`id`);

ALTER TABLE `users` ADD FOREIGN KEY (`id_review`) REFERENCES `review` (`id`);

ALTER TABLE `users` ADD FOREIGN KEY (`id_wine_selection`) REFERENCES `wine_selection` (`id`);

ALTER TABLE `taste_option` ADD FOREIGN KEY (`id`) REFERENCES `taste_sheet` (`id_taste_option`);

ALTER TABLE `creation_workshop` ADD FOREIGN KEY (`id_grape_variety`) REFERENCES `grape_variety` (`id`);

ALTER TABLE `wine_selection` ADD FOREIGN KEY (`id`) REFERENCES `wine` (`id`);
