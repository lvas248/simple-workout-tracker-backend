class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/users" do
    User.all.to_json
  end
  
  post "/users" do
    user = User.create(user_name: params[:user_name])
    user.to_json
  end

  patch "/users/:id" do
    user = User.find(params[:id])
    user.update(user_name: params[:user_name])
    user.to_json
  end

  delete "/users/:id" do
    user = User.find(params[:id])
    user.destroy
    user.workouts.each do |wrk|
      wrk.destroy
    end
    user.to_json
  end
end
