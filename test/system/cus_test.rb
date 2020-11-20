require "application_system_test_case"

class CusTest < ApplicationSystemTestCase
  setup do
    @cu = cus(:one)
  end

  test "visiting the index" do
    visit cus_url
    assert_selector "h1", text: "Cus"
  end

  test "creating a Cu" do
    visit cus_url
    click_on "New Cu"

    fill_in "Acctoken", with: @cu.acctoken
    fill_in "Emails", with: @cu.emails
    fill_in "Gtoken", with: @cu.gtoken
    fill_in "Idtoken", with: @cu.idtoken
    fill_in "Name", with: @cu.name
    fill_in "Refreshtoken", with: @cu.refreshtoken
    click_on "Create Cu"

    assert_text "Cu was successfully created"
    click_on "Back"
  end

  test "updating a Cu" do
    visit cus_url
    click_on "Edit", match: :first

    fill_in "Acctoken", with: @cu.acctoken
    fill_in "Emails", with: @cu.emails
    fill_in "Gtoken", with: @cu.gtoken
    fill_in "Idtoken", with: @cu.idtoken
    fill_in "Name", with: @cu.name
    fill_in "Refreshtoken", with: @cu.refreshtoken
    click_on "Update Cu"

    assert_text "Cu was successfully updated"
    click_on "Back"
  end

  test "destroying a Cu" do
    visit cus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cu was successfully destroyed"
  end
end
