# README

Story 1: In order to track wildlife sightings, as a user of the API, I need to manage animals.

## Branch: animal-crud-actions

Acceptance Criteria

[x]Create a resource for animal with the following information: common name and scientific binomial
    $ rails g resource Pokedex name:string catagory:string number:integer
    $ rails db:migrate
[x]Can see the data response of all the animals
    $rails routes 
[]Can create a new animal in the database
    > Pokedex.create(name:"Bulbasaur", catagory:"Seed", number:001)
    > Pokedex.create(name:"Charmander", catagory:"Lizard", number:004)
    > Pokedex.create(name:"Squirtle", catagory:"Tiny Turtle", number:007)
    > Pokedex.create(name:"Chikorita", catagory:"Leaf", number:152)
    > Pokedex.create(name:"Cyndaquil", catagory:"Fire Mouse", number:155)
    > Pokedex.create(name:"Totodile", catagory:"Big Jaw", number:158)
[x]Can update an existing animal in the database
    Completed CRUD
[x]Can remove an animal entry in the database
    Completed CRUD
