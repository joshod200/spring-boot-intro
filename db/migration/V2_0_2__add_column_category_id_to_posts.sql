ALTER table posts 
ADD category_id int;
ALTER table posts 
ADD foreign key(category_id) 
references categories(id);
