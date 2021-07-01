Program howmanyTimes;

var
i, counter , n,j : integer;
container : Array[1..100] of Char;


Procedure fillArray(var n: integer);
Begin
for i:=1 to n Do
Begin
Write('please fill the characters collection: ');
Readln(container[i]);
End;
End;


Function howmanyTimesfn (var n : Integer):Integer;
Begin
for i:=1 to n Do
Begin
for j:=1 to n Do
Begin
if (container[i]=container[j]) Then counter:=counter+1;
End;
writeln('the character "', container[i], '" was repeated ',counter,' times');
counter :=0;
End;
End;




Begin
Write('please enter an integer ');
readln(n);
fillArray(n);
howmanyTimesfn(n);


Readln;
End.