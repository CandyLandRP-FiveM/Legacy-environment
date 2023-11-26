-- DO NOT MODIFY THESE FILES
-- THEY GET AUTOMATICALLY EXECUTED

create table if not exists zerio_radio_settings (
    id int(11) auto_increment not null,
    identifier varchar(255) not null,

    size int(3) not null default (20.0),
    volume int(3) not null default (100),
    callsign varchar(100) not null default (""),

    theme int(1) not null default (1),
    useMouse int(1) not null default (1),
    anonymous int(1) not null default (0),
    allowDrag int(1) not null default (0),
    memberList int(1) not null default (1),

    positionX varchar(64) not null default ("100px"),
    positionY varchar(64) not null default ("128px"),

    position2X varchar(64) not null default ("32px"),
    position2Y varchar(64) not null default ("32px"),

    unique (id, identifier)
);
