type solid = 
    | Sphere of float*float*float*float
    | Cylinder of float*float*float*float*float*float*float
    | Cube of float*float*float*float*float*float;;

let s1 = Sphere(1.0, 2.0, 3.0, 4.0);;

let volume (s:solid) = 
  match s with
    | Sphere (x, y, z, r)
      -> 4.0*.3.14*.r*.r*.r/.3.0
    | Cylinder (x1, y1, z1, x2, y2, z2, r)
      -> 3.14*.r*.r*.sqrt((x1-.x2)*.(x1-.x2) +. (y1-.y2)*.(y1-.y2) +. (z1-.z2)*.(z1-.z2))
    | Cube (x1, y1, z1, x2, y2, z2)
      -> if x1>x2 then (x1-.x2)*.(x1-.x2)*.(x1-.x2) else (x2-.x1)*.(x2-.x1)*.(x2-.x1);;


let sphr = Sphere(1.0, 2.0, 3.0, 2.0)
in volume sphr;;

let clndr = Cylinder(1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 2.0)
in volume clndr;;

let cbe = Cube(1.0, 2.0, 3.0, 4.0, 5.0, 6.0)
in volume cbe;;

