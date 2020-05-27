require 'test_helper'

class WordTest < ActiveSupport::TestCase
  def setup
    @word = Word.new(question: "sample question", answer: "sample answer", memorize: 1)
  end

  test "should be valid" do
    assert @word.valid?
  end

  test "question should be present" do
    @word.question = " "
    assert_not @word.valid?
  end

  test "question answer be present" do
    @word.answer = " "
    assert_not @word.valid?
  end

  test "question should not be too long" do
    @word.question = "a" * 101
    assert_not @word.valid?
  end

  test "answer should not be too long" do
    @word.answer = "a" * 101
    assert_not @word.valid?
  end
end
