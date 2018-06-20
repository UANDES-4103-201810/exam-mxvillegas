before_action :set_project, only: [:show, :edit, :update, :destroy]
load_and_authorize_resource

# GET /projects
# GET /projects.json
def index
  @pizzas = Pizza.all()
end

# GET /projects/1
# GET /projects/1.json
def show
  @info = {

      ingredients: Ingredient.where(:pizza_id => params[:id]),
      price: Recipe.where(:pizza_id => params[:id])
  }

  if user_signed_in?
    @info[:user_id] = current_user.id
    @info[:disabled] = ""
  end

end

# GET /projects/new
def new
  @pizza = Pizza.new
end

# GET /projects/1/edit
def edit
end

# POST /projects
# POST /projects.json
def create

end

# PATCH/PUT /projects/1
# PATCH/PUT /projects/1.json
def update

end

# DELETE /projects/1
# DELETE /projects/1.json
def destroy

end

private
# Use callbacks to share common setup or constraints between actions.
def set_project

end

# Never trust parameters from the scary internet, only allow the white list through.
def project_params
  params.require(:project).permit(:outstanding, :approved, :deleted, :title, :description, :ammount, :days_to_go, :picture, :video, :descriptive_page, :delivery_date, :category_id, :user_id)
end
