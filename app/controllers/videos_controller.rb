class VideosController < ApplicationController
    def index
        @videos = Video.all
    end

    def new
        @video = Video.new
    end

    def create
        @video = Video.new(video_params)
        @video.user_id = current_user.id
        date = params[:date]
        url = params[:video][:youtube_url]
        url = url.last(11)
        @video.youtube_url = url
        if  @video.save
            redirect_to videos_path()
        else
            redirect_to new_video_path()
        end
    end
    
    def edit
        
    end

    def update
        
    end

    def destroy
        Video.find(params[:id]).destroy
        redirect_to videos_path()
    end

    private
    def video_params
        params.require(:video).permit(:title, :youtube_url, :date)
    end
end
