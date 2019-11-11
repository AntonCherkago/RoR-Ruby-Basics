#encoding: utf-8
require 'sinatra'
require 'sinatra/reloader' if development?
require 'yaml'
require_relative 'doggy'

get '/' do
  erb :index
end

post '/play_with_doggy' do
  @doggy = Doggy.new(params[:name])

  if params[:feed]
    @doggy.feed
  elsif params[:walk]
    @doggy.walk
  elsif params[:go_to_sleep]
    @doggy.go_to_sleep
  elsif params[:play]
    @doggy.play
  elsif params[:bathe]
    @doggy.bathe
  elsif params[:scratch]
    @doggy.scratch
  elsif params[:follow]
    @doggy.follow
  elsif params[:exit]
    
    status = ["health" => "#{@health}",
              "hunger" => "#{@hunger}",
              "tiredness" => "#{@tiredness}",
              "mood" => "#{@mood}"]
   File.open("data.yml", "w") { |file| file.write(status.to_yaml) }
    "The end"
  end
  erb :play_with_doggy
end