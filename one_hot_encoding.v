////One hot encoding
program p1;

    class c1;
        rand bit [3:0] a;

        constraint c1 {
          $onehot(a) == 1; //$onehot ( expression ) returns true (1’b1) if $countbits(expression,’1)==1, otherwise it returns false (1’b0).
        }


    endclass


    c1 c1_h;

    initial begin
        c1_h = new();

        repeat(3) begin
            if(c1_h.randomize())
                $display("a is %b", c1_h.a);
        end

    end

endprogram
