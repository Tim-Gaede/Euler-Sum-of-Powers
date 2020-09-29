### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ a2bb30c4-0083-11eb-0697-6131dd77a5a9
md"""# Euler's Sum of Powers Conjecture


Timothy Gaede

2020-09-27
"""

# ╔═╡ fb07b86a-0083-11eb-3c80-4d6243e9378e
html"In 1769 famed mathematician Leonard Euler conjectured a generalization of Fermat's last theorem.  The conjecture had remained undecided (neither proven nor disproven) for nearly two hundred years when, in 1966,  L. J. Lander and T. R. Parkin disproved it via computer search."

# ╔═╡ e617c44c-0084-11eb-1cfa-7bcc0dfaf706
html"The conjecture states that although three cubes may sum to a cube: <br>
3³ + 4³ + 5³ = 6³ <br><br> two cubes cannot sum to a cube: <br>
a³ + b³ = n³ has no solutions for ℕ₁ (the set of all integers beginning with +1) <br><br><br>
Likewise, although four fourth powers may sum to a fourth power: <br>
30⁴ + 120⁴ + 272⁴ + 315⁴ = 353⁴ (discovered in 1911)<br><br> three or two fourth powers cannot sum to a fourth power: <br><br>
No solutions for ℕ₁:<br> 
a⁴ + b⁴ + c⁴ = n⁴  <br>
a⁴ + b⁴ = n⁴  

<br><br><br>

and <br><br><br>
No solutions for ℕ₁:<br>
a⁵ + b⁵ + c⁵ + d⁵ = n⁵  <br>
a⁵ + b⁵ + c⁵ = n⁵  <br>
a⁵ + b⁵ = n⁵  <br>
<br><br> etc.



"



# ╔═╡ 6f25eb7e-0087-11eb-3901-e370bc548304
html" <br><br>  Lander & Parkin had found an ℕ₁ solution for a⁵ + b⁵ + c⁵ + d⁵ = n⁵ and subsequently published a rather noteworthy paper comprised of just two sentences.
"

# ╔═╡ 0de0c23e-0088-11eb-280d-477eba2a01ca
html"With modern computers, a novice programmer can duplicate Lander & Parkin's accomplishment.<br><br><br>"

# ╔═╡ 157e41e8-008f-11eb-2ded-2f7350706f34
md"""#### Approach"""

# ╔═╡ 249cceee-008a-11eb-2141-6ba6226dd7ae
html"""Our general approach is to first generate an array (don't call it a list) of fifth powers:<br> [1⁵, 2⁵, 3⁵, 4⁵, 5⁵, 6⁵, 7⁵, 8⁵, 9⁵, 10⁵, ...]<br> [1, 32, 243, 1024, 3125, 7776, 16807, 32768, 59049, 100000, ...]<br><br>  Then, we will then continuously select different quartets (a⁵, b⁵, c⁵, d⁵) of these fifth powers and test their sum to see if it is a fifth power.<br><br>How to test if the sum is a fifth power?  We will try two methods.<br><br> 

The first method will test the sum directly to see if it is a fifth power.<br><br>

The second method will search through the array of fifth powers to see if the sum is in there.<br><br><br>"""

# ╔═╡ 3af2305a-0150-11eb-008f-c129aefe2aab
md"""###### The Array"""

# ╔═╡ 6294fd18-0150-11eb-3a8b-7d11dfab45f9
html"There are limits to the default Int64 integer type.  The range of values is from -2⁶³ to 2⁶³ - 1.<br><br>What is the maximum integer that we can raise to the fifth power without incurring integer overflow?"

# ╔═╡ 20482e3c-0144-11eb-0678-993869edefd6
# Possibly the maxiumum integer that can be raised to the 5th power
# without incurring integer overflow
convert(Int64, floor(2^(63/5)))

# ╔═╡ 7b4d3bb4-0151-11eb-0478-d3833e9c2e91
html"<br><br>We should be able to safely raise 6208 to the power of 5:"

# ╔═╡ 402aa05a-0143-11eb-3321-31ea5ee2e384
6208^5

# ╔═╡ b2a18f58-0151-11eb-21f6-d7b2af0dbc68
html"<br><br>Let's try raising 6209 to the power of 5:"

# ╔═╡ 611dc508-0143-11eb-1328-25839347cae1
6209^5

# ╔═╡ bec06704-014f-11eb-19d5-79d6c0046778
html"<br><br>For a⁵ + b⁵ + c⁵ + d⁵ = n⁵, if we were to include duplicate values for a⁵, b⁵, c⁵, or d⁵ (a⁵ ≤ b⁵ ≤ c⁵ ≤ d⁵), what would be the maxium value for a, b, c, or d?  In other words, what is the maximum value for x where 4x⁵ ≤ 6208⁵?"

# ╔═╡ 26074a7e-0144-11eb-11c8-13f3ddb7bc36
convert(Int64, floor((6208^5 / 4)^(1/5)))

# ╔═╡ 787b77e0-0143-11eb-3ce0-3b9e82c69f70
4 * 4704^5

# ╔═╡ ca11f534-0152-11eb-1acb-8bce32da675c
4 * 4704^5 <= 6208^5

# ╔═╡ fda880a6-0149-11eb-3013-e1c5fda800d2


# ╔═╡ 0049c4aa-014a-11eb-0767-8db5c3861ade


# ╔═╡ 002ec6aa-014a-11eb-2fd3-f9fc7fb42e06


# ╔═╡ 0015bb7e-014a-11eb-090b-dbaff379d971


# ╔═╡ fff8e116-0149-11eb-3aed-1b39d7ed60b0
html"https://projecteuclid.org/download/pdf_1/euclid.bams/1183528522"

# ╔═╡ Cell order:
# ╟─a2bb30c4-0083-11eb-0697-6131dd77a5a9
# ╟─fb07b86a-0083-11eb-3c80-4d6243e9378e
# ╟─e617c44c-0084-11eb-1cfa-7bcc0dfaf706
# ╟─6f25eb7e-0087-11eb-3901-e370bc548304
# ╟─0de0c23e-0088-11eb-280d-477eba2a01ca
# ╟─157e41e8-008f-11eb-2ded-2f7350706f34
# ╟─249cceee-008a-11eb-2141-6ba6226dd7ae
# ╟─3af2305a-0150-11eb-008f-c129aefe2aab
# ╟─6294fd18-0150-11eb-3a8b-7d11dfab45f9
# ╠═20482e3c-0144-11eb-0678-993869edefd6
# ╟─7b4d3bb4-0151-11eb-0478-d3833e9c2e91
# ╠═402aa05a-0143-11eb-3321-31ea5ee2e384
# ╟─b2a18f58-0151-11eb-21f6-d7b2af0dbc68
# ╠═611dc508-0143-11eb-1328-25839347cae1
# ╟─bec06704-014f-11eb-19d5-79d6c0046778
# ╠═26074a7e-0144-11eb-11c8-13f3ddb7bc36
# ╠═787b77e0-0143-11eb-3ce0-3b9e82c69f70
# ╠═ca11f534-0152-11eb-1acb-8bce32da675c
# ╠═fda880a6-0149-11eb-3013-e1c5fda800d2
# ╠═0049c4aa-014a-11eb-0767-8db5c3861ade
# ╠═002ec6aa-014a-11eb-2fd3-f9fc7fb42e06
# ╠═0015bb7e-014a-11eb-090b-dbaff379d971
# ╠═fff8e116-0149-11eb-3aed-1b39d7ed60b0
