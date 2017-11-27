require './lib/transaction'

describe Transaction do
  context '#initialize' do
    it 'should initialize with a date' do
      expect(subject.date).to eq Date.new
    end
  end
end