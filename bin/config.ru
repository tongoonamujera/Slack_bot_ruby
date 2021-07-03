require 'slack-ruby-bot'
require 'dotenv'
Dotenv.load
require 'wolfram'
Wolfram.appid= ENV["WOLFRAM_APPID"]
require 'uri'
require 'http'
require 'json'
require 'mechanize'
require 'screencap'
require 'imgur2'

require_relative '../lib/rubybot.rb'

RubyBot::App.instance.run 
