class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @micropost = current_user.microposts.build if logged_in?
      @feed_items = current_user.feed.paginate(page: params[:page])
    #render 'static_pages/home.html.erb'
    end
  end

  def help
    render 'static_pages/help.html.erb'
  end

  def about
    render 'static_pages/about.html.erb'
  end

  def contact
    render 'static_pages/contact.html.erb'
  end
end
