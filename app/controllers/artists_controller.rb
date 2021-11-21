class ArtistsController < ApplicationController
    before_action :set_artist, only: [:edit, :update, :destroy]
    
    def index
        @artists = Artist.all
    end

    def new
        @artists = Artist.new
    end

    def create
        @artists = Artist.new(artist_params)

        if @artist.save
            flash[:notice] = 'Artist was successfully added'
            redirect_to artists_path
        else
            flash[:error] = 'Errors encountered in adding Artist'
            render :new
        end
    end

    def edit
    end

    def update
       if @artist.update(artist_params)
            redirect_to artists_path, notice: 'Artist was successfully updated'
        else
            flash[:error] = 'Errors encountered in updating Artist'
            render :edit

        end
    end

    def destroy
        @artist.destroy

        redirect_to artists_path, notice: 'Artist was successfully deleted'
    end

    private

    def set_artist
        @artist = Artist.find(params[:id])
    end

    def artist_params
        params.require(:artist).permit(:name)
    end
end
