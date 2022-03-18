class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def edit
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      redirect_to @list, notice: 'bookmark was successfully created.'
    else
      render :new
    end
  end

  def update
    if @bookmark.update(bookmark_params)
      redirect_to @bookmark, notice: 'bookmark was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /restaurants/1
  def destroy
    @bookmark.destroy
    redirect_to list_url, notice: 'Bookmark was successfully destroyed.'
  end

  private

  def set_list
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmarkrake_params
    params.require(:bookmark).permit(:comment)
  end

end
