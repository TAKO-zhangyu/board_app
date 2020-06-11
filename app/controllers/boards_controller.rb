class BoardsController < ApplicationController
  before_action :set_target_board, only: %i[show edit update destroy]

  def index
    @boards = Board.page(params[:page])
  end

  def new
    @board = Board.new
  end

  def create
    board = Board.create(board_params)
    redirect_to board 
  end

  def show
  end

  #editとshowは共通する
  def edit
  end

  def update
    @board.update(board_params) #アップデートの処理
    
    redirect_to @board  #リダイレクトの処理
  end

  def destroy
    @board.delete

    redirect_to boards_path
  end

  private

  def board_params
     params.require(:board).permit(:name, :title, :body)
  end

  def set_target_board
    @board = Board.find(params[:id])
  end
end
