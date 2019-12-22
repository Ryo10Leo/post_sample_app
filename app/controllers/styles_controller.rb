class StylesController < ApplicationController

    before_action :logged_in_user, only: [:new,:create,:edit,:update,:destroy]

    def index
      @style = Style.new
      @styles = Style.all
    end

    def new
      @style = Style.new
      respond_to do |format|
        format.js
        format.html
      end
    end

    def create
      @style = Style.new(style_params)
      if @style.save
        @styles = Style.all
        respond_to do |format|
          format.js
          format.html
        end
      else
        render 'new'
      end
    end

    def edit
      @style = Style.find(params[:id])
      # @style.picture.cache! unless @style.picture.blank?
      respond_to do |format|
        format.js
        format.html
      end
    end

    def update
      @style = Style.find(params[:id])
      if @style.update_attributes(style_params)
        respond_to do |format|
          @styles = Style.all
          format.js
          format.html{redirect_to styles_url}
        end
      else
        render 'edit'
      end
    end

    def destroy
      Style.find(params[:id]).destroy
      redirect_to styles_url
    end

    private

    def style_params
      params.require(:style).permit(:caption, :price,
                                  :picture)
    end

    def logged_in_user
      unless logged_in?
        flash[:danger] = "投稿機能を利用する場合は、ログインしてください。"
        redirect_to login_url
      end
    end
end
