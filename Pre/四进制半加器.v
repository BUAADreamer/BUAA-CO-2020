module halfadder(
    input a0,
    input a1,
    input b0,
    input b1,
    output c,
    output s0,
    output s1
);
assign s1=(!a1&!a0&b1) | (!a1&b1&!b0) | (!a1&a0&!b1&b0) | (a1&!a0&!b1) | (a1&!b1&!b0) | (a1&a0&b1&b0);
assign s0=(!a0&b0)|(a0&!b0);
assign c=(a0&b1&b0) | (a1&b1) | (a1&a0&b0);



module halfadder(
    input a0,
    input a1,
    input b0,
    input b1,
    input c0,
    output c,
    output s0,
    output s1
);
assign s1=!a1&!b1&b0&c0|!a1&!a0&b1&!b0|!a1&!a0&b1&!c0|!a1&b1&!b0&!c0|!a1&a0&!b1&c0|!a1&a0&!b1&b0|a1&!a0&!b1&!b0|a1&!a0&!b1&!c0|a1&!b1&!b0&!c0|a1&b1&b0&c0|a1&a0&b1&c0|a1&a0&b1&b0;
assign s0=!a0&!b0&c0|!a0&b0&!c0|a0&!b0&!c0|a0&b1&b0&c0|a1&a0&b0&c0;
assign c=b1&b0&c0|a0&b0&c0|a0&b1&c0|a0&b1&b0|a1&b0&c0|a1&b1|a1&a0&c0|a1&a0&b0;





