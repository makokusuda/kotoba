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
  end

  # DELETE word
  def destroy
  end

  def word_params
    params.require(:word).permit(:question, :answer, :memorize)
  end

end
