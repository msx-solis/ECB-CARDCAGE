rotate (90,0,0)
difference() {
    union () {
        difference(){
            union() {
                cube([254,185,13] );//suelo principal toca la tarjeta
                translate([(20.32*0+1.8),0,0]) cube([20.32-1.8,185,14]); //alto de guias
                translate([(20.32*1+1.8),0,0]) cube([20.32-1.8,185,14]);
                translate([(20.32*2+1.8),0,0]) cube([20.32-1.8,185,14]);
                translate([(20.32*3+1.8),0,0]) cube([20.32-1.8,185,14]);
                translate([(20.32*4+1.8),0,0]) cube([20.32-1.8,185,14]);
                translate([(20.32*5+1.8),0,0]) cube([20.32-1.8,185,14]);
                translate([(20.32*6+1.8),0,0]) cube([20.32-1.8,185,14]);//preparado para 12
                translate([(20.32*7+1.8),0,0]) cube([20.32-1.8,185,14]);
                translate([(20.32*8+1.8),0,0]) cube([20.32-1.8,185,14]);
                translate([(20.32*9+1.8),0,0]) cube([20.32-1.8,185,14]);
                translate([(20.32*10+1.8),0,0]) cube([20.32-1.8,185,14]);
                translate([(20.32*11+1.8),0,0]) cube([20.32-1.8,185,14]);
                translate([(20.32*12+1.8),0,0]) cube([8,185,14]);
            }


            translate([(20.32*0+3.6),-5,-1]) cube([20.32-1.8*3,195,16]);
            translate([(20.32*1+3.6),-5,-1]) cube([20.32-1.8*3,195,16]);
            translate([(20.32*2+3.6),-5,-1]) cube([20.32-1.8*3,195,16]);
            translate([(20.32*3+3.6),-5,-1]) cube([20.32-1.8*3,195,16]);
            translate([(20.32*4+3.6),-5,-1]) cube([20.32-1.8*3,195,16]);
            translate([(20.32*5+3.6),-5,-1]) cube([20.32-1.8*3,195,16]);
            translate([(20.32*6+3.6),-5,-1]) cube([20.32-1.8*3,195,16]);
            translate([(20.32*7+3.6),-5,-1]) cube([20.32-1.8*3,195,16]);
            translate([(20.32*8+3.6),-5,-1]) cube([20.32-1.8*3,195,16]);
            translate([(20.32*9+3.6),-5,-1]) cube([20.32-1.8*3,195,16]);
            translate([(20.32*10+3.6),-5,-1]) cube([20.32-1.8*3,195,16]);
            translate([(20.32*11+3.6),-5,-1]) cube([20.32-1.8*3,195,16]);
            translate([(20.32*12+3.6),-5,-1]) cube([9-1.8*3,195,16]);
                
        }
        cube([254,5,3]); //travesaños de union
        //translate ([0,45,0]) cube([254,5,3]); //antes a 30
        //translate ([0,60,0]) cube([254,5,10]); 
        translate ([0,90,0]) cube([254,5,3]);
        //translate ([0,120,0]) cube([254,5,10]);
        //translate ([0,130,0]) cube([254,5,3]);
        translate ([0,180,0]) cube([254,5,3]);
        difference () {
            union () { //soportes de taladro
                translate([(20.32*0+3.2),0,0]) cube([20.32-1.8,31,3]);
                translate([(20.32*5+3.2),0,0]) cube([20.32-1.8,31,3]);
                translate([(20.32*0+3.2),30*5,0]) cube([20.32-1.8,31,3]);
                translate([(20.32*5+3.2),30*5,0]) cube([20.32-1.8,31,3]);
            } // taladros
            translate ([(20.32*0+11),30*0+15,-1*10/2]) cylinder (r=3.2/2, h=20, $fn=100, center=true); 
            translate ([(20.32*5+11),30*0+15,-1*10/2]) cylinder (r=3.2/2, h=10, $fn=100); 
            translate ([(20.32*0+11),30*5+15,-1*10/2]) cylinder (r=3.2/2, h=10, $fn=100); 
            translate ([(20.32*5+11),30*5+15,-1*10/2]) cylinder (r=3.2/2, h=10, $fn=100); 
        }
    }  //quito partes para que entre en mi impresora
    translate([-1.8+0.02,-1,-1]) cube([1.8*3,200,20]); //elimino principio 
    translate([20.32*6+3.6,-1,-1]) cube([200,200,20]); //elimino ult. 6 (no caben)
}
