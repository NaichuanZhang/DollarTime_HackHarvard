require 'test_helper'

class IncomelogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incomelog = incomelogs(:one)
  end

  test "should get index" do
    get incomelogs_url
    assert_response :success
  end

  test "should get new" do
    get new_incomelog_url
    assert_response :success
  end

  test "should create incomelog" do
    assert_difference('Incomelog.count') do
      post incomelogs_url, params: { incomelog: { amount: @incomelog.amount, job: @incomelog.job, user_id: @incomelog.user_id } }
    end

    assert_redirected_to incomelog_url(Incomelog.last)
  end

  test "should show incomelog" do
    get incomelog_url(@incomelog)
    assert_response :success
  end

  test "should get edit" do
    get edit_incomelog_url(@incomelog)
    assert_response :success
  end

  test "should update incomelog" do
    patch incomelog_url(@incomelog), params: { incomelog: { amount: @incomelog.amount, job: @incomelog.job, user_id: @incomelog.user_id } }
    assert_redirected_to incomelog_url(@incomelog)
  end

  test "should destroy incomelog" do
    assert_difference('Incomelog.count', -1) do
      delete incomelog_url(@incomelog)
    end

    assert_redirected_to incomelogs_url
  end
end
