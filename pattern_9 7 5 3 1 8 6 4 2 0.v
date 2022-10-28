class A;
  rand int a[10];
  constraint a1 {a[0] == 9;a[5] == 8;
    foreach(a[i])
    {
      if(i < 5 && i != 0)
        a[i] == a[i-1] - 2;
      else if (i > 5)
        a[i] == a[i-1] - 2;
    }
	}
      endclass
      
      module test;
        initial begin
          A h1 = new();
          h1.randomize();
          $display("The elements of the array are = %p", h1.a);
        end
      endmodule
