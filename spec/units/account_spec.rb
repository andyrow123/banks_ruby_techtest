require_relative '../../lib/account.rb'

describe Account do
  context '#balance' do
    it 'should initialize with a 0 balance' do
      expect(subject.balance).to eq 0
    end
  end

  context '#credit' do
    it { is_expected.to respond_to(:credit).with(1).argument }

    it 'should add credit amount to the balance' do
      expect { subject.credit(10) }.to change { subject.balance }.by 10
    end
  end

  context '#debit' do
    it { is_expected.to respond_to(:debit).with(1).argument }
  end
end
