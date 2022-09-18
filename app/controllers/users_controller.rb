class UsersController < ApplicationController

  def edit
    @user = User.find_by(id: 1)
  end

  def update
    @user = User.find_by(id: 1)
    if @user.update(user_params)
      flash[:success] = "Успешно"
      redirect_to root_path
    else
      render "edit"
    end
  end
  
  private

    def user_params
      params.require(:user).permit(:firstname, :lastname, :patronymic, :email, :birthday, :gender, :phone, :agreement, user_residence_attributes: [:id, :country, :region, :city], user_photo_attributes: [:id, :avatar])
    end
end
