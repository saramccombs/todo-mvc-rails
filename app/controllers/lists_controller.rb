class ListsController < ApplicationController

    def index 
        @list = List.new
        @lists = List.all
    end

    def show
        list_find_by_id
    end

    def create 
        @list = List.new(list_params)
        @list.save
        redirect_to list_url(@list)
    end

    private

    def list_find_by_id
        @list = List.find(params[:id])
    end

    def list_params
        params.require(:list).permit(:name)
    end
end
