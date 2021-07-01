Program treatingArrays;

Const limit = 6;
Type
  containerType = Record
    container : Array[1..6] Of Integer;
  End;
Var
  i,n,k,j : Integer;
  collection : containerType;
  method : String;
Procedure filler(Var arr:containerType);
Begin
  For i:=1 To limit Do
    Begin
      Write('fill the array of integers: ');
      Readln(arr.container[i]);
    End;
End;

Function tester(Var arr: containerType): Boolean;
Begin
  For i:=1 To limit Do
    Begin
      If (arr.container[i+1] < arr.container[i]) Then n := n+1;
      If (arr.container[i+1] > arr.container[i]) Then j := j+1;
    End;
  If (n=limit-1)Or(j=limit-1) Then tester := True
  Else tester := False;
End;

Procedure treater(Var arr: containerType);
Begin
  For i:=1 To limit Do
    Begin
      For j:=i+1 To limit Do
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

Procedure Secondtreater(Var arr:containerType);
Begin
  For i:=1 To limit Do
    Begin
      For j:=1 To limit -i Do
        Begin
          If (arr.container[j+1]< arr.container[j]) Then
            Begin
              k := arr.container[j];
              arr.container[j] := arr.container[j+1];
              arr.container[j+1] := k;
            End;
        End;
    End;
End;
Begin
  filler(collection);
  Writeln('tester fn resault is ', tester(collection));
  If (Not(tester(collection))) Then
    Begin
      Writeln(
    'Insert the wanted treating methode, type _first_ of the first one, and _second_ for the second'
      );
      Readln(method);
			  If (method = 'first') Then treater(collection);
				if(method = 'second') Then Secondtreater(collection);
    End;

    For i:=1 To 6 Do
      Begin
        Writeln('the array content is the following');
        Writeln(collection.container[i],' ');
      End;
  Readln;
End.
