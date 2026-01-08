class BoardsController < ApplicationController
  def index
    @cells = (1..30).to_a
  end
end
