function extendedLongestString(sen::AbstractString)
    words = split(sen, " ")
    words[findmax(length.(words))[2]]
    l = length(words)
    result = zeros(l);
    for i in 1:l
        result[length(words[i])] += 1
    end
    for i in 1:l
        if length.(words[i]) == findmax(result)[2]
            println(words[i])
        end
    end
end

extendedLongestString("This is a four letter cat")
