require 'rules'

class TestClass; include Rules; end

describe 'The rules' do

  let(:phantom_grid) { TestClass.new }

  it 'know when a cell value is invalid' do
    expect(phantom_grid.cell_valid?(10)).to be false
  end

  it 'has a list of all winning combinations' do
    expect(Rules::WINNING_COMBINATIONS).to eq [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  end

end
