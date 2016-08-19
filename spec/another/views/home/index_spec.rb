require 'spec_helper'
require_relative '../../../../apps/another/views/home/index'

describe Another::Views::Home::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/another/templates/home/index.html.erb') }
  let(:view)      { Another::Views::Home::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
