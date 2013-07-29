class SalesItemsController < ApplicationController
  before_action :set_sales_item, only: [:show, :edit, :update, :destroy]

  # GET /sales_items
  # GET /sales_items.json
  def index
    @sales_items = SalesItem.all
  end

  # GET /sales_items/1
  # GET /sales_items/1.json
  def show
  end

  # GET /sales_items/new
  def new
    @sales_item = SalesItem.new
  end

  # GET /sales_items/1/edit
  def edit
  end

  # POST /sales_items
  # POST /sales_items.json
  def create
    @sales_item = SalesItem.new(sales_item_params)

    respond_to do |format|
      if @sales_item.save
        format.html { redirect_to @sales_item, notice: 'Sales item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sales_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @sales_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_items/1
  # PATCH/PUT /sales_items/1.json
  def update
    respond_to do |format|
      if @sales_item.update(sales_item_params)
        format.html { redirect_to @sales_item, notice: 'Sales item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sales_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_items/1
  # DELETE /sales_items/1.json
  def destroy
    @sales_item.destroy
    respond_to do |format|
      format.html { redirect_to sales_items_url }
      format.json { head :no_content }
    end
  end

  def generate_receipt

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_item
      @sales_item = SalesItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sales_item_params
      params.require(:sales_item).permit(:name, :price, :sales_item_type_id, :is_imported)
    end
end
