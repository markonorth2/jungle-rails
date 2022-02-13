class Admin::DashboardController < ApplicationController
  
  http_basic_authenticate_with name: ENV['ADMIN_VAL_USER'], password: ENV['ADMIN_VAL_PASS']

  def show
    @products_count = Product.count(:all)
    @categories_count = Category.count(:all)
  end
end
