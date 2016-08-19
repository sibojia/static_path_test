require 'spec_helper'
require_relative '../../../../apps/another/controllers/home/index'

describe Another::Controllers::Home::Index do
  let(:action) { Another::Controllers::Home::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
