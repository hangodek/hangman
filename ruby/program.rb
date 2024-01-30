$myFile = File.open("/home/han/Belajar/hangman/10000word.txt")
$myData = $myFile.readlines.map(&:chomp).select { |x| x.length >= 5 }

$randText = $myData[(Random.rand($myData.length))]
$randArr = Array.new($randText.length, "_")

$myTurn = 0


def startGame
    if $myTurn < 6
        nil
    elsif $myTurn >= 6
        puts "You Lose !, You are out of turn"
        return
    end

    print "Guess the word: "
    $playerGuess = gets.chomp!
    if $playerGuess.length > 1 || $playerGuess.length < 1
        puts "One word only!"
        return
    end

    if $randText.include?($playerGuess) == true
        correctAnswer
        startGame
    elsif $randText.include?($playerGuess) == false
        puts "Your answer is wrong!"
        p $randArr
        $myTurn += 1
        startGame
    end

end

def correctAnswer
    #tempArr = playerGuess.split("")
    tempIndex1 = $randText.index($playerGuess)
    tempIndex2 = $randText.rindex($playerGuess)
    

    $randArr[tempIndex1] = $playerGuess
    $randArr[tempIndex2] = $playerGuess
    p $randArr
    $myTurn += 1
end

startGame