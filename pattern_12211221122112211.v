//Constraint to generate pattern 122112211221122112211

class A;
  rand bit [4:0] a[];
  
  constraint C1 { a.size == 17;
              
                 
                 foreach(a[i])
                 {
                   if(i % 4 == 0 || i % 4 == 3) a[i] == 1;
                   if(i % 4 == 1 || i % 4 == 2) a[i] == 2;
                 }
                }
endclass
                   
module C;
  A A_h = new();
  initial begin
  A_h.randomize();
  $display("The array is = %p", A_h.a);
  end
endmodule
                 
//'{1, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 1, 1}
