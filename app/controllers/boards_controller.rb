class BoardsController < ApplicationController
  def index
    size = params[:size].to_i
    size = 30 if size <= 0
    size = 200 if size > 200 # 上限（暴走防止）

    @size = size
    @cells = (1..@size).to_a
  end
end