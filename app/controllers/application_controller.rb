class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :footers 
 def footers
   Pelicula.find(:all, :order => 'created_at DESC', :limit => 5)
 end

end
