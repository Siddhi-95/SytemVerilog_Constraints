class A;
  rand int a[10];
  constraint a1{
    a[0] == 1;
    foreach(a[i])
    {
      if(i % 2 == 0 && i != 0)
        a[i] == a[i-2] + 1;
      else if(i != 0)
        a[i] == a[i-1];
    
    }
  }
  
  
endclass

module test;
  initial begin
    A h1 = new();
    h1.randomize();
    $display("ARRAY ELEMENTS ARE = %p", h1.a);
  end
endmodule      
