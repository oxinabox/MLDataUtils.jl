

# create a one-hot matrix given class labels
function to_one_hot(y::AbstractVector)
    yint = map(yi->round(Int,yi)+1, y)
    # @show size(yint), minimum(yint), maximum(yint)
    nclasses = maximum(yint)
    hot = zeros(Float64, nclasses, length(y))
    for (i,yi) in enumerate(yint)
        hot[yi,i] = 1.0
    end
    hot
end
