class StylesController < ApplicationController

    before_action :logged_in_user, only: [:new,:create,:edit,:update,:destroy]

    def index
      @style = Style.new
      @styles = Style.all.paginate(page: params[:page], per_page: 9)
    end

    def new
      @style = Style.new
    end

    def create
      @style = Style.new(style_params)
      if @style.save
        @styles = Style.all.paginate(page: params[:page], per_page: 9)
      else
        render 'new'
      end
    end

    def edit
      @style = Style.find(params[:id])
    end

    def update
      @style = Style.find(params[:id])
      if @style.update_attributes(style_params)
        @styles = Style.all.paginate(page: params[:page], per_page: 9)
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
end
