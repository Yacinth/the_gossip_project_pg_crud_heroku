![](https://media0.giphy.com/media/2zeji2UedvZzvIZ45N/giphy.gif?cid=3640f6095c4a8a4d6b6958366767066f)

# GOSSIP PROJECT qui suit la convention CRUD et REST avec BDD Postgresql et mis en ligne sur Heroku

~~ Cynthia @Yacinth

## Ruby version

```ruby
ruby 2.5.1
```

# Got to Heroku website

https://the-gossip-project-pg-crud-2.herokuapp.com/

# Or do like always with this steps :

## Git Clone

- Aquerir le repository en local avec clef SSH

```ruby
$ git clone git@github.com:Yacinth/the_gossip_project_pg_crud_heroku.git
```

## Bundle Install

- Executer un bundle install pour pouvoir utiliser les gems du Gemfile

```ruby
$ bundle install
```

## create Database

```ruby
$ rails db:create
```

## Migration

- Verifier le statut des migrations dans le terminal

```ruby
$ rails db:migrate:statuts
```

- Si des migrations sont down, effectuer :

```ruby
$ rails db:migrate
```

## Database

- Generer la database à partir de ../migrate/seed.rb :

```ruby
$ rails db:seed
```

## Console Rails

- Pour lancer la console rails et tester la création de row:

```ruby
$ rails console
```

- Pour visualiser la base de données dans la console :

```ruby
$ tp User.all
```

pour voir les entrées du Tableau User par exemple, tu peux faire pareil avec les autres tableaux etc

## Run server

```ruby
$ rails server
```

## Got to url and enjoy

http://localhost:3000/

### A tout de suite les correcteurs <3
