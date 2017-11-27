require './lib/statement'

describe Statement do
  let(:transactions) { double :transactions }
  context '#initialize' do
    before(:each) {
      @statement = Statement.new(transactions, '27/11/2017', '27/12/2017')
    }

    it 'should initialize with list of transactions' do
      expect(@statement.transactions).to eq transactions
    end

    it 'should initialize with a start date' do
      expect(@statement.start_date).to eq Date.parse('27/11/2017')
    end

    it 'should initialize with a end date' do
      expect(@statement.end_date).to eq Date.parse('27/12/2017')
    end
  end
end
