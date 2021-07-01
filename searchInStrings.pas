Program searchInStrings;
Var
   firstStr, secondStr : String;
  i,n,j  , hitCount,missCount : Integer;



Procedure searchIn(x,y : String);
Begin
j:=0;
  For i:=1 To Length(y) Do
    Begin
      If (x[1] = y[i]) Then
			 Begin
			  for j:=2 to Length(x) Do
				 Begin
				  if (x[j]=y[i+j-1])Then hitCount :=hitCount+1
					Else missCount:=missCount+1;
				 End;
			 End;
    End;
						if(missCount=0) Then Writeln('the string "',x,'" exist in the string "',y,'"')
          Else Writeln('the string "',x,'" does not exist in the string "',y,'"');
End;



Begin
firstStr:='';
secondStr:='';
 WriteLn('please insert the first chaine of charachters');
 Readln(firstStr);
 WriteLn('please Insert the second chaine of charachters');
 Readln(secondStr);

 searchIn(firstStr,secondStr);

Readln;
End.