class VisitorsController < ApplicationController
  before_action :set_visitor, only: [:show, :edit, :update, :destroy]

  def index
    @visitors_guess = Visitor.order(:guess).all
    @visitors_tshirt_made = Visitor.order(:tshirt_made).all
    @countries = Country.order(name: :desc).all
    @import_order_countries = Country.order(us_imports: :desc).all
  end

  def new
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.new(visitor_params)

    if @visitor.save
      redirect_to visitors_path, notice: 'Thank you for your answer.'
    else
      render :new
    end
  end

  def update
    if @visitor.update(visitor_params)
      redirect_to visitors_path, notice: 'Thank you for your answer.'
    else
      render :edit
    end
  end

  def destroy
    @visitor.destroy
    redirect_to visitors_url, notice: 'Visitor was successfully destroyed.'
  end

  private
    def set_visitor
      @visitor = Visitor.find(params[:id])
    end

    def visitor_params
      params.require(:visitor).permit(:comment, :guess, :tshirt_made)
    end
end
