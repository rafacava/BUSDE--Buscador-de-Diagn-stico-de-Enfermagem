require "application_system_test_case"

class FatorsTest < ApplicationSystemTestCase
  setup do
    @fator = fators(:one)
  end

  test "visiting the index" do
    visit fators_url
    assert_selector "h1", text: "Fators"
  end

  test "creating a Fator" do
    visit fators_url
    click_on "New Fator"

    fill_in "Nome", with: @fator.nome
    click_on "Create Fator"

    assert_text "Fator was successfully created"
    click_on "Back"
  end

  test "updating a Fator" do
    visit fators_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @fator.nome
    click_on "Update Fator"

    assert_text "Fator was successfully updated"
    click_on "Back"
  end

  test "destroying a Fator" do
    visit fators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fator was successfully destroyed"
  end
end
