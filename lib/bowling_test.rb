class Bowling
    def initialize
        @score = 0
        @times = 0
        @temp = 0
        @spare = false
    end
    def add_score(pins)
        @times += 1
        if @times % 2 == 0
            @temp += pins
            if @temp == 10
                @spare = true
            else
                @score += @temp
                @temp = 0
            end
            
        else
            if @spare == true
                p "入った！"
                @temp += pins
                @score += @temp
                @temp = pins
                @spare = false
                
            else
                @score += pins
                @temp = @score
                t
            end
        end
        p @times
        p "倒したピン=>#{pins}"
        p "得点=>#{@score}"
        p "引継ぎ=>#{@temp}"

    end
    def total_score
        @score
    end
    def calc_score

    end
end