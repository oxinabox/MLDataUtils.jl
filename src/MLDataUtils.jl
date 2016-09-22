__precompile__(true)

module MLDataUtils

using LearnBase
import LearnBase: nobs, getobs
import StatsBase: fit, predict, predict!

export

    noisy_function,
    noisy_sin,
    noisy_poly,

    center!,
    rescale!,

    FeatureNormalizer,

    expand_poly,

    load_iris,
    load_line,
    load_sin,
    load_poly,

    fit,
    predict,
    predict!,

    to_one_hot

include("feature_scaling.jl")
include("basis_expansion.jl")
include("noisy_function.jl")
include("datasets.jl")
include("utils.jl")

end
