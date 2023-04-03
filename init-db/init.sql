CREATE TABLE `user` (
    `id` int(11) NOT NULL,
    `username` varchar(50) NOT NULL,
    `firstname` varchar(50) NOT NULL,
    `lastname` varchar(50) NOT NULL,
    `email` varchar(50) NOT NULL
);

INSERT INTO `user` (`id`, `username`, `firstname`, `lastname`, `email`)
VALUES
    (1, 'test1', 'harama', 'wikiri', 'hara@gmail.com'),
    (2, 'test2', 'horo', 'maro', 'horo@gmail.com'),
    (3, 'test3', 'tataya', 'momochi', 'tata@gmail.com'),
    (4, 'test4', 'ruty', 'mili', 'mili@gmail.com'),
    (5, 'test5', 'wachi', 'goamon', 'wachi@gmail.com');

ALTER TABLE `user`
ADD
    PRIMARY KEY (`id`);

ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 13;
COMMIT;