truncate t_student restart identity;

insert into t_student 
(first_name, last_name, nickname, age, description, super_power, picture_path, creation_date) 
values 
('lea', 'L', 'odora', 20 , 'rousse dôtée d''un odorat surdéveloppé', 'super odorat', 'picturePath','08/06/2026'),
('helene', 'H', '', 20 , '','','',''),
('viviane', 'V', '', 20 , '','','',''),
('melle', 'M', '', 20, '','','',''),
('dominga', 'D', '', 20, '','','',''),

('amine', 'A', '', 20, '','','',''),
('xavier', 'X', '', 20, '','','',''),
('jonathan', 'J', '', 20, '','','',''),
('mederic', 'M', 'sage', 20, 'dans la fleur de l'âge dôté d'une sagesse intersidérale','super sagesse','picturePath','08/06/2026'),
('steve', 'S', '', 20, '','','',''),

('raphael', 'R', '', 20, '','','',''),
('david', 'D', 'mégadrole', 20, 'son humour fait mouche mais parfois les attirent...','super humour','picturePath','08/06/2026'),
('samba', 'S', '', 20, '','','',''),
('rayann', 'R', '', 20, '','','',''),
('matthieu', 'M', '', 20, '','','',''),

('thibaut', 'T', '', 20, '','','','');

select first_name, last_name, nickname, age, description, super_power, picture_path, creation_date
from t_student;
