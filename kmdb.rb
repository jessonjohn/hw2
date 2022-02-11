# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
Movie.destroy_all
Person.destroy_all
Role.destroy_all

# TODO!
#puts Movie.all.count

# Generate models and tables, according to the domain model
# TODO!

# Insert data into your database that reflects the sample data shown above

values = {
    name: "Christopher Nolan"   
}
christopher_nolan = Person.new(values)
christopher_nolan.save

values = {
    title: "Batman Begins", 
    year_released: 2005, 
    rated: "PG-13", 
    person_id: christopher_nolan.id
}
batman_begins = Movie.new(values)
batman_begins.save

values = {
    title: "The Dark Knight", 
    year_released: 2008, 
    rated: "PG-13", 
    person_id: christopher_nolan.id
}
the_dark_knight = Movie.new(values)
the_dark_knight.save

values = {
    title: "The Dark Knight Rises", 
    year_released: 2012, 
    rated: "PG-13", 
    person_id: christopher_nolan.id
}
the_dark_knight_rises = Movie.new(values)
the_dark_knight_rises.save

#puts Movie.all.count


# Person

values = {
    name: "Christian Bale"   
}
christian_bale = Person.new(values)
christian_bale.save

values = {
    name: "Micheal Caine"
}
micheal_caine = Person.new(values)
micheal_caine.save

values = {
    name: "Liam Neeson"
}
liam_neeson = Person.new(values)
liam_neeson.save

values = {
    name: "Katie Holmes"
}
katie_holmes = Person.new(values)
katie_holmes.save

values = {
    name: "Gary Oldman"
}
gary_oldman = Person.new(values)
gary_oldman.save

values = {
    name: "Heath Ledger"
}
heath_ledger = Person.new(values)
heath_ledger.save

values = {
    name: "Aaron Eckhart"
}
aaron_eckhart = Person.new(values)
aaron_eckhart.save

values = {
    name: "Maggie Gylenhaal"
}
maggie_gylenhaal = Person.new(values)
maggie_gylenhaal.save

values = {
    name: "Tom Hardy"
}
tom_hardy = Person.new(values)
tom_hardy.save

values = {
    name: "Joseph Gordonn-Levitt"
}
joseph_gordon_levitt = Person.new(values)
joseph_gordon_levitt.save

values = {
    name: "Anne Hathaway" 
}
anne_hathaway = Person.new(values)
anne_hathaway.save

# Roles

values = {
    movie_id: batman_begins.id,
    person_id: christian_bale.id,
    character_name: "Bruce Wayne"
}
bruce_wayne = Role.new(values)
bruce_wayne.save

values = {
    movie_id: batman_begins.id,
    person_id: micheal_caine.id,
    character_name: "Alfred" 
}
alfred = Role.new(values)
alfred.save

values = {
    movie_id: batman_begins.id,
    person_id: liam_neeson.id,
    character_name: "Ra's Al Ghul" 
}
ra_al_ghul = Role.new(values)
ra_al_ghul.save

values = {
    movie_id: batman_begins.id,
    person_id: katie_holmes.id,
    character_name: "Rachel Dawes"
}
rachel_dawes = Role.new(values)
rachel_dawes.save

values = {
    movie_id: batman_begins.id,
    person_id: gary_oldman.id,
    character_name: "Commissioner Gordon"
}
commissioner_gordon_1 = Role.new(values)
commissioner_gordon_1.save

values = {
    movie_id: the_dark_knight.id,
    person_id: christian_bale.id,
    character_name: "Bruce Wayne"
}
bruce_wayne_1 = Role.new(values)
bruce_wayne_1.save



values = {
    movie_id: the_dark_knight.id,
    person_id: heath_ledger.id,
    character_name: "Joker"
}
joker = Role.new(values)
joker.save

values = {
    movie_id: the_dark_knight.id,
    person_id: aaron_eckhart.id,
    character_name: "Harvey Dent"
}
harvey_dent = Role.new(values)
harvey_dent.save

values = {
    movie_id: the_dark_knight.id,
    person_id: micheal_caine.id,
    character_name: "Alfred" 
}
alfred_1 = Role.new(values)
alfred_1.save

values = {
    movie_id: the_dark_knight.id,
    person_id: maggie_gylenhaal.id,
    character_name: "Rachel Dawes"
}
rachel_dawes_1 = Role.new(values)
rachel_dawes_1.save



values = {
    movie_id: the_dark_knight_rises.id,
    person_id: christian_bale.id,
    character_name: "Bruce Wayne"
}
bruce_wayne_2 = Role.new(values)
bruce_wayne_2.save

values = {
    movie_id: the_dark_knight_rises.id,
    person_id: gary_oldman.id,
    character_name: "Commissioner Gordon"
}
commissioner_gordon_2 = Role.new(values)
commissioner_gordon_2.save


values = {
    movie_id: the_dark_knight_rises.id,
    person_id: tom_hardy.id,
    character_name: "Bane"
}
bane = Role.new(values)
bane.save

values = {
    movie_id: the_dark_knight_rises.id,
    person_id: joseph_gordon_levitt.id,
    character_name: "John Blake"
}
role = Role.new(values)
role.save

values = {
    movie_id: the_dark_knight_rises.id,
    person_id: anne_hathaway.id,
    character_name: "Selina Kyle"
}
selina_kyle = Role.new(values)
selina_kyle.save

# movies = Movie.where({title: "Batman Begins"})
# puts movies.inspect
# Do not use hard-coded foreign key IDs.
# TODO!

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""


# Query the movies data and loop through the results to display the movies output
# TODO!

movies_all = Movie.all

for movie in movies_all
    director = Person.where({id: movie.person_id})[0]
    puts "#{movie.title.ljust(21)}   #{movie.year_released}   #{movie.rated}   #{director.name}"
end


# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!

roles_all = Role.all

for role in roles_all
    movie_name = Movie.where({id: role.movie_id})[0]
    actor_name = Person.where({id: role.person_id})[0]
    puts "#{movie_name.title.ljust(21)}   #{actor_name.name.ljust(21)}   #{role.character_name}"
end





