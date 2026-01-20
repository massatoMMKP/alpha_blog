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

### Access Restrictions
- **Non-logged users**:  
  - Can only view articles and user profiles.  
  - Cannot create, edit, or delete articles.  

- **Logged-in users**:  
  - Can create new articles.  
  - Can edit and delete **only their own articles**.  
  - Can view all articles and categories.  

- **Admins**:  
  - Have full control over all articles (edit/delete any).  
  - Can manage categories.  
  - Can manage user accounts (promote/demote users, delete accounts).  

## Features
- User authentication (signup, login, logout)  
- CRUD operations for articles  
- Validations for article fields  
- Associations between users and articles  
- Flash messages styled with Bootstrap  
- Pagination for articles  
- User profiles with avatar (Gravatar)  
- Responsive design with Bootstrap  
- Categories for articles
- Access restrictions for logged-in and non-logged-in users 
- Admin permissions with extended controls

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

```bash
http://localhost:3000
```

## Status
Project completed and fully functional.
Possible future improvements:
- Comment system
- Article search functionality


