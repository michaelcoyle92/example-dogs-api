class DogsController < ApplicationController
  def index
    dogs = Dog.all
    render json: dogs.as_json
  end
end

def show
  dog = Dog.find_by(id: params[:id])
  render json: "dogs/show"
end

def create
  dog = Dog.new(
    name: params[:input_name],
    age: params[:input_age],
    breed: params [:input_breed]
  )
  if dog.save
    render json: dog.as_json
  else
    render json: {"unsuccessful"}
  end
end
