class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_out_path_for(resource_or_scope)
  	last_article_path
  end

  def after_sign_in_path_for(resource_or_scope)
  	last_article_path
  end

  private
  def last_article_path
  	if cookies[:last_article_id]
  	  last_id = cookies[:last_article_id]
  	  cookies.delete(:last_article_id)
  	  article_path(last_id)
  	else
  	  root_path
  	end
  end
end

