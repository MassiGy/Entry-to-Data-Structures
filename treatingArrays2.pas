Program treatingArrays2;

Const x = 2;
  y = 3;
  z = 5;
Type
  tab1 = Array[1..x] Of Integer;
  tab2 = Array[1..y] Of Integer;
  tab3 = Array[1..z] Of Integer;
Var
  i,j,counter, k: Integer;
  arr1 : tab1;
  arr2 : tab2;
  arr3 : tab3;
Procedure Initializator(Var arr:tab1; p: Integer);
Begin
  For i:=1 To p Do
    Begin
      arr[i] := 0;
    End;
End;
Procedure secondInitializator(Var arr:tab2; p: Integer);
Begin
  For i:=1 To p Do
    Begin
      arr[i] := 0;
    End;
End;
Procedure tirdInitializator(Var arr:tab3; p: Integer);
Begin
  For i:=1 To p Do
    Begin
      arr[i] := 0;
    End;
End;

Procedure filler (Var arr1: tab1; p:Integer);
Begin
  For i:=1 To p Do
    Begin
      Write('please fill the Array 1 collection: ');
      Readln(arr1[i]);
    End;
End;
Procedure secondFiller (Var arr2: tab2; p:Integer);
Begin
  For i:=1 To p Do
    Begin
      Write('please fill the Array 2 collection: ');
      Readln(arr2[i]);
    End;
End;
/////////////////////////////////////
//
//Procedure min(arr : tab; arr2 : tab2, counter:Integer);
//Begin
//   for counter:=1 to x Do
//	 for j:=1 to y do
//	 Begin
//  if(arr[counter]<arr2[j])then arr3[counter]:=arr[counter]
//	Else arr3[counter]
//  End;
//End;
//////////////////////////////////////

Procedure tirdFiller (Var arr3: tab3);
Begin
  k := 1;
  i := 1;
  j := 1;
  While (k<z) Do
    Begin
      Writeln('loop');
      If ((i<=x)And (j<=y)) Then
        Begin
          If (arr1[i]<arr2[j]) Then
            Begin
              arr3[k] := arr1[i];
              i := i+1;
              k := k+1;
            End;
         If (arr1[i]>arr2[j]) Then
                 Begin
                   arr3[k] := arr2[j];
                   j := j+1;
                   k := k+1;
                 End;
         if(arr1[i]=arr2[j])Then
            Begin
              arr3[k] := arr1[i];
              arr3[k+1] := arr2[j];
              j := j+1;
              i := i+1;
              k := k+2;
            End;
                If (i>x) Then
          			 Begin
								 While((j<=y)And(k<=z))Do
								 Begin
          			  arr3[k]:=arr2[j];
          				j:=j+1;
          				k:=k+1;
									End
          			 End;
                If (j>y) Then
          			Begin
								While((i<=x)And(k<=z))Do
								Begin
                  arr3[k]:=arr1[i];
          				i:=i+1;
          				k:=k+1;
									End;
          				End;
        End;
    End;
End;

Procedure treater(Var arr1 : tab1; p: Integer);
Begin
  For i:=1 To p Do
    Begin
      For j:=i+1 To p Do
        Begin
          If (arr1[j]<arr1[i]) Then
            Begin
              k := arr1[i];
              arr1[i] := arr1[j];
              arr1[j] := k;
            End;
        End;
    End;
End;
Procedure secondTreater(Var arr2 : tab2; p: Integer);
Begin
  For i:=1 To p Do
    Begin
      For j:=1 To p-i Do
        Begin
          If (arr2[j+1]<arr2[j]) Then
            Begin
              k := arr2[j+1];
              arr2[j+1] := arr2[j];
              arr2[j] := k;
            End;
        End;
    End;
End;
//Procedure thirdTreater(var arr3:tab3; p:Integer);
//Begin
//    for i:=1 to p Do
//		Begin
//		  for j:=i+1 to p Do
//			Begin
//			 if(arr3[i]>arr3[j]) Then
//			 Begin
//			   k:=arr3[j];
//				 arr3[j]:=arr3[i];
//				 arr3[i]:=k;
//			 End;
//			End;
//		End;
//End;
Begin
  Initializator(arr1,x);
  secondInitializator(arr2,y);
  tirdInitializator(arr3,x);
  filler(arr1, x);
  treater(arr1,x);
  secondFiller(arr2,y);
  secondTreater(arr2,y);
  tirdFiller(arr3);
  //  	thirdTreater(arr3,z);
  Writeln('***********************');
  For i:=1 To x Do
    Begin
      Writeln(arr1[i]);
    End;
  Writeln('***********************');
  For i:=1 To y Do
    Begin
      Writeln(arr2[i]);
    End;
  Writeln('***********************');
  For i:=1 To x+y Do
    Begin
      Writeln(arr3[i]);
    End;
  Readln;
End.
