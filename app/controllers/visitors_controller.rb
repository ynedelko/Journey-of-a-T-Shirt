class VisitorsController < ApplicationController
  before_action :set_visitor, only: [:show, :edit, :update, :destroy]

  # GET /visitors
  def index
    @visitors = Visitor.order(tshirt_made: :asc).all
  end

  # GET /visitors/1
  def show
  end

  # GET /visitors/new
  def new
    @visitor = Visitor.new
  end

  # GET /visitors/1/edit
  def edit
  end

  # POST /visitors
  def create
    @visitor = Visitor.new(visitor_params)

    if @visitor.save
      redirect_to countries_path, notice: 'Thank you for your guess.'
    else
      render :new
    end
  end

  # PATCH/PUT /visitors/1
  def update
    if @visitor.update(visitor_params)
      redirect_to countries_path, notice: 'Thank you for your answer.'
    else
      render :edit
    end
  end

  # DELETE /visitors/1
  def destroy
    @visitor.destroy
    redirect_to visitors_url, notice: 'Visitor was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visitor
      @visitor = Visitor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def visitor_params
      params.require(:visitor).permit(:name, :comment, :tshirt_made)
    end
end
