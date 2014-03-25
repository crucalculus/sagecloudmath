## -*- encoding: utf-8 -*-
# This file was *autogenerated* from the file embed_test.sagetex.sage.
from sage.all_cmdline import *   # import sage library
_sage_const_3 = Integer(3); _sage_const_2 = Integer(2); _sage_const_1 = Integer(1); _sage_const_0 = Integer(0); _sage_const_6 = Integer(6); _sage_const_5 = Integer(5); _sage_const_4 = Integer(4); _sage_const_8 = Integer(8); _sage_const_200 = Integer(200); _sage_const_23 = Integer(23); _sage_const_21 = Integer(21); _sage_const_41 = Integer(41); _sage_const_1269 = Integer(1269); _sage_const_1p5 = RealNumber('1.5'); _sage_const_0p8 = RealNumber('0.8'); _sage_const_12 = Integer(12); _sage_const_58 = Integer(58); _sage_const_30 = Integer(30); _sage_const_19 = Integer(19); _sage_const_54 = Integer(54); _sage_const_35 = Integer(35); _sage_const_36 = Integer(36); _sage_const_158760 = Integer(158760)## This file (embed_test.sagetex.sage) was *autogenerated* from embed_test.tex with sagetex.sty version 2012/01/16 v2.3.3-69dcb0eb93de.
import sagetex
_st_ = sagetex.SageTeXProcessor('embed_test', version='2012/01/16 v2.3.3-69dcb0eb93de', version_check=True)
_st_.useimagemagick = True
try:
 _st_.inline(_sage_const_0 , latex(number_of_partitions(_sage_const_1269 )))
except:
 _st_.goboom(_sage_const_8 )
try:
 _st_.inline(_sage_const_1 , latex(factor(_sage_const_158760 )))
except:
 _st_.goboom(_sage_const_12 )
_st_.blockbegin()
try:
     __tmp__=var("x"); g = symbolic_expression(x**_sage_const_6 -_sage_const_3 *x**_sage_const_2 +_sage_const_3 *x-_sage_const_4 ).function(x);
     __tmp__=var("x"); h = symbolic_expression((_sage_const_2 *x - _sage_const_4 )**_sage_const_6 ).function(x);
except:
 _st_.goboom(_sage_const_19 )
_st_.blockend()
try:
 _st_.inline(_sage_const_2 , latex(g(x)))
except:
 _st_.goboom(_sage_const_21 )
try:
 _st_.inline(_sage_const_3 , latex(factor(g(x))))
except:
 _st_.goboom(_sage_const_21 )
try:
 _st_.inline(_sage_const_4 , latex(expand((_sage_const_2 *x - _sage_const_4 )**_sage_const_6 )))
except:
 _st_.goboom(_sage_const_23 )
_st_.blockbegin()
try:
     __tmp__=var("x"); f = symbolic_expression(exp(x) * sin(_sage_const_2 *x)).function(x)
except:
 _st_.goboom(_sage_const_30 )
_st_.blockend()
try:
 _st_.inline(_sage_const_5 , latex(f(x)))
except:
 _st_.goboom(_sage_const_35 )
try:
 _st_.inline(_sage_const_6 , latex(diff(f, x, _sage_const_2 )(x)))
except:
 _st_.goboom(_sage_const_36 )
try:
 _st_.plot(_sage_const_0 , format='notprovided', _p_=plot(f, -_sage_const_2 , _sage_const_2 , figsize=_sage_const_3 ))
except:
 _st_.goboom(_sage_const_41 )
_st_.blockbegin()
try:
     u,v = var("u,v")
     G = parametric_plot3d([cos(u)*v, sin(u)*v, _sage_const_3 /_sage_const_2 -_sage_const_3 *v/_sage_const_2 ], (u, _sage_const_0 , _sage_const_2 *pi), (v, _sage_const_0 , _sage_const_1p5 ), opacity = _sage_const_0p8 , plot_points=[_sage_const_200 ,_sage_const_200 ]) # the cone
  # G = graphs.CubeGraph(5)
except:
 _st_.goboom(_sage_const_54 )
_st_.blockend()
try:
 _st_.plot(_sage_const_1 , format='png', _p_=G.plot3d(engine='tachyon'))
except:
 _st_.goboom(_sage_const_58 )
_st_.endofdoc()
