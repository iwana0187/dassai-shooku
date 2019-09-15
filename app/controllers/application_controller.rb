class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def after_sign_in_path_for(resource)
    if user_signed_in?
      new_book_path
    elsif store_signed_in?
      stores_path
    end
  end
end
