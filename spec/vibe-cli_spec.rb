require 'vibe'

describe Vibe::Name do
  it 'generates route' do
    expect(Vibe::Name.route('name')).to eq('route name')
  end
  it 'generates controller' do
    expect(Vibe::Name.controller('name')).to eq('controller name')
  end
end