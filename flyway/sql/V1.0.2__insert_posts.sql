use db;
INSERT INTO posts (user_id, body)
VALUES (1, 'test body by 1'),
       (2, 'test body by 2'),
       (3, 'test body by 3'),
       (4, 'test body by 4'),
       (5, 'test body by 5'),
       (1, 'πtest body by 1'),
       (2, 'πtest body by 2'),
       (3, 'π€test body by 3'),
       (4, 'πtest body by 4'),
       (5, 'π€test body by 5'),
       (1, 'user 1π γ«γγζη¨Ώ'),
       (2, 'user 2π γ«γγζη¨Ώ'),
       (3, 'user 3π½ γ«γγζη¨Ώ'),
       (4, 'user 4π  γ«γγζη¨Ώ'),
       (5, 'user 5π γ«γγζη¨Ώ');
