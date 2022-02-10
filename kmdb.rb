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
    title: "Batman Begins", 
    year: 2005, 
    rating: "PG-13", 
    director: "Christopher Nolan"
}
movie = Movie.new(values)
movie.save

values = {
    title: "The Dark Knight", 
    year: 2008, 
    rating: "PG-13", 
    director: "Christopher Nolan"
}
movie = Movie.new(values)
movie.save
values = {
    title: "The Dark Knight Rises", 
    year: 2012, 
    rating: "PG-13", 
    director: "Christopher Nolan"
}
movie = Movie.new(values)
movie.save
#puts Movie.all.count

movies_all = Movie.all
# puts Movie.all.inspect

# Person
values = {
    first_name: "Christian", 
    last_name: "Bale" 
}
person = Person.new(values)
person.save

values = {
    first_name: "Micheal", 
    last_name: "Caine" 
}
person = Person.new(values)
person.save

values = {
    first_name: "Liam", 
    last_name: "Neeson" 
}
person = Person.new(values)
person.save

values = {
    first_name: "Katie", 
    last_name: "Holmes" 
}
person = Person.new(values)
person.save

values = {
    first_name: "Gary", 
    last_name: "Oldman" 
}
person = Person.new(values)
person.save

values = {
    first_name: "Heath", 
    last_name: "Ledger" 
}
person = Person.new(values)
person.save

values = {
    first_name: "Aaron", 
    last_name: "Eckhart" 
}
person = Person.new(values)
person.save

values = {
    first_name: "Maggie", 
    last_name: "Gylenhaal" 
}
person = Person.new(values)
person.save

values = {
    first_name: "Tom", 
    last_name: "Hardy" 
}
person = Person.new(values)
person.save

values = {
    first_name: "Joseph", 
    last_name: "Gordon-Levitt" 
}
person = Person.new(values)
person.save

values = {
    first_name: "Anne", 
    last_name: "Hathaway" 
}
person = Person.new(values)
person.save

# Roles

values = {
    char_name: "Bruce Wayne"
}
role = Role.new(values)
role.save

values = {
    char_name: "Alfred" 
}
role = Role.new(values)
role.save

values = {
    char_name: "Ra's Al Ghul" 
}
role = Role.new(values)
role.save

values = {
    char_name: "Rachel Dawes"
}
role = Role.new(values)
role.save

values = {
    char_name: "Commissioner Gordon"
}
role = Role.new(values)
role.save

values = {
    char_name: "Joker"
}
role = Role.new(values)
role.save

values = {
    char_name: "Harvey Dent"
}
role = Role.new(values)
role.save

values = {
    char_name: "Bane"
}
role = Role.new(values)
role.save

values = {
    char_name: "John Blake"
}
role = Role.new(values)
role.save

values = {
    char_name: "Selina Kyle"
}
role = Role.new(values)
role.save

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

for movies in movies_all
    puts "#{movies.title.ljust(21)}   #{movies.year}   #{movies.rating}   #{movies.director}"
end


# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!

batmanbegins = Movie.where({title: "Batman Begins"})[0]
puts batmanbegins.read_attribute(:title)