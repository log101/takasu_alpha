require "application_system_test_case"

class MangasTest < ApplicationSystemTestCase
  setup do
    @manga = mangas(:one)
  end

  test "visiting the index" do
    visit mangas_url
    assert_selector "h1", text: "Mangas"
  end

  test "should create manga" do
    visit mangas_url
    click_on "New manga"

    fill_in "Description", with: @manga.description
    fill_in "Genre", with: @manga.genre
    fill_in "Image url", with: @manga.image_url
    fill_in "Title", with: @manga.title
    fill_in "User", with: @manga.user_id
    fill_in "Volumes", with: @manga.volumes
    click_on "Create Manga"

    assert_text "Manga was successfully created"
    click_on "Back"
  end

  test "should update Manga" do
    visit manga_url(@manga)
    click_on "Edit this manga", match: :first

    fill_in "Description", with: @manga.description
    fill_in "Genre", with: @manga.genre
    fill_in "Image url", with: @manga.image_url
    fill_in "Title", with: @manga.title
    fill_in "User", with: @manga.user_id
    fill_in "Volumes", with: @manga.volumes
    click_on "Update Manga"

    assert_text "Manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Manga" do
    visit manga_url(@manga)
    click_on "Destroy this manga", match: :first

    assert_text "Manga was successfully destroyed"
  end
end
