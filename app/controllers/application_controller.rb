class ApplicationController < ActionController::Base
  require 'pry'
  include Pagy::Backend

  def after_sign_in_path_for(resource)
    admin_movies_path
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
