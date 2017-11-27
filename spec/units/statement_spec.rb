require './lib/statement'

describe Statement do
  let(:transactions) { double :transactions }
  context '#initialize' do
    before(:each) {
      @statement = Statement.new(transactions)
    }
    it 'should initialize with list of transactions' do
      expect(@statement.transactions).to eq transactions
    end

  end
end
