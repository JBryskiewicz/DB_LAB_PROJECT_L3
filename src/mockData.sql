# mock roles
INSERT INTO roles (role_name) VALUES ('admin'), ('user'), ('guest');

# mock users
INSERT INTO
    users (username, email, password, isActive)
VALUES
    ('john_doe', 'john@example.com', 'password123', 1),
    ('jane_doe', 'jane@example.com', 'password456', 1),
    ('bob_smith', 'bob@example.com', 'password789', 0),
    ('alice_johnson', 'alice@example.com', 'passwordabc', 1),
    ('mike_adams', 'mike@example.com', 'passworddef', 1),
    ('sara_wilson', 'sara@example.com', 'passwordghi', 1),
    ('david_miller', 'david@example.com', 'passwordjkl', 1),
    ('emily_thompson', 'emily@example.com', 'passwordmno', 1),
    ('chris_jackson', 'chris@example.com', 'passwordpqr', 1),
    ('lisa_roberts', 'lisa@example.com', 'passwordstu', 0),
    ('kevin_anderson', 'kevin@example.com', 'passwordvwx', 1),
    ('amy_clark', 'amy@example.com', 'passwordyz', 1),
    ('matt_harris', 'matt@example.com', 'password1234', 1),
    ('jessica_brown', 'jessica@example.com', 'password5678', 1),
    ('ryan_davis', 'ryan@example.com', 'password9012', 1),
    ('natalie_wilson', 'natalie@example.com', 'password3456', 1),
    ('sam_green', 'sam@example.com', 'password7890', 1),
    ('erin_jones', 'erin@example.com', 'password12345', 1),
    ('peter_young', 'peter@example.com', 'password67890', 1),
    ('olivia_hall', 'olivia@example.com', 'password54321', 1),
    ('jacob_martin', 'jacob@example.com', 'password09876', 0),
    ('hannah_king', 'hannah@example.com', 'password65432', 1),
    ('andrew_baker', 'andrew@example.com', 'password24680', 1);


# Assign roles to users
INSERT INTO
    user_role (user_id, role_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(5, 2),
(6, 3),
(7, 1),
(8, 2),
(9, 3),
(10, 1),
(11, 2),
(12, 3),
(13, 1),
(14, 2),
(15, 3),
(16, 1),
(17, 2),
(18, 3),
(19, 1),
(20, 2),
(21, 3),
(22, 1),
(23, 2);

# mock races
INSERT INTO
    races (name, walking_speed, dark_vision)
VALUES
    ('Human', 30, 0),
    ('Elf', 35, 1),
    ('Dwarf', 25, 0),
    ('Halfling', 25, 0),
    ('Half-Orc', 30, 0);

# mock classes
INSERT INTO
    classes (name, isCaster, heavyArmor)
VALUES
    ('Barbarian', 0, 1),
    ('Bard', 1, 0),
    ('Cleric', 1, 0),
    ('Druid', 1, 0),
    ('Fighter', 0, 1),
    ('Monk', 0, 0),
    ('Paladin', 0, 1),
    ('Ranger', 0, 0),
    ('Rogue', 0, 0),
    ('Sorcerer', 1, 0),
    ('Warlock', 1, 0),
    ('Wizard', 1, 0);

# mock features
INSERT INTO
    features (name, description)
VALUES
    ('Great Weapon Master', 'You have learned to put the weight of a weapon to your advantage, letting its momentum empower your strikes.'),
    ('Sharpshooter', 'You have mastered ranged weapons and can make shots that others find impossible.'),
    ('Lucky', 'You have inexplicable luck that seems to kick in at just the right moment.'),
    ('Mobile', 'You are exceptionally speedy and agile. You can dash through a battle with ease.'),
    ('Tough', 'Your toughness and resolve allow you to shrug off injuries that would cripple others.');

# mock characters
INSERT INTO
    characters (name, level, strength, dexterity, constitution, intelligence, wisdom, charisma, user_id, race_id, class_id)
VALUES
    ('Aragorn', 10, 18, 14, 16, 12, 14, 16, 1, 2, 7),
    ('Gandalf', 20, 10, 12, 14, 18, 20, 16, 2, 2, 12),
    ('Legolas', 15, 14, 20, 12, 14, 16, 16, 3, 2, 8),
    ('Gimli', 12, 18, 10, 18, 12, 14, 10, 4, 3, 1),
    ('Frodo Baggins', 8, 10, 16, 12, 14, 16, 14, 5, 2, 9),
    ('Samwise Gamgee', 8, 12, 14, 14, 12, 16, 14, 6, 2, 3),
    ('Gollum', 5, 10, 18, 12, 14, 10, 8, 7, 5, 10),
    ('Bilbo Baggins', 10, 8, 16, 10, 16, 14, 16, 8, 2, 4),
    ('Thorin Oakenshield', 15, 20, 12, 18, 12, 14, 12, 9, 3, 1),
    ('Bard the Bowman', 12, 16, 14, 16, 12, 14, 14, 10, 2, 8),
    ('Smaug', 20, 20, 12, 20, 16, 18, 16, 11, 4, 11),
    ('Elrond', 18, 14, 16, 16, 18, 18, 18, 12, 2, 3),
    ('Galadriel', 20, 12, 16, 14, 20, 20, 20, 13, 2, 2),
    ('Sauron', 20, 20, 16, 20, 20, 20, 20, 14, 5, 12),
    ('Gimli son of Gloin', 18, 20, 12, 18, 12, 14, 12, 15, 3, 1),
    ('Faramir', 12, 14, 16, 14, 16, 16, 16, 16, 2, 7),
    ('Boromir', 14, 18, 14, 16, 12, 14, 14, 17, 2, 7),
    ('Denethor', 15, 16, 14, 16, 14, 14, 14, 18, 2, 11),
    ('Eowyn', 10, 16, 16, 14, 12, 16, 14, 19, 2, 7),
    ('Theoden', 12, 16, 14, 16, 14, 14, 14, 20, 2, 10),
    ('Grima Wormtongue', 8, 10, 16, 12, 16, 14, 14, 21, 2, 9),
    ('Treebeard', 16, 20, 12, 20, 14, 18, 16, 22, 2, 6),
    ('Gimli son of Gloin', 18, 20, 12, 18, 12, 14, 12, 23, 3, 1),
    ('Aragorn', 20, 20, 20, 20, 20, 20, 20, 20, 2, 7),
    ('Gandalf the Grey', 20, 20, 20, 20, 20, 20, 20, 23, 2, 12);

#mock many to many connection for characters & features
INSERT INTO
    character_feature (character_id, feature_id)
VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 1), (7, 2), (8, 3), (9, 4), (10, 5),
    (11, 1), (12, 2), (13, 3), (14, 4), (15, 5), (16, 1), (17, 2), (18, 3), (19, 4), (20, 5),
    (21, 1), (22, 2), (23, 3), (24, 4), (25, 5),
    (2, 3), (3, 4), (4, 5), (5, 1), (6, 2), (7, 4), (8, 5), (9, 1), (10, 2),
    (11, 4), (12, 5), (13, 1), (14, 2), (15, 4), (16, 5), (17, 1), (18, 2), (19, 3),
    (20, 1), (21, 2), (22, 4), (23, 5), (25, 1);

