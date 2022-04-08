require "application_system_test_case"

class MangasTest < ApplicationSystemTestCase
  setup do
    @manga = mangas(:one)
    @user = users(:one)
    log_in
  end

  def log_in
    visit new_session_url
    fill_in "Email", with: @user.email
    fill_in "Password", with: "secret"
    click_on "Giriş Yap"
  end

  test "visiting the index" do
    visit user_url(@user)
    assert_selector "h4", text: "Mangalarım"
    assert_text @manga.title
  end

  test "should create manga" do
    visit user_url(@user)
    click_on "+"

    fill_in "Description", with: @manga.description
    fill_in "Genre", with: @manga.genre
    fill_in "Image url", with: @manga.image_url
    fill_in "Title", with: @manga.title
    fill_in "Volumes", with: @manga.volumes
    click_on "Create Manga"

    assert_text "Manga was successfully created"
  end

  test "should update Manga" do
    visit user_url(@user)
    click_on "Mangayı düzenle", match: :first

    fill_in "Description", with: @manga.description
    fill_in "Genre", with: @manga.genre
    fill_in "Image url", with: @manga.image_url
    fill_in "Title", with: @manga.title
    fill_in "Volumes", with: @manga.volumes
    click_on "Update Manga"

    assert_text "Manga was successfully updated"
  end

  test "should destroy Manga" do
    visit user_url(@user)
    click_on "Mangayı sil", match: :first

    assert_text "Manga was successfully destroyed"
  end
end
