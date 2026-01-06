# Alpha Blog 

## Description
The **Alpha Blog** is a blog application built with Ruby on Rails as part of a Udemy course.  
It allows users to create, edit, view, and delete articles, as well as manage user accounts with authentication features.

## How to Use
- Sign up to create a new account.
- Log in to access your profile and create articles.
- Create, edit, or delete your own posts.
- View posts created by other users.
- Log out when finished.

## Features
- User authentication (signup, login, logout)
- CRUD operations for articles
- Validations for article fields
- Associations between users and articles
- Flash messages styled with Bootstrap
- Pagination for articles
- User profiles with avatar (Gravatar)
- Responsive design with Bootstrap

## Requirements
- Ruby 3.x
- Rails 7.x
- SQLite (development)
- Bundler

## Usage
Clone the repository and run the project locally:

```bash
git clone https://github.com/massatoMMKP/alpha_blog.git
cd alpha_blog
bundle install
rails db:create db:migrate
rails server
```

Open your browser and go to:
```
http://localhost:3000
```
## Status
This project is still in development. New features such as comments, categories, and search will be added soon.











