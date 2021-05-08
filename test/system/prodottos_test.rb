require "application_system_test_case"

class ProdottosTest < ApplicationSystemTestCase
  setup do
    @prodotto = prodottos(:one)
  end

  test "visiting the index" do
    visit prodottos_url
    assert_selector "h1", text: "Prodottos"
  end

  test "creating a Prodotto" do
    visit prodottos_url
    click_on "New Prodotto"

    fill_in "Categoria", with: @prodotto.categoria
    fill_in "Contenuto", with: @prodotto.contenuto
    fill_in "Marca", with: @prodotto.marca
    fill_in "Media voti", with: @prodotto.media_voti
    fill_in "Nome", with: @prodotto.nome
    fill_in "Utilizzo", with: @prodotto.utilizzo
    click_on "Create Prodotto"

    assert_text "Prodotto was successfully created"
    click_on "Back"
  end

  test "updating a Prodotto" do
    visit prodottos_url
    click_on "Edit", match: :first

    fill_in "Categoria", with: @prodotto.categoria
    fill_in "Contenuto", with: @prodotto.contenuto
    fill_in "Marca", with: @prodotto.marca
    fill_in "Media voti", with: @prodotto.media_voti
    fill_in "Nome", with: @prodotto.nome
    fill_in "Utilizzo", with: @prodotto.utilizzo
    click_on "Update Prodotto"

    assert_text "Prodotto was successfully updated"
    click_on "Back"
  end

  test "destroying a Prodotto" do
    visit prodottos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prodotto was successfully destroyed"
  end
end
