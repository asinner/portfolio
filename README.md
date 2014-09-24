![Passing](https://travis-ci.org/asinner/portfolio.svg?branch=master)
# README
The following application contains the personal website for myself. It currently has two resources: Articles and Projects. Articles refer to blog posts that can be created and edited within the application. Projects refer to work I've down that belong to my portfolio.

## Website
You can find this portfolio at:
http://www.andrewsinner.com

## Approach - Devise
The latest addition to the portfolio app has included the devise gem which adds authentication. The first part of this exercise included writing a test that would fail when trying to use a devise generated route. This led to installing the devise gem. After this, several tests were written to test out creation of a user, user sign in, and user sign out. This involved using a devise generators on the resource we wanted to add authentication to which was a `User` resource. The tests involved placing links in the proper place, correctly setting the users.yml fixtures, filling in the generated forms and then finding out what input they expected. After all the tests passed, some code was refactored.