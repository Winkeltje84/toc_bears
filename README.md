# Taste of Code
> Bears Group

## About
This project is to replace the website for Codaisseur's [Taste of Code](http://tasteofcode.nl/) event. The new site will allow:

- users to sign up for the next Taste of Code events
- companies to request to sponsor a public Taste of Code event
- companies to request an in-house Taste of Code event.

The back-end is mostly feature-complete. On the front-end, the public Taste of Code page and landing page are both mostly feature-complete, but the company-related pages are still works-in-progress.

The team that worked on this are [Bas Winkel](https://github.com/Winkeltje84), [Anika Schwing](https://github.com/anikaSchwing), [Lee Freeman](https://github.com/leefreemanxyz), [Wouter Leijdes](https://github.com/Woulei), [Vanessa Ho](https://github.com/V-Ho) and [Caroline Olijve](https://github.com/olijvecaroline).

[![](https://github.com/Winkeltje84/toc_bears/blob/readme/app/assets/images/screenshots/toc1.jpeg?raw=true)](/assets/images/screenshots/toc1.jpeg?raw=true)
[![](https://github.com/Winkeltje84/toc_bears/blob/readme/app/assets/images/screenshots/toc2.png?raw=true)](https://github.com/Winkeltje84/toc_bears/blob/readme/app/assets/images/screenshots/toc2.png?raw=true)
[![](https://github.com/Winkeltje84/toc_bears/blob/readme/app/assets/images/screenshots/toc3.png?raw=true)](https://github.com/Winkeltje84/toc_bears/blob/readme/app/assets/images/screenshots/toc3.png?raw=true)
[![](https://github.com/Winkeltje84/toc_bears/blob/readme/app/assets/images/screenshots/toc4.png?raw=true)](https://github.com/Winkeltje84/toc_bears/blob/readme/app/assets/images/screenshots/toc4.png?raw=true)

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
