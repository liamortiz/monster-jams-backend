class PlaylistsController < ApplicationController
    skip_before_action :authorized, only: [:create]
    def create
        puts playlist_params
        @playlist = Playlist.create(playlist_params)
        render json: @playlist
    end

    def destroy
        @playlist = Playlist.find(params['id'])
        @playlist.destroy
    end

    private
    def playlist_params
        params.require(:playlist).permit(:user_id, :band_name, :monsters => [], :pattern => [], :sounds => [])
    end
end
