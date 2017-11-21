class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show        # GET /restaurants/:id
  end

  def new           # GET /restaurants/new
    @article = Article.new
  end

  def create        # POST /restaurants
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def edit          # GET /restaurants/:id/edit
  end

  def update        # PATCH /restaurants/:id
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy       # DELETE /restaurants/:id
    @article.destroy
    redirect_to articles_path
  end

private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end


end
