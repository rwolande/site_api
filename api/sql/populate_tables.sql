INSERT INTO experience (id,title,description,website,image_source,years,open_source)
  VALUES ('1','branch','branch was pretty lit','branchapp.com','branch.png','2014-2017',0),
  ('2','rys','rys','rys.com','.rys.png','2012',0),
  ('3','m','m uni','umich.edu','block_m.png','2011-2016',0),
  ('4','snrlax','snrlax yo','snrlax.com','snrlax.png','2017-',1),
  ('5','ez-scoops','bite-sized scoops','ezskoops.com','ez_brain.png','2017-',1),
  ('6','site','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','rwolan.de','site.png','2017-',0),
  ('7','cocoapods','cp yo','cocoapods.rwolan.de','cocoapods.png','2013-',1),
  ('8','git','git fucking hub','github.com/rwolande','.rys.png','2013-',1),
  ('9','etc','etc desc','etc.com','etc.png','1992-',1);

INSERT INTO skill (id,name,displayed)
  VALUES ('1','Swift',1),
  ('2','Java',1),
  ('3','Sys/Bash',1),
  ('4','Python',1),
  ('5','Ruby',1),
  ('6','Javascript',1),
  ('7','PHP',1),
  ('8','SQL',1),
  ('9','C/C++',1),
  ('10','Obj-C',1),
  ('11','HTML/CSS',1),
  ('12','[...n-1]',1),
  ('13','AWS',0),
  ('14','Guest Lecturer',0),
  ('15','MHacks 8 & MHacks 9 Mentor',0);

INSERT INTO experience_skill (experience_id,skill_id)
  VALUES ('1','1'),
  ('1','2'),
  ('1','3'),
  ('1','7'),
  ('1','8'),
  ('1','12'),
  ('2','7'),
  ('2','8'),
  ('2','10'),
  ('3','1'),
  ('3','2'),
  ('3','4'),
  ('3','5'),
  ('3','6'),
  ('3','8'),
  ('3','9'),
  ('3','11'),
  ('3','12'),
  ('4','1'),
  ('4','12'),
  ('5','1'),
  ('5','3'),
  ('5','4'),
  ('5','8'),
  ('5','12'),
  ('6','3'),
  ('6','4'),
  ('6','6'),
  ('6','11'),
  ('6','12'),
  ('7','1'),
  ('7','3'),
  ('7','5'),
  ('7','10'),
  ('8','1'),
  ('8','3'),
  ('8','4'),
  ('8','11');