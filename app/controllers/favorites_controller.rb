class FavoritesController < ApplicationController
  
  def create
    book = Book.find(params[:book_id])
    favorite = current_user.favorites.new(user_id: current_user.id, book_id: params[:book_id])
    favorite.save
    redirect_to books_path
  end
  
  def destroy
    book = Book.find(params[:book_id])
    favorite = current_user.favorites.find_by(user_id: current_user.id, book_id: params[:book_id])
    favorite.destroy
    redirect_to books_path
  end
end
