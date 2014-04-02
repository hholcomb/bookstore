class BooksController < ApplicationController
	before_action :set_book, only: [ :show, :edit, :update, :destroy]

   def index
   	  @available_at = Time.now
   	  @books = Book.all
   end

   def show
   	 
   	end
  

   def edit
   	
   end

   def update   	 
   	 @book.update(book_params)
   	 redirect_to @book
   end

   def destroy
   	@book.destroy
   	redirect_to books_url
   end

   def set_book
     @book = Book.find(params[:id])
   end

end