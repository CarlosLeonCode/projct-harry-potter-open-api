<div align="center">

<img src="https://i.ibb.co/drygyTX/harry-potter-open-api-logo.png" alt="image" border="0" width="450">

<br /> 

[![railsVersion](https://img.shields.io/badge/Ruby%20on%20Rails-v6.1.4-red)](https://weblog.rubyonrails.org/2021/6/24/Rails-6-1-4-has-been-released/)
[![rubyVersion](https://img.shields.io/badge/Ruby-v2.7.1-red)](https://www.ruby-lang.org/en/news/2020/03/31/ruby-2-7-1-released/)

<br /> 

A RESTful API for Harry Potter World

</div>

<br /> 
<br /> 

# :warning: :construction: API under construction :construction: :warning:

<br>

## 🤓 Project setup for make contributions

<details>
<summary>Fork project</summary>

- Fork project in your account and create a new branch with issue name, for example:

> issue_1_new_characters

<br>
</details>

<details>
<summary>Clone project</summary>

- Now you should clone the project from forked version in your account. It'll look like this:

```bash
git clone git@github.com:yourAccount/harry_potter_open_api.git
```

<br>
</details>

<details>
<summary>Install Project in Local</summary>

- Create **database.yml** file setup with your local database configuration.

- Install gems

```bash
bundle install
```

- Create the database with the following command in the terminal:

```bash
rails db:create
```

- Run migrations:

```bash
rails db:migrate
```

- Run seeds:

```bash
rails db:seed

```
🙌 Now you can work and make your contribution!

- Run the server

```bash
rails server
# or 
rails s
```
<br>
</details>

<br>
<br>

# TO DO 👀

## Models 
- Spells
- Wizard Professions
- Spells
- Potions

<br>

# 🗒 Documentation

## Endpoints

> Schools -> https://harry-potter-open-api.herokuapp.com/api/v1/schools

> School houses -> https://harry-potter-open-api.herokuapp.com/api/v1/school_houses

> School house -> https://harry-potter-open-api.herokuapp.com/api/v1/school_houses/1

> Characters -> https://harry-potter-open-api.herokuapp.com/api/v1/people

> Character -> https://harry-potter-open-api.herokuapp.com/api/v1/people/1

> Students -> https://harry-potter-open-api.herokuapp.com/api/v1/people/students

> Creatures -> https://harry-potter-open-api.herokuapp.com/api/v1/creatures

> Creature -> https://harry-potter-open-api.herokuapp.com/api/v1/creatures/1


<br>

# 👏 Credits

Many thanks to:

- [Harry Potter Wiki](https://harrypotter.fandom.com/wiki/Main_Page) for all the information published about Harry Potter World.
- [Wizards Unite Hub](https://wizardsunitehub.info/database/) for resources published.
- [Szokekiss Marton](https://www.deviantart.com/szokekissmarton/gallery/61235899/all-fantastic-beasts-from-the-original-book) for the illustrations of the creatures

<br>

## 📃 License

This project is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).