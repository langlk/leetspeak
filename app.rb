require 'sinatra'
require 'sinatra/reloader'
require 'pry'
also_reload('lib/**/*.rb')
require './lib/leetspeak'

get('/') do
  erb(:input)
end

get('/output') do
  @sentence = params["sentence"]
  @leet_sentence = @sentence.leetspeak
  erb(:output)
end
