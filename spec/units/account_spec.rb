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

  context '#credit' do
    it { is_expected.to respond_to(:credit).with(1).argument }

    it 'should add credit amount to the balance' do
      expect { subject.credit(transaction_1) }.to change { subject.balance }.by 10
    end

    it 'should add transaction to transactions when crediting account' do
      subject.credit(transaction_1)
      expect(subject.transactions).to include(transaction_1)
    end

    it 'should raise error if given a negative amount' do
      expect { subject.credit(transaction_invalid) }.to raise_error('Amount can not be below zero')
    end
  end

  context '#debit' do
    it { is_expected.to respond_to(:debit).with(1).argument }

    it 'should subtract debit amount from the balance' do
      expect { subject.debit(transaction_1) }.to change { subject.balance }.by(-10)
    end

    it 'should raise error if given a negative amount' do
      expect { subject.debit(transaction_invalid) }.to raise_error('Amount can not be below zero')
    end

  end
end
