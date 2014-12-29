require './lib/inject'

describe Array do 

  context 'With a symbol' do

    it 'Can add numbers together' do
      expect([1,2,3,4].inject(:+)).to eq 10
      expect([1,2,3,4].jake_inject(:+)).to eq 10
    end

    it 'Can minus numbers from each other' do
      expect([1,2,3,4].inject(:-)).to eq -8
      expect([1,2,3,4].jake_inject(:-)).to eq -8
    end

    it 'Can multiply numbers together' do
      expect([1,2,3,4].inject(:*)).to eq 24
      expect([1,2,3,4].jake_inject(:*)).to eq 24
    end

  end

  context 'With a block' do

    it 'Can add numbers together' do
      expect([1,2,3,4].inject {|memo,item| memo + item}).to eq 10
      expect([1,2,3,4].jake_inject {|memo,item| memo + item}).to eq 10
    end

    it 'Can minus numbers from each other' do
      expect([1,2,3,4].inject {|memo,item| memo - item}).to eq -8
      expect([1,2,3,4].jake_inject {|memo,item| memo - item}).to eq -8
    end

    it 'Can multiply numbers together' do
      expect([1,2,3,4].inject {|memo,item| memo * item}).to eq 24
      expect([1,2,3,4].jake_inject {|memo,item| memo * item}).to eq 24
    end

  end

  context 'With an argument and a block' do

    it 'Can add numbers together' do
      expect([1,2,3,4].inject(10) {|memo,item| memo + item}).to eq 20
      expect([1,2,3,4].jake_inject(10) {|memo,item| memo + item}).to eq 20
    end

    it 'Can minus numbers from each other' do
      expect([1,2,3,4].inject(10) {|memo,item| memo - item}).to eq 0
      expect([1,2,3,4].jake_inject(10) {|memo,item| memo - item}).to eq 0
    end

    it 'Can add multiply numbers together' do
      expect([1,2,3,4].inject(10) {|memo,item| memo * item}).to eq 240
      expect([1,2,3,4].jake_inject(10) {|memo,item| memo * item}).to eq 240
    end

  end


  context 'With a symbol argument' do

    it 'Can add numbers together' do
      expect([1,2,3,4].inject(10, :+)).to eq 20
      expect([1,2,3,4].jake_inject(10, :+)).to eq 20
    end

    it 'Can minus numbers from each other' do
      expect([1,2,3,4].inject(10, :-)).to eq 0
      expect([1,2,3,4].jake_inject(10, :-)).to eq 0
    end

    it 'Can multiply numbers together' do
      expect([1,2,3,4].inject(10, :*)).to eq 240
      expect([1,2,3,4].jake_inject(10, :*)).to eq 240
    end

  end

end