	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222A148
	.public ov43_0222A154
	.public ov43_0222A48C
	.public ov43_0222B0A0
	.public ov43_0222B944
	.public ov43_0222CD3C
	.public ov43_0222CE48
	.public ov43_0222D584

	.text

	thumb_func_start ov43_0222A154
ov43_0222A154: ; 0x0222A154
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x85
	add r5, r0, #0
	lsl r1, r1, #2
	add r0, r5, #4
	add r1, r5, r1
	add r2, r4, #0
	bl ov43_0222A48C
	mov r1, #0xa
	lsl r1, r1, #6
	add r0, r5, r1
	sub r1, #0x6c
	add r1, r5, r1
	add r2, r5, #4
	add r3, r4, #0
	bl ov43_0222B0A0
	mov r1, #0xb
	lsl r1, r1, #6
	add r0, r5, r1
	sub r1, #0xac
	add r1, r5, r1
	add r2, r5, #4
	add r3, r4, #0
	bl ov43_0222B944
	mov r0, #0xf
	mov r1, #0x85
	lsl r0, r0, #6
	lsl r1, r1, #2
	add r0, r5, r0
	add r1, r5, r1
	add r2, r5, #4
	add r3, r4, #0
	bl ov43_0222CD3C
	mov r0, #0xf3
	mov r1, #0x85
	lsl r0, r0, #2
	lsl r1, r1, #2
	add r0, r5, r0
	add r1, r5, r1
	add r2, r5, #4
	add r3, r4, #0
	bl ov43_0222CE48
	ldr r0, _0222A1D4 ; =0x00000408
	mov r1, #0x85
	lsl r1, r1, #2
	add r0, r5, r0
	add r1, r5, r1
	add r2, r5, #4
	add r3, r4, #0
	bl ov43_0222D584
	ldr r0, _0222A1D8 ; =ov43_0222A148
	add r1, r5, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0222A1D4: .word 0x00000408
_0222A1D8: .word ov43_0222A148
	thumb_func_end ov43_0222A154

