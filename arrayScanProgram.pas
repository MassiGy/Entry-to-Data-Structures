Program arrayScanProgram;

Const n = 5;
Type
  tab = Array[0..n] Of Char;
Var
  counter, i ,j: Integer;
  arr : tab;
  k,c: Char;
  test: Boolean;
Procedure Initializator(Var arr:tab; p: Integer);
Begin
  For i:=1 To p Do
    Begin
      arr[i] := ' ';
    End;
End;
Procedure filler (Var arr: tab; p:Integer);
Begin
  For i:=1 To p Do
    Begin
      Write('please fill the Array  collection: ');
      Readln(arr[i]);
    End;
End;
Procedure treater(Var arr : tab; p: Integer);
Begin
  For i:=1 To p Do
    Begin
      For j:=i+1 To p Do
        Begin
          If (arr[j]<arr[i]) Then
            Begin
              k := arr[i];
              arr[i] := arr[j];
              arr[j] := k;
            End;
        End;
    End;
End;
Procedure secondTreater(Var arr : tab; p: Integer);
Begin
  For i:=1 To p Do
    Begin
      For j:=1 To p-i Do
        Begin
          If (arr[j+1]<arr[j]) Then
            Begin
              k := arr[j+1];
              arr[j+1] := arr[j];
              arr[j] := k;
            End;
        End;
    End;
End;
Function searcher(Var arr: tab): Boolean;
Begin
  test := False;
  k := ' ';
  counter := 1;
  Write('insert a character to search in the array: ');
  Readln(c);
  While ((counter<n) And ( arr[counter] <> c)) Do
    counter := counter+1;
  If ((arr[n]= c) Or (counter< n)) Then test := True;
End;






Begin
  Initializator(arr,n);
  filler(arr,n);
  Writeln('***********************');
  For i:=1 To n Do
    Begin
      Writeln(arr[i]);
    End;
  Writeln('***********************');
  Writeln(
'choose a method for the treating engine, type 1 for the selection treater, and 2 for the treater by bulle'
  );
  Readln(i);
  If (i=1) Then treater(arr,n);
  If (i=2) Then secondTreater(arr,n);
	 Writeln('***********************');
  For i:=1 To n Do
    Begin
      Writeln(arr[i]);
    End;
  Writeln('***********************');
  searcher(arr);
  If (test) Then Writeln('the character "',c,'" exist in the array')
  Else Writeln('the character "',c,'" does not exist in the array');
  Readln;
End.
