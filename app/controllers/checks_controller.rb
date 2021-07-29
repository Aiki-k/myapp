class ChecksController < ApplicationController
  def index
    @check = Check.new
  end

  def create
    @check = Check.new(check_params)
    if @check.valid?
      @check.save
    end
  end
end
