class FavoritesController < ApplicationController
 def new
  @favorites = Favorite.new
 end
end 