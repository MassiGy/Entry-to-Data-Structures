Program searchInStrings;
Var
   firstStr, secondStr : String;
  i: Integer;



Procedure kebabToSnack(var x,y: String);
Begin
	for i:=1 to Length(x) Do
 Begin
  if(x[i]= ' ') Then x[i]:='_';
 End;
	for i:=1 to Length(y) Do
 Begin
  if(y[i]= ' ') Then y[i]:='_';
 End;
 WriteLn('the new version of the first string is ', x,'"');
 Writeln('the new version of the second string is "',y,'"');
 End;













 Begin
firstStr:='';
secondStr:='';
 WriteLn('please insert the first chaine of charachters');
 Readln(firstStr);
 WriteLn('please Insert the second chaine of charachters');
 Readln(secondStr);
 kebabToSnack(firstStr, secondStr);


Readln;
End.
