︠be05869d-f873-4464-9db1-454dac80a0b5︠
# polar equation is r = 2+2cos(x)
# so x = (2+2cos(t))cos(t)
# and y = (2+2cos(t))sin(t)
from sage.plot.line import line

G = Graphics();
L = Graphics();

G = polar_plot([2 + 3*cos(x) ], (x, 0, 2*pi), thickness=2,  xmin=-0.4, ymin=-3.2, xmax=5.2, ymax=3.2)

# I think if I put together a list of points, I can use that list to draw lines connecting the origin and each point. In that way,
# I can 'sweep out' the polar area.
# so here is the list of points
Points = [((2+3*cos(t))*cos(t),(2+3*cos(t))*sin(t)) for t in srange(0,2*pi,0.1)]
# show(Points)

# Now draw some lines from the origin to each point
origin = (0,0)
#show(Line(origin, Points[1], {}))
list = []
for i in range(len(Points)):
    if (i<23) or (i>39):
        G += line([origin, Points[i]],color='green')
    else:
        G += line([origin, Points[i]],color='orange')
    list.append(G)

#list.append(G)
c = animate(list, xmin=-0.4, ymin=-3.2, xmax=5.2, ymax=3.2, figsize=[8,8])
#G += line
show(c)
#c.ffmpeg(savefile='polar_sweep_anim.gif',output_format='gif')

︡c887872c-4f22-4dcb-b5bf-069077d63de8︡{"once":false,"file":{"show":true,"uuid":"45319744-fee5-4fc6-ac92-c430eb4130d7","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute16a/18185/tmp_WfQ7du.gif"}}︡
︠30d04cc2-f2b0-4509-bbea-35ba40ad08b5︠
N(0.633*63)
︡a1b41d9a-8b6d-49d0-ab55-0f3958fd0b40︡{"stdout":"39.8790000000000\n"}︡
︠8c0ab116-0d64-499f-a6d3-3142e89b1984︠
t = var('t')
polar_plot([cos(4*t)+6,  0.5 * cos(4*t) + 2.5], (t, 0, 2*pi),color='black', thickness=2, fill=True, fillcolor='orange')
︡ed6738a4-1582-4069-8af1-4f9af2092aa0︡{"once":false,"file":{"show":true,"uuid":"a00360c0-1f75-4127-bcc6-4fb946c97399","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute16a/14839/tmp_jGtMgw.png"}}︡
︠f29f444e-b61d-4f7c-9c6a-6c3c6e504560︠



# http://www.sagemath.org/doc/reference/sage/plot/plot.html
radius = 100 # scale for radius of "unit" circle
graph_params = dict(xmin = -2*radius,    xmax = 360,
    ymin = -(radius+30), ymax = radius+30,
    aspect_ratio=1,
    axes = False)

def sine_and_unit_circle( angle=30, instant_show = True, show_pi=True ):
    ccenter_x, ccenter_y = -radius, 0  # center of cirlce on real coords
    sine_x = angle # the big magic to sync both graphs :)
    current_y = circle_y = sine_y = radius * sin(angle*pi/180)
    circle_x = ccenter_x + radius * cos(angle*pi/180)
    graph = Graphics()
# we'll put unit circle and sine function on the same graph
# so there will be some coordinate mangling ;)
# CIRCLE
    unit_circle = circle((ccenter_x, ccenter_y), radius, color="#ccc")
# SINE
    x = var('x')
    sine = plot( radius * sin(x*pi/180) , (x, 0, 360), color="#ccc" )
    graph += unit_circle + sine
# CIRCLE axis
# x axis
    graph +=  arrow( [-2*radius, 0], [0, 0], color = "#666" )
    graph += text("$(1, 0)$",  [-16, 16],  color = "#666")
# circle y axis
    graph +=  arrow( [ccenter_x,-radius], [ccenter_x, radius], color = "#666" )
    graph += text("$(0, 1)$",  [ccenter_x, radius+15],  color = "#666")
# circle center
    graph += text("$(0, 0)$",  [ccenter_x, 0],  color = "#666")
# SINE x axis
    graph +=  arrow( [0,0], [360, 0], color = "#000" )
