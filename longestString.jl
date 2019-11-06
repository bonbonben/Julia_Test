function longestString(sen::AbstractString)
    words = split(sen, " ")
    words[findmax(length.(words))[2]]
end

longestString("This is programming in Haskell")
