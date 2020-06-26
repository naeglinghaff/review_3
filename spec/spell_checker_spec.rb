require_relative '../lib/spell_checker.rb'

describe '#spell_checker' do

  it 'should return a correctly spelt string' do
    expect(spell_checker("hello my name is Orange")).to eq("hello my name is Orange")
  end
end