# let's set tics
# or http://aghitza.org/posts/tweak_labels_and_ticks_in_2d_plots_using_matplotlib/
# or wayt for http://trac.sagemath.org/sage_trac/ticket/1431
# ['$-\pi/3$', '$2\pi/3$', '$5\pi/3$']
    for x in range(0, 361, 30):
        graph += point( [x, 0] )
        angle_label = ".  $%3d^{\circ}$ " % x
        if show_pi: angle_label += " $(%s\pi) $"% x/180
        graph += text(angle_label,  [x, 0], rotation=-90,
        vertical_alignment='top', fontsize=8, color="#000" )
# CURRENT VALUES
# SINE -- y
    graph +=  arrow( [sine_x,0], [sine_x, sine_y], width=1, arrowsize=3)
    graph +=  arrow( [circle_x,0], [circle_x, circle_y], width=1, arrowsize=3)
    graph +=  line(([circle_x, current_y], [sine_x, current_y]), rgbcolor="#0F0", linestyle = "--", alpha=0.5)
# LABEL on sine
    graph += text("$(%d^{\circ}, %3.2f)$"%(sine_x, float(current_y)/radius),  [sine_x+30, current_y],  color = "#0A0")
# ANGLE -- x
# on sine
    graph += arrow( [0,0], [sine_x, 0], width=1, arrowsize=1, color='red')
# on circle
    graph += disk( (ccenter_x, ccenter_y), float(radius)/4, (0, angle*pi/180), color='red', fill=False, thickness=1)
    graph +=  arrow( [ccenter_x, ccenter_y], [circle_x, circle_y],
                     rgbcolor="#cccccc", width=1, arrowsize=1)
    if instant_show:
        show (graph,  **graph_params)
    return graph

#####################
# make Interaction
######################
@interact
def _( angle = slider([0..360], default=30, step_size=5,
       label="Pasirinkite kampą:    ", display_value=True) ):
    sine_and_unit_circle(angle, show_pi = False)
︡56f51959-c308-426f-870c-783841cd212d︡{"interact":{"style":"None","flicker":false,"layout":[[["angle",12,null]],[["",12,null]]],"id":"f4e246c5-9545-4d57-a114-ca67787e43bc","controls":[{"control_type":"slider","default":30,"var":"angle","width":null,"vals":["0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","127","128","129","130","131","132","133","134","135","136","137","138","139","140","141","142","143","144","145","146","147","148","149","150","151","152","153","154","155","156","157","158","159","160","161","162","163","164","165","166","167","168","169","170","171","172","173","174","175","176","177","178","179","180","181","182","183","184","185","186","187","188","189","190","191","192","193","194","195","196","197","198","199","200","201","202","203","204","205","206","207","208","209","210","211","212","213","214","215","216","217","218","219","220","221","222","223","224","225","226","227","228","229","230","231","232","233","234","235","236","237","238","239","240","241","242","243","244","245","246","247","248","249","250","251","252","253","254","255","256","257","258","259","260","261","262","263","264","265","266","267","268","269","270","271","272","273","274","275","276","277","278","279","280","281","282","283","284","285","286","287","288","289","290","291","292","293","294","295","296","297","298","299","300","301","302","303","304","305","306","307","308","309","310","311","312","313","314","315","316","317","318","319","320","321","322","323","324","325","326","327","328","329","330","331","332","333","334","335","336","337","338","339","340","341","342","343","344","345","346","347","348","349","350","351","352","353","354","355","356","357","358","359","360"],"animate":true,"label":"Pasirinkite kampą:    ","display_value":true}]}}︡
︠f709cfd0-78b8-4eb4-8649-4cbbff73b250︠

