-- DO NOT MODIFY THESE FILES
-- THEY GET AUTOMATICALLY EXECUTED

create table if not exists zerio_radio_contacts (
  id int(11) auto_increment not null,
  identifier varchar(255) not null,

  name varchar(255) not null,
  contact varchar(255) not null,
  latestMessage varchar(255) not null default "No history",

  unique (id)
);
