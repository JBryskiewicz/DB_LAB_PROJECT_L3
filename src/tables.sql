-- Roles table
CREATE table roles (
    role_id int auto_increment,
    role_name varchar(32),
    PRIMARY KEY (role_id)
);

-- Users table
CREATE table users (
    user_id int auto_increment,
    username varchar(64),
    email varchar(254),
    password varchar(254),
    isActive bit,
    PRIMARY KEY (user_id)
);

-- Many to Many connection for users & roles
CREATE table user_role (
    id int auto_increment,
    user_id int not null,
    role_id int not null,
    primary key (id),
    foreign key (user_id) references users (user_id),
    foreign key (role_id) references roles (role_id)
);

-- Races table
CREATE table races (
  race_id int auto_increment,
  name varchar(64),
  walking_speed int,
  dark_vision bit,
  primary key (race_id)
);

-- Character class table
CREATE table classes (
    class_id int auto_increment,
    name varchar(64),
    isCaster bit,
    heavyArmor bit,
    primary key (class_id)
);

-- Features table
CREATE table features (
    feature_id int auto_increment,
    name varchar(64),
    description varchar(254),
    primary key (feature_id)
);

-- Character's core properties
CREATE table characters (
    character_id int auto_increment,
    name varchar(64),
    level int check (level between 1 and 20),
    strength int check (strength between 0 and 20),
    dexterity int check (dexterity between 0 and 20),
    constitution int check (constitution between 0 and 20),
    intelligence int check (intelligence between 0 and 20),
    wisdom int check (wisdom between 0 and 20),
    charisma int check (charisma between 0 and 20),
    user_id int not null,
    race_id int not null,
    class_id int not null,
    primary key (character_id),
    foreign key (user_id) references users (user_id),
    foreign key (race_id) references races (race_id),
    foreign key (class_id) references classes (class_id)
);

-- Many to Many connection for characters & features
CREATE table character_feature (
    id int auto_increment,
    character_id int not null,
    feature_id int not null,
    primary key (id),
    foreign key (character_id) references characters (character_id),
    foreign key (feature_id) references features (feature_id)
);

-- Inventory table
CREATE table inventory (
    character_id int not null,
    type varchar(32),
    capacity int check (capacity between 0 and 500),
    primary key (character_id),
    foreign key (character_id) references characters (character_id)
    ON DELETE CASCADE
);

-- Items table
CREATE table items (
    item_id int auto_increment,
    name varchar(64),
    description varchar(254),
    primary key (item_id)
);

-- Many to Many connection for inventory & items
CREATE table inventory_items (
    id int auto_increment,
    inventory_id int not null,
    item_id int not null,
    primary key (id),
    foreign key (inventory_id) references inventory (character_id),
    foreign key (item_id) references items (item_id)
);