K = polar_plot([x + sin(2*x) ], (x, 0, pi), thickness=2,  xmin=-3.5, ymin=-0.5, xmax=1.5, ymax=2.5)
show(K)
︡f4d506dc-f032-4c5c-99a1-ccccb4eaa52f︡{"once":false,"file":{"show":true,"uuid":"bd950e4e-7a1e-4d71-9a02-52a8db181487","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute16a/4323/tmp_l3wue1.png"}}︡
︠ce2ab587-e550-4494-802d-6d95ee5579ae︠
polar_plot([2, 2-sin(x)], (x,0,2*pi), thickness=2)
︡ef6703d1-986b-47ab-be6e-362fb94b85b7︡{"once":false,"file":{"show":true,"uuid":"c92dedd9-783a-40b1-a4a5-0f31825d17a8","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute16a/4323/tmp_d0nY5A.png"}}︡
︠1d628abb-2798-4a5e-8272-accdd3c2440e︠
f = 0.5*(4 - (2*sin(x))^2)
integrate(f, x, 0, pi)
︡0354427e-1a79-4dc3-b021-1dabec6fe20d︡{"stdout":"pi\n"}︡
︠67cb057c-45f2-4f3d-8128-a4e2f2d2850c︠

︠b1d7aacd-c745-4e91-bcd5-7ab05416615ai︠
%html
<h1>
Polar Area Plot #1
</h1>
︡ef66b30b-ca48-464f-aaad-ad3bf8abc8ac︡{"html":"<h1>\nPolar Area Plot #1\n</h1>"}︡
︠06621410-7e56-49c5-a4c3-db3a1fb191d7︠
graph1 = Graphics()
# Draw the two polar curves...
graph1 += polar_plot([3, 4-2*sin(x)], (x,0,2*pi), thickness=2,ymin=-7,ymax=3, color='blue')
var('t') # create the variable t for our parametric equations...
# Draw a line at pi/6
graph1 += parametric_plot( (t, tan(pi/6)*t), (t, 0, 3.9) , color = 'red' )
# Draw a line at 5pi/6
graph1 += parametric_plot( (t, tan(5*pi/6)*t), (t, -3.9, 0) , color = 'red' )
# Add some text labels
graph1 += text(r'$\pi/6$',(4.5,2.5),fontsize=14,rgbcolor=(1,0,0))
graph1 += text(r'$5\pi/6$',(-4.5,2.5),fontsize=14,rgbcolor=(1,0,0))
show(graph1)
︡e0348be8-3d1c-40bd-9f5b-b70449f5b3a4︡{"stdout":"t\n"}︡{"once":false,"file":{"show":true,"uuid":"bf454b71-8bef-4c1c-8388-7fcc31572fa5","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute16a/32718/tmp_VCVupF.png"}}︡
︠39b8635b-50cd-430f-8c39-4c3e18f396f2︠
g=0.5*(9-(4-2*sin(x))^2)
integrate(g,x,pi/6,5*pi/6)
︡1e4f7bcb-9599-4381-aba2-efac3659f1f8︡{"stdout":"-3.0*pi + 7.5*sqrt(3)\n"}︡
︠4fc5a5a4-f4d9-4cc7-8fd5-07c4b3e8bd5e︠
N(9*pi - (-3.0*pi + 7.5*sqrt(3)))
︡e01e75c2-c102-467f-bfc6-f9ee7c8490cd︡{"stdout":"24.7087307863109\n"}︡
︠88d8e065-9b53-4809-b0ba-25912dff4725︠
integrate( 9,x,0,pi/6 ) + integrate( (4-2*sin(x))^2 , x, pi/6, pi/2 )
︡c3a17c8d-55a2-4256-8cae-1dc901ed530f︡{"stdout":"15/2*pi - 15/2*sqrt(3)\n"}︡
︠91bec19d-5acc-402f-b049-e3ca610cd452︠
N(15/2*pi - 15/2*sqrt(3))
︡9596fdfc-24fa-4157-bbf4-492a3c16f906︡{"stdout":"10.5715638451569\n"}︡
︠7565d6d9-db13-4662-bd20-3850f034f9c4︠
15/2*pi - 15/2*sqrt(3) + 9*pi/2
︡9a1ca493-7b0f-4eee-b79e-7e67bebd8289︡{"stdout":"12*pi - 15/2*sqrt(3)\n"}︡
︠f3fc0ee7-d8c1-4c79-ab59-8f45790eaae6︠
N(12*pi - 15/2*sqrt(3))
︡813f4498-299f-476a-b2d4-1a21472632b7︡{"stdout":"24.7087307863109\n"}︡
︠14cc7089-d96e-4b02-87c3-5d1b65064470︠
var('t')
solve( (4-2*sin(t^2))*cos(t^2)+1==0 , t )
︡f6d8c33d-128f-4bdf-ae5a-6be56fcd61dc︡{"stdout":"t\n"}︡{"stdout":"[sin(t^2) == 1/2*(4*cos(t^2) + 1)/cos(t^2)]\n"}︡
︠45466112-ecdc-4188-9e95-86f00e301bba︠
polar_plot([-6*cos(x) , 2-2*cos(x)], (x,0,2*pi), thickness=2,ymin=-7,ymax=3)
︡3a82e819-d208-4c71-b69c-8bfc0e818084︡{"once":false,"file":{"show":true,"uuid":"09fcbf44-0f3b-4b31-b720-0afe39fbe4b2","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute16a/4323/tmp_fDgzEf.png"}}︡
︠16a7489c-e633-4474-bce5-d975f75e3ab1︠
h = (-6*cos(x))^2
k = (2-2*cos(x))^2
integrate( h, x, pi/2, 2*pi/3 ) + integrate( k, x, 2*pi/3, pi )
︡422c453e-6b87-49ab-8dcb-f79f64eb75e1︡{"stdout":"5*pi"}︡{"stdout":"\n"}︡
︠73508eac-0e8c-4e15-b537-619e9427fed4︠
N(5*pi)
︡5d6e9f19-ce6c-42c5-9aa7-e511dbf79085︡{"stdout":"15.7079632679490\n"}︡
︠e425c947-5df1-42fe-8d5d-f725c7cd0847︠
polar_plot([6*sin(3*x)],(x,0,2*pi), thickness=2)  
︡fffa2166-1e3c-4d8b-9c1b-9e5a1cf10f36︡{"once":false,"file":{"show":true,"uuid":"2e342b0d-7cc8-4adb-9e40-1a65df2bfbda","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute16a/4323/tmp_UH5LEV.png"}}︡
︠7640d4e1-1402-4b98-b450-141c66b0821a︠
integrate( 0.5*(3*sin(3*x))^2 , x, 0,       
  pi/3)
