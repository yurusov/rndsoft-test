# README


* System dependencies:
  - ruby 2.7.1
  - bundler
  - yarn
  - sqlite3
  - cron
  - (optional)rbenv

* Deployment instructions:
  1. bundler install
  2. yarn install
  3. rails db:migrate 
  4. rails server
  5. (optional cron tasks) whenever --update-crontab 

First created user will be an admin. 
