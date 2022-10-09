# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all

users = User.create([{first_name: "Test", username: "test", password: "test"},
                    {first_name: "Szilvi", username: "szilvi", password: "haliho"},
                    {first_name: "Szilvi", username: "szilvi1", password: "haliho1"},
                    {first_name: "Szilvi", username: "szilvi2", password: "haliho2"},
                    {first_name: "Szilvi", username: "szilvi3", password: "haliho3"},
                    {first_name: "Szilvi", username: "szilvi4", password: "haliho4"},
                    {first_name: "Szilvi", username: "szilvi5", password: "haliho5"},
                    {first_name: "Szilvi", username: "szilvi6", password: "haliho6"}])

notes = Note.create([{title: "First Note", body: "shopping list: milk, carrots, washing up capsules", user_id: User.find_by(username: "szilvi").id},
{title: "Second Note", 
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
    nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in 
    reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
    Excepteur sint occaecat cupidatat non proident, sunt in culpa qui 
    officia deserunt mollit anim id est laborum.", 
    user_id: User.find_by(username: "szilvi1").id},
{title: "Third Note", body: "shopping list: milk, carrots, washing up capsules", user_id: User.find_by(username: "szilvi2").id},
{title: "Forth Note", body: "birthday party invitees: Noah, Charlotte, Elyse, Oliver", user_id: User.find_by(username: "szilvi3").id},
{title: "Fifth Note", body: "Dinner options: thai soup, chicken tikka, paella", user_id: User.find_by(username: "szilvi4").id},
{title: "Sixth Note", body: "shopping list: milk, carrots, washing up capsules", user_id: User.find_by(username: "szilvi5").id},
{title: "Seventh Note", body: "birthday party invitees: Noah, Charlotte, Elyse, Oliver", user_id: User.find_by(username: "szilvi6").id},
{title: "Eight Note", body: "Dinner options: thai soup, chicken tikka, paella", user_id: User.find_by(username: "szilvi1").id},
{title: "Ninth Note", body: "shopping list: milk, carrots, washing up capsules", user_id: User.find_by(username: "szilvi2").id},
{title: "Tenth Note", body: "Dinner options: thai soup, chicken tikka, paella", user_id: User.find_by(username: "szilvi3").id},
{title:"Eleventh Note", body:"birthday party invitees: Noah, Charlotte, Elyse, Oliver", user_id: User.find_by(username: "szilvi1").id}])