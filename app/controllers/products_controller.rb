class ProductsController < ActionController::Base
    
def index
    @products = session[:cart]
end


    
# Routed from POST /items/:id/add_to_cart
def add_to_cart
    # Load the cart from the session, or create a new empty cart.
    cart = session[:cart] || []
    cart << params[:product]
    session[:cart] = cart
    redirect_to products_path
  end
  
end