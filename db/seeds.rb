# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all

users = User.create([{username: "test", password: "test", age: 35},
                    {username: "szilvi", password: "haliho", age: 45},
                    {username: "szilvi1", password: "haliho1", age: 32},
                    {username: "szilvi2", password: "haliho2", age: 42},
                    {username: "szilvi3", password: "haliho3", age: 25},
                    {username: "szilvi4", password: "haliho4", age: 15},
                    {username: "szilvi5", password: "haliho5", age: 87},
                    {username: "szilvi6", password: "haliho6", age: 65}])

notes = Note.create([{title: "Intelligentsia", body: "friendly teddy", user_id: User.find_by(username: "szilvi").id},
{title: "Pinterest", body: "cuddly teddy", user_id: User.find_by(username: "szilvi1").id},
{title: "Paleo", body: "friendly teddy", user_id: User.find_by(username: "szilvi2").id},
{title: "Viral", body: "fluffy teddy", user_id: User.find_by(username: "szilvi3").id},
{title: "Everyday", body: "cuddly teddy", user_id: User.find_by(username: "szilvi4").id},
{title: "Hoodie", body: "friendly teddy", user_id: User.find_by(username: "szilvi5").id},
{title: "Ethical", body: "fluffy teddy", user_id: User.find_by(username: "szilvi6").id},
{title: "Hella", body: "cuddly teddy", user_id: User.find_by(username: "szilvi1").id},
{title: "Butcher", body: "friendly teddy", user_id: User.find_by(username: "szilvi2").id},
{title: "Fussili", body: "cuddly teddy", user_id: User.find_by(username: "szilvi3").id},
{title:"Curl", body:"fluffy teddy", user_id: User.find_by(username: "szilvi1").id}])