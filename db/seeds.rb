# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# create 5 tasks with 3 subtasks each
5.times do
  task = Task.create(
    title: Faker::Hacker.ingverb.capitalize + " " + Faker::Hacker.noun.capitalize,
    description: Faker::Hipster.paragraph,
    done: false
  )

  3.times do
    Subtask.create(
      title: Faker::Hacker.ingverb.capitalize + " " + Faker::Hacker.noun.capitalize,
      description: Faker::Hacker.say_something_smart,
      done: false,
      task: task
    )
  end
end
