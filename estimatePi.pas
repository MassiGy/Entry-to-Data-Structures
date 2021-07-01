Program estimatePi;
const radius =1;

var x,y, distence : Real;
    inCircle, inSquare,i,num : Integer;

Function estimate_pifn(num : Integer):Real;
Begin
 inCircle :=0;
 inSquare :=0;
 for i:=1 to num Do
 Begin

//define a point in the circle which is inside the square a(x,y)

 x:= Random(25)/(Random(25)+25);
  y:= x * Random(2);
 // calculate the distence with the origine O(0,0)
 distence :=Sqrt(x*x + y*y);
// writeln('distence is ', distence);
 //check if the point is inside the circle
if(distence <= sqrt(2)*radius) then
begin
 if(distence <= radius) Then
 Begin
   inCircle := inCircle +1;
 End;
 inSquare :=inSquare +1;
//   writeln('x is ',  x:0:3);
//writeln('y is ', y:0:3);

end;
End;
estimate_pifn:= 4*inCircle/inSquare;
End;


Begin
Randomize;
Writeln('getting ready... Insert a number !');
Write(' more it is high the more accurate resault you get: ');
writeln(estimate_pifn():0:3);
Readln;
End.