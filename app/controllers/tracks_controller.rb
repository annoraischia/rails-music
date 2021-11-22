class TracksController < ApplicationController
    before_action :set_track, only: [:edit, :update, :destroy]
    
    def index
        @tracks = Track.all
    end

    def new
        @tracks = Track.new
    end

    def create
        @tracks = Track.new(track_params)

        if @track.save
            flash[:notice] = 'Track was successfully added'
            redirect_to tracks_path
        else
            flash[:error] = 'Errors encountered in adding Track'
            render :new
        end
    end

    def edit
    end

    def update
       if @track.update(track_params)
            redirect_to tracks_path, notice: 'Track was successfully updated'
        else
            flash[:error] = 'Errors encountered in updating Track'
            render :edit

        end
    end

    def destroy
        @track.destroy

        redirect_to tracks_path, notice: 'Track was successfully deleted'
    end

    private

    def set_track
        @track = Track.find(params[:id])
    end

    def track_params
        params.require(:track).permit(:name, :length)
    end
end
