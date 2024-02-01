def startGame   
    myFile = File.open("/home/han/Belajar/hangman/10000word.txt")
    myData = myFile.readlines.map(&:chomp).select { |x| x.length >= 5 }
    
    randText = myData[(Random.rand(myData.length))]
    randArr = Array.new(randText.length, "_")

    p randArr
    p randText

    print "Guess the word: "
    playerGuess = gets.chomp!

    if randText.include?(playerGuess) == true
        #tempArr = playerGuess.split("")
        tempIndex1 = randText.index(playerGuess)
        tempIndex2 = randText.rindex(playerGuess)
        

        randArr[tempIndex1] = playerGuess
        randArr[tempIndex2] = playerGuess
        p randArr
    elsif randText.include?(playerGuess) == false
        p randArr
    end

end

startGame