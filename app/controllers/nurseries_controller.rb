class NurseriesController < ApplicationController
  def index
  	@nurseries = Nursery.all
    if params[:keyword]
      @nurseries = @nurseries.where("name LIKE '%#{params[:keyword]}%'")
    end

    if request.xhr?
      render partial: "nurseries/table", 
        locals: {nurseries: @nurseries}, status: 200

    end

  end
  
def new
    @nursery = Nursery.new
    @prueba = Nursery.new(id: 1)

  end

  def create
     @nursery = Nursery.new(nursery_params)

    if @nursery.save
      redirect_to nurseries_index_path, notice: "Se ha agregado exitosamente"
    else
      render :new
    end
  end 

  def my_messages
    @nursery = Nursery.find(params[:id])
    @messages = Message.where(nursery_id: params[:id]).order(:created_at)
  end

  def edit
      @nursery = Nursery.find(params[:id])
  end

  def update
     @nursery = Nursery.find(params[:id])

    if @nursery.update(nursery_params)
      redirect_to @nursery
    else
      render :edit
    end
  end 

  def show
    @nursery = Nursery.find(params[:id])
  end

  def destroy
      @nursery = Nursery.find(params[:id])
    if @nursery.present?
      @nursery.destroy
    end
     redirect_to nurseries_index_path
  end 
  
  private

    def nursery_params
      params.require(:nursery).permit!
    end
end