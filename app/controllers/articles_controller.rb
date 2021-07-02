class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]

  # GET /articles or /articles.json
def index
    @articles = Article.all.ordered_by_vote_count
    @vote_exist = []
    if user_signed_in?
    @articles.each do |article|
      if Vote.where(user_id: current_user.id, article_id: article.id).count > 0
        @vote_exist << true
      else
        @vote_exist << false
      end
    end
  end
end


  # GET /articles/1 or /articles/1.json
  def show
    @a_params = (params[:id])
    if !(current_user.nil?)
      Vote.where(user_id: current_user.id, article_id: params[:id]).count > 0
      @vote_exist = true
    # else
      # @vote_exist = false
    end
  end

  # GET /articles/new
  def new
    if user_signed_in?
        @article = current_user.articles.build
    else
        redirect_to new_user_registration_path
    end
  end

  def votes
    votes = Vote.new(user_id:current_user.id, article_id:params[:id])
    if votes.valid?
      votes.save
      Article.increment_counter(:vote_count, params[:id])
    end
    redirect_back(fallback_location: root_path)
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
  end

  # POST /articles or /articles.json
  def create
    uploaded_io = article_params[:image]
      File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
        file.write(uploaded_io.read)
        params[:article][:image] = uploaded_io.original_filename
        end

    @article = current_user.articles.build(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: "Article was successfully created." }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: "Article was successfully updated." }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: "Article was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :text, :image)
    end
end
