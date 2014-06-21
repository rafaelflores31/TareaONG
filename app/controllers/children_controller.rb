class ChildrenController < ApplicationController
  def new
  	@nursery = Nursery.find(params[:nursery_id])
  	@child = @nursery.children.build
  end

  def create
  	@nursery = Nursery.find(params[:nursery_id])
  	@child = @nursery.children.build(child_param)

  	if @child.save
  		redirect_to @nursery
  	else
  		render :new
  	end
  end 

  def edit
  end

  def update
  end 

  def show
  end

  private

  	def child_param
  		params.require(:child).permit!
  	end

end
