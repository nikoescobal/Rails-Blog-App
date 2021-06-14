class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]

  # GET /articles or /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1 or /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles or /articles.json
  def create

    # @article = current_user.articles.new(article_params)

    example = {user_id: current_user.id, title: article_params[:title], text:"Fun times", image:"lolfactory.png"}

    # print article_params


    # @article = current_user.article.build(article_params)

    # params.article = {user_id: current_user.id, title:"Lol factory", text:"Fun times", image:"lolfactory.png"}
    # params.article.user_id = current_user.id
    # params.article.title = "Lol factory"
    # params.article.text = "Fun times"
    # params.article.image = "Lolfactory.png"
    @article = Article.new(example)

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
    example = {title: "Hello", text:"Fun times", image:"lolfactory.png"}
    respond_to do |format|
      if @article.update(example)
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
