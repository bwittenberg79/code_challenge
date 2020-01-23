require 'test_helper'

class ResponseDatumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'valid response_data' do
    response = ResponseDatum.new(uuid: 'x56d79s', created_at: DateTime.now.to_s)
    assert response.valid?
  end

  test 'invalid without uuid' do
    response = ResponseDatum.new(created_at: DateTime.now.to_s)    
    assert response.valid?, 'response data is invalid without a uuid'
    assert_not_nil response.errors[:uuid], 'no validation error for uuid present'
  end

  test 'invalid without created_at' do
    response = ResponseDatum.new(uuid: 'x56d79s')    
    assert response.valid?, 'response data is invalid without a created_at'
    assert_not_nil response.errors[:created_at], 'no validation error for created_at present'
  end
end
