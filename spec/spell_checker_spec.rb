require_relative '../lib/spell_checker.rb'

describe '#check_spelling' do

  it 'should return a correctly spelt string' do
    expect(check_spelling(sentence: "hello")).to eq("hello")
  end

  it 'should identify 1 incorrectly spelt word' do
    expect(check_spelling(sentence:"hlleo")).to eq("~hlleo~")
  end

  it 'should identity 1 incorrectly spelt word in a sentence' do
    expect(check_spelling(sentence: "hello nmae")).to eq("hello ~nmae~")
  end

  it 'should identify 2 incorrectly spelt words in a sentence' do
    expect(check_spelling(sentence: "hllo my nmae")).to eq("~hllo~ my ~nmae~")
  end


  it 'should raise an error if given an empty string' do
    expect{ check_spelling(sentence: "") }.to raise_error("This is an error")
  end

  it 'should be able to handle long strings' do
    expect(check_spelling(sentence:"hello my name is oragne")).to eq("hello my name is ~oragne~")
  end

end
