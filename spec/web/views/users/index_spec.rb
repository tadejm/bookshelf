require 'spec_helper'
require_relative '../../../../apps/web/views/users/index'

describe Web::Views::Users::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/users/index.html.erb') }
  let(:view)      { Web::Views::Users::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