# mock inventory
INSERT INTO
    inventory (character_id, type, capacity)
VALUES
    (1, 'Backpack', 30), (2, 'Bag of Holding', 100), (3, 'Backpack', 30), (4, 'Bag of Holding', 100), (5, 'Portable Hole', 500),
    (6, 'Backpack', 30), (7, 'Bag of Holding', 100), (8, 'Backpack', 30), (9, 'Bag of Holding', 100), (10, 'Portable Hole', 500),
    (11, 'Backpack', 30), (12, 'Bag of Holding', 100), (13, 'Backpack', 30), (14, 'Bag of Holding', 100), (15, 'Portable Hole', 500),
    (16, 'Backpack', 30), (17, 'Bag of Holding', 100), (18, 'Backpack', 30), (19, 'Bag of Holding', 100), (20, 'Portable Hole', 500),
    (21, 'Backpack', 30), (22, 'Bag of Holding', 100), (23, 'Backpack', 30), (24, 'Bag of Holding', 100), (25, 'Portable Hole', 500);

# mock items
INSERT INTO
    items (name, description)
VALUES
    ('Potion of Healing', 'A magical potion that restores hit points when consumed.'),
    ('Longsword', 'A versatile and reliable melee weapon.'),
    ('Shortbow', 'A small and nimble ranged weapon ideal for quick attacks.'),
    ('Chain Mail', 'Heavy armor made of interlocking metal rings.'),
    ('Spellbook', 'A book used by spellcasters to record and prepare spells.'),
    ('Holy Symbol', 'An object representing a deity used by clerics and paladins.'),
    ('Rope, Hempen', 'A sturdy rope made from hemp fibers.'),
    ('Torch', 'A simple source of light.'),
    ('Backpack', 'A sturdy bag for carrying equipment and supplies.'),
    ('Climber\'s Kit', 'A set of tools and gear for climbing.');

# mock many to many connection for items & inventory
INSERT INTO
    inventory_items (inventory_id, item_id)
VALUES
    (1, 1), (1, 2),
    (2, 3), (2, 4),
    (3, 5), (3, 6),
    (4, 7), (4, 8),
    (5, 9), (5, 10),
    (6, 1), (6, 2),
    (7, 3), (7, 4),
    (8, 5), (8, 6),
    (9, 7), (9, 8),
    (10, 9), (10, 10),
    (11, 1), (11, 2),
    (12, 3), (12, 4),
    (13, 5), (13, 6),
    (14, 7), (14, 8),
    (15, 9), (15, 10),
    (16, 1), (16, 2),
    (17, 3), (17, 4),
    (18, 5), (18, 6),
    (19, 7), (19, 8),
    (20, 9), (20, 10),
    (21, 1), (21, 2),
    (22, 3), (22, 4),
    (23, 5), (23, 6),
    (24, 7), (24, 8),
    (25, 9), (25, 10);