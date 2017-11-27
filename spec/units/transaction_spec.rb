require './lib/transaction'

describe Transaction do
  context '#initialize' do
    before(:each) {
      @transaction = Transaction.new(:credit)
    }
    it 'should initialize with a date' do
      expect(@transaction.date).to eq Date.new
    end
    it 'should initialize with a type' do
      expect(@transaction.type).to eq :credit
    end
    it 'should raise error if type is invalid' do
      expect { Transaction.new(:test_invalid) }.to raise_error 'Invalid transaction type'
    end
  end
end