class AlbumsController < ApplicationController
    before_action :set_album, only: [:edit, :update, :destroy]
    
    def index
        @albums = Album.all
    end

    def new
        @albums = Album.new
    end

    def create
        @albums = Album.new(artist_params)

        if @album.save
            flash[:notice] = 'Album was successfully added'
            redirect_to artists_path
        else
            flash[:error] = 'Errors encountered in adding Album'
            render :new
        end
    end

    def edit
    end

    def update
       if @album.update(album_params)
            redirect_to albums_path, notice: 'Album was successfully updated'
        else
            flash[:error] = 'Errors encountered in updating Album'
            render :edit

        end
    end

    def destroy
        @artist.destroy

        redirect_to albums_path, notice: 'Album was successfully deleted'
    end

    private

    def set_album
        @album = Album.find(params[:id])
    end

    def album_params
        params.require(:artist).permit(:name, :released, :length, :kind)
    end
end
