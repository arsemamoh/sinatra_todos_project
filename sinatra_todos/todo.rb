require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"

configure do
  enable :sessions
  set :session_secret, 'secret'
end

get "/" do
 redirect "/lists"
end

get "/lists" do
  @lists = [
    {name: "Lunch Groceries", todos: []},
    {name: "DInner Groceries", todos: []}
  ]
  erb :lists, layout: :layout
end
