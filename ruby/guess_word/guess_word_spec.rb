require_relative 'guess_word'

describe Guess_word do
  let(:word) {Guess_word.new("hello")}
  
  it "takes given word and makes it secret" do 
    expect(word.makes_secret).to eq ['_', '_', '_', '_', '_']
  end

  it "checks if letter has already been guessed" do
    expect(word.passed_guesses('h')).to eq true
  end

  it "checks if letter is a correct guess" do
    expect(word.is_correct?('a')).to eq false
  end

  it "calls two methods and if they both return true enters correct guess" do
    expect(word.current_guess('l')).to eq [nil, nil, 'l', 'l']
  end

end