truncate student restart identity;

insert into student 
(first_name, last_name, nickname, age, description, super_power, picture_path, creation_date) 
values 
('lea', 'L', 'odora', 20 , 'rousse dôtée d''un odorat surdéveloppé', 'super odorat', 'picturePath','08/06/2026'),
('helene', 'H', 'popo', 20 , '','','','2026-09-10'),
('viviane', 'V', 'papa', 20 , '','','','2026-09-10'),
('melle', 'M', 'pepe', 20, '','','','2026-09-10'),
('dominga', 'D', 'pipi', 20, '','','','2026-09-10'),

('amine', 'A', 'pupu', 20, '','','','2026-09-10'),
('xavier', 'X', 'pypy', 20, '','','','2026-09-10'),
('jonathan', 'J', 'prpr', 20, '','','','2026-09-10'),
('mederic', 'M', 'sage', 20, 'dans la fleur de l''âge dôté d''une sagesse intersidérale','super sagesse','picturePath','08/06/2026'),
('steve', 'S', 'pgpg', 20, '','','','2026-09-10'),

('raphael', 'R', 'psps', 20, '','','','2026-09-10'),
('david', 'D', 'mégadrole', 20, 'son humour fait mouche mais parfois les attirent...','super humour','picturePath','08/06/2026'),
('samba', 'S', 'ptpt', 20, '','','','2026-09-10'),
('rayann', 'R', 'pmpm', 20, '','','','2026-09-10'),
('matthieu', 'M', 'pkpk', 20, '','','','2026-09-10'),

('thibaut', 'T', 'pnpn', 20, '','','','2026-09-10');

select first_name, last_name, nickname, age, description, super_power, picture_path, creation_date
from student;
