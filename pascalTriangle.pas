Program pascalTriangle;

var
N,k,j, i : Integer;
schema : Array[0..20] of Integer;
schema2 :Array[0..20] of Integer;

Begin
WriteLn('please insert an integer 1<N<20');
Readln(N);
WriteLn('*********');
for k:= 0 to 20 Do
Begin
 schema[k]:= 0;
 schema2[k]:=0;
End;

schema2[0]:=1;
for i:=1 to N Do
Begin
For j:=1 to i Do
Begin
    schema[j]:=schema2[j-1]+schema2[j];
		if (j=i) Then
		Begin
	  For k:=0 to 20 Do
		schema2[k]:=schema[k];
		End;
	 	Write(' ', schema[j], ' ');
End;

WriteLn('');

End;
Readln;
End.

