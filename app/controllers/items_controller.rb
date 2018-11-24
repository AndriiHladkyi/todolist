class ItemsController < ApplicationController
  before_action :set_list
  before_action :set_item, except: [:create]

  def create
    @item = @list.items.create(item_params)
    redirect_to @list
  end

  def destroy
    @item = @list.items.find(params[:id])
    if @item.destroy
      flash[:success] = "List item was deleted."
    else
      flash[:error] = "List item coild not be deleted."
    end
    redirect_to @list
  end

  def done
    @item.update_attribute(:done_at, Time.now)
    redirect_to @list, notice: "Item done"
  end

 private

  def set_list
    @list = List.find(params[:list_id])
  end

  def set_item
    @item = @list.items.find(params[:id])
  end

  def item_params
    params[:item].permit(:text)
  end

end
