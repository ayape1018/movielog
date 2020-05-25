class Login::ProfilesController < Login::ApplicationController
  before_action :set_profile, only: [:edit, :update]

  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      redirect_to edit_login_profile_path
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @profile.update(profile_params)
      redirect_to edit_login_profile_path
    else
      render 'edit'
    end
  end

  def destroy
    @profile = current_user.profile
    @profile.destroy
    redirect_to root_path
  end

  private
  def set_profile
    # if current_user.profile.exsist?
    #   @profile = Profile.find(params[:id])
    # else
    #   @profile = Profile.new(user_id: current_user.id)
    # end
    @profile = current_user.profile || current_user.build_profile
  end

  def profile_params
    params[:profile].permit(:first_name, :last_name, :introduction, :image, :remove_image)
  end

end
