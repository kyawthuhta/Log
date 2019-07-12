require "application_system_test_case"

class MachinesTest < ApplicationSystemTestCase
  setup do
    @machine = machines(:one)
  end

  test "visiting the index" do
    visit machines_url
    assert_selector "h1", text: "Machines"
  end

  test "creating a Machine" do
    visit machines_url
    click_on "New Machine"

    fill_in "Cpu", with: @machine.cpu
    fill_in "Hdd", with: @machine.hdd
    fill_in "Mac", with: @machine.mac
    fill_in "Name", with: @machine.name
    fill_in "Optical drive", with: @machine.optical_drive
    fill_in "Os", with: @machine.os
    fill_in "Purchase date", with: @machine.purchase_date
    fill_in "Ram", with: @machine.ram
    click_on "Create Machine"

    assert_text "Machine was successfully created"
    click_on "Back"
  end

  test "updating a Machine" do
    visit machines_url
    click_on "Edit", match: :first

    fill_in "Cpu", with: @machine.cpu
    fill_in "Hdd", with: @machine.hdd
    fill_in "Mac", with: @machine.mac
    fill_in "Name", with: @machine.name
    fill_in "Optical drive", with: @machine.optical_drive
    fill_in "Os", with: @machine.os
    fill_in "Purchase date", with: @machine.purchase_date
    fill_in "Ram", with: @machine.ram
    click_on "Update Machine"

    assert_text "Machine was successfully updated"
    click_on "Back"
  end

  test "destroying a Machine" do
    visit machines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Machine was successfully destroyed"
  end
end
