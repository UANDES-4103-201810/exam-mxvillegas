class PizzasController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]


# GET /customer
# GET /customer.json
  def index
    @customer = Customer.all
    authorize! :list, @customer
  end

# GET /customer/1
# GET /customer/1.json
  def show
    @info = {
        name: Customer.where(:id => params[:id])
    }

    if user_signed_in?
      @info[:user_id] = current_user.id
      @info[:disabled] = ""
    end

  end

# GET /customer/new
  def new
    @customer = Customer.new
  end

# GET /customer/1/edit
  def edit
  end

# POST /customer
# POST /customer.json
  def create

  end

# PATCH/PUT /customer/1
# PATCH/PUT /customer/1.json
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
  def customer_params
    params.require(:customer).permit(:id, :name, :last_name, :email, :password)
  end
end