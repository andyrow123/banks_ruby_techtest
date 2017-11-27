require_relative '../../lib/account.rb'

describe Account do

  let(:transaction_1) { double :transaction, amount: 10 }
  let(:transaction_invalid) { double :transaction, amount: -10 }

  it 'should initialize with a empty transactions array' do
    expect(subject.transactions).to be_empty
  end

  context '#balance' do
    it 'should initialize with a 0 balance' do
      expect(subject.balance).to eq 0
    end
  end

  context '#deposit' do
    it { is_expected.to respond_to(:deposit).with(1).argument }

    it 'should add amount to the balance' do
      expect { subject.deposit(transaction_1) }.to change { subject.balance }.by 10
    end

    it 'should add transaction to transactions when depositing into account' do
      subject.deposit(transaction_1)
      expect(subject.transactions).to include(transaction_1)
    end

    it 'should raise error if given a negative amount' do
      expect { subject.deposit(transaction_invalid) }.to raise_error('Amount can not be below zero')
    end
  end

  context '#withdraw' do
    it { is_expected.to respond_to(:withdraw).with(1).argument }

    it 'should subtract amount from the balance' do
      expect { subject.withdraw(transaction_1) }.to change { subject.balance }.by(-10)
    end

    it 'should raise error if given a negative amount' do
      expect { subject.withdraw(transaction_invalid) }.to raise_error('Amount can not be below zero')
    end

  end
end
