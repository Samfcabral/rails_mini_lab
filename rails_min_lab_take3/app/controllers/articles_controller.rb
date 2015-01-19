class ArticlesController < ApplicationController
  def index
  	@articles = Article.all
  	render :index
  end

  def new
  	@article = Article.new
  	render :new
  end

  def edit
    id = params[:id]
    @article = Article.find(id)
    render :edit
  end

  def show
    id = params[:id]
    @article = Article.find(id)
    render :show
  end

  def create
    new_article = params.require(:article).permit(:title, :author, :content)
    article = Article.create(new_article)
    redirect_to "/articles/#{article.id}"
  end

  def update
    article_id = params[:id]
    article = Article.find(Article_id)

    # get updated data
    updated_attributes = params.require(:creatue).permit(:name, :description)
    # update the article
    article.update_attributes(updated_attributes)

    #redirect to show
    redirect_to "/articles/#{article_id}"
  end

  def destroy
    id = params[:id]
    article = Article.find(id)
    article.destroy
    redirect_to "/articles"
  end
end
