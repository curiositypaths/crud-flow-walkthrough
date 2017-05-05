class HintsController < ApplicationController
  def new
    @hint = Hint.new
  end

  def create
    @hint = Hint.create(hint_params)
    redirect_to hint_path(@hint)
  end

  def show
    @hint = Hint.find(params[:id])
    render 'show'
  end

  def edit
    @hint = Hint.find(params[:id])
  end

  def update
    @hint = Hint.find(params[:id])
    @hint.update(hint_params)
    redirect_to hint_path(@hint)
  end

  def destroy
    @hint = Hint.find(params[:id])
    @hint.destroy
    redirect_to new_hint_path
  end

  private
  def hint_params
    params.require(:hint).permit(:text)
  end
end
