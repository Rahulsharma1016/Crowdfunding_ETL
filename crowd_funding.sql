Drop table if exists "campaign" ;







Create table "category" (
"category_id" varchar(15) Not NULL,
"last_name" , 
"category" varchar (64) Not NULL,
CONSTRAINT "pk_category" PRIMARY KEY (
"category_id"
  )
);

Create table "subcategory" (
"subcategory_id" varchar(15) Not NULL, 
"subcategory" varchar (64) Not NULL,
CONSTRAINT "pk_subcategory" PRIMARY KEY (
"subcategory_id"
  )
);


Create table "contacts" (
"contact_id" int NOT NULL, 
"first_name" varchar(64) Not NULL,
"last_name" varchar(64) Not NULL,
"email" varchar(264) Not NULL,
CONSTRAINT "pk_contacts" PRIMARY KEY (
"contact_id" 
  )
);

Create table "campaign" (
"cf_id" int NOT NULL,
"contact_id" int NOT NULL,
"company_name" varchar(264) NOT NULL,
"description" varchar(264) NOT NULL,
"goal" numeric(10, 2) NOT NULL,
"pledged" numeric(10, 2) NOT NULL,
"outcome" varchar(264) NOT NULL,
"backers_count" int not null,
"country" varchar(264) NOT NULL,
"currency" varchar(64) NOT NULL,
"launched_date" varchar(264) not null,
"end_date" varchar(264) not null, 
"category_id" varchar(264) NOT NULL,
"subcategory_id" varchar(264) NOT NULL,

CONSTRAINT "pk_campaign" PRIMARY KEY ("cf_id"),
    FOREIGN KEY ("contact_id") REFERENCES "contacts" ("contact_id"),
    FOREIGN KEY ("category_id") REFERENCES "category" ("category_id"),
    FOREIGN KEY ("subcategory_id") REFERENCES "subcategory" ("subcategory_id")

 
);



select * from campaign;

select * from contacts;

select * from category;

select * from subcategory;




















