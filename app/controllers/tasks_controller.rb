class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = Task.find params[:id]

  end

  # GET /tasks/new
  def new
    @task = Task.new

  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
    if @task.image?
      cloudinary = Cloudinary::Uploader.upload(params[:task][:image])
      @task.update :image => cloudinary['url']
    end
  end


  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
    if @task.image?
      cloudinary = Cloudinary::Uploader.upload(params[:task][:image])
      @task.update :image => cloudinary['url']
    end
  end



  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def shop
    @tasks = Task.where(category: 'Shopping')
    render :index
  end
  def food
    @tasks = Task.where(category: 'Food & Drink')
    render :index
  end
  def water
    @tasks = Task.where(category: 'Water')
    render :index
  end
  def waste
    @tasks = Task.where(category: 'Waste')
    render :index
  end
  def transport
    @tasks = Task.where(category: 'Transport')
    render :index
  end
  def energy
    @tasks = Task.where(category: 'Energy')
    render :index
  end

  def achievement
    @task = Task.find(params[:id])
    @current_user.achievements.create :task => @task
    redirect_to @task
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:name, :description, :image, :category, :score, user_ids: [], achievement_ids: [])
    end
end
