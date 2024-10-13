.section .vectors
.word __stack_top__
.word _start

.text
.global _start
.type _start, %function

_start:
    bl main
_exit:
    b _exit
