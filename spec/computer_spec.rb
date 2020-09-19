require 'computer'

describe Computer do

  subject(:computer) { Computer.new }
  subject(:computer_options) { Game::DEFAULT_OPTIONS }


  describe 'computer_options' do
    it 'initializes an array of options as default' do
      expect(computer_options).to eq([:rock, :paper, :scissors])
    end
  end

  describe '#computer_choice' do
    it 'chooses the computer_choice' do
      expect(computer_options.sample).to match('paper').or match('rock').or match('scissors')
    end
  end

  describe '#print_computer_choice'
  it 'prints computer choice' do
    computer_choice = computer_options.sample
    printed_computer_choice = "Computer chose #{computer_choice}"
    expect(computer.print_computer_choice).to eq(printed_computer_choice)
  end
end


