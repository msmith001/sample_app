class StaticPagesController < ApplicationController
  def home
    render :layout => 'application'
  end

  def help
    render :layout => 'application'
  end

  def about
    render :layout => 'application'
  end
  
  def contact
    render :layout => 'application'
  end
  
end
