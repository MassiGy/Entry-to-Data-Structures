Program searchinginArraysProgram;
Const limit = 6;
Type
  containerType = Record
    container : Array[1..6] Of Integer;
  End;
Var
  c,i,n,k : Integer;

	test : Boolean;
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
Procedure searcher(Var arr: containerType);
Begin
  test := False;
  k := 0;
	n:=1;
  Write('insert a character to search in the array: ');
  Readln(c);
  Write('choose the search method, type _first_ or _second_: ');
  Readln(method);
  If (method = 'first') Then
    Begin
      For i:=1 To limit Do
        Begin
          If (arr.container[i] = c) Then
            Begin
              k := i; ;
              i := limit;
            End;
        End;
				if(k<>0) Then WriteLn('the character "',c,'" exist in the array')
				Else WriteLn('the character "',c,'" does not exist in the array');
    End;

		if(method = 'second') Then
		Begin
		 While((n<limit) And ( arr.container[n] <> c)) Do n:=n+1;
		 if((arr.container[limit]= c) Or (n< limit)) Then test := true;
				if(test) Then WriteLn('the character "',c,'" exist in the array')
				Else WriteLn('the character "',c,'" does not exist in the array');

		End;
End;

Begin
filler(collection);
searcher(collection);


Readln;
End.