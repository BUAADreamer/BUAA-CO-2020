module Seven_segment_digital_tube(
    input x3,input x2,input x1,input x0,
    output a,output b, output c,output d,output e,output f,output g
);
assign a=!x2&!x0|!x3&x1|!x3&x2&x0|x2&x1|x3&!x2&!x1|x3&!x0
assign b=!x1&!x0|!x3&x2&!x1|x2&!x0|x3&!x2|x3&x1
assign c=!x2&!x0|x1&!x0|x3&x1|x3&x2
assign d=!x3&!x2&!x0|!x2&x1&x0|x2&!x1&x0|x2&x1&!x0|x3&!x1
assign e=!x3&!x1|!x3&x0|!x1&x0|!x3&x2|x3&!x2
assign f=!x3&!x2|!x3&!x1&!x0|!x2&!x0|!x3&x1&x0|x3&!x1&x0
assign g=!x2&x1|x1&!x0|!x3&x2&!x1|x3&!x2|x3&x0

endmodule