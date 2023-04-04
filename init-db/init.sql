CREATE TABLE `users` (
    `id` int(11) NOT NULL,
    `username` varchar(50) NOT NULL,
    `first_name` varchar(50) NOT NULL,
    `last_name` varchar(50) NOT NULL,
    `email` varchar(50) NOT NULL
);

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`) VALUES
(1, 'admin', 'harupe', 'namaru', 'admin@gmail.com'),
(2, 'user1', 'kawns', 'fefe', 'retret@gmail.com'),
(3, 'user2', 'fdsat', 'tgrh', 'admretin@gmail.com'),
(4, 'user3', 'sfea', 'htr6', 'tret@gmail.com'),
(5, 'user4', 'grd5', 'gre5', 'tret@gmail.com'),
(6, 'user5', 'grds', 'gre5', 'treh@gmail.com');

ALTER TABLE `users` ADD PRIMARY KEY (`id`);

ALTER TABLE `users` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;