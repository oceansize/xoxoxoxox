require 'rules'

class TestClass; include Rules; end

describe 'The rules' do

  let(:phantom_grid) { TestClass.new }

  it 'know when a cell value is invalid' do
    expect(phantom_grid.cell_valid?(10)).to be false
  end

end
