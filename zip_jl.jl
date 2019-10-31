
function myZip(v1::Vector, v2::Vector)
    list_1 = v1
    list_2 = v2
    deck = []
    i = 1
    while i <= min(length(list_1),length(list_2))
        card = (list_1[i],list_2[i])
        push!(deck,card)
        i+=1
    end
    print(deck)
end

myZip([1,2,3,4,5],[1,4])
