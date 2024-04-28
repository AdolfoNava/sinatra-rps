require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:main)
end
get("/rock") do
  options = ['rock', 'paper', 'scissors']
  @cpu = options.sample
  @player = 'rock'
  case @cpu
  when 'rock'
    @results = 'tied'
  when 'paper'
    @results = 'lost'
  when 'scissors'
    @results = 'won'
  else
  
  end
  
  erb(:game)
  
end

get("/paper") do
  options = ['rock', 'paper', 'scissors']
  @cpu = options.sample
  @player = 'paper'
  case @cpu
  when 'rock'
    @results = 'won'
  when 'paper'
    @results = 'tied'
  when 'scissors'
    @results = 'lost'
  else
  
  end
  
  erb(:game)
  
end

get("/scissors") do
  options = ['rock', 'paper', 'scissors']
  @cpu = options.sample
  @player = 'scissors'
  case @cpu
  when 'rock'
    @results = 'lost'
  when 'paper'
    @results = 'won'
  when 'scissors'
    @results = 'tied'
  else
  
  end
  
  erb(:game)
  
end
