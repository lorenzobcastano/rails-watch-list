class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to bookmarks_path
  end

  def destroy
    @bookmark.destroy

    redirect_to bookmarks_path, status: :see_other
  end
private
  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
