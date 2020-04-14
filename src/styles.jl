abstract type AbstractStyle end

"""
    DefaultStyle

The default formatting style. See the style section of the documentation
for more details.
"""
struct DefaultStyle <: AbstractStyle
    innerstyle::Union{Nothing,AbstractStyle}
end
DefaultStyle() = DefaultStyle(nothing)
@inline getstyle(s::DefaultStyle) = s.innerstyle === nothing ? s : s.innerstyle
