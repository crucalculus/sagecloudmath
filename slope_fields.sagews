︠fd73b477-f3c6-45dd-8183-af574326518f︠
x,y = var('x y')
plot_slope_field( lambda x,y: x, (-2,2), (-2,2) , figsize=3, title=r'$\frac{dy}{dx} = x$')
︡57a80c04-bbf3-4999-84e1-2c11c8ba5a61︡{"once":false,"file":{"show":true,"uuid":"a396f87c-7169-47cd-b488-b9fbeb2ed450","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute4dc1/7084/tmp_wmMFOH.png"}}︡
︠e09a0cac-a2ea-4019-9aa7-282212008991︠
plot_slope_field( lambda x,y: y, (-2,2), (-2,2) , figsize=3, title=r'$\frac{dy}{dx} = y$')
︡1cbe7025-a302-447e-b862-33b2437b7fa6︡{"once":false,"file":{"show":true,"uuid":"5478c747-341c-49c7-ace4-fae2481f985e","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute4dc1/7084/tmp_sUndIZ.png"}}︡
︠3c909e46-dfc0-453f-8d2e-c78936d7345e︠
plot_slope_field( lambda x,y: sin(x), (-2,2), (-2,2) , figsize=3, title=r'$\frac{dy}{dx} = \sin(x)$')
︡704d3277-cd0f-43b5-b422-a5e51c23c8b0︡{"once":false,"file":{"show":true,"uuid":"07f651ed-b0ca-4105-b919-efdec9393cbc","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute4dc1/7084/tmp_6Y4qnd.png"}}︡
︠4c36b666-3c0e-439c-9087-bce99de064cc︠
plot_slope_field( lambda x,y: cos(x), (-2,2), (-2,2) , figsize=3, title=r'$\frac{dy}{dx} = \cos(x)$')
︡0f833e89-c78f-44ba-b314-87813a0282a9︡{"once":false,"file":{"show":true,"uuid":"44704948-fddc-4f65-b54e-bf4786377b0d","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute4dc1/7084/tmp_zu7hLT.png"}}︡
︠2654a5ca-9845-4d5e-a272-a9faf046c953︠

show(integrate( x*sin(x/2) , x ))
︡eeab16e5-7b39-41a7-8d37-7a1888300cbd︡{"tex":{"tex":"-2 \\, x \\cos\\left(\\frac{1}{2} \\, x\\right) + 4 \\, \\sin\\left(\\frac{1}{2} \\, x\\right)","display":true}}︡
︠f8521009-8cf1-4e03-b37a-5ba6fce4765a︠
var('t')
show(integrate( t^2*cos(t) , t ))
︡e2cba442-520f-4902-aee0-55d7aeea73a1︡{"stdout":"t\n"}︡{"tex":{"tex":"2 \\, t \\cos\\left(t\\right) + {\\left(t^{2} - 2\\right)} \\sin\\left(t\\right)","display":true}}︡
︠426966db-aac2-40a7-815f-438775422a8d︠
show(integrate( x*ln(x) , x, 1, 2 ))
︡012cd6e0-11b6-416b-98d9-d15bac7c942e︡{"tex":{"tex":"2 \\, \\log\\left(2\\right) - \\frac{3}{4}","display":true}}︡
︠9d74216c-94ff-47c7-a8c7-7cfafce08ad0︠
show(integrate( x*e^x , x ))
︡acca836f-8f8b-4073-afd3-2b2b721a7e79︡{"tex":{"tex":"{\\left(x - 1\\right)} e^{x}","display":true}}︡
︠2e9c10b3-f33e-4fef-83ef-1a51bbf335a3︠
plot( [x*sin(x), x, -x] , xmin=-0.5, xmax=3*pi+0.5 )
︡31f533c8-1205-4390-8fe0-d2f05ea426a9︡{"once":false,"file":{"show":true,"uuid":"45ee9b2a-7cf0-422f-afee-cd3f0e84cfee","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute4dc1/23766/tmp_pwldcN.png"}}︡
︠cdff603d-3d83-4fcd-8ec1-9b027fb244fe︠
plot( [x*cos(x), x, -x] , xmin=-0.5, xmax=3*pi+0.5 )
︡ba239048-60c9-435d-bb19-1691da3d62df︡{"once":false,"file":{"show":true,"uuid":"2c50e8df-04aa-49da-a7b2-b62dd3203ef5","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute4dc1/23766/tmp_CmNy6Z.png"}}︡
︠6153904c-d556-4827-b635-55468389e2f7︠

︠e4effea1-03d9-4494-8565-899ff3203fb4︠
# setup a list containing the x-values
x_values = [0, pi, 2*pi, 3*pi, 4*pi, 5*pi]


show(integrate( x*sin(x) , x, 0, pi ))
︡b8db860e-047f-4607-b52e-e7414a3bbadf︡{"tex":{"tex":"\\pi","display":true}}︡
︠35eca382-c6dc-4e6b-a3d3-fbf0ed6000bf︠
show(integrate( x*sin(x) , x, pi, 2*pi ))
︡8caf70e7-2cb9-4217-ae64-c2aae0dba831︡{"tex":{"tex":"-3 \\, \\pi","display":true}}︡
︠17aec9e4-7eef-4369-829a-7def84977204︠
show(integrate( x*sin(x) , x, 2*pi, 3*pi ))
︡e4f7ea93-33cf-4390-a8ff-08b4b0f4b532︡{"tex":{"tex":"5 \\, \\pi","display":true}}︡
︠54f1b791-3521-45f5-800f-736504afd255︠
f = x*e^(-x)
G = plot(f, 0,2, fill = 'axis', fillcolor='#ccc', xmin=-0.25,xmax=5.25,ymin=-0.5, ymax=1.5)
G += plot(f, 2,5, fill = 'axis', fillcolor='#222', xmin=-0.25,xmax=5.25,ymin=-0.5, ymax=1.5)
help = text(r"$f(2)\approx%s$"%N(f(x=2),3),(1,1))
arrow = arrow2d((1, 1-0.2), (2, f(x=2)+0.1), color='red')
G += point((2, f(x=2)), color='black', size=100, alpha=1)
show(G+help+arrow)
︡7ff6365a-0586-42c2-add1-9fbaffe4b3e6︡{"once":false,"file":{"show":true,"uuid":"d054c944-f36c-4387-a70a-8cf35fe4d0b9","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute4dc1/23766/tmp_6oQNR7.png"}}︡
︠a30601d8-4786-4507-a2fc-8beaf0cad32c︠


