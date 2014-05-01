︠3df25899-9207-40ee-aa7c-468020136e29︠
p = plot(1/(x-3),xmin=-2,xmax=8,ymin=-10,ymax=10, detect_poles=True)
show(p, svg=True)
︡72f17388-f7e3-4bc5-945d-effd102ec2d8︡{"once":false,"file":{"show":true,"uuid":"9097c7aa-7bdf-4c72-9dd7-4a8193c3f93d","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute4dc1/19686/tmp_OkWgcf.svg"}}︡
︠a6a425d6-aed3-4d01-b84b-ee5ccb9320e8︠
x = var('x')
f1 = -2*x+1
f2 = (1/2)*x+2
f3 = -x-1
hole_radius = 0.05
piece = Piecewise([[(0,2),f1],[(-2,0),f2],[(-3,-2),f3]])
p = plot(piece , xmin=-3, xmax=2, rgbcolor='black', aspect_ratio=1, zorder=2)
circ1 = circle((0,1), hole_radius, rgbcolor='black', zorder=1)
circ2 = circle((0,2), hole_radius, fill=True, rgbcolor='black', zorder=1)
p.axes_width(1)
p.axes_labels(['$x$','$y$'])
p.tick_label_color('red')
p+circ1+circ2
︡907caafc-6ab6-4a17-b355-9bfa22670d64︡{"once":false,"file":{"show":true,"uuid":"f0a6d3e1-fa6c-4db7-b49e-9e2a3563330d","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute4dc1/10606/tmp_tPQ78O.png"}}︡
︠a55ce576-369b-4eef-9678-8acbba5e6c04︠

P = line([(-2,-3), (3,4)], thickness=4, alpha=0.5, color='red')
p=P[0]
p.set_zorder(2)
#p.options()['zorder']
Q = line([(-2,-4), (3,5)], thickness=4,zorder=1, alpha=0.5, color='blue')
P+Q # blue line on top
q=Q[0]
q.set_zorder(3)
P+Q # teal line on top
#q.options()['zorder']
︡12859d07-5f7c-482f-865e-84ff15759220︡{"once":false,"file":{"show":true,"uuid":"1eb48b95-e6eb-43da-aa73-16bce8153168","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute4dc1/7654/tmp_230M2w.png"}}︡{"once":false,"file":{"show":true,"uuid":"0a4f899d-e10e-464b-9e76-94f9987d55eb","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute4dc1/7654/tmp_sEYjbW.png"}}︡
︠d90f63de-fad1-4c53-a438-02b8bccb3988︠

# Moving a point along a curve
# Define the parametric equations
x, y, t = var('x y t')
x_t = t
x2_t = 2*t
y_t = t^2
y2_t = (2*t)^2
f = x^2
# Create the graphics object and construct the plot
G = Graphics()
G = plot(f , (x,-2,2), xmin=-2, xmax=2)
# create a list of t-values we will use
t_list = srange(-2,2,0.1)
list_of_graphics = []
for i in t_list:
   p1 = circle((x_t(i),y_t(i)), 0.03)
   p2 = circle((x2_t(i),y2_t(i)), 0.03)
   current_time = text(r't=%5.3f'%i,(1,2))
   current_x = text(r'x(t)=%5.3f'%x_t(i),(1,1.8))
   current_y = text(r'y(t)=%5.3f'%y_t(i),(1,1.6))
   list_of_graphics.append(G+p+p2+current_time+current_x+current_y)

animate(list_of_graphics)

    
︡3a2b6d3f-08a3-495e-955c-2780a484bf9d︡{"once":false,"file":{"show":true,"uuid":"b5601163-f67f-4c18-b005-05b89c02f1c0","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute4dc1/7654/tmp_LLdP9N.gif"}}︡
︠a5dafae3-7d90-4097-8302-cd205d9b15aa︠


︠ec8f07a2-4f08-4814-8ea4-9899fd793d5c︠
range(len(t_list))
︡f9e2d249-5835-4ae6-8e0b-188a8f8bf56e︡{"stdout":"[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39]\n"}︡
︠b698c90d-0a0b-4a2f-9642-6d65bd12270d︠










