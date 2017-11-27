require_relative '../../lib/account.rb'

describe Account do
  context '#balance' do
    it 'should initialize with a 0 balance' do
      expect(subject.balance).to eq 0
    end
  end
end