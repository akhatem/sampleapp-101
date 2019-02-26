class StaticPagesController < ApplicationController
  def home
    render 'static_pages/home.html.erb'
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
