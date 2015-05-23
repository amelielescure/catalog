class CatalogController < ApplicationController
  def page
  	params[:page] = 1 if params[:page].nil?
  	@products = Product.paginate(:page => params[:page], :per_page => 3)
  end

  def product
    @product = Product.find(params[:id])
  end

  def filter_products
  	params[:page] = 1 if params[:page].nil?
  	if params[:type].present?
  		@products = Product.order(params[:type]).paginate(:page => params[:page], :per_page => 3)
  	end
    render :partial => "list_products"    
  end
end
