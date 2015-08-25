class PagesController < ApplicationController
  def home
    @products = Product.all.order(created_at: :desc)
    @stores = Store.all
  end
end
