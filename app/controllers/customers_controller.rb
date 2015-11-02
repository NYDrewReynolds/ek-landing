class CustomersController < ApplicationController

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customer_path(@customer)
    else
      render :new
    end
  end

  def show
    @customer = Customer.find_by(id: params[:id])
    @customers = Customer.all
    @customer_count = Customer.count
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email)
  end

end
