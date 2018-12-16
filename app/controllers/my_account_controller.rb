class MyAccountController < ApplicationController
  def modal
  	@user = User.new
  end
end
