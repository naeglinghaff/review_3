require_relative '../lib/spell_checker.rb'

describe '#spell_checker' do

  it 'should return a correctly spelt string' do
    expect(spell_checker("hello")).to eq("hello")
  end

  it 'should identify 1 incorrectly spelt word' do
    expect(spell_checker("hlleo")).to eq("~hlleo~")
  end
end
