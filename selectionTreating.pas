Program selectionTreating;

Type
containerType = Record
  container : Array[1..6] of Integer;
 End;




Var   i,j, k : Integer;
     collection : containerType;


Procedure filler(var arr:containerType);
Begin
for i:=1 to 6 Do
Begin
 Write('fill the array of integers: ');
 Readln(arr.container[i]);
End;
End;


Procedure treater(var arr: containerType);

           Begin
             For i:=1 To 6 Do
               Begin
                 For j:=i+1 To 6 Do
                   Begin
                     If (arr.container[j]<arr.container[i]) Then
                       Begin
                         k := arr.container[i];
                         arr.container[i] := arr.container[j];
                         arr.container[j] := k;
                       End;
                   End;
               End;
           End;


Begin

 filler(collection);
 treater(collection);


for i:=1 to 6 Do
Begin
 WriteLn('the array content is the following');
 Writeln(collection.container[i],' ');

End;


Readln;
End.