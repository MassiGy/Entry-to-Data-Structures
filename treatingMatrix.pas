Program matrixGames;
	 Const n=6;

Type	 container= Array[1..n,1..n]of Integer;

var i,j,x : Integer;
    matrix: container;


Procedure filler(var matrix : container);
Begin
 for i:=1 to n Do
 Begin
  for j:=1 to n Do
	Begin

	  matrix[i,j]:=Random(601)+1200;
	End;
 End;
End;
Procedure inverser(var feild : container);
Begin
 for i:=1 to n Do
 Begin
 for j:=1 to n Do
 Begin
  feild[i,j]:=matrix[j,i];
 End;
 End;
End;

Procedure displayer (matrix: container);
var feild : container;
    response : String;
Begin
 WriteLn('To display matrix(type yes matrix), for inversed(type yes inverse)');
 Readln(response);
 if(response ='yes matrix') Then
 Begin
WriteLn(' ');
WriteLn('***********************************');
 for i :=1 to n Do
 Begin
  for j:=1 to n Do
	Begin
	 Write(matrix[i,j],' ');
	End;
	WriteLn(' ');
 End;
 WriteLn('***********************************');
WriteLn(' ');
End;
if(response ='yes inverse') Then
Begin
 inverser(feild);
 WriteLn(' ');
WriteLn('***********************************');
 for i :=1 to n Do
 Begin
  for j:=1 to n Do
	Begin
	 Write(feild[i,j],' ');
	End;
	WriteLn(' ');
 End;
 WriteLn('***********************************');
WriteLn(' ');
End;
End;

Function col(i:integer):Integer;
Begin
if(i mod n <>0)Then col:=i Mod n
Else col:=n;
End;
Function line(i:Integer):Integer;
Begin
if(i mod n <>0) Then line := i div n +1
Else line:=i div n;
End;

Procedure matrixTreater(var matrix : container);
Begin
 for i:=1 to n*n Do
 Begin
  for j:=i+1 to n*n Do
	Begin
	  if(matrix[line(i),col(i)]>matrix[line(j),col(j)]) Then
		Begin
		  x:=matrix[line(j),col(j)];
			matrix[line(j),col(j)]:=matrix[line(i),col(i)];
			matrix[line(i),col(i)]:=x;
		End;
	End;
 End;
End;



Begin
Randomize;
Writeln('getting things ready for the game');
filler(matrix);
displayer(matrix);
matrixTreater(matrix);
displayer(matrix);
Readln;
End.