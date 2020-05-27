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
  end

  # Page edit existing word
  def edit
  end

  # top page
  def home
  end

  # POST new word
  def create
  end

  # PATCH word
  def update
  end

  # DELETE word
  def destroy
  end

end
