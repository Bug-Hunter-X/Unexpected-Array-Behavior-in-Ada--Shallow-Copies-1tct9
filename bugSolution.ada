```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Array;
begin
   -- Deep copy to avoid shallow copy issues
   for I in A'Range loop
      B(I) := A(I);
   end loop;
   A(1) := 0;
   Put_Line("B(1) = " & Integer'Image(B(1))); -- Now B(1) is 1
end Example_Solution;
```