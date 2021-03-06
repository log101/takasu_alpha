class TradesController < ApplicationController
  skip_before_action :authorize, only: %i[ confirm_trade ]

  before_action :set_trade, only: %i[ show edit update destroy confirm_trade ]
  before_action :set_user, only: %i[ new confirm_trade ]
  # GET /trades or /trades.json
  def index
    @trades = Trade.all
  end

  # GET /trades/1 or /trades/1.json
  def show
    @sender = User.find(@trade.sender_id)
    @recipient = User.find(@trade.recipient_id)
    @trade_items = @trade.trade_items
  end

  # GET /trades/new
  def new
    @trade = Trade.find_or_create_by(sender_id: @user.id, recipient_id: params[:recipient_id])
    respond_to do |format|
      format.html { redirect_to trade_path(@trade), notice: "Trade was successfully completed." }
    end
  end

  # GET /trades/1/edit
  def edit
  end

  def confirm_trade
    @trade.trade_items.each do |item|
      manga = Manga.find(item.manga_id)
      if manga.user_id == @trade.sender_id
        manga.update(user_id: @trade.recipient_id)
      else
        manga.update(user_id: @trade.sender_id)
      end
    end

    @trade.destroy
    respond_to do |format|
      format.html { redirect_to user_url(@user), notice: "Trade was successfully completed." }
    end
  end

  # POST /trades or /trades.json
  def create
    @trade = Trade.new(trade_params)

    respond_to do |format|
      if @trade.save
        format.html { redirect_to trade_url(@trade), notice: "Trade was successfully created." }
        format.json { render :show, status: :created, location: @trade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trades/1 or /trades/1.json
  def update
    respond_to do |format|
      if @trade.update(trade_params)
        format.html { redirect_to trade_url(@trade), notice: "Trade was successfully updated." }
        format.json { render :show, status: :ok, location: @trade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trades/1 or /trades/1.json
  def destroy
    @trade.destroy

    respond_to do |format|
      format.html { redirect_to trades_url, notice: "Trade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_trade
    @trade = Trade.find(params[:id])
  end

  def set_user
    @user = User.find(session[:user_id])
  end

  # Only allow a list of trusted parameters through.
  def trade_params
    params.require(:trade).permit(:sender_id, :recipient_id)
  end
end
