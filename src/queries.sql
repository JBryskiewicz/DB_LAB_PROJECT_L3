-- general queries to access all data from the tables
select * from users;
select * from roles;
select * from user_role;

select * from characters;
select * from classes;
select * from races;
select * from features;
select * from character_feature;

select * from inventory;
select * from items;
select * from inventory_items;

-- queries operating on true/false flags
select username, isActive from users where isActive = 0;
select name, isCaster from classes where isCaster = 1;
select name, heavyArmor from classes where heavyArmor = 0;
select name, dark_vision from races where dark_vision = 1;

-- basic queries with logic operators
select * from inventory where capacity < 100;
select * from inventory where capacity <= 100;
select * from races where walking_speed = 25;
select * from races where walking_speed > 25 && races.walking_speed < 35;
select * from races where walking_speed = 25 || races.dark_vision = 1;
select name, strength, intelligence, constitution, wisdom
from characters
where (strength > 16 && intelligence < 16) || (constitution > 16 && wisdom < 16);

-- ordered queries
select character_id, name, level from characters order by level desc;
select * from inventory order by capacity;

-- counting average values
select avg(level) from characters;
select avg(capacity) from inventory;

-- queries with LIKE operator
select name from characters where name like 'ga%';
select * from inventory where type like 'ba%';
select name from items where name like '%or%';

-- JOIN queries
select characters.name, characters.level, inventory.type, inventory.capacity
from characters JOIN inventory on characters.character_id = inventory.character_id
where characters.level = 20;

select c.name as character_name, inv.type as inventory_type, i.name as item_name
from characters c
left join inventory inv on c.character_id = inv.character_id
left join inventory_items inv_items ON inv.character_id = inv_items.inventory_id
left join items i on inv_items.item_id = i.item_id
where c.name like 'a%' || c.name like 'b%';

select u.user_id, u.username as username, r.role_name as role_name
from users u
left join user_role ur on u.user_id = ur.user_id
left join roles r on ur.role_id = r.role_id
where u.user_id < 10
order by r.role_name;

select c.name as character_name, f.name as feature_name
from characters c
left join character_feature cf on c.character_id = cf.character_id
left join features f on cf.feature_id = f.feature_id
where f.name like 'Lucky';

select c.name, u.username
from users u
join characters c on u.user_id = c.user_id
where u.user_id = 23;