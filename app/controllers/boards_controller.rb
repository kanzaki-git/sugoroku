class BoardsController < ApplicationController
  def index
    size = params[:size].to_i
    size = 15 if size < 15
    size = 200 if size > 200 # 上限（暴走防止）

    @size = size
    @cells = (1..@size).to_a
    @dice = rand(1..6) if params[:roll].present?
  end
end