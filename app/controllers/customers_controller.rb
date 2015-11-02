class CustomersController < ApplicationController

  def new
    @customers = Customer.all
    @customer_count = Customer.count
  end

end
