## Testcase Blog on RoR

> Clean RoR project without JS Frameworks

> Heroku: https://testcase-blog.herokuapp.com

- Ruby 2.6.3
- Rails 5.2.3 + Bulma
- PostgreSQL
- Admin panel: Administrate
- Deployment: Circle CI + Hound + Heroku
- Search gem: Ransack

```
bundle install
rake db:setup // Or rake db:create && rake db:migrate && rake db:seed
rails server
```

