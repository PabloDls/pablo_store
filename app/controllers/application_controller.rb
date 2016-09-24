class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_categories, :set_products_type, :set_vendor

  private 
  
  def set_categories
    @categories = Category.all
  end

  def set_products_type
    @products_type = ProductType.all
  end

  def set_vendor
    @vendors = Vendor.all
  end
end