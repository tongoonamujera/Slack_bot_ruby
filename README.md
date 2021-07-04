# Ruby object Oriented Programming

> In this particular project, i have decided to build a bot based in Ruby. The main theme of this project is to apply best ruby coding practice.
## Built With

- Ruby

## Getting Started
> make sure you have Ruby installed locally
> make sure you have a code edditor.
> ## Starting the project from scratch 
> > ## if you are about to start the project from scratch you need to do a few following steps.
> > 1. First navigate to your Terminal in your machine and type ```mkdir``` followed by the name you want your project to be.
> > 2. Then navigate to that directory by typing ```cd``` followed by the name you have given the project previously.
> > 3. Type ```bundle init``` on your Terminal to create a Gemfile.
> > 4. Type ```code .``` if you are using Visual Studio Code or ```subl .``` if you are using Sublime  or ```atom .``` if you are using Atom(this is done to open your project in the code edditor)
> > 5. ## You need to add the following gems to the Gemfile
>>> 1. ```gem 'slack-ruby-bot'```
>>> 2. ```gem 'dotenv'```
>>> 3. ```gem 'wolfram'```
>>> 4. ```gem 'http'```
>>> 5. ```gem 'screencap'```
>>> 6. ```gem 'imgur2'```
>>> 7. ```gem 'async-websocket', '~> 0.8.0'```
>>> 8. ```gem 'rack'```
>>> 9. ```gem 'rss'```
>> 6. run ```bundle install``` to install all the gems to your project.
>> 7. Create two directories named lib and bin
>> 8. In you bin folder add a file named ```.env``` and add your slack api token ```SLACK_API_TOKEN=your_token_from_slack```
>>> In that same folder with the .env file add a ```.gitignore``` file and add ```.env``` to it. <br>
>>> In that same folder add ``config.ru`` file and add the following code to it. <br>
>>> > ``require 'slack-ruby-bot'`` <br>
>>> > ``require 'dotenv'`` <br>
>>> > ``Dotenv.load`` <br>
>>> > ``require 'wolfram'`` <br>
>>> > ``Wolfram.appid= ENV["WOLFRAM_APPID"]`` <br>
>>> > ``require 'uri'`` <br>
>>> > ``require 'http'`` <br>
>>> > ``require 'json'`` <br>
>>> > ``require 'screencap'`` <br>
>>> > ``require 'imgur2'`` <br>
>>> > ``require 'rss'``
>>> > ``require 'open-uri'`` <br>
>>> > ``require_relative '../lib/commands.rb'`` <br>
>>> > ``RubyBot::App.instance.run`` <br>
>## Clone
```git
git clone https://github.com/tongoonamujera/Slack_bot_ruby.git
```

To get a local copy up and running, follow these simple example steps.


1. Open a terminal window and enter `git clone https://github.com/tongoonamujera/Slack_bot_ruby.git`
2. Make your new cloned directory your active directory
3. Currently, you are in the "development branch."

### Prerequisites

Ruby installed localy

### Usage

Use IRB to test the code

## Authors
👤 **Tongoona Mujera**

- Github: [@tongoonamujera](https://github.com/tongoonamujera)
- Twitter: [@tongomujera](https://twitter.com/tongomujera)
- Linkedin: [tongoona-mujera](https://www.linkedin.com/in/tongoona-mujera-125604162/)
- Email:  tongoonamujera@gmail.com

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project.!

## 📝 License

This project is [MIT](./MIT.md) licensed.