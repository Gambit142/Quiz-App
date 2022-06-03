
![](https://img.shields.io/static/v1?label=Quiz+APP+BY&message=Francis&color=blue)

# Quiz App

> An application that allows users to answer questions from different quizzes.


## Built With

- Ruby
- Ruby on Rails
- PostgreSQL
- CanCanCan
- Devise
- SASS 

## Configuration

To use this project you first need to have installed the following:

+ Node.js
+ Ruby
+ PostgreSQL
+ Rails
+ Rbenv

* Ruby version

The version of ruby that is needed for this project is 

+ 3.0.3

Once you have installed them, you need to use the following command to clone the repository:

```
git clone git@github.com:Gambit142/Quiz-App.git
```

and then run

```
bundle install
```

### Database creation

Next, use this command to create the databases:
```
rails db:create
```

### Run Migrations

Next, use this command to run the migration files:
```
rails db:migrate
```

## Usage

Finally, use the following command to start the live server:

```
rails s
```

```

open on your browser  and type "localhost:3000"
```

## Extension of Task
If I were to add a type column in the `Question Model`, I would use polymorphism to create the feature. I would implement the feature by doing the following:

- Create two columns on the *_Question model_*. 
- One column would be the name of another Question Type model (For example `MultipleChoiceQuestion Model`)
- The second would be the specific foreign key to that particular *__Question Type Model__*.
- This would enable me to create a distinct type of Question and I would handle the __*CRUD*__ actions on the model the Question Model references.



## Authors
👤 **Francis Ugorji**

- GitHub: [@Gambit142](https://github.com/Gambit142)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/francis-ugorji/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to Nikolas Pontikos an Ismail Moghul for the guidance and constant communication.


