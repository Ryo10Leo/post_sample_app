class StaticPagesController < ApplicationController

  include StaticPagesHelper

  def home
    @top_news = Article.limit(3)
    @blogs = Article.blogs
    set_google_calender
  end

  def charity
  end
end
