class CountriesController < ApplicationController
  before_action :set_country, only: [:show, :edit, :update, :destroy]

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)

    if @country.save
      redirect_to countries_path, notice: 'Country was successfully created.'
    else
      render :new
    end
  end

  def update
    if @country.update(country_params)
      redirect_to @country, notice: 'Country was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @country.destroy
    redirect_to countries_url, notice: 'Country was successfully deleted.'
  end

  private
    def set_country
      @country = Country.find(params[:id])
    end

    def country_params
      params.require(:country).permit(:name, :us_imports, :min_wage, :poverty, :people_image, :country_image)
    end
end
