require "test_helper"

class CalcControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get index_url
    assert_response :success
  end
    
  test 'new testing page' do
    get new_url
    assert_response :success
  end
    
  test 'result testing page' do
    get result_url, params: { number: '10',
    source_numbers: '6 28 14 5 28 28 6 2 6 6' }
    assert_response :success
  end
    
  test 'test values' do
    get result_url, params: { number: '10',
    source_numbers: '6 28 14 5 28 28 6 2 6 6' }
    assert_equal assigns[:arr], [[6, 28], [28, 28, 6], [6, 6]]
  end

end
