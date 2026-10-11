	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225ED6C

	.text

	thumb_func_start ov91_0225ED6C
ov91_0225ED6C: ; 0x0225ED6C
	push {r3, lr}
	ldr r0, [r0, #0x48]
	cmp r0, #2
	bhs _0225ED78
	mov r0, #0
	pop {r3, pc}
_0225ED78:
	ldr r1, _0225EDA8 ; =gSystem + 0x40
	mov r0, #0x80
	ldrh r2, [r1, #0x20]
	ldrh r1, [r1, #0x22]
	sub r3, r0, r2
	sub r0, #0xe0
	sub r2, r0, r1
	add r1, r3, #0
	add r0, r2, #0
	mul r1, r3
	mul r0, r2
	add r0, r1, r0
	lsl r0, r0, #0xc
	bl FX_Sqrt
	asr r1, r0, #0xc
	ldr r0, _0225EDAC ; =0x0000011E
	cmp r1, r0
	bgt _0225EDA2
	mov r0, #1
	pop {r3, pc}
_0225EDA2:
	mov r0, #0
	pop {r3, pc}
	nop
_0225EDA8: .word gSystem + 0x40
_0225EDAC: .word 0x0000011E
	thumb_func_end ov91_0225ED6C

