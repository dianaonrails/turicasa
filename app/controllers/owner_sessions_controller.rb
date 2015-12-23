class OwnerSessionsController < ApplicationController
  
  def new
  	@owner = Owner.new
  end

  def create
  	if @owner = login(params[:email], params[:password])
      redirect_back_or_to(:owners, notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
  	logout
    redirect_to('/', notice: 'Logged out!')
  end
end
