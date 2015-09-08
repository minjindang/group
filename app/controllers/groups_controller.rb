class GroupsController < ApplicationController
    def index
        # flash[:notice] = "Morning!"
        # flash[:alert] = "Good Night!"
        # flash[:warning] = "Warning!"
        @groups = Group.all
    end
    
    def show
        @group = Group.find(params[:id])
        @posts = @group.posts
    end
    
    def new
        @group = Group.new
    end 
    
    def edit
        @group = Group.find(params[:id])
    end
    
    def create
        @group = Group.create(group_params)
        
        if @group.save
            redirect_to groups_path
        else
            render :new
        end
    end
    
    def update
        @group = Group.find(params[:id])
        
        if @group.update(group_params)
            redirect_to groups_path, notice: "修改討論板成功"
        else
            render :edit
        end
    end
    
    def destroy
        @group = Group.find(params[:id])
        @group.destroy
        redirect_to groups_path, alert: "討論板已刪除"
    end
    
    private
    
    def group_params
        params.require(:group).permit(:title, :description)
    end
end
