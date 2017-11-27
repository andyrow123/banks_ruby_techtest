require './lib/transaction'

describe Transaction do
  context '#initialize' do
    before(:each) {
      @transaction = Transaction.new(:credit, 10)
    }

    it 'should initialize with a date' do
      expect(@transaction.date).to eq Date.new
    end

    it 'should initialize with a type' do
      expect(@transaction.type).to eq :credit
    end

    it 'should raise error if type is invalid' do
      expect { Transaction.new(:test_invalid, 10) }.to raise_error 'Invalid transaction type'
    end

    it 'should initialize with an amount' do
      expect(@transaction.amount).to eq 10
    end

    it 'should raise error if amount is 0' do
      expect { Transaction.new(:credit, 0) }.to raise_error 'Transaction must be more than 0'
    end
  end
end