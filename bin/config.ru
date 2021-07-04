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
