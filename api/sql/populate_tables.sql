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

INSERT INTO skill (id,stack_group,name,description,duration,start_image_source,current_image_source,displayed)
  VALUES ('1',1,'Swift','I have been using Swift since the day it was released in beta in June of 2014. Objective-C had been my primary mobile language prior, so it was a natural transition.','2014','swift.png','swift.png',1),
  ('2',2,'Obj-C','I have been using Objective-C since the iPhone 1 was released, in which I made sandbox applications for Cydia. Since then I published multiple applications in Obj-C and received my first professional development opportunity after just my Freshman Year, largely due to the Obj-C I had under my belt.','2007','obj_c.png','obj_c.png',1),
  ('3',2,'Java','I more recently forayed into Java, and at this point havem used it for server-side data transactions as well as Mobile Development.','2015','java.png','java.png',1),
  ('4',3,'Python','<py3','2014','python.png','python.png',1),
  ('5',3,'PHP','Recursive AF','2010','php.png','php.png',1),
  ('6',3,'Ruby','But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?','2016','ruby.png','ruby.png',1),
  ('7',4,'SQL','I dig the SQLs','2010','sql.png','sql.png',1),
  ('8',4,'Bash','Smash it yo','2011','bash.png','bash.png',1),
  ('9',4,'Javascript','Not too shabsty','2013','javascript.png','javascript.png',1),
  ('10',4,'HTML/CSS','Yep','2013','sass.png','sass.png',1),
  ('11',5,'C/C++','Since U of M','2011','c.png','c.png',1),
  ('12',5,'AWS','Hull yes','2012','aws.png','aws.png',1),
  ('13',5,'Etc.','Guest speaking, Mentorship @ MHacks, TechArb','Since Birth','etc.png','etc.png',1);

INSERT INTO blog_post (id,title,content,website,image_source)
  VALUES ('1','Everyone is a Designer','Blah Blah ','',''),
  ('2','Native vs Cross-Platform','Blah Blah I have been using Swift since the day it was released in beta in June of','',''),
  ('3','Fuck Trump','Blah Blah Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','',''),
  ('4','Inspired By Nature','Blah Blah ','',''),
  ('5','Swift 4','Blah Blah Swift 4 wasnt even mentioned','','');

INSERT INTO blog_tag (id,title,description)
  VALUES ('1','Nature','Its beautiful'),
  ('2','iOS','Swift,Obj-C,etc.'),
  ('3','WebDev','Blah Blah '),
  ('4','UX','Blah Blah '),
  ('5','Design','Blah Blah '),
  ('6','Workflow','Blah Blah '),
  ('7','Command-Line','Blah Blah '),
  ('8','Food','Mmm'),
  ('9','News','Hype');

INSERT INTO blog_post_tag (post_id,tag_id)
  VALUES ('1','1'),
  ('1','4'),
  ('2','2'),
  ('2','4'),
  ('2','6'),
  ('3','1'),
  ('3','9'),
  ('4','1'),
  ('4','5'),
  ('4','6'),
  ('5','2'),
  ('5','6'),
  ('5','9');

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