require './lib/connect_four'
describe Connect do
    describe '#game_finished' do
        it 'counts 4 in a row as a win' do
            connect = Connect.new
            connect.row1[0] = 'r'
            connect.row1[1] = 'r'
            connect.row1[2] = 'r'
            connect.row1[3] = 'r'
            expect(connect.game_finished).to eql('win')
        end

        it 'counts 4 in a column as a win' do
            connect = Connect.new
            connect.row1[0] = 'b'
            connect.row2[0] = 'b'
            connect.row3[0] = 'b'
            connect.row4[0] = 'b'
            expect(connect.game_finished).to eql('win')
        end

        it 'counts an upward diagonal 4 as a win' do
            connect = Connect.new
            connect.row2[3] = 'r'
            connect.row3[4] = 'r'
            connect.row4[5] = 'r'
            connect.row5[6] = 'r'
            expect(connect.game_finished).to eql('win')
        end

        it 'counts an downward diagonal 4 as a win' do
            connect = Connect.new
            connect.row4[1] = 'r'
            connect.row3[2] = 'r'
            connect.row2[3] = 'r'
            connect.row1[4] = 'r'
            expect(connect.game_finished).to eql('win')
        end

        it 'counts a full board with no connecting 4 pieces as a tie' do
            connect = Connect.new
            connect.row1[0] = 'r'
            connect.row1[1] = 'b'
            connect.row1[2] = 'r'
            connect.row1[3] = 'b'
            connect.row1[4] = 'r'
            connect.row1[5] = 'b'
            connect.row1[6] = 'r'
            connect.row2[0] = 'b'
            connect.row2[1] = 'r'
            connect.row2[2] = 'b'
            connect.row2[3] = 'r'
            connect.row2[4] = 'b'
            connect.row2[5] = 'r'
            connect.row2[6] = 'b'
            connect.row3[0] = 'r'
            connect.row3[1] = 'b'
            connect.row3[2] = 'r'
            connect.row3[3] = 'b'
            connect.row3[4] = 'r'
            connect.row3[5] = 'b'
            connect.row3[6] = 'r'
            connect.row4[0] = 'r'
            connect.row4[1] = 'b'
            connect.row4[2] = 'r'
            connect.row4[3] = 'b'
            connect.row4[4] = 'r'
            connect.row4[5] = 'b'
            connect.row4[6] = 'r'
            connect.row5[0] = 'b'
            connect.row5[1] = 'r'
            connect.row5[2] = 'b'
            connect.row5[3] = 'r'
            connect.row5[4] = 'b'
            connect.row5[5] = 'r'
            connect.row5[6] = 'b'
            connect.row6[0] = 'r'
            connect.row6[1] = 'b'
            connect.row6[2] = 'r'
            connect.row6[3] = 'b'
            connect.row6[4] = 'r'
            connect.row6[5] = 'b'
            connect.row6[6] = 'r'
            expect(connect.game_finished).to eql('tie')
        end
    end

    describe 'drop_token' do
        it 'places a token in the desired column' do
            connect = Connect.new
            connect.drop_token(4, 'r')
            expect(connect.row1[3]).to eql('r')
        end

        it 'layers tokens aboves existing tokens' do
            connect = Connect.new
            connect.drop_token(4, 'r')
            connect.drop_token(4, 'b')
            expect(connect.row2[3]).to eql('b')
        end
    end

    describe 'switch_turn' do
        it 'changes the turn' do
            connect = Connect.new
            connect.switch_turn
            expect(connect.turn).to eql(2)
        end
    end
end