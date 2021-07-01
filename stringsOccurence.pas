Program searchInStrings;
Var
 secondStr: String[200] ;
    firstStr:String;
  i,counter, position,p : Integer;

Function finder(firstStr, secondStr: String; p:Integer): Integer;
Begin
  Delete(secondStr,1,p-1);
	finder:= Pos(firstStr, secondStr);
End;




Begin
firstStr:='';
secondStr:='';
 WriteLn('please insert the first chaine of charachters');
 Readln(firstStr);
 WriteLn('please Insert the second chaine of charachters');
 Readln(secondStr);
 WriteLn('insert the position in which the search begins');
 Readln(p);
 if(p>1) Then
 Begin
 if(finder(firstStr,secondStr,p)=0)Then Writeln('firstStr does not exist in the second')
 Else WriteLn('firstStr exist in the secondStr at position ', finder(firstStr,secondStr,p)+p);
 End
 Else
 Begin
 if(finder(firstStr,secondStr,p)=0)Then Writeln('firstStr does not exist in the second')
 Else WriteLn('firstStr exist in the secondStr at position ', finder(firstStr,secondStr,p));
 End;
 WriteLn('**********************************');
 counter:=0;
 i:=0;
 position:=0;
While(i<200) Do
Begin
if(finder(firstStr,secondStr,i)<>0)Then
Begin
 position := finder(firstStr, secondStr,i);
 WriteLn('the first string is at position number: ',position+i,' in the second one');
 counter:=counter+1;
 i:=i+position;
End;
i:=i+1;
End;
WriteLn('the number of occurence of the first string is ',counter);

Readln;
End.