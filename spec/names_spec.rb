require './names'

describe Names do
  describe '#get_name' do
    it 'returns the name input by the user' do
      allow(Names).to receive(:gets).and_return('John', '35')
      expect(Names.get_name).to eq(%w[John 35]) # ['John', '35']
    end
    it 'raises an exception if name entered is empty' do
      allow(Names).to receive(:gets).and_return('     ', '35')
      expect { Names.get_name }.to raise_error(InvalidNameError)
    end
  end
  describe '#greet' do
    it 'displays the name in a string' do
        expect { Names.greet('John') }.to output("Hello there, John !\n").to_stdout
    end
  end
end
