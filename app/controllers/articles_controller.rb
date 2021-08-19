class ArticlesController < ApplicationController

  def index ## get/show all articles
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def find_name
    @article = Article.find_by(name: params[:name])
  end

  def new # nag instantiate ng Article para ma acces yung mga attr. ni article para ma map sa form
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save # .save returns either true or false. If true, redirect to the path
      redirect_to articles_path # after masave ng new article, ireredirect sa index (articles) na path
    else # else render new
      render :new 
    end

  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to articles_path
    else
      render :edit
    end
  end

  def delete
    @article = Article.find(params[:id])
    @article.delete
    @article.save
    redirect_to articles_path
  end

  private #for app level security, iwas sql injection

  def article_params #dito idedeclare yung params na valid lang sa article
    params.require(:article).permit(:name, :body)
  end
end
