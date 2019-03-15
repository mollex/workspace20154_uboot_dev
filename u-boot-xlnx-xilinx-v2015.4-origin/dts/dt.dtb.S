.section .dtb.init.rodata,"a"
.balign 16
.global __dtb_dt_begin
__dtb_dt_begin:
.incbin "../dts/dt.dtb"
__dtb_dt_end:
.global __dtb_dt_end
.balign 16
