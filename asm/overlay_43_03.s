	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222A1DC
	.public ov43_0222A520
	.public ov43_0222B1D8
	.public ov43_0222BAB8
	.public ov43_0222CD40
	.public ov43_0222D008
	.public ov43_0222D610

	.text

	thumb_func_start ov43_0222A1DC
ov43_0222A1DC: ; 0x0222A1DC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	mov r1, #0xa
	lsl r1, r1, #6
	add r0, r4, r1
	sub r1, #0x6c
	add r1, r4, r1
	add r2, r4, #4
	bl ov43_0222B1D8
	mov r1, #0xb
	lsl r1, r1, #6
	add r0, r4, r1
	sub r1, #0xac
	add r1, r4, r1
	add r2, r4, #4
	bl ov43_0222BAB8
	mov r0, #0xf
	mov r1, #0x85
	lsl r0, r0, #6
	lsl r1, r1, #2
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, #4
	bl ov43_0222CD40
	mov r0, #0xf3
	mov r1, #0x85
	lsl r0, r0, #2
	lsl r1, r1, #2
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, #4
	bl ov43_0222D008
	ldr r0, _0222A248 ; =0x00000408
	mov r1, #0x85
	lsl r1, r1, #2
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, #4
	bl ov43_0222D610
	add r0, r4, #4
	bl ov43_0222A520
	pop {r4, pc}
	.balign 4, 0
_0222A248: .word 0x00000408
	thumb_func_end ov43_0222A1DC

