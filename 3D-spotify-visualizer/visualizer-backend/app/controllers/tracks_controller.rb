class TracksController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    tracks = Track.all
    render json: tracks, include: [:title, :artist, :user_id, :visual_id]
  end

  def show
  end
end
