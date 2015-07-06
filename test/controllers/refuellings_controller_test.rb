require 'test_helper'

class RefuellingsControllerTest < ActionController::TestCase
  setup do
    @refuelling = refuellings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:refuellings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create refuelling" do
    assert_difference('Refuelling.count') do
      post :create, refuelling: { average_consumption: @refuelling.average_consumption, date: @refuelling.date, gas_station: @refuelling.gas_station, liter_price: @refuelling.liter_price, liters: @refuelling.liters, mileage: @refuelling.mileage, total_value: @refuelling.total_value, traveled_mileage: @refuelling.traveled_mileage, vehicle_id: @refuelling.vehicle_id }
    end

    assert_redirected_to refuelling_path(assigns(:refuelling))
  end

  test "should show refuelling" do
    get :show, id: @refuelling
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @refuelling
    assert_response :success
  end

  test "should update refuelling" do
    patch :update, id: @refuelling, refuelling: { average_consumption: @refuelling.average_consumption, date: @refuelling.date, gas_station: @refuelling.gas_station, liter_price: @refuelling.liter_price, liters: @refuelling.liters, mileage: @refuelling.mileage, total_value: @refuelling.total_value, traveled_mileage: @refuelling.traveled_mileage, vehicle_id: @refuelling.vehicle_id }
    assert_redirected_to refuelling_path(assigns(:refuelling))
  end

  test "should destroy refuelling" do
    assert_difference('Refuelling.count', -1) do
      delete :destroy, id: @refuelling
    end

    assert_redirected_to refuellings_path
  end
end
