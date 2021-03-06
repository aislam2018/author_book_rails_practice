class AuthorsController < ApplicationController
  before_action :find_author, only: [:show, :edit, :update, :destroy]

  def index
    @authors = Author.all
  end

  def show
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.create(author_params)
    redirect_to @author
  end

  def edit
  end

  def update
    @author.update(author_params)
    redirect_to @author
  end

  def destroy
    @author.destroy
    redirect_to authors_path
  end



  private

  def author_params
    params.require(:author).permit(:name, :birth_year)
  end

  def find_author
    @author = Author.find(params[:id])
  end
end
