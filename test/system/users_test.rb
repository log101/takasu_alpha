require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
    visit new_session_url
    fill_in "Email", with: @user.email
    fill_in "Password", with: "secret"
    click_on "Giriş Yap"
  end

  test "should log in" do
    visit new_session_url
    fill_in "Email", with: @user.email
    fill_in "Password", with: "secret"
    click_on "Giriş Yap"

    assert_text "Kullanıcı Adı: furkan"
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    click_on "Çıkış Yap"
    visit root_url
    click_on "Kayıt Ol"

    fill_in "Email", with: @user.email
    fill_in "Name", with: @user.name
    fill_in "Password", with: "secret"
    fill_in "Password confirmation", with: "secret"
    click_on "Kayıt Ol"

    assert_text "Başarıyla kayıt oldunuz, şimdi giriş yapabilirsiniz!"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    fill_in "Email", with: @user.email
    fill_in "Name", with: @user.name
    fill_in "Password", with: "secret"
    fill_in "Password confirmation", with: "secret"
    click_on "Kayıt Ol"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "Bu sayfayı görme yetkiniz yok" # When user deleted session also destroyed
  end
end