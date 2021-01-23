class BookersController < ApplicationController
  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end
  
  def create
    
    book = Book.new(book_params)
    
    book.save
    
    redirect_to blog_path(blog.id)
  end  

  def edit
    @book = Book.find(params[:id])
  end
  
  
  def update
    @book = Book.find(params[:id])
    book.update(book_params)
    redirect_to bookers_path(book.id)
    end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
    
end
