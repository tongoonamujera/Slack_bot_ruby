# Ruby Slack Bot

> In this particular project, i have decided to build a bot based in Ruby. The main theme of this project is to apply best ruby coding practice.
## Built With

- Ruby

## Getting Started

>>### Prerequisites
>>> make sure you have Ruby installed locally
>>> make sure you have a code edditor.
 - ## Starting the project from scratch 
   - ## if you are about to start the project from scratch you need to do a few following steps.
    1. First navigate to your Terminal in your machine and type ```mkdir``` followed by the name you want your project to be.
    2. Then navigate to that directory by typing ```cd``` followed by the name you have given the project previously.
    3. Type ```bundle init``` on your Terminal to create a Gemfile.
    4. Type ```code .``` if you are using Visual Studio Code or ```subl .``` if you are using Sublime  or ```atom .``` if you are using Atom(this is done to open your project in the code edditor)
    5. ###### You need to add the following gems to the Gemfile
     ```ruby
     gem 'slack-ruby-bot'
     gem 'dotenv'
     gem 'wolfram', '~> 0.2.1'
     gem 'http'
     gem 'screencap'
     gem 'imgur2'
     gem 'async-websocket', '~> 0.8.0'
     gem 'rack'
     gem 'rss'
     ```
    6. run ```bundle install``` to install all the gems to your project.
    7. Create two directories named lib and bin
    8. In you bin folder add a file named ```.env``` and add your slack api token ```SLACK_API_TOKEN=your_token_from_slack```
     - In that same folder with the .env file add a ```.gitignore``` file and add ```.env``` to it. <br>
     - In that same folder add ``config.ru`` file and add the following code to it. <br>
       ```ruby
       require 'slack-ruby-bot'
       require 'dotenv'
       Dotenv.load
       require 'uri'
       require 'http'
       require 'json'
       require 'screencap'
       require 'imgur2'
       require 'rss'
       require 'open-uri'

       require_relative '../lib/commands.rb'

       RubyBot::App.instance.run
       ```
    ###### 9. in the lib folder create the following files
      - 1. `commands.rb` **which contains the follwing code**
      ```ruby
      module RubyBot
        require_relative './greetings.rb'
        require_relative './inspirations.rb'
        require_relative './insults.rb'
        class App < SlackRubyBot::App
        end

        class Hi < SlackRubyBot::Commands::Base
          command 'hi' do |client, data, _match|
            client.say(channel: data.channel, text: HelloText.say_hello)
          end
        end

        class Pass_greeting < SlackRubyBot::Commands::Base
          command 'greet' do |client, data, _match|
            client.say(channel: data.channel, text: Greetings.greet)
          end
        end

        class Screenshot < SlackRubyBot::Commands::Base

          command 'screenshot' do |client, data, _match|
            
            url = URI(_match[:expression].match(/\<(.*)\>/)[1]) rescue nil

            if url
              fetcher_object = Screencap::Fetcher.new(url.to_s)
              screenshot = fetcher_object.fetch width: 1700, height: 850
              imgur_client = Imgur2.new ENV['IMGUR_API']
              url = imgur_client.upload screenshot
              image_url = url["upload"]["links"]["original"]
              client.message text: image_url, channel: data.channel
            else
              client.message text: _match[:expression] + " " + "isn't a URL", channel: data.channel

            end
          end
        end

        class Insulting < SlackRubyBot::Commands::Base

          command 'insult' do |client, data, _match|
            client.say(channel: data.channel, text: Insults.insult)
          end

        end

        class Inspiring < SlackRubyBot::Commands::Base

          command 'inspire_me' do |client, data, _match|
            client.say(channel: data.channel, text: Inspiration.inspire)
          end

        end
      end
      ```
      - 2. `greetings.rb` **which contains the following code**
        ```ruby
        class HelloText

          def self.say_hello
            "Hello! This is a Bot!"
          end
        end

        class Greetings
          def self.greet
            'hello user, how can i help you toady, I\'m you daily friend!'
          end
        end
        ```
      - 3. `inspirations.rb` **Which contains the following code**
      ```ruby
      class Inspiration
        def self.inspire
          inspiration_quotes = [
            'Experience is the name everyone gives to their mistakes.',
            'When to use iterative development? You should use iterative development only on projects that you want to succeed.',
            'Code is like humor. When you have to explain it, it’s bad.',
            'Fix the cause, not the symptom.',
            'Make it work, make it right, make it fast.',
            'Simplicity is the soul of efficiency.',
            'Sometimes it pays to stay in bed on Monday, rather than spending the rest of the week debugging Monday’s code.',
            'Write it. Shoot it. Publish it. Crochet it, sauté it, whatever. MAKE.'
          ]

          arr = inspiration_quotes.shuffle.first.to_s
          return arr
        end
      end
      ```
      - 4. `insults.rb` **which contains the following code**
      ```ruby
      class Insults
        def self.insult
          insults = [
            'My battery lasts longer than your relationships.',
            'I’m surprised at your level of stupidity.',
            'Life is good, you should get one.',
            'Please don’t interupt me when I’m ignoring you.',
            'You are known as an idiot savant, minus the savant.',
            'I never insult any people I only tell them what they are.',
            'Did you forget your brain in your mother’s womb? Cause I’m pretty sure you did.',
            'The degree of your stupidity is enough to boil water.',
            'Of course I talk like an idiot. How else could you understand me?',
            'I respect those, who hate me by showing my middle finger.',
            'If you look up the definition of moron in the dictionary there will be a picture of you.'
          ]
          arr = insults.shuffle.first.to_s
          return arr
        end
      end
      ```
  ## Clone
  ```git
   git clone https://github.com/tongoonamujera/Slack_bot_ruby.git
   ```

   - To get a local copy up and running, follow these simple example steps.
    - 1. Open a terminal window and enter `git clone https://github.com/tongoonamujera/Slack_bot_ruby.git`
    - 2. Make your new cloned directory your active directory
    - 3. Currently, you are in the "development branch."

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