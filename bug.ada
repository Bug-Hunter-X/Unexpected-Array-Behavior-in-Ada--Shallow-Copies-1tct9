```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Array;
begin
   B := A;
   A(1) := 0;
   -- Expecting B(1) to remain 1, but it will also be 0
   Put_Line("B(1) = " & Integer'Image(B(1)));
end Example;
```