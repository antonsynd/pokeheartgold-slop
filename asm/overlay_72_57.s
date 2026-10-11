	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223A2E8
	.public ov72_0223A4DC

	.text

	thumb_func_start ov72_0223A2E8
ov72_0223A2E8: ; 0x0223A2E8
	push {r4, lr}
	ldr r1, _0223A310 ; =0x00000F54
	add r4, r0, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	neg r0, r0
	bl ov00_021E6A70
	ldr r2, _0223A310 ; =0x00000F54
	add r1, r0, #0
	ldr r2, [r4, r2]
	add r0, r4, #0
	neg r2, r2
	bl ov72_0223A4DC
	mov r0, #0x38
	str r0, [r4, #0x1c]
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_0223A310: .word 0x00000F54
	thumb_func_end ov72_0223A2E8

