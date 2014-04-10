︠632e40a0-f168-4070-b6bb-f0b6e7fb066d︠
var('x')
m = (1/(x-2)) + (1/(x+2))
︡60dfb0a4-a4f9-4fef-89b0-566e65d691e4︡{"stdout":"x\n"}︡
︠0239cf61-0c35-4655-9a1d-03a204c45512︠
type(m)
︡8d471e76-1ed2-49f2-a327-8c59da3c116d︡{"stdout":"<type 'sage.symbolic.expression.Expression'>\n"}︡
︠8f9beef5-c3a0-4570-8a0b-2b77a1396e05︠
simplified = m.full_simplify()
︡c1fa49c9-6ee4-4347-8728-e803b8e96b1f︡
︠b648e4ac-ec8d-4c97-bbeb-17bacd09bd5a︠
type(simplified)
︡a8b9add0-f7af-42db-bc18-c14a95da0fd6︡{"stdout":"<type 'sage.symbolic.expression.Expression'>\n"}︡
︠f634f50e-a8a1-4ece-a57e-e6dc26418fa2︠
show(simplified)
︡89729131-7f3c-4df7-a7ac-edfc99425653︡{"tex":{"tex":"\\frac{2 \\, x}{x^{2} - 4}","display":true}}︡
︠50ee797c-d9cd-42b7-a9ad-61b27b4abe54︠
show(m)
︡b5aee1e7-2a13-434f-bfee-a1991d477c28︡{"tex":{"tex":"\\frac{1}{x + 2} + \\frac{1}{x - 2}","display":true}}︡
︠3083a3e5-3b38-4000-8cf4-8375440aacf5︠
type(x)
︡c55522f6-74fd-4ab3-bb70-4e2b0f8964bc︡{"stdout":"<type 'sage.symbolic.expression.Expression'>\n"}︡
︠761fb302-9c11-47f1-8e46-32609743dc00︠
from sage.graphs.graph_latex import check_tkz_graph
check_tkz_graph()
g = graphs.CompleteGraph(6)
opts = g.latex_options()
g.set_latex_options(tkz_style = 'Art')
print opts.tkz_picture()
︡5d2b5f7c-16e8-4831-ac57-4d3da35dc93a︡{"stdout":"\\begin{tikzpicture}\n%\n\\GraphInit[vstyle=Art]\n%\n\\useasboundingbox (0,0) rectangle (5.0cm,5.0cm);\n%\n\\Vertex[L=\\hbox{$0$},x=2.5cm,y=5.0cm]{v0}\n\\Vertex[L=\\hbox{$1$},x=0.0cm,y=3.75cm]{v1}\n\\Vertex[L=\\hbox{$2$},x=0.0cm,y=1.25cm]{v2}\n\\Vertex[L=\\hbox{$3$},x=2.5cm,y=0.0cm]{v3}\n\\Vertex[L=\\hbox{$4$},x=5.0cm,y=1.25cm]{v4}\n\\Vertex[L=\\hbox{$5$},x=5.0cm,y=3.75cm]{v5}\n%\n\\Edge[](v0)(v1)\n\\Edge[](v0)(v2)\n\\Edge[](v0)(v3)\n\\Edge[](v0)(v4)\n\\Edge[](v0)(v5)\n\\Edge[](v1)(v2)\n\\Edge[](v1)(v3)\n\\Edge[](v1)(v4)\n\\Edge[](v1)(v5)\n\\Edge[](v2)(v3)\n\\Edge[](v2)(v4)\n\\Edge[](v2)(v5)\n\\Edge[](v3)(v4)\n\\Edge[](v3)(v5)\n\\Edge[](v4)(v5)\n%\n\\end{tikzpicture}\n"}︡
︠dd432b0a-c062-4588-bfde-0466c1999d7e︠









