︠20038979-6655-406a-9417-4ec1d74462ce︠
# solutions to the precalculus partial fraction #1 and #2 worksheets
#
# the key for combining two or more fractions is the function .full_simplify()
f = ((3/(x-2))+(2/(x-1)))
simplified = f.full_simplify()
show (f)
show(simplified)
︡96a97eea-7de9-4456-a47b-b2e7eceea820︡{"tex":{"tex":"\\frac{2}{x - 1} + \\frac{3}{x - 2}","display":true}}︡{"tex":{"tex":"\\frac{5 \\, x - 7}{x^{2} - 3 \\, x + 2}","display":true}}︡
︠3af2fbed-09ed-494c-919e-7f48047d9e94︠
expanded = simplified.partial_fraction()
show(expanded)
︡63ea2376-8332-4a7b-9ae8-575a6ee694e8︡{"tex":{"tex":"\\frac{2}{x - 1} + \\frac{3}{x - 2}","display":true}}︡
︠bb7e6c62-5d30-4c37-ab4a-cc7fe8b13ac4︠
latex(f)
︡51b5c2c2-35e7-4247-b0ff-d759cd497af7︡{"stdout":"\\frac{2}{x - 1} + \\frac{3}{x - 2}\n"}︡
︠264a5f84-d466-4b46-abf3-b8cce1837725︠
latex(simplified)
︡a5b53c58-9c9f-4230-8635-d6d083a198aa︡{"stdout":"\\frac{5 \\, x - 7}{x^{2} - 3 \\, x + 2}\n"}︡
︠22e6b806-262f-4df5-9da2-6425fa48d120︠









