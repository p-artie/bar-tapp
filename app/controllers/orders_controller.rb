class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
    @order_items = OrderItem.all

    @drink_ids = []
    @order_items.each do |x|
      @drink_ids << x.drink_id
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])
    @items = OrderItem.where(order_id: @order)
    @order_item = OrderItem.find_by(order_id: @order.id)
    # @drinks = Drink.where(id: "#{OrderItem.find(@order.id).drink_id}")
    @bar = Bar.find(@order.bar_id)

    @drink_ids = []
    @items.each do |x|
      @drink_ids << x.drink_id
    end

    @amount = @order.total

  end

  # GET /orders/new
  def new
    @bar = Bar.find(params[:bar_id])
    @order = @bar.orders.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @bar = Bar.find(params[:bar_id])
    @order = @bar.orders.new(order_params)
    @drink = @bar.drinks.find(params[:drink_id])
    if session[:order_id]
      redirect_to bar_drink_path(@bar, @drink) and return
    end

    respond_to do |format|
      if @order.save
        session[:order_id] = @order.id
        format.html { redirect_to bar_drink_path(@bar, @drink)}
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order_item, notice: 'Drink has been updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:email, :stripe_token)
    end
end
