require "test_helper"

class MangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manga = mangas(:one)
    @user = users(:one)
    log_in
  end

  test "should get index" do
    get user_mangas_url @user
    assert_response :success
  end

  test "should get new" do
    get new_user_manga_url(@user)
    assert_response :success
  end

  test "should create manga" do
    assert_difference("Manga.count") do
      post user_mangas_url(@user), params: { manga: { description: @manga.description, genre: @manga.genre, image_url: @manga.image_url, title: @manga.title, user_id: @manga.user_id, volumes: @manga.volumes } }
    end

    assert_redirected_to user_url(users(:one))
  end

  test "should show manga" do
    get manga_url(@manga)
    assert_response :success
  end

  test "should get edit" do
    get edit_manga_url(@manga)
    assert_response :success
  end

  test "should update manga" do
    patch manga_url(@manga), params: { manga: { description: @manga.description, genre: @manga.genre, image_url: @manga.image_url, title: @manga.title, user_id: @manga.user_id, volumes: @manga.volumes } }
    assert_redirected_to user_mangas_url(@user)
  end

  test "should destroy manga" do
    assert_difference("Manga.count", -1) do
      delete manga_url(@manga)
    end

    assert_redirected_to user_url(@user)
  end
end
