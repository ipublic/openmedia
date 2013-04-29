class DatasetImportsController < ApplicationController
  def new
    @dataset_import = DatasetImport.new
  end

  def create
    @dataset_import = DatasetImport.new(params[:dataset_import])
    if @dataset_import.save
      redirect_to root_url, notice: "Imported dataset successfully."
    else
      render :new
    end
  end
end