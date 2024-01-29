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
        tempIndex = randText.indexOf
        tempArr = playerGuess.split("")

        p tempArr
    end
end

startGame