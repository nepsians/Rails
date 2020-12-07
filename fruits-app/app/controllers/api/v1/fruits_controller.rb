class Api::V1::FruitsController < ApplicationController
  #deserializable_resource :fruit

  def index
    fruit = Fruit.all 
   # render_jsonapi(fruit, class: { Fruit: Api::V1::SerializableFruit })
#render jsonapi: {data: fruit, status: :ok,
#code: '200'}

   # render jsonapi: fruit, serializer: Api::V1::FruitSerializer
   render json: fruit
  end

  def create
    fruit = Fruit.create(fruit_params)
    render json: fruit
  end

  def destroy
    Fruit.destroy(params[:id])
  end

  def update 
    fruit = Fruit.find(params[:id])
    fruit.update_attributes(fruit_params)
    render json: fruit
  end

  private 
  def fruit_params
    params.require(:fruit).permit(:id, :name, :description)
  end
end



