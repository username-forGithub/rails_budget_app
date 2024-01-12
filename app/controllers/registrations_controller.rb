class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(_resourse)
    categories_path
  end
end
