-- view for all inactive users
CREATE VIEW inactive_users as
select username, email
from users
where isActive = 0;

drop view inactive_users;

-- view for all users who owns a character above level average (14.24 according to mock data)
CREATE VIEW high_level_players as
select u.username, c.name, c.level
from users u
join characters c on u.user_id = c.user_id
where c.level > (
    select avg(level) from characters
);

drop view high_level_players;

-- view for all users with either guest or user role, ordered by username A-Z
CREATE VIEW lower_ranked_users as
select u.username, u.email ,r.role_name
from users u
join user_role ur on u.user_id = ur.user_id
join roles r on ur.role_id = r.role_id
where r.role_name like 'guest' || r.role_name like 'user'
order by u.username;

drop view lower_ranked_users;

-- view for all users who have Sharpshooter feature and short bow item
CREATE VIEW very_specific_view as
SELECT c.name AS character_name, i.name as item_name, f.name as feature_name
FROM characters c
JOIN inventory_items ii ON c.character_id = ii.inventory_id
JOIN items i ON ii.item_id = i.item_id
JOIN character_feature cf ON c.character_id = cf.character_id
JOIN features f ON cf.feature_id = f.feature_id
WHERE i.name = 'shortbow' AND f.name = 'sharpshooter';

drop view very_specific_view;