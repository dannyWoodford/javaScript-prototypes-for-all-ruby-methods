class UsersController < ApplicationController
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
    users = User.all
    render json: users, include: [:username]
  end

  def show
  end
end
