# Blogging App

### Project Specs - Make a barebones messaging board

1. Users can register and then must be authenticated before logging in (we use Devise). Users should have an email (used for logging in), and a name at a minimum. You can add things like a description or “about me” if you’d like.
2. Users can create posts (title, body, author (user_id), etc)
3. Users can comment on other users’ posts (Comments have post_id, body, author (user_id))
4. There is a posts index page that lists all posts (for entire site). This is the ‘homepage’. This should display a list of posts with the title and the author’s name
5. Order posts with most recent posts at the top of the page
6. There is a post show page, that shows a single post. Underneath the post are all the comments, ordered by date created (oldest at the top)
7. When commenting on a post, you have freedom as far as the layout goes, you can just have a little box that opens, and the user types in their comment. You can also use a modal, etc, whatever you want. It makes more sense to have the form for adding a comment be close to where the comment will end up.

### Project Requirements
* Rails 5.2.4
* Database Postgres
* Ruby 2.4.9
* Rspec
* Capybara to simulate the user interaction
* simplecov for test coverage

### Bonus features (not required, but nice to have)
* Style using Bootstrap 3
* Add a modal for creating a new post
* Add a modal for logging in
* Paginate posts#index and/or posts#show (comments)
* Deploy project to Heroku (make an account for free)

### To use the app, follow these steps
* git clone git@github.com:deepakvig/blogging_app.git
* bundle
* rake db:create
* rake db:migrate

### To run test, type
* rspec

