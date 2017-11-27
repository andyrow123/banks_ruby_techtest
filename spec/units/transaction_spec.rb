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
  end
end