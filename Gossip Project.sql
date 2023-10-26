CREATE TABLE `User` (
  `id_user` INTEGER PRIMARY KEY,
  `first_name` STRING,
  `last_name` STRING NOT NULL,
  `description` TEXT,
  `email` STRING,
  `age` INTEGER,
  `id_city` INTEGER
);

CREATE TABLE `City` (
  `id_city` INTEGER PRIMARY KEY,
  `name` STRING,
  `zip_code` STRING
);

CREATE TABLE `Gossip` (
  `id_gossip` INTEGER PRIMARY KEY,
  `title` STRING,
  `content` TEXT,
  `id_user` INTEGER
);

CREATE TABLE `Tag` (
  `id_gossip` INTEGER PRIMARY KEY,
  `title` STRING
);

CREATE TABLE `PrivateMessage` (
  `id_private_message` INTEGER PRIMARY KEY,
  `recipient` STRING,
  `sender` STRING,
  `content` TEXT
);

CREATE TABLE `Comment` (
  `id_comment` INTEGER PRIMARY KEY,
  `content` TEXT,
  `id_gossip` INTEGER,
  `id_user` INTEGER
);

CREATE TABLE `TransitionTagGossip` (
  `id_transition_tag_gossip` INTEGER PRIMARY KEY,
  `id_gossip` INTEGER,
  `id_tag` INTEGER
);

ALTER TABLE `User` ADD FOREIGN KEY (`id_city`) REFERENCES `City` (`id_city`);

ALTER TABLE `Gossip` ADD FOREIGN KEY (`id_user`) REFERENCES `User` (`id_user`);

ALTER TABLE `TransitionTagGossip` ADD FOREIGN KEY (`id_tag`) REFERENCES `Tag` (`id_gossip`);

ALTER TABLE `TransitionTagGossip` ADD FOREIGN KEY (`id_gossip`) REFERENCES `Gossip` (`id_gossip`);

ALTER TABLE `PrivateMessage` ADD FOREIGN KEY (`recipient`) REFERENCES `User` (`id_user`);

ALTER TABLE `PrivateMessage` ADD FOREIGN KEY (`sender`) REFERENCES `User` (`id_user`);

ALTER TABLE `Comment` ADD FOREIGN KEY (`id_gossip`) REFERENCES `Gossip` (`id_gossip`);

ALTER TABLE `Comment` ADD FOREIGN KEY (`id_user`) REFERENCES `User` (`id_user`);
