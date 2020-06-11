class BoardsController < ApplicationController

  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    Board.create(board_params)
  end

  def show
    @board = Board.find(params[:id])
  end

  #editとshowは共通する
  def edit
    @board = Board.find(params[:id])
  end

  def update
    board = Board.find(params[:id])  #アップデート用のviewを作成せず、すぐ一覧へと移動するため@を付けない
    board.update(board_params) #アップデートの処理
    
    redirect_to board  #リダイレクトの処理
  end


  private

  def board_params
     params.require(:board).permit(:name, :title, :body)
  end
end
