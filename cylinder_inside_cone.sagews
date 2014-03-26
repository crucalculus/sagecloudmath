︠a867c274-3439-41ab-9e3f-cf7466b3a47c︠
u,v = var("u,v")
p1 = parametric_plot3d([cos(u)*v, sin(u)*v, 3/2-3*v/2], (u, 0, 2*pi), (v, 0, 1.5), opacity = 0.8, plot_points=[200,200]) # the cone
p2 = parametric_plot3d([cos(u)/2, sin(u)/2, v-3/4], (u, 0, 2*pi), (v, 0, 3/2), plot_points=[200,200]) # the cylinder
show(p1)
︡bb331d07-81ee-47c0-98f6-992f7eb9b248︡{"html":"<div id=e7e95bbd-2c15-4bf7-b7b6-cacea2a61893 style='border:1px solid grey'></div>"}︡{"obj":"{\"foreground\": null, \"camera_distance\": 3.0, \"height\": null, \"width\": null, \"renderer\": null, \"background\": null}","javascript":{"coffeescript":false,"code":"$('#e7e95bbd-2c15-4bf7-b7b6-cacea2a61893').salvus_threejs(obj)"},"once":false}︡
7
︠4164924f-a7ef-4021-8bf1-b132d20264b0︠
u, v = var('u,v')
fx = cos(u)*sin(2*v)
fy = sin(u)*sin(2*v)
fz = sin(v)
parametric_plot3d([fx, fy, fz], (u, 0, 2*pi), (v, 0, 2*pi), frame=False, color="green")
︡247a57e9-0fec-4520-88d5-d414067e1998︡{"html":"<div id=ee2754a3-1351-4f64-8556-2dc0192e80ff style='border:1px solid grey'></div>"}︡{"obj":"{\"foreground\": null, \"camera_distance\": 1.9983779963431396, \"height\": null, \"width\": null, \"renderer\": null, \"background\": null}","javascript":{"coffeescript":false,"code":"$('#ee2754a3-1351-4f64-8556-2dc0192e80ff').salvus_threejs(obj)"},"once":false}︡
︠8e807e02-b76d-413e-8432-a20c4d06b5eb︠
u = var('u')
f=sqrt(u)
revolution_plot3d(f,(u,0,3),show_curve=True,opacity=0.7,parallel_axis='z',axis=(1,1))
︡54a69e07-7356-463f-8460-1177492e8785︡{"html":"<div id=5ac2c1c1-b259-42e7-850f-ff3802fa6c9b style='border:1px solid grey'></div>"}︡{"obj":"{\"foreground\": null, \"camera_distance\": 6.471270446700377, \"height\": null, \"width\": null, \"renderer\": null, \"background\": null}","javascript":{"coffeescript":false,"code":"$('#5ac2c1c1-b259-42e7-850f-ff3802fa6c9b').salvus_threejs(obj)"},"once":false}︡
︠58e4de6e-e09a-4c8d-a5f2-25c221ab76c8︠


h=10; c=0.4; p=0.8;
G = Graphics()
for x in srange(1,h+1):
    l = [[0,x*sqrt(3)],[-x/2,-x*sqrt(3)/2],[x/2,-x*sqrt(3)/2],[0,x*sqrt(3)]]
    G+=line(l,color=hue(c + p*(x/h)))
G.show(figsize=[5,5])
︡911cd8d3-437d-4ef1-9439-459fe10de0e0︡{"once":false,"file":{"show":true,"uuid":"5f50bb25-a14f-406c-8837-ea9b29268a43","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute16a/30827/tmp_VtxV59.png"}}︡
︠68175d4f-54b2-4ee9-85ca-cfa2ca573f2a︠









