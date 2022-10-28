//write a constraint to generate below pattern 1234554321
//                     											   0123456789
class A;
  rand int a[10];
  constraint A1 {foreach(a[i]){
    				if(i < 5)
     					 a[i] == i + 1;
                 	else if(i == 5)
                   		 a[i] == i;
                 	else
                      a[i] == a[i - 1] - 1;}
                }
endclass
                 module test;
                   initial begin
                   A h1 = new();
                   h1.randomize();
                   $display("Array = %p", h1.a);
                   end
                 endmodule
