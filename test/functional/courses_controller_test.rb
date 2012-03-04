require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Course.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Course.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to courses_url
  end
end
