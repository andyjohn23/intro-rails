## intro to Ruby on Rails
- boil milk first
- sachet coffee
- sachet with cofffe mixed with milk already.
- save you a lot of time.
- David Hansson creator, in the year 2004.
- following the key principle whuich is convention over configuration
- this means developer don't have to spend time configuring files in order to setup.
- rails really puts emphasis on RESTful application design, easily create an API.
- its an MVC framework.
- it focuses on the DRY princple.
- its a ruby gem,(gem install rails)

## creating rails project
- rails new <app_name> --api --skip-javascript

## MVC in rails
- Model - where all data management, fetching is done, basically everything data.
- Controller - this where business logic is handled.
- View - basically for rendering purposes.

## car components(MVC explanation)
- engine
- model
- seats
- steering wheel
- brake
- petrol tank(fuel system)
- dashboard
- gear shifter

- Model - model is the storage, petrol tank. it manages the critical aspects of the application, via active record.
- Controller - is the engine, the controller transmits data requests from the user to the model and then delivers data that is rendered in the view.
- View - is the dashboard, it renders what it gets from the controller.

## Rails generators
- gives us an easy way of generating things by running a single command from the command line
- rails g
- rails g model <model_name> <column_name>:<data_type> --no-test-framework
- rails g migration add_<column_name>_to_<table_name> <column_Name>:<datatype> --no-test-framework
- rails g migration remove_<column_name>_from_<table_name> <column_Name>:<datatype> --no-test-framework

## Rails routing basics
- rails g controller <controller_name> --no-test-framework
- get '<route_name>', to: '<controller_name>#<controller_action>

## Custom rendering
- def show
    post = Post.find(params[:id])
    render json: post, only: [:id, :title, :description]
  end
- def show
    post = Post.find(params[:id])
    render json: post, except: [:create_at, :updated_at]
  end


## NB
- model names should be singular
- controller names are in plural form
- rails console - rails c
- rails server - rails s
- can use Thunder client extension on vscode.