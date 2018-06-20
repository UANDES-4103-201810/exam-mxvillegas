class PizzasController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]


# GET /pizzas
# GET /pizzas.json
  def index
    @pizzas = Pizza.all()
  end

# GET /pizzas/1
# GET /pizzas/1.json
  def show
    @info = {
        recipe: Recipe.where(:pizza_id => params[:id])
    }

    if user_signed_in?
      @info[:user_id] = current_user.id
      @info[:disabled] = ""
    end

  end

# GET /pizzas/new
  def new
    @pizza = Pizza.new
  end

# GET /pizzas/1/edit
  def edit
  end

# POST /pizzas
# POST /pizzas.json
  def create

  end

# PATCH/PUT /pizzas/1
# PATCH/PUT /pizzas/1.json
  def update

  end

# DELETE /pizzas/1
# DELETE /pizzas/1.json
  def destroy

  end

  private
# Use callbacks to share common setup or constraints between actions.
  def set_project

  end

# Never trust parameters from the scary internet, only allow the white list through.
  def pizza_params
    params.require(:pizza).permit(:name, :recipe)
  end
end
