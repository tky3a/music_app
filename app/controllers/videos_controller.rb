class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    @video = Video.find_by(params[:id])
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
      if @video.save
        redirect_to @video
      else
        render 'new'
      end
  end

 #strongparams
  private
    def video_params
        params.require(:video).permit(:artist_name, :youtube_id, :music_name)
    end
end
