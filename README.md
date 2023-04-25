# TASKS-API

## Summary

The objective of this API project is to:
- Provide a hands-on experience of building a functional Rails API that can be used as a backend for a React frontend. 
- Build RESTful routes, set up database migrations and models, and use Active Record associations. 
- Additionally, we will learn how to use Bootstrap to create a simple, yet effective admin panel, and how to integrate front-end scripts with Rails. 

The project will include basic authentication and nested resources, which will allow for an admin interface to create, update, and delete tasks and subtasks. We will also cover key features of Active Record, such as using scopes and callbacks, to filter and automate tasks. Overall, this project will provide a solid understanding of Rails and how to build scalable and maintainable APIs.

## What we will cover:
### Project Setup 

- [X] Create a new Rails application  (`rails new task_manager`)
- [X] Generate a scaffold for tasks  (`rails generate scaffold Task title:string description:text done:boolean completed_at:datetime`)
- [X] Generate a scaffold for subtasks  (`rails generate scaffold Subtask title:string description:text done:boolean completed_at:datetime task:references`)

### Add associations
- [X] Task `has_many` subtasks
- [X] Subtask `belongs_to` task

### Database Setup 
- [X] Use `rails db:migrate` to create the database tables for tasks and subtasks.
- [X] Add some seed data to the db/seeds.rb file. (Use (Faker)[https://github.com/faker-ruby/faker])
- [X] `rails console` to check it out!

### Routing and Auth 
- [X] Add a namespace to the `TasksController` and `SubtasksController` to make admin-only resources.
  - [X] `rails g controller admin/tasks `
  - [X] `rails g controller admin/subtasks `
- [X] Demonstrate the use of `before_action` to require authentication for admin-only resources.
- [X] update admin + non-admin controllers to have respective routes based on privileges

### Adding CSS and Front End Scripts 
- [X] `yarn add bootstrap jquery popper.js`
- [X] Add below block of code to `config/webpack/environment.js`

```
const webpack = require("webpack") 

environment.plugins.append("Provide", new webpack.ProvidePlugin({ 
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']
}))  
```

- [X] Add below block of code to `app/javascript/packs/application.js`:

```
import "bootstrap"
import "../stylesheets/application"
```

- [X] Add `*= require bootstrap` to `app/assets/stylesheets/application.css`
- [X] Add a link to the admin section in the navbar.

### Admin Forms 
- [X] Demonstrate how to create a new task in the admin section, including adding subtasks.

### Active Record Scoping
- [ ] Define a scope in the Task and Subtask models that filters them by whether they are completed or not.
- [ ] Demonstrate how to use this scope to filter tasks in the TasksController index action.

### Active Record Validations 
- [ ] Define a validation in the Task model that ensures the title attribute is present and not blank.
- [ ] Demonstrate how to handle this validation error in the TasksController create action.

### Callbacks 
- [ ] Add a callback to the Task model that automatically sets the done attribute to true if all of its subtasks are marked as done.
- [ ] Demonstrate the use of this callback by creating a new task and adding some subtasks to it, then marking all subtasks as done.

### Debugging 
- [ ] Demonstrate the use of byebug or binding.pry to debug code when necessary.

### Where to go from here?
- [ ] Testing
- [ ] Pagination 
- [ ] WebSockets

## User Stories

### Admin User:
As an admin user, I can log in to the admin dashboard.
As an admin user, I can view a list of all tasks and their associated subtasks.
As an admin user, I can perform all CRUD routes for tasks and subtasks

### Regular User:
As a regular user, I can view a list of all tasks and their associated subtasks.
As a regular user, I can filter tasks by their status (e.g. incomplete, complete).
As a regular user, I can mark a subtask as complete.
