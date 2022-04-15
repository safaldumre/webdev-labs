-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name
from users
order by last_name;



-- Exercise 4
select id, user_iD, image_url
FROM posts
Where user_id=26;



-- Exercise 5
select id, user_iD, image_url
FROM posts
Where user_id=26 OR user_id=12;





-- Exercise 6
select count()
From posts;


-- Exercise 7
select comments.user_id, count(*)
from comments
group by user_idorder by count(*) desc;



-- Exercise 8
select posts.id, posts.image_url, posts.user_id, users.first_name, users.last_name 
FROM posts 
inner join users on posts.user_id = users.id 
where users.id =26 or users.id=12;



-- Exercise 9
select posts.id, posts.pub_date, following.following_id 
from posts 
inner join following on posts.user_ID = following.following_id 
where following.user_id=26;


-- Exercise 10

select posts.id, posts.pub_date, followers.following_id, user.username
from posts
inner join following on posts.user_ID = following.following_id
inner join users on posts.user_id = users.id
where following.user_id=26;


-- Exercise 11
insert into bookmarks(user_id, post_id, timestamp) values(26,219,now());
insert into bookmarks(user_id, post_id, timestamp) values(26,220,now());
insert into bookmarks(user_id, post_id, timestamp) values(26,221,now());


-- Exercise 12
Delete from bookmarks where post_id >= 219 and post_id <= 221;



-- Exercise 13
update users
SET email= 'knick2022@gmail.com'
where id=26;



-- Exercise 14
select posts.id, posts.user_id, posts.caption, count(comments.id)
From posts
inner join comments on comments.post_id = post.id
where post.user_id=26
group by posts.id;