︠39d7bac6-2321-4105-b533-570aee807843︠
# our main function is sin(x) - x
f(x) = sin(x) - x
plot(f)
︡ae93e54c-13b7-4d5b-ad31-4e1dc0fc1d69︡{"once":false,"file":{"show":true,"uuid":"d71047b5-a511-4dd1-bd3f-ebca561ccdc2","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute6dc2/27867/tmp_OUjmRn.png"}}︡
︠73da4752-8dcb-449c-b3b2-b808bd680b6e︠
# the problem is asking us to find values of x where x < sin(x)
# that's why we formed the function sin(x) - x
# because the problem can be translated into where sin(x) - x > 0
#
# From the preliminary graph, it appears that sin(x) - x is always decreasing except at x=0
# we can confirm this by finding the derivative of f
f_prime = diff(f,x)
latex(f_prime)
plot(f_prime,xmin=-0.1,xmax=0.1)
︡885dc041-45a7-43ed-a24c-e03fef374683︡{"stdout":"x \\ {\\mapsto}\\ \\cos\\left(x\\right) - 1\n"}︡{"once":false,"file":{"show":true,"uuid":"dd023787-650c-4cfb-9f76-265404f5f46d","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute6dc2/27867/tmp_U_UGxB.png"}}︡
︠5ac79f37-5947-468e-b7f2-56b8ae0287a4︠
# so if we pick any closed interval centered at x=0, sin(x) - x will have an absolute maximum at the left endpoint
# which would be a negative value of x.
#
# since sin(x) - x is 0 at x=0, we can conclude that sin(x) - x > 0 for negative values of x

# f_prime has only one critical point at x=0:
solve(f_prime==0,x)

# and so since it's clear the graph of f is positive when x<0 and negative when x>0...

︡785d6875-b548-4930-aa79-4551f0f6c1c4︡{"stdout":"[x == 0]\n"}︡
︠e821a019-6a2d-404c-83ec-bef18e72b4dc︠

# Here's the best difference plot, which shows the max error between sin(x) and x on the interval from -10^(-3) and 10^(-3)

plot(f,xmin=-10^(-3),xmax=10^(-3),title='seventh derivative of $f$')
︡b19cfc06-9da7-4e6f-bb9c-2a058c0a9021︡{"once":false,"file":{"show":true,"uuid":"0e75eaca-ff93-4e0b-8d22-459cb24b67c9","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute6dc2/27867/tmp_VVKKAl.png"}}︡
︠8ab458d3-1b2a-43dc-9af1-7db23245d3bc︠
# Starting new problem here...

k(x) = sin(x^2)
seventh = diff(k,x,7)
︡79ec654c-b243-434a-b3c4-ff451ab87d03︡
︠c984b534-2dbc-4335-b635-a7dd664ba461︠
show(seventh)
︡14507e5d-6db7-43e0-a7a3-b0c5d493be68︡{"tex":{"tex":"x \\ {\\mapsto}\\ -128 \\, x^{7} \\cos\\left(x^{2}\\right) - 1344 \\, x^{5} \\sin\\left(x^{2}\\right) + 3360 \\, x^{3} \\cos\\left(x^{2}\\right) + 1680 \\, x \\sin\\left(x^{2}\\right)","display":true}}︡
︠ee7be8b8-f2e0-4ea4-aa52-fd1c7ad01e2c︠
plot(seventh,xmin=0,xmax=0.9,title='Seventh derivative of $\sin(x^2)$')
︡15c028a4-8fb6-4667-a25a-c74cecfe6689︡{"once":false,"file":{"show":true,"uuid":"436c7a4b-1023-4064-9734-520705bedf98","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute6dc2/27867/tmp_CdWUTv.png"}}︡
︠38e4fb02-251b-40a0-ac8a-cb43bc0b239d︠
latex(seventh)
︡40f92c24-0d2e-4444-b517-8be15978e69a︡{"stdout":"x \\ {\\mapsto}\\ -128 \\, x^{7} \\cos\\left(x^{2}\\right) - 1344 \\, x^{5} \\sin\\left(x^{2}\\right) + 3360 \\, x^{3} \\cos\\left(x^{2}\\right) + 1680 \\, x \\sin\\left(x^{2}\\right)\n"}︡
︠61e77972-1788-4ddb-af1a-6fbdda44efcb︠
# Starting new problem here...

k(x) = sin(x^2)
seventh = diff(k,x,7)
︡0cb4f16b-77c0-4666-96d3-4d657d11b5c9︡
︠492a1cfe-451d-411c-91bd-57ab4994cf16︠
show(seventh)
︡14507e5d-6db7-43e0-a7a3-b0c5d493be68︡{"tex":{"tex":"x \\ {\\mapsto}\\ -128 \\, x^{7} \\cos\\left(x^{2}\\right) - 1344 \\, x^{5} \\sin\\left(x^{2}\\right) + 3360 \\, x^{3} \\cos\\left(x^{2}\\right) + 1680 \\, x \\sin\\left(x^{2}\\right)","display":true}}︡
︠c1e87edb-da7b-4f56-bbc0-0b2922ae1c8e︠
plot(seventh,xmin=0,xmax=0.9,title="Seventh derivative of $\\sin(x^2)$")
︡47e7ebdc-b113-49e7-acd4-a08491821f0b︡{"once":false,"file":{"show":true,"uuid":"2384d117-1e2f-416d-860b-2fa958fa9a0d","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute21dc0/22172/tmp_ihQRXu.png"}}︡
︠87ca79b6-63af-4987-8688-4b26108fd20b︠
latex(seventh)
︡40f92c24-0d2e-4444-b517-8be15978e69a︡{"stdout":"x \\ {\\mapsto}\\ -128 \\, x^{7} \\cos\\left(x^{2}\\right) - 1344 \\, x^{5} \\sin\\left(x^{2}\\right) + 3360 \\, x^{3} \\cos\\left(x^{2}\\right) + 1680 \\, x \\sin\\left(x^{2}\\right)\n"}︡
︠2caa5a7b-65a7-463e-9838-ff3d72979943︠

var('n')
taylor ((x + 1)^n, x, 0, 4)
︡2cdb2d18-9303-4c8a-8c8c-69edcf9dcdf3︡{"stdout":"n\n"}︡{"stdout":"1/24*(n^4 - 6*n^3 + 11*n^2 - 6*n)*x^4 + 1/6*(n^3 - 3*n^2 + 2*n)*x^3 + 1/2*(n^2 - n)*x^2 + n*x + 1\n"}︡
︠61c2d2ba-0055-4a5f-a504-876930beb6c1︠