︡47a5d4bd-3ade-4590-904e-8890134005da︡{"stdout":"0.75*pi"}︡{"stdout":"\n"}︡
︠ce115162-e376-4a47-b0cc-f9d2d6f5222a︠
polar_plot([3*cos(x), 1+cos(x)], (x,0,2*pi), thickness=2)
︡a0a55c57-0a43-4960-a005-99af588792ed︡{"once":false,"file":{"show":true,"uuid":"12eef6ae-4b76-4a14-bec4-5273f5978afd","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute16a/11764/tmp_oy7wVF.png"}}︡
︠0d13fe66-fd87-4ed4-ae78-770bf7a1485f︠
integrate( (1+cos(x))^2, x, 0, pi/3 ) + integrate( (3*cos(x))^2, x, pi/3, pi/2 )
︡b3bb33df-0ed5-4e85-a7a3-ccc2eff09310︡{"stdout":"5/4*pi - 1/3*(3*sqrt(3)) + sqrt(3)"}︡{"stdout":"\n"}︡
︠030d0aa5-c3de-4a3b-9627-f09f60fe3126︠
N(5/4*pi - 1/3*(3*sqrt(3)) + sqrt(3))
︡915b4a08-60b3-4e71-ac6d-575cbd742ede︡{"stdout":"3.92699081698724\n"}︡
︠333d88db-fc91-4a7e-8154-366f2a8eb467︠


polar_plot([2 + 3*cos(x)], (x, 0, 2*pi),color='black', thickness=2, fill=True, fillalpha=0.5, fillcolor='grey', title=r'$r=2+3\cos(\theta)$')
#T.save('tricky_polar_graph.pdf')
︡2f3d6cd6-80da-4a56-a37e-a32a512d1fde︡{"once":false,"file":{"show":true,"uuid":"98a54574-d542-4252-ab98-662afb7fc6a8","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute16a/32718/tmp_77cAp7.png"}}︡
︠01355c0a-301f-412e-b1fd-088b80569baa︠









