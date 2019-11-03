function extendedFindSum(v::Vector)
    v = sort(v)
    lower = v[1] + v[2]
    upper = v[length(v)-1] + v[length(v)]
    temp = lower
    while temp <= upper
        println(temp,":")
        i = 1
        j = length(v)
        while i < j
            if v[i] + v[j] == temp
                println("(",v[i],",",v[j],")")
                i += 1
            elseif v[i] + v[j] < temp
                i += 1
            else
                j -= 1
            end
        end
        temp += 1
    end
end

extendedFindSum([1, 3, 8, 12, 7, 11, 9, 4, 2, 10, 5])
