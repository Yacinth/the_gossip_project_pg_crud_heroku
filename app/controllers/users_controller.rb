class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(description: Faker::TvShows::SiliconValley.quote, city_id: City.all.sample.id, first_name:params[:first_name], last_name:params[:last_name], email:params[:email], age: Faker::Number.between(1, 100), password:params[:password], password_confirmation:params[:password_confirmation])
    if @user.save
      redirect_to(root_path)
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

end


