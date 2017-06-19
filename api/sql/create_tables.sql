CREATE TABLE experience (
  id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL,
  description varchar(5000) NOT NULL,
  website varchar(255) NOT NULL DEFAULT '',
  image_source varchar(255) NOT NULL DEFAULT '',
  years varchar(255) NOT NULL DEFAULT '2017-',
  open_source tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
);

CREATE TABLE skill (
  id int(11) NOT NULL AUTO_INCREMENT,
  stack_group int(11) NOT NULL,
  name varchar(255)  NOT NULL DEFAULT '',
  description varchar(1000)  NOT NULL DEFAULT '',
  duration varchar(30) NOT NULL DEFAULT 'NEW',
  start_image_source varchar(255) NOT NULL DEFAULT '',
  current_image_source varchar(255) NOT NULL DEFAULT '',
  displayed tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (id)
);

CREATE TABLE experience_skill (
  experience_id int(11) NOT NULL,
  skill_id int(11) NOT NULL,
  KEY experience_fk (experience_id),
  KEY skill_fk (skill_id),
  CONSTRAINT skill_fk FOREIGN KEY (skill_id) REFERENCES skill (id) ON DELETE CASCADE,
  CONSTRAINT experience_fk FOREIGN KEY (experience_id) REFERENCES experience (id)
);

CREATE TABLE blog_post (
  id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL,
  content varchar(5000) NOT NULL,
  website varchar(255) NOT NULL DEFAULT '',
  image_source varchar(255) NOT NULL DEFAULT '',
  creation_time datetime NOT NULL DEFAULT GETDATE(),
  private tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
);

CREATE TABLE blog_tag (
  id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL,
  description varchar(5000) NOT NULL DEFAULT '',
  hex varchar(30) NOT NULL DEFAULT '000',
  website varchar(255) NOT NULL DEFAULT '',
  image_source varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
);

CREATE TABLE blog_post_tag (
  post_id int(11) NOT NULL,
  tag_id int(11) NOT NULL,
  KEY post_fk (post_id),
  KEY tag_fk (tag_id),
  CONSTRAINT post_fk FOREIGN KEY (post_id) REFERENCES blog_post (id),
  CONSTRAINT tag_fk FOREIGN KEY (tag_id) REFERENCES blog_tag (id)
);

-- CREATE TABLE event (
--   id int(11) NOT NULL AUTO_INCREMENT,
--   user_id varchar(255) DEFAULT NULL,
--   short_desc varchar(255) DEFAULT NULL,
--   description varchar(255) DEFAULT NULL,
--   start_date datetime DEFAULT NULL,
--   end_date datetime DEFAULT NULL,
--   max_volunteers_needed int(11) DEFAULT NULL,
--   current_num_volunteers int(11) DEFAULT NULL,
--   close_date datetime DEFAULT NULL,
--   creator_id int(11) DEFAULT NULL,
--   created_date datetime DEFAULT NULL,
--   last_updated_date datetime DEFAULT NULL,
--   pic_url varchar(255) DEFAULT NULL,
--   street_addr varchar(255) DEFAULT NULL,
--   city varchar(255) DEFAULT NULL,
--   state varchar(255) DEFAULT NULL,
--   zipcode varchar(10) DEFAULT NULL,
--   organization varchar(255) DEFAULT NULL,
--   lat float(20,17) DEFAULT NULL,
--   lon float(20,17) DEFAULT NULL,
--   PRIMARY KEY (id),
--   KEY creator_id (creator_id),
--   CONSTRAINT event_ibfk_1 FOREIGN KEY (creator_id) REFERENCES user (id)
-- );
