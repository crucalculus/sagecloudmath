︠39d7bac6-2321-4105-b533-570aee807843︠
# our main function is sin(x) - x
f(x) = sin(x) - x
plot(f)
︡782b4701-2102-4220-9dea-73db52962c21︡{"once":false,"file":{"show":true,"uuid":"2723ff34-7dcd-443e-9fae-c73404c3a18b","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute6dc2/15306/tmp_mjeYyw.png"}}︡
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
︡2e1de949-fb5b-4df0-b929-cba2032c9731︡{"stdout":"x \\ {\\mapsto}\\ \\cos\\left(x\\right) - 1\n"}︡{"once":false,"file":{"show":true,"uuid":"12c94808-731c-483c-8398-81a8ddbf7499","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute6dc2/15306/tmp_gc7KUf.png"}}︡
︠5ac79f37-5947-468e-b7f2-56b8ae0287a4︠
# so if we pick any closed interval centered at x=0, sin(x) - x will have an absolute maximum at the left endpoint
# which would be a negative value of x.
#
# since sin(x) - x is 0 at x=0, we can conclude that sin(x) - x > 0 for negative values of x

# f_prime has only one critical point at x=0:
solve(f_prime==0,x)
︡83750e88-19b8-4fef-9f64-64b161030acd︡{"stdout":"[x == 0]\n"}︡

# and so since it's clear the graph of f is positive when x<0 and negative when x>0...

︠e821a019-6a2d-404c-83ec-bef18e72b4dc︠

# Here's the best difference plot, which shows the max error between sin(x) and x on the interval from -10^(-3) and 10^(-3)

plot(f,xmin=-10^(-3),xmax=10^(-3))
︡4bcfef48-d94a-4225-973b-cff3a8390d6d︡{"once":false,"file":{"show":true,"uuid":"49f061cf-8556-4acc-adfe-5af3449a1f4b","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute6dc2/15306/tmp_apIQnO.png"}}︡
︠8ab458d3-1b2a-43dc-9af1-7db23245d3bc︠
# Starting new problem here...

k(x) = sin(x^2)
seventh = diff(k,x,7)
︡31ddb47b-e51f-4b98-b0bd-ba59c61c76eb︡
︠c984b534-2dbc-4335-b635-a7dd664ba461︠
show(seventh)
︡14507e5d-6db7-43e0-a7a3-b0c5d493be68︡{"tex":{"tex":"x \\ {\\mapsto}\\ -128 \\, x^{7} \\cos\\left(x^{2}\\right) - 1344 \\, x^{5} \\sin\\left(x^{2}\\right) + 3360 \\, x^{3} \\cos\\left(x^{2}\\right) + 1680 \\, x \\sin\\left(x^{2}\\right)","display":true}}︡
︠ee7be8b8-f2e0-4ea4-aa52-fd1c7ad01e2c︠
plot(seventh,xmin=0,xmax=0.9,title="Seventh derivative of sin(x^2)")
︡7ab5ba03-3602-4935-b27f-769e361858be︡{"once":false,"file":{"show":true,"uuid":"750d3f05-a171-4c87-b59d-0d0adb43fa8f","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute6dc2/15306/tmp_pwUOkj.png"}}︡
︠38e4fb02-251b-40a0-ac8a-cb43bc0b239d︠
latex(seventh)
︡40f92c24-0d2e-4444-b517-8be15978e69a︡{"stdout":"x \\ {\\mapsto}\\ -128 \\, x^{7} \\cos\\left(x^{2}\\right) - 1344 \\, x^{5} \\sin\\left(x^{2}\\right) + 3360 \\, x^{3} \\cos\\left(x^{2}\\right) + 1680 \\, x \\sin\\left(x^{2}\\right)\n"}︡
︠61e77972-1788-4ddb-af1a-6fbdda44efcb︠









