require 'test_helper'

class FormControllerTest < ActionController::TestCase
  test "should get firstpage" do
    get :firstpage
    assert_response :success
  end

end
