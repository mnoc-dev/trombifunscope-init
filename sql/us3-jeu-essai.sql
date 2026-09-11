truncate student restart identity;

insert into student 
(first_name, last_name, nickname, age, description, super_power, picture_path, creation_date) 
values 
('lea', 'L', 'supodora', 20 , 'rousse dôtée d''un odorat surdéveloppé', 'super odorat', 'picturePath4','08/06/2026'),
('helene', 'H', 'sucrerie', 20 , '','','p','2026-09-10'),
('viviane', 'V', 'Vivi', 20 , '','','pp','2026-09-10'),
('melle', 'M', 'DarkGitane', 20, '','','ppp','2026-09-10'),
('dominga', 'D', 'L''exploratrice', 20, '','','pppp','2026-09-10'),

('amine', 'A', 'AmineDaDa', 20, '','','ppppp','2026-09-10'),
('xavier', 'X', 'PhpMan', 20, '','','pppppp','2026-09-10'),
('jonathan', 'J', 'jojo', 20, '','','oo','2026-09-10'),
('mederic', 'M', 'sage', 20, 'dans la fleur de l''âge dôté d''une sagesse intersidérale','super sagesse','picturePath2','08/06/2026'),
('steve', 'S', 'pimsman', 20, '','','ooo','2026-09-10'),

('raphael', 'R', 'prof', 20, '','','oooo','2026-09-10'),
('david', 'D', 'mégadrole', 20, 'son humour fait mouche mais parfois les attirent...','super humour','picturePath3','08/06/2026'),
('samba', 'S', 'le marseillais', 20, '','','ooooo','2026-09-10'),
('rayann', 'R', 'Rayannman', 20, '','','oooooo','2026-09-10'),
('matthieu', 'M', 'Mattman', 20, '','','kk','2026-09-10'),

('thibaut', 'T', 'Tibtib', 20, '','','kkk','2026-09-10');

select first_name, last_name, nickname, age, description, super_power, picture_path, creation_date
from student;
