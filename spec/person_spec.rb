require './person'

describe Person do
  let(:person) { Person.new('John Doe', 21) }

  it 'can be instantiated' do
    expect(person).not_to be_nil
    expect(person).to be_an_instance_of Person
  end

  describe '.name' do
    it 'returns the name' do
      expect(person.name).to eq 'John Doe'
    end
  end

  describe '.age' do
    it 'returns the age' do
      expect(person.age).to eq 21
    end
  end

  describe '.adult?' do
    it 'returns true if age >= 18' do
      expect(person.adult?).to eq(true)
    end
    it 'returns false if age < 18' do
      person2 = Person.new('Jane', 17)
      expect(person2.adult?).to eq(false)
    end
  end
end
