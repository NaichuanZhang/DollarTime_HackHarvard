require 'test_helper'

class IncomeLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @income_log = income_logs(:one)
  end

  test "should get index" do
    get income_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_income_log_url
    assert_response :success
  end

  test "should create income_log" do
    assert_difference('IncomeLog.count') do
      post income_logs_url, params: { income_log: { job_title: @income_log.job_title, money_made: @income_log.money_made, name: @income_log.name, session_id: @income_log.session_id, uid: @income_log.uid } }
    end

    assert_redirected_to income_log_url(IncomeLog.last)
  end

  test "should show income_log" do
    get income_log_url(@income_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_income_log_url(@income_log)
    assert_response :success
  end

  test "should update income_log" do
    patch income_log_url(@income_log), params: { income_log: { job_title: @income_log.job_title, money_made: @income_log.money_made, name: @income_log.name, session_id: @income_log.session_id, uid: @income_log.uid } }
    assert_redirected_to income_log_url(@income_log)
  end

  test "should destroy income_log" do
    assert_difference('IncomeLog.count', -1) do
      delete income_log_url(@income_log)
    end

    assert_redirected_to income_logs_url
  end
end