L = [[6*cos(pi*i/100)+5*cos((6/2)*pi*i/100),6*sin(pi*i/100)-5*sin((6/2)*pi*i/100)] for i in range(200)]
p = polygon(L, color='lightblue')
t = text("hypotrochoid", (5,4), rgbcolor=(1,0,0))
show(p+t)
︡9def9c10-89b8-44be-b222-c5b35d87e7f6︡{"once":false,"file":{"show":true,"uuid":"ab3637b7-f97f-45b5-8101-2df9995a145f","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute4dc1/23766/tmp_TonPDA.png"}}︡
︠03b6bbd4-2160-41c6-83f4-0d21ec127b49︠
points = [(0,0) , (0,2) , (2,2) , (2,0)]
shape = polygon(points, color='blue',alpha=0.5)
show(shape, axes=False, aspect_ratio=True)
︡8f0fff36-265d-41f5-b7aa-c5b79f58dfb5︡{"once":false,"file":{"show":true,"uuid":"9116eef6-4ad0-47f8-928e-e89aae8abaf6","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute4dc1/3110/tmp_2Q6OiK.png"}}︡
︠a734544d-74ed-4f72-8c02-96208989073c︠
var('x y')
diff_eq = [x, y, x+y, x-y, y-x, x*y]
p1=plot_slope_field( diff_eq[0], (-2,2), (-2,2) , figsize=3, title=r'$\frac{dy}{dx} = %s$'%latex(diff_eq[0]))
p2=plot_slope_field( diff_eq[1], (-2,2), (-2,2) , figsize=3, title=r'$\frac{dy}{dx} = %s$'%latex(diff_eq[1]))
p3=plot_slope_field( diff_eq[2], (-2,2), (-2,2) , figsize=3, title=r'$\frac{dy}{dx} = %s$'%latex(diff_eq[2]))
p4=plot_slope_field( diff_eq[3], (-2,2), (-2,2) , figsize=3, title=r'$\frac{dy}{dx} = %s$'%latex(diff_eq[3]))
p5=plot_slope_field( diff_eq[4], (-2,2), (-2,2) , figsize=3, title=r'$\frac{dy}{dx} = %s$'%latex(diff_eq[4]))
p6=plot_slope_field( diff_eq[5], (-2,2), (-2,2) , figsize=3, title=r'$\frac{dy}{dx} = %s$'%latex(diff_eq[5]))
︡9a45fdbd-56b3-43a2-bf68-0727dde1fdda︡{"stdout":"(x, y)\n"}︡
︠f6783d77-05ab-4309-887b-ae9fb3b76637︠
show(p6)
︡dcded86b-fa45-416b-a1ac-c7ec8e1ca736︡{"once":false,"file":{"show":true,"uuid":"efa9c94c-20c9-4b86-9df1-583ea95afd8a","filename":"/projects/71d05d9f-884f-4ae9-80d7-2563cc75a382/.sage/temp/compute4dc1/32728/tmp_qv9CiR.png"}}︡
︠7f270a8c-8f68-4f87-9a1d-114b76faf300︠

# cleaner version!
x,y = var('x y')
diff_eq = [x, y, x+y, x-y, y-x, x*y]

plots = [plot_slope_field( equation, (x,-2,2), (y,-2,2) , figsize=3 , title=r'$\frac{dy}{dx} = %s$'%latex(equation) ) for equation in diff_eq]
#plots[1].show()
counter = 0
output = "\\begin{tabularx}{\\textwidth}{X X}\n"
while counter < len(plots):
    output += "\sageplot{plots[%d]} & \sageplot{plots[%d]} \\\ "%(counter,counter+1)
    counter += 2
output += "\n\end{tabularx}\n"

print output

︡129307ff-fe7f-4307-8eac-365a6749abd4︡{"stdout":"\\begin{tabularx}{\\textwidth}{X X}\n\\sageplot{plots[0]} & \\sageplot{plots[1]} \\\\ \\sageplot{plots[2]} & \\sageplot{plots[3]} \\\\ \\sageplot{plots[4]} & \\sageplot{plots[5]} \\\\ \n\\end{tabularx}\n\n"}︡
︠723e406f-21ae-43ba-94ba-0f70ccbfcfee︠
type(plots)
︡a045d1f1-4773-445b-8d4b-207bfbcda2b5︡{"stdout":"<type 'list'>\n"}︡
︠3f80a255-88d7-4b28-8328-a32c23f6c3a6︠
show(plots[2])
︡e6576cf4-59de-4130-8243-4002fac4697e︡{"tex":{"tex":"\\left[\\text{\\texttt{Graphics{ }object{ }consisting{ }of{ }1{ }graphics{ }primitive}}\\right]","display":true}}︡
︠e648fb60-1a4d-4cbe-a61e-d7acf3f45224︠









