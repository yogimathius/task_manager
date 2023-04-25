require "application_system_test_case"

class SubtasksTest < ApplicationSystemTestCase
  setup do
    @subtask = subtasks(:one)
  end

  test "visiting the index" do
    visit subtasks_url
    assert_selector "h1", text: "Subtasks"
  end

  test "should create subtask" do
    visit subtasks_url
    click_on "New subtask"

    fill_in "Completed at", with: @subtask.completed_at
    fill_in "Description", with: @subtask.description
    check "Done" if @subtask.done
    fill_in "Task", with: @subtask.task_id
    fill_in "Title", with: @subtask.title
    click_on "Create Subtask"

    assert_text "Subtask was successfully created"
    click_on "Back"
  end

  test "should update Subtask" do
    visit subtask_url(@subtask)
    click_on "Edit this subtask", match: :first

    fill_in "Completed at", with: @subtask.completed_at
    fill_in "Description", with: @subtask.description
    check "Done" if @subtask.done
    fill_in "Task", with: @subtask.task_id
    fill_in "Title", with: @subtask.title
    click_on "Update Subtask"

    assert_text "Subtask was successfully updated"
    click_on "Back"
  end

  test "should destroy Subtask" do
    visit subtask_url(@subtask)
    click_on "Destroy this subtask", match: :first

    assert_text "Subtask was successfully destroyed"
  end
end
