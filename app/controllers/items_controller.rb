class ItemsController < ApplicationController
    def index
       @items = Item.where(video_id: params[:video_id]) 
    end
    def show
        @item = Item.find(params[:id])
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)
        @item.video_id = params[:video_id]
        @item.user_id = current_user.id
        if @item.save
            redirect_to video_items_path(params[:video_id]) 
        else
            redirect_to new_video_item_path(params[:video_id])
        end
    end
    
    def edit
        
    end

    def update
        
    end

    private
    def item_params
        params.require(:item).permit(:name, :kind, :purpose)
    end
end
