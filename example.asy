import inequations_cg;
import geometry; // for "distance" (pic7)
usepackage("amsmath"); // for "\text" (pic6)

// ------------------------------------

picture pic1;
solonaxis(pic1,"$\sqrt{3}$",sqrt(3),N,rsol,"]");
unitsize(pic1,1cm);
frame f1=pic1.fit();
add(f1);

// ------------------------------------

picture pic2;
solonaxis(pic2,"$\frac{\sqrt{2}}{2}$",sqrt(2)/2,N,rsol,"[",deepgreen,solutions=false);
unitsize(pic2,1cm);
frame f2=pic2.fit();
f2=shift(1cm,-2cm)*f2;
add(f2);

// ------------------------------------

picture pic3;
solonaxis(pic3,"$a$",0,S,lsol,"]",brown,NoTicks(),solutions=false,hach=false);
unitsize(pic3,1cm);
frame f3=pic3.fit();
f3=shift(2cm,-4cm)*f3;
add(f3);

// ------------------------------------

picture pic4;
sol2onaxis(pic4,"$-1$",-1,N,rsol,"[",red,"$2$",2,N,lsol,"[",blue,true);
unitsize(pic4,1cm);
frame f4=pic4.fit();
f4=shift(2cm,-6cm)*f4;
add(f4);

// ------------------------------------

picture pic5;
sol2onaxis(pic5,"$\frac{1}{3}$",1/3,N,rsol,"]",red,
"$\frac{1}{10}$",1/10,N,rsol,"]",blue,xMin=-.3,xMax=.7,true);
size(pic5,7cm);
frame f5=pic5.fit();
f5=shift(1cm,-8cm)*f5;
add(f5);

// ------------------------------------

picture pic6;
real x1=0,x2=3,xm=(x1+x2)/2;

sol2onaxis(pic6,"",0,dirsol1=rsol,"]","",3,dirsol2=lsol,"[",NoTicks(),true);

xtick(pic6,"$L$",1,1.5*N,linewidth(bp));  // Pour placer la graduation
xtick(pic6,1,S,linewidth(bp));                     // Il faut la Nord et la Sud
label(pic6,format("$\underbrace{\hspace{%f cm}}
_{\text{intervalle ouvert contenant  } L}$",x2-x1),(xm,-.9));
label(pic6,"Pour $n \geq p$, $u_n$ est dans l'intervalle",(xm,.8));
unitsize(pic6,1cm);
frame f6=pic6.fit();
f6=shift(1cm,-10cm)*f6;
add(f6);

// ------------------------------------

picture pic7;
pair pA=(2,0),
pC=(5,0),
pB=(pA+pC)/2;
pen p7=1.2bp+brown;

draw(pic7,(0,0)--(7,0),Arrow);
draw(pic7,pA--pC,p7);

bracket(pic7,"$a-r$",pA.x,S,"[",p7);
bracket(pic7,"$a+r$",pC.x,S,"]",p7);

dot(pic7,"$a$",pB,1.5S,brown);
distance(pic7,"$r$",pB,pC,-5mm,Arrows(2mm));
unitsize(pic7,1cm);
frame f7=pic7.fit();
f7=shift(-1cm,-12cm)*f7;
add(f7);

// ------------------------------------

picture pic8;
pen p8=bp+deepblue;
real mini=2, maxi=5;

xlimits(pic8,.3,6.7);
xaxis(pic8,Ticks("%"),Arrow);
bracket(pic8,"mini",mini,S,"[",p8);
bracket(pic8,"maxi",maxi,S,"]",p8);

add("hachure",hatch(H=2mm,dir=NE,deepblue));
hatching(pic8,mini,maxi,"hachure");
unitsize(pic8,1cm);
frame f8=pic8.fit();
f8=shift(-1cm,-14cm)*f8;
add(f8);

// ------------------------------------

picture pic9;
interval(pic9,-3,"]",2,"]",xMin=-4.2,xMax=3.2,1.5bp+deepmagenta);
size(pic9,8cm);
frame f9=pic9.fit();
f9=shift(3cm,-16cm)*f9;
add(f9);
