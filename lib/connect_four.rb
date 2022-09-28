class Connect
    attr_accessor :row1, :row2, :row3, :row4, :row5, :row6, :row7, :turn
    def initialize
        @row1 = ["1", "2", "3", "4", "5", "6", "7"]
        @row2 = ["1", "2", "3", "4", "5", "6", "7"]
        @row3 = ["1", "2", "3", "4", "5", "6", "7"]
        @row4 = ["1", "2", "3", "4", "5", "6", "7"]
        @row5 = ["1", "2", "3", "4", "5", "6", "7"]
        @row6 = ["1", "2", "3", "4", "5", "6", "7"]
        @player1symbol = 'r'
        @player2symbol = 'b'
        @blankrow1 = ["1", "2", "3", "4", "5", "6", "7"]
        @blankrow2 = ["1", "2", "3", "4", "5", "6", "7"]
        @blankrow3 = ["1", "2", "3", "4", "5", "6", "7"]
        @blankrow4 = ["1", "2", "3", "4", "5", "6", "7"]
        @blankrow5 = ["1", "2", "3", "4", "5", "6", "7"]
        @blankrow6 = ["1", "2", "3", "4", "5", "6", "7"]
        @turn = 1
    end

    def game_finished
        for i in 0..3 do 
            if @row1[i] == @row1[i + 1] && @row1[i + 1] == @row1[i + 2] && @row1[i + 2] == @row1[i + 3] && (@row1[i] == 'r' || @row1[i] == 'b')
                return 'win'
            elsif @row2[i] == @row2[i + 1] && @row2[i + 1] == @row2[i + 2] && @row2[i + 2] == @row2[i + 3] && (@row2[i] == 'r' || @row2[i] == 'b')
                return 'win'
            elsif @row3[i] == @row3[i + 1] && @row3[i + 1] == @row3[i + 2] && @row3[i + 2] == @row3[i + 3] && (@row3[i] == 'r' || @row3[i] == 'b')
                return 'win'
            elsif @row4[i] == @row4[i + 1] && @row4[i + 1] == @row4[i + 2] && @row4[i + 2] == @row4[i + 3] && (@row4[i] == 'r' || @row4[i] == 'b')
                return 'win'    
            elsif @row5[i] == @row5[i + 1] && @row5[i + 1] == @row5[i + 2] && @row5[i + 2] == @row5[i + 3] && (@row5[i] == 'r' || @row5[i] == 'b')
                return 'win'
            elsif @row6[i] == @row6[i + 1] && @row6[i + 1] == @row6[i + 2] && @row6[i + 2] == @row6[i + 3] && (@row6[i] == 'r' || @row6[i] == 'b')
                return 'win'
            end
        end
        for i in 0..6
            if @row1[i] == @row2[i] && @row2[i] == @row3[i] && @row3[i] == @row4[i] && (@row1[i] == 'r' || @row1[i] == 'b')
                return 'win'
            elsif @row2[i] == @row3[i] && @row3[i] == @row4[i] && @row4[i] == @row5[i] && (@row2[i] == 'r' || @row2[i] == 'b')
                return 'win'
            elsif @row3[i] == @row4[i] && @row4[i] == @row5[i] && @row5[i] == @row6[i] && (@row3[i] == 'r' || @row3[i] == 'b')
                return 'win'
            end
        end
        for i in 0..3
            if @row1[i] == @row2[i+1] && @row2[i+1] == @row3[i+2] && @row3[i+2] == @row4[i+3] && (@row1[i] == 'r' || @row1[i] == 'b')
                return 'win'
            elsif @row2[i] == @row3[i+1] && @row3[i+1] == @row4[i+2] && @row4[i+2] == @row5[i+3] && (@row2[i] == 'r' || @row2[i] == 'b')
                return 'win'
            elsif @row3[i] == @row4[i+1] && @row4[i+1] == @row5[i+2] && @row5[i+2] == @row6[i+3] && (@row3[i] == 'r' || @row3[i] == 'b')
                return 'win'
            end
        end
        for i in 0..3
            if @row6[i] == @row5[i+1] && @row5[i+1] == @row4[i+2] && @row4[i+2] == @row3[i+3] && (@row6[i] == 'r' || @row6[i] == 'b')
                return 'win'
            elsif @row5[i] == @row4[i+1] && @row4[i+1] == @row3[i+2] && @row3[i+2] == @row2[i+3] && (@row5[i] == 'r' || @row5[i] == 'b')
                return 'win'
            elsif @row4[i] == @row3[i+1] && @row3[i+1] == @row2[i+2] && @row2[i+2] == @row1[i+3] && (@row4[i] == 'r' || @row4[i] == 'b')
                return 'win'
            end
        end
        if (((@row1 & @blankrow1).any? == false) && ((@row2 & @blankrow2).any? == false) && ((@row3 & @blankrow3).any? == false) && ((@row4 & @blankrow4).any? == false) && ((@row5 & @blankrow5).any? == false) && ((@row6 & @blankrow6).any? == false))
            return 'tie'
        end
    end
    def drop_token(column, symbol)
        index = column.to_i - 1
        if @row1[index] == column
            @row1[index] = symbol
        elsif @row2[index] == column
            @row2[index] = symbol
        elsif @row3[index] == column
            @row3[index] = symbol
        elsif @row4[index] == column
            @row4[index] = symbol
        elsif @row5[index] == column
            @row5[index] = symbol
        elsif @row6[index] == column
            @row6[index] = symbol
        else
            puts 'That was an invalid move. Your turn has been skipped. Play by the rules next time'
        end
    end

    def switch_turn 
        @turn += 1
    end

    def play_game
        until game_finished == 'win' || game_finished == 'tie'
            if @turn % 2 == 1 
                playerturn = 1
            else
                playerturn = 2
            end
            p @row6
            p @row5
            p @row4
            p @row3
            p @row2
            p @row1
            puts "Player #{playerturn}, choose a column(1-7) to drop your token in"
            spot = gets.chomp
            if playerturn == 1 
                drop_token(spot, @player1symbol)
            else
                drop_token(spot, @player2symbol)
            end
            switch_turn
        end
        if game_finished == 'win'
            puts "Congratulations Player #{playerturn}, you win!"
        else
            puts "It's a tie!"
        end
    end
end

connect = Connect.new
connect.play_game


    