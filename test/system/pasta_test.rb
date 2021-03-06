require "application_system_test_case"

class PastaTest < ApplicationSystemTestCase
  setup do
    @pastum = pasta(:one)
  end

  test "visiting the index" do
    visit pasta_url
    assert_selector "h1", text: "Pasta"
  end

  test "creating a Pastum" do
    visit pasta_url
    click_on "New Pastum"

    fill_in "Id pasta", with: @pastum.id_pasta
    fill_in "Nome", with: @pastum.nome
    click_on "Create Pastum"

    assert_text "Pastum was successfully created"
    click_on "Back"
  end

  test "updating a Pastum" do
    visit pasta_url
    click_on "Edit", match: :first

    fill_in "Id pasta", with: @pastum.id_pasta
    fill_in "Nome", with: @pastum.nome
    click_on "Update Pastum"

    assert_text "Pastum was successfully updated"
    click_on "Back"
  end

  test "destroying a Pastum" do
    visit pasta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pastum was successfully destroyed"
  end
end
