class ToDosController < ApplicationController
    def index
        @to_dos = ToDo.all
        render json: @to_dos
    end    
    
    def show
        @to_do = ToDo.find(params[:id])
        render json: @to_do
    end

    def create
        @to_do = ToDo.new(to_do_params)
        if @to_do.save
            render json: @to_do
        else  
            render json: @to_do.errors
        end        
    end

    def update
        @to_do = ToDo.find(params[:id])
        if @to_do.update
            render json: @to_do
        else 
            render json: @to_do.errors
        end        
    end

    def destroy
        @to_do = ToDo.find(params[:id])
        @to_do.destroy
        render json: {}
    end
    
    private
    def to_do_params
        params.require(:to_do).permit(:title, :content, :urgent, :user_id)
    end    
end
