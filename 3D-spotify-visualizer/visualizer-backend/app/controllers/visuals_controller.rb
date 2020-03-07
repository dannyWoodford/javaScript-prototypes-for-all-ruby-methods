class VisualsController < ApplicationController
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
    visuals = Visual.all
    render json: visuals, include: [:kind]
  end

  def show
  end
end
