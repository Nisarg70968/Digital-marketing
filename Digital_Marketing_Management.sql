/*

Digital Marketing Management

Phase 0. Pre-Requisite Setup

Phase 1. Master Data Management
- countries
- states
- cities

Phase 2. User Management
- users

Phase 3. Social Media Management
- platforms
- user_platforms
- content_types
- post_types
- platform_post_types
- post_content_types






## Explanation :

Phase 0. Pre-Requisite Setup
- System basic requirements.

Phase 1. Master Data Management
- User location data store karne ke liye countries, states, cities tables use ki gayi hai.
taki pata chale konsa user kaha se system use kar raha hai aur kaha usage jyada hai.

```
Examples :
- Country : India, USA
- State : Gujarat, Maharashtra
- City : Surat, Valsad
```

Phase 2. User Management
- Users ke basic details store karne ke liye users table use kiya gaya hai.
taki user system me register aur manage ho sake.

Phase 3. Social Media Management
- Social media posts aur content manage karne ke liye ye tables use hoti hai.

```
- platforms : Instagram, YouTube, LinkedIn
- user_platforms : user konsa platform use karta hai
- content_types : image, video, text
- post_types : reel, story, post
- platform_post_types : konsa platform konse post types support karta hai
- post_content_types : kis post me konsa content type use hota hai

*/








# Digital Marketing Management

# PHASE 0 : PRE-REQUISITE

* System Basic Setup
* Database Configuration
* Project Initialization

# PHASE 1 : MASTER DATA MANAGEMENT

## COUNTRIES

* id
* name
* code
* is_active
* created_at
* updated_at

## STATES

* id
* country_id
* name
* code
* is_active
* created_at
* updated_at

## CITIES

* id
* state_id
* name
* is_active
* created_at
* updated_at

# PHASE 2 : USER MANAGEMENT

## USERS

* id
* country_id
* state_id
* city_id
* name
* email
* password
* is_active
* created_at
* updated_at

# PHASE 3 : SOCIAL MEDIA MANAGEMENT

## PLATFORMS

* id
* name
* is_active
* created_at
* updated_at

## USER_PLATFORMS

* id
* user_id
* platform_id
* username
* is_active
* created_at
* updated_at

## CONTENT_TYPES

* id
* name
* is_active
* created_at
* updated_at

## POST_TYPES

* id
* name
* is_active
* created_at
* updated_at

## PLATFORM_POST_TYPES

* id
* platform_id
* post_type_id
* is_active
* created_at
* updated_at

## POST_CONTENT_TYPES

* id
* post_type_id
* content_type_id
* is_active
* created_at
* updated_at



-- Phase 0 - Setup


-- Phase 1 - Master Data

create table countries (
  id INT,
  name varchar(100),
  code varchar(10),
  is_active boolean,
  created_at timestamp,
  updated_at timestamp
);

create table states (
  id INT,
  country_id INT,
  name varchar(100),
  code varchar(10),
  is_active boolean,
  created_at timestamp,
  updated_at timestamp
);

create table cities (
  id INT,
  state_id INT,
  name varchar(100),
  is_active boolean,
  created_at timestamp,
  updated_at timestamp
);


-- Phase 2 - Users

create table users (
  id INT,
  country_id INT,
  state_id INT,
  city_id INT,
  name varchar(100),
  email varchar(100),
  password varchar(100),
  is_active boolean,
  created_at timestamp,
  updated_at timestamp
);


-- Phase 3 - Social Media

create table platforms (
  id INT,
  name varchar(100),
  is_active boolean,
  created_at timestamp,
  updated_at timestamp
);

create table user_platforms (
  id INT,
  user_id INT,
  platform_id INT,
  username varchar(100),
  is_active boolean,
  created_at timestamp,
  updated_at timestamp
);

create table content_types (
  id INT,
  name varchar(100),
  is_active boolean,
  created_at timestamp,
  updated_at timestamp
);

create table post_types (
  id INT,
  name varchar(100),
  is_active boolean,
  created_at timestamp,
  updated_at timestamp
);

create table platform_post_types (
  id INT,
  platform_id INT,
  post_type_id INT,
  is_active boolean,
  created_at timestamp,
  updated_at timestamp
);

create table post_content_types (
  id INT,
  post_type_id INT,
  content_type_id INT,
  is_active boolean,
  created_at timestamp,
  updated_at timestamp
);