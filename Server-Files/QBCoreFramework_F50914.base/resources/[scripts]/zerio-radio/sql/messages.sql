-- DO NOT MODIFY THESE FILES
-- THEY GET AUTOMATICALLY EXECUTED

create table if not exists zerio_radio_messages (
  id int(11) auto_increment not null,

  sender varchar(255) not null,
  receiver varchar(255) not null,

  content text not null,
  isAttachment int(1) not null,
  timestamp int(11) not null,

  unique (id)
);
