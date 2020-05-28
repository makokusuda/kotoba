class WordsController < ApplicationController
  # Page display all words
  def index
    @words = Word.all
  end

  # Page display one word
  def show
  end

  # Page create new word
  def new
    @word = Word.new
  end

  # Page edit existing word
  def edit
    @word = Word.find(params[:id])
  end

  # top page
  def home
  end

  # POST new word
  def create
    @word = Word.new(word_params)
    if @word.save
      redirect_to index_path
    else
      render 'new'
    end
  end

  # PATCH word
  def update
    @word = Word.find(params[:id])
    if @word.update_attributes(word_params)
    redirect_to index_path
    else
      render 'edit'
    end
  end

  # DELETE word
  def destroy
    Word.find(params[:id]).destroy
    redirect_to index_path
  end

  def word_params
    params.require(:word).permit(:question, :answer, :memorize)
  end

end
