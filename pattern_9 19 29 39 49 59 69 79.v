//pattern 9 19 29 39 49 59 69 79 
//				0  1  2  3  4  5  6  7

class A;
  rand int a[8];
  constraint A1 {
    foreach(a[i]){

      if (i == 0)
        a[i] == 9;
      else 
        a[i] == a[i-1] + 10;
  				}
      
  		}
                
endclass
                 module test;
                   initial begin
                   A h1 = new();
                   h1.randomize();
                   $display("Array = %p", h1.a);
                   end
                 endmodule
