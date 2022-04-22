class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy ]

  # GET /items or /items.json
  def index
    @items = Item.left_joins(:categories).select('items.*, GROUP_CONCAT(categories.name, ", ") AS categories_name').group('items.id')
  end

  # GET /items/1 or /items/1.json
  def show
  end

  # GET /items/new
  def new
    # @edit = false
    @categories = Category.all
    @item = Item.new
  end
  
  # GET /items/1/edit
  def edit
    @edit = true
    @categories = Category.all
  end
  
  # POST /items or /items.json
  def create
    @item = Item.new(item_params)
    @category = Category.find(params[:category_id])
    
    respond_to do |format|
      if @item.save
        @item.categories.push(@category)
        format.html { redirect_to item_url(@item), notice: "Item was successfully created." }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1 or /items/1.json
  def update
    @category = Category.find(params[:category_id])

    respond_to do |format|
      if @item.update(item_params)
        @item.categories.push(@category)
        format.html { redirect_to item_url(@item), notice: "Item was successfully updated." }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1 or /items/1.json
  def destroy
    @item.destroy

    respond_to do |format|
      format.html { redirect_to items_url, notice: "Item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.left_joins(:categories).select('items.*, GROUP_CONCAT(categories.name, ", ") AS categories_name').find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:name, :desc, :price)
    end
end
