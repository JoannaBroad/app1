class StaticPagesController < ApplicationController
  def index
  end

#   def landing_page
#     @featured_product = Product.first
#   end
# end

def landing_page
  @products = Product.limit(5)
end



end
