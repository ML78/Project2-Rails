class RelationshipsController < ApplicationController
  before_action :set_relationship, only: [:show, :edit, :update, :destroy]

  before_action :require_user

  # GET /relationships
  # GET /relationships.json
  def index
    @relationships = Relationship.all
  end

  # GET /relationships/1
  # GET /relationships/1.json
  def show
  end

  # GET /relationships/new
  def new
  end

  # GET /relationships/1/edit
  def edit
  end

  # POST /relationships
  # POST /relationships.json
  def create

    user = User.find(params[:followed_id])
    @current_user.follow(user)
    redirect_to user


  # PATCH/PUT /relationships/1
  # PATCH/PUT /relationships/1.json
  def update

  end

  # DELETE /relationships/1
  # DELETE /relationships/1.json
  def destroy
    user = Relationship.find(params[:id]).followed
    @current_user.unfollow(user)
    redirect_to user
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relationship
      @relationship = Relationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relationship_params
      params.require(:relationship).permit(:follower_id, :followed_id)
    end
end
