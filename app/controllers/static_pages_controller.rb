class StaticPagesController < ApplicationController
  def home
    @top_news = Article.limit(3)
  end

  def charity
  end
end
