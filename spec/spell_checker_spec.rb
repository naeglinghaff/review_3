require_relative '../lib/spell_checker.rb'

describe '#spell_checker' do

  it 'should return a correctly spelt string' do
    expect(spell_checker("hello")).to eq("hello")
  end

  it 'should identify 1 incorrectly spelt word' do
    expect(spell_checker("hlleo")).to eq("~hlleo~")
  end

  it 'should identity 1 incorrectly spelt word in a sentence' do
    expect(spell_checker("hello nmae")).to eq("hello ~nmae~")
  end

  it 'should identify 2 incorrectly spelt words in a sentence' do
    expect(spell_checker("hllo my nmae")).to eq("~hllo~ my ~nmae~")
  end
end
