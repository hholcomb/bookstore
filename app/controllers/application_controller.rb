class ApplicationController < ActionController::Base

	def new
	  @book = Book.new
	 end

	 def create
	   @book = Book.new(book_params)
	   @book.save
	   redirect_to @book
	  end

	  private

	  def book_params
	  	params.require(:book).permit(:title, :author, :pages, :price)
	  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
