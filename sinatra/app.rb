require 'sinatra'

get "/" do
  "hello world!"
end

get "/secret" do
  "shhhhhh"
end

  get "/new" do
    "has this worked?"
  end

get "/newmethod" do
  "hello again"
end

get "/random-cat" do
  @name = ['Amigo', 'Oscar', 'Viking'].sample
  erb(:index)
end

post "/named-cat" do
  p params
  @name = params[:name]
  #@age = params[:age]
  erb(:index)
end

get "/even-newer" do
  "has this worked?"
end

get "/cat-form" do
  erb(:index2)
end
