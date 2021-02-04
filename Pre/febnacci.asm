 .data
  fibs: .space   48           # "array" of 12 words to contain fib values
  size: .word  12             # size of "array"
  space:.asciiz  " "          # space to insert between numbers
  head: .asciiz  "The Fibonacci numbers are:\n"
  .text
        la   $t0, fibs        # load address of array
        la   $t5, size        # load address of size variable