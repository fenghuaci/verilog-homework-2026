module condition_test;
reg[3:0] a, b;
reg sel;
wire[3:0] out;
condition U(a, b, sel, out);
initial
begin
$dumpfile("ok");
$dumpvars();
    a = 4'b0111;
    b = 4'b0010;
    sel = 0;
    #10 sel = 1;
    #10 sel = 0;
    #10 sel = 1'bx;
    #10 $finish;
end
endmodule