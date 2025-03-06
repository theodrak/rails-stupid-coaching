require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end

  test "questions 1: visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
    take_screenshot
  end

  test "questions 2: asking Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end

  test "questions 3: asking a Question? yields a silly question response from the coach" do
    visit ask_url
    fill_in "question", with: "Where are you?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
    take_screenshot
  end

  test "questions 4: clicking on ask another question.. renders form" do 
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
    click_on "Ask another question..."

    assert_selector "p", text: "Ask your coach anything"
    take_screenshot
  end


end
