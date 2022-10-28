//---------------Generating 10 unique random numbers with UNIQUE METHOD---------------------//
class A;

	rand bit [7:0] a[10];
	constraint A1 {unique {a};}
	
endclass

module c;
  A A_h = new();
	initial begin
	
	A_h.randomize();
      $display("Elements of Array are = %p", A_h.a);
	end
endmodule


		
//------------------------Without unique method-------------------------------//
class A;

	rand bit [7:0] a[10];
  constraint A1 {foreach(a[i])
  {
    foreach(a[j])
    {
      if(i != j)
      	a[i] != a[j];
    }
  }
   }
      
      function void post_randomize();
    a[9] = a[$urandom_range(0,8)]; //2 values in the array should be same
     endfunction
	
endclass

module c;
  A A_h = new();
	initial begin
	
	A_h.randomize();
      $display("Elements of Array are = %p", A_h.a);
	end
endmodule
	
//output: {179, 104, 62, 218, 173, 148, 154, 137, 200, 179}
