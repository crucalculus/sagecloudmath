︠acf5cd1c-ea15-4696-a8a6-b004786ae354︠
plot(x^2)
︡cc8044c8-2f33-4f81-9a92-91341f1dc29b︡{"once":false,"file":{"show":true,"uuid":"ca93a552-3658-487c-9a23-3192be5a0369","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute16a/10285/tmp_W7JR7i.png"}}︡
︠8fe9d1a5-5b4f-488c-a080-4da36d1566e0︠

plot(sin(x))
︡1421dd73-4dc7-4ae9-bc86-1528b78a29c4︡{"once":false,"file":{"show":true,"uuid":"4327c0a0-e466-4b0b-a147-84faacc1dce7","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute16a/10285/tmp_TD5oXJ.png"}}︡
︠bc620771-1fe1-427e-b3b7-a4ce76eb3425i︠
%html
<h1>This is a heading 1</h1>
︡a9900b8d-2a87-4794-a446-4d21c541651f︡{"html":"<h1>This is a heading 1</h1>"}︡
︠787932b7-c78e-421e-96d7-8cc963fc3de4i︠
%md
This is *emphasis*. Pretty cool!
︡40f6ea32-e55f-44e7-ab1a-f5d486b81381︡{"html":"<p>This is <em>emphasis</em>. Pretty cool!</p>\n"}︡
︠673a841a-30de-4ab8-9efa-9e8a24647b19︠

u,v = var('u v')
saddle = plot3d(u^2 - v^2, (u,-2,2), (v,-2,2),opacity=0.5)
sphere((0,0,1), color='red', opacity=0.5, aspect_ratio=[1,1,1]) + saddle
︡ea96f9e8-f539-4d9f-93b3-178e2b4f8d72︡{"html":"<div id=d8b0aa19-338b-443b-9b87-7e2d2e8affe0 style='border:1px solid grey'></div>"}︡{"obj":"{\"foreground\": null, \"camera_distance\": 7.99474030243261, \"height\": null, \"width\": null, \"renderer\": null, \"background\": null}","javascript":{"coffeescript":false,"code":"$('#d8b0aa19-338b-443b-9b87-7e2d2e8affe0').salvus_threejs(obj)"},"once":false}︡
︠0a5d8739-88ab-458a-a2e5-85e4dab9551a︠


G = plot(cos(x), (x, -5, 5), thickness=2, color='green', title='A plot')
P = polygon([[1,2], [5,6], [5,1]],color='red',alpha=0.5)
Q = polygon([(-x,y) for x,y in P[0]], color='blue',alpha=0.5)
R = polygon([(x,-y) for x,y in P[0]], color='brown',alpha=0.5)
S = polygon([(-x,-y) for x,y in P[0]], color='orange',alpha=0.5)

show(P+Q+R+S)

︡466442a5-9f10-47ce-aad6-eb49b764b9ef︡{"once":false,"file":{"show":true,"uuid":"8d5c1c47-56e8-410c-a868-815f9d9baa87","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute6dc2/1531/tmp_wWKoMm.png"}}︡
︠fe60b6b1-083a-4341-bac9-f7a036f05f5d︠

P = polygon([[1,2], [5,6], [5,1]],color='red',alpha=0.5)
Q = polygon([(x,-y) for x,y in P[0]], color='blue',alpha=0.5)
show(P+Q)

︡c89f0e1f-b2af-49c7-bc96-a3efc94ef39f︡{"once":false,"file":{"show":true,"uuid":"0b5c6c6d-77f5-49cc-ab48-2a3b2d9ca551","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute6dc2/1531/tmp_cCNMvK.png"}}︡
︠fc7487fa-4d5a-45ba-af4e-aa78b6051e94︠


show(integrate(x^2,x))
︡23b579e3-d85e-42ed-be83-18f7d89afc75︡{"tex":{"tex":"\\frac{1}{3} \\, x^{3}","display":true}}︡
︠86edf222-70a6-4828-81ef-a4e266dc55b8i︠
%md
# Learning about Integration
## this is heading 2
︡162fe8d2-028b-41b2-8ad5-7f1f2a1fd2a9︡{"html":"<h1>Learning about Integration</h1>\n\n<h2>this is heading 2</h2>\n"}︡
︠d55d998c-be21-43a6-a862-bae9ecac8d97i︠
%md
# Lagrange Error Bound
︡ccf8766b-42bc-4516-94af-0d1d90b83f8b︡{"html":"<h1>Lagrange Error Bound</h1>\n"}︡
︠d815ac23-8f40-4ee5-9978-0c4b1c9472fd︠
# define our function
f(x) = sin(x)
# find a taylor polynomial for f
show(poly = taylor(f,x,0,5))
︡a2872e89-8dcf-4ffa-8d7c-8a0c75706643︡{"stderr":"Error in lines 4-4\nTraceback (most recent call last):\n  File \"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sagemathcloud/sage_server.py\", line 733, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nTypeError: show() takes at least 1 argument (0 given)\n"}︡
︠b2f25e29-8f47-42b9-83b8-20806440045f︠









