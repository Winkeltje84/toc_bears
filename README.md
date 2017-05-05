# Taste of Code
> Bears Group

## About
During the Codaisseur Academy we were given the assignment to build a new Rails app for their [Taste of Code](http://tasteofcode.nl/) website. We got 4,5 days to build the app. There wasn't enough time to finish the entire app, so not all features are completely implemented and working. Codaisseur asked us to focus on specific parts of the app in the end of the project.

[![](/assets/images/screenshots/toc1.jpeg)](/assets/images/screenshots/toc1.jpeg)
[![](/assets/images.screenshots/toc2.png)](/assets/images.screenshots/toc2.png)
[![](/assets/images.screenshots/toc3.png)](/assets/images.screenshots/toc3.png)
[![](/assets/images.screenshots/toc4.png)](/assets/images.screenshots/toc4.png)

## Running Locally
Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed.
You should also have a [Postgresql](https://www.postgresql.org/) databse running.

  1. `git clone git@github.com:Winkeltje84/toc_bears.git`
  2. `cd toc_bears`
  3. `bundle install`
  4. `rails db:create db:migrate db:seed`
  5. `rails server`
  6. Go to your [localhost](http://localhost:3000) on port 3000(default)

## Related Documentation
  * [Ruby on Rails](http://rubyonrails.org/)
  * [Taste of Code website](http://tasteofcode.nl)
  * [Teachers Repo](https://github.com/Codaisseur/taste-of-code-website-relaunch/projects)
