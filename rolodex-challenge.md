# README

Challenge: Rolodex
As a developer, I have been tasked with creating a database model that will be used in a rolodex application. I want to ensure that the database behaves as expected and the necessary actions can be performed on the database instances.

Set Up

Create a new Rails app named 'rolodex_challenge'.
Create the database. The output in the terminal should look like this:
Created database 'rolodex_development'
Created database 'rolodex_test'
Generate a model called Person with a first_name, last_name, and phone. All fields should be strings.
Run a migration to set up the database.
Open up Rails console.
Actions

<!-- Add five family members into the Person table in the Rails console.
Retrieve all the items in the database.
Add yourself to the Person table. -->

```SQL
 3.2.0 :006 > Person.all
  Person Load (0.5ms)  SELECT "people".* FROM "people"
 =>
[#<Person:0x000000010cdbd848
  id: 1,
  first_name: "Kevin",
  last_name: "Carr",
  phone: "8454595874",
  created_at: Thu, 16 Mar 2023 20:15:02.325620000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:15:02.325620000 UTC +00:00>,
 #<Person:0x000000010cdbd708
  id: 2,
  first_name: "Joe",
  last_name: "Moe",
  phone: "8754789632",
  created_at: Thu, 16 Mar 2023 20:16:17.538332000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:16:17.538332000 UTC +00:00>,
 #<Person:0x000000010cdbd5c8
  id: 3,
  first_name: "Ryan",
  last_name: "Reyonalds",
  phone: "1234569874",
  created_at: Thu, 16 Mar 2023 20:17:19.625620000 UTC +00:00,
3.2.0 :007 > Person.create(first_name: 'Joel', last_name: 'Carr', phone: '9571534862')
  TRANSACTION (8.9ms)  BEGIN
  Person Create (10.9ms)  INSERT INTO "people" ("first_name", "last_name", "phone", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Joel"], ["last_name", "Carr"], ["phone", "9571534862"], ["created_at", "2023-03-16 20:20:49.084443"], ["updated_at", "2023-03-16 20:20:49.084443"]]
  TRANSACTION (1.8ms)  COMMIT
 =>
#<Person:0x000000010c295010
 id: 6,
 first_name: "Joel",
 last_name: "Carr",
 phone: "9571534862",
 created_at: Thu, 16 Mar 2023 20:20:49.084443000 UTC +00:00,
 updated_at: Thu, 16 Mar 2023 20:20:49.084443000 UTC +00:00>
3.2.0 :008 >  -->
```

<!-- Retrieve all the entries that have the same last_name as you. -->

```sql
[#<Person:0x000000010cdba288
  id: 1,
  first_name: "Kevin",
  last_name: "Carr",
  phone: "8454595874",
  created_at: Thu, 16 Mar 2023 20:15:02.325620000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:15:02.325620000 UTC +00:00>,
 #<Person:0x000000010cdba148
  id: 6,
  first_name: "Joel",
  last_name: "Carr",
  phone: "9571534862",
  created_at: Thu, 16 Mar 2023 20:20:49.084443000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:20:49.084443000 UTC +00:00>]
3.2.0 :009 >
```

<!-- Update the phone number of the last entry in the database. -->

```SQL
  Person Load (0.5ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]
 =>
#<Person:0x000000010ccd8720
 id: 6,
 first_name: "Joel",
 last_name: "Carr",
 phone: "1234569875",
 created_at: Thu, 16 Mar 2023 20:20:49.084443000 UTC +00:00,
 updated_at: Thu, 16 Mar 2023 20:26:20.806032000 UTC +00:00>
3.2.0 :012 >
```

<!-- Retrieve the first_name of the third Person in the database. -->

```sql
3.2.0 :012 > Person.find(3).first_name
  Person Load (22.3ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
 => "Ryan"
3.2.0 :013 >
```

Stretch Challenges

<!-- Update all the family members with the same last_name as you, to have the same phone number as you. -->

```sql
3.2.0 :017 > same_number.update(phone:my_number)
 =>
[#<Person:0x000000010cd92a80
  id: 1,
  first_name: "Kevin",
  last_name: "Carr",
  phone: "1234569875",
  created_at: Thu, 16 Mar 2023 20:15:02.325620000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:35:19.685291000 UTC +00:00>,
 #<Person:0x000000010cd92940
  id: 6,
  first_name: "Joel",
  last_name: "Carr",
  phone: "1234569875",
  created_at: Thu, 16 Mar 2023 20:20:49.084443000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:26:20.806032000 UTC +00:00>]
3.2.0 :018 >
```

<!-- Remove all family members that do not have your last_name. -->

```sql
3.2.0 :022 > Person.where.not(last_name: 'Carr')
  Person Load (0.4ms)  SELECT "people".* FROM "people" WHERE "people"."last_name" != $1  [["last_name", "Carr"]]
 =>
[#<Person:0x000000010cd9c580
  id: 2,
  first_name: "Joe",
  last_name: "Moe",
  phone: "8754789632",
  created_at: Thu, 16 Mar 2023 20:16:17.538332000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:16:17.538332000 UTC +00:00>,
 #<Person:0x000000010cd9c440
  id: 3,
  first_name: "Ryan",
  last_name: "Reyonalds",
  phone: "1234569874",                                                             expected 1) (ArgumentError)
3.2.0 :025 > not_carr.destroy_all
  TRANSACTION (0.9ms)  BEGIN
  Person Destroy (3.0ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 2]]
  TRANSACTION (6.4ms)  COMMIT
  TRANSACTION (27.6ms)  BEGIN
  Person Destroy (5.9ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 3]]
  TRANSACTION (1.7ms)  COMMIT
  TRANSACTION (2.8ms)  BEGIN
  Person Destroy (2.3ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 4]]
  TRANSACTION (32.5ms)  COMMIT
  TRANSACTION (4.7ms)  BEGIN
  Person Destroy (6.7ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 5]]
  TRANSACTION (2.2ms)  COMMIT
 =>
[#<Person:0x000000010ccde260
  id: 2,
  first_name: "Joe",
  last_name: "Moe",
  phone: "8754789632",
  created_at: Thu, 16 Mar 2023 20:16:17.538332000 UTC +00:00,
  updated_at: Thu, 16 Mar 2023 20:16:17.538332000 UTC +00:00>,
 #<Person:0x000000010ccde120
  id: 3,
  first_name: "Ryan",
  last_name: "Reyonalds",
  phone: "1234569874",
  updated_at: Thu, 16 Mar 2023 20:18:43.398150000 UTC +00:00>]
3.2.0 :026 > Person.all
  Person Load (17.9ms)  SELECT "people".* FROM "people"
 =>
[#<Person:0x000000010ccdf8e0

```
