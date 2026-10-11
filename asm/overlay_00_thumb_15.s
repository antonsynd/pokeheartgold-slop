	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E62D8
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E62D8
ov00_021E62D8: ; 0x021E62D8
	ldr r0, _021E62E8 ; =_0221A680
	ldr r3, _021E62EC ; =MI_CpuFill8
	ldr r1, [r0]
	ldr r0, _021E62F0 ; =0x000010AC
	mov r2, #0x20
	add r0, r1, r0
	mov r1, #0
	bx r3
	.balign 4, 0
_021E62E8: .word _0221A680
_021E62EC: .word MI_CpuFill8
_021E62F0: .word 0x000010AC
	thumb_func_end ov00_021E62D8

