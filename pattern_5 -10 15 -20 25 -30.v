class A;
  rand logic signed [5:0] a[6];
  constraint A1 {foreach(a[i]){
   					 a[i] % 5 == 0;
    if(i % 2 == 0)
      a[i] == 5 + (5*i);
    else
      a[i] inside {[-30:-5]};
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
