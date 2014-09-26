Codeship ![Codeship Status for asinner/portfolio](https://www.codeship.io/projects/a4c6ee70-2754-0132-a789-7eb8486ac016/status)](https://www.codeship.io/projects/37713)
Travis CI ![Passing](https://travis-ci.org/asinner/portfolio.svg?branch=master)

# README
The following application contains my personal site. It currently has two resources: Articles and Projects. Articles refer to blog posts that can be created and edited within the application. Projects refer to work I've down that belong to my portfolio.

## Website
You can find this portfolio at:
http://andrewsinner.com
You can find the heroku app at:
http://andrew-sinner-portfolio.herokuapp.com

## Approach - Devise
The latest addition to the portfolio app has included the devise gem which adds authentication. The first part of this exercise included writing a test that would fail when trying to use a devise generated route. This led to installing the devise gem. After this, several tests were written to test out creation of a user, user sign in, and user sign out. This involved using a devise generators on the resource we wanted to add authentication to which was a `User` resource. The tests involved placing links in the proper place, correctly setting the users.yml fixtures, filling in the generated forms and then finding out what input they expected. After all the tests passed, some code was refactored.

## Apprach - Pundit
The first task was to write out tests for CRUD actions for each role: author, editor, visitor.
The Pundit gem was added to the application for authorization. I then created a policy with the Pundit generator. I then added a list of actions within the policy that mapped one-to-one with respective controller actions. The diferrent pundit actions checked the current user (if there is one) for its role which was added to the database as an attribute on the field. After creating the policy actions, I added authorize methods in each of the controller actions to ensure the current user has permissions to do whatever controller action was executing. Another step involved adding a method in the policy to permit certain attributes based on the users permissions. After this I defined the resolve method in the Scope class within the Policy class. This step added a policy_scope method that allowed records to be gathered according to whatever the conditions were in the method. 
