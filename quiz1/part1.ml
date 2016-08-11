let electricity_bill (units:int) :float = 
  if units <= 100 then 200.0 +. 1.15*.(float_of_int(units)*.5.0)
  else if units <=200 then 200.0 +. 1.15*.(500.0 +. (float_of_int(units)-.100.0)*.10.0)
  else 200.0 +. 1.15*.(1500.0 +.(float_of_int(units)-.200.0)*.20.0);;


(*let electricity_bill (220:int) :float = 
  if 220 <= 100 then 200.0 +. 1.15*.(float_of_int(220)*.5.0)
  else if 220 <=200 then 200.0 +. 1.15*.(500.0 +. (float_of_int(220)-.100.0)*.10.0)
  else 200.0 +. 1.15*.(1500.0 +.(float_of_int(220)-.200.0)*.20.0);;

  let electricity_bill (220:int) :float = 
  if false then 200.0 +. 1.15*.(float_of_int(220)*.5.0)
  else if false then 200.0 +. 1.15*.(500.0 +. (float_of_int(220)-.100.0)*.10.0)
  else 200.0 +. 1.15*.(1500.0 +.(float_of_int(220)-.200.0)*.20.0);;

  200.0 +. 1.15*.(1500.0 +.(float_of_int(220)-.200.0)*.20.0);;

  2385.0


