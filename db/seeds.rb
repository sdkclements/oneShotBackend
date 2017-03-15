# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tab.destroy_all
Shot.destroy_all
Chaser.destroy_all

Tab.create(name: "Sports", description: "For all things sportsball-related.")
Tab.create(name: "Movies", description: "Have you ever even watched a film before?")
Tab.create(name: "Politics", description: "Because every forum needs a place for people to complain about politics.")
Tab.create(name: "Video Games", description: "From 8-bit to 4K, playing all day long")
Tab.create(name: "Music", description: "Jamz, tunez, whatever you wanna call them")

Shot.create(title: "Go Patriots, am I right?", author: "TomB", content: "We, I mean, the Patriots are so incredible.", tab_id: 1)
Shot.create(title: "I don't know anything about sports", author: "CluelessGuy", content: "Don't you just carry the ball and score the points?", tab_id: 1)
Shot.create(title: "Star Wars Episode VIII", author: "xXxDarthVaderBoixXx", content: "you guys star wars is gonna be so hype, kylo ren is my hero!!!1!", tab_id: 2)
Shot.create(title: "Favorite Tarantino movie?", author: "SayWhatAgain", content: "What is your favorite Tarantino movie? Mine's definitely Pulp Fiction, because it's the best one.", tab_id: 2)
Shot.create(title: "Good scary movies to watch?", author: "EasilyTerrified", content: "I'm tired of missing out on an entire genre of movie. I wanna be scared! Suggest some scary movies for me to watch guys.", tab_id: 2)
Shot.create(title: "Obligatory f*** Trump thread here", author: "LiberalLover", content: "What's a good Internet forum without a bunch of people making fun of Trump?", tab_id: 3)
Shot.create(title: "Obligatory Trump is great post", author: "DownWithDems", content: "What's a good Internet forum without a place to support our great leader, Trump? Bash some Democrat cucks while you're at it!", tab_id: 3)
