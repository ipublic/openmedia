class DatasetsController < ApplicationController
  def index
    @datasets = Dataset.order(:name)
    respond_to do |format|
      format.html
      format.csv { send_data @datasets.to_csv }
      format.xls # { send_data @products.to_csv(col_sep: "\t") }
    end
  end
end