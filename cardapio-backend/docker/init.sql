
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS menu_item;
DROP TABLE IF EXISTS menu_item_size;


CREATE TABLE users(
	id 		 CHAR(36)  NOT NULL,

	name  	 CHAR(80)  NOT NULL,
	email 	 CHAR(150) NOT NULL,
	password CHAR(255) NOT NULL,


	PRIMARY KEY(id)
);


CREATE TABLE menu(
	id 		CHAR(36)  NOT NULL,

	name 	CHAR(100) NOT NULL,
	user_id CHAR(36)  NOT NULL,

	PRIMARY KEY (id)
);


ALTER TABLE menu ADD CONSTRAINT fk_user_menu FOREIGN KEY (user_id) REFERENCES users(id);

CREATE TABLE menu_item(
	id 		CHAR(36)  NOT NULL,

	title   CHAR(150) NOT NULL,
	menu_id CHAR(36)  NOT NULL,

	PRIMARY KEY (id)
);

ALTER TABLE menu_item ADD CONSTRAINT fk_menu_item_menu FOREIGN KEY (menu_id) REFERENCES menu(id);

CREATE TABLE menu_item_size(
	id 	  	CHAR(36) NOT NULL,
	title 	CHAR(50) NOT NULL,
	item_id CHAR(36) NOT NULL,

	PRIMARY KEY (id)
);

ALTER TABLE menu_item_size ADD CONSTRAINT fk_size_item FOREIGN KEY (item_id) REFERENCES menu_item(id);
