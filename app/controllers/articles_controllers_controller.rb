class ArticlesControllersController < ApplicationController
  before_action :set_articles_controller, only: %i[ show edit update destroy ]

  # GET /articles_controllers or /articles_controllers.json
  def index
    @articles_controllers = ArticlesController.all
  end

  # GET /articles_controllers/1 or /articles_controllers/1.json
  def show
  end

  # GET /articles_controllers/new
  def new
    @articles_controller = ArticlesController.new
  end

  # GET /articles_controllers/1/edit
  def edit
  end

  # POST /articles_controllers or /articles_controllers.json
  def create
    @articles_controller = ArticlesController.new(articles_controller_params)

    respond_to do |format|
      if @articles_controller.save
        format.html { redirect_to @articles_controller, notice: "Articles controller was successfully created." }
        format.json { render :show, status: :created, location: @articles_controller }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @articles_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles_controllers/1 or /articles_controllers/1.json
  def update
    respond_to do |format|
      if @articles_controller.update(articles_controller_params)
        format.html { redirect_to @articles_controller, notice: "Articles controller was successfully updated." }
        format.json { render :show, status: :ok, location: @articles_controller }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @articles_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles_controllers/1 or /articles_controllers/1.json
  def destroy
    @articles_controller.destroy
    respond_to do |format|
      format.html { redirect_to articles_controllers_url, notice: "Articles controller was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articles_controller
      @articles_controller = ArticlesController.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def articles_controller_params
      params.fetch(:articles_controller, {})
    end
end
