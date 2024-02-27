module Utils

Fix2_more(fn, Y) = (Ŷ, vP) -> fn(Ŷ, Y, vP)


is_number(c) = (c in ['1','2','3','4','5','6','7','8','9','0'])
string_val(::Val{T}) where T = "$T"

remove!(a, item) = deleteat!(a, findfirst(x->x==item, a))

select(c, t, f) = c ? t : f


let singleton = nothing
  global static_data(data) = (singleton === nothing && (singleton = data); singleton)  
end
static_data_fn(data) = () -> static_data(data)


end # module Utils
