describe Sudoku do
  subject(:sudoku) { described_class.new }

  context 'error thrown if string is not 81 chars' do
    describe '#verify_correct_answer' do
      it 'receives the empty string' do

        string = ''
        expect {sudoku.verify_correct_answer(string)}.to raise_error('incorrect input length')
      end

      it 'receives string less than 81 chars' do
        string = '12345678912345678912345678912345678912345678912345678912345678912345678912345678'
        expect {sudoku.verify_correct_answer(string)}.to raise_error('incorrect input length')
      end

      it 'receives string more than 81 chars' do
        string = '1234567891234567891234567891234567891234567891234567891234567891234567891234567891'
        expect {sudoku.verify_correct_answer(string)}.to raise_error('incorrect input length')
      end
    end
  end

  context 'check each row' do
    describe '#check_rows' do
      it 'returns true if all 9 rows contain the numbers 1 to 9 inclusive' do
        string = '152489376739256841468371295387124659591763428246895713914637582625948137873512964'
        expect(sudoku.verify_correct_answer(string)).to eq(true)
      end
    end
  end

  context 'check each column' do
    describe 'check_columns' do
      it 'returns true if all columns contain only the numbers 1 to 9 inclusive' do
        string = '152489376739256841468371295387124659591763428246895713914637582625948137873512964'
        expect(sudoku.verify_correct_answer(string)).to eq(true)
      end
    end
  end

  # context 'check each square' do
  #   describe 'check_squares' do
  #     it 'returns true if each square contains only the numbers 1 to 9 inclusive' do
  #       string = '152489376739256841468371295387124659591763428246895713914637582625948137873512964'
  #       expect(sudoku.verify_correct_answer(string)).to eq(true)
  #     end
  #   end
  # end
end
# string = '152489376739256841468371295387124659591763428246895713914637582625948137873512964'
