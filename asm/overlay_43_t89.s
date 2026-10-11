	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222CD98
	.extern ov43_0222A318
	.extern ov43_0222CE14
	.extern ov43_0222D028
	.extern ov43_0222D090
	.extern ov43_0222D0F8

	.text

	.text
	thumb_func_start ov43_0222CD98
ov43_0222CD98: ; 0x0222CD98
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldrb r3, [r4, #8]
	add r5, r0, #0
	add r6, r2, #0
	cmp r3, #0
	beq _0222CDB0
	cmp r3, #1
	beq _0222CDBA
	cmp r3, #2
	beq _0222CDDC
	b _0222CE04
_0222CDB0:
	bl ov43_0222D028
	mov r0, #1
	strb r0, [r4, #8]
	b _0222CE04
_0222CDBA:
	bl ov43_0222CE14
	cmp r0, #0
	beq _0222CE04
	ldr r0, _0222CE08 ; =0x000005DD
	bl PlaySE
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov43_0222D0F8
	mov r0, #4
	str r0, [r5, #0x38]
	mov r0, #2
	strb r0, [r4, #8]
	b _0222CE04
_0222CDDC:
	ldr r1, [r5, #0x38]
	sub r1, r1, #1
	str r1, [r5, #0x38]
	cmp r1, #0
	bgt _0222CE04
	add r1, r6, #0
	mov r2, #0
	bl ov43_0222D0F8
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	bl ov43_0222A318
	add r0, r5, #0
	add r1, r6, #0
	bl ov43_0222D090
	mov r0, #1
	pop {r4, r5, r6, pc}
_0222CE04:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0222CE08: .word 0x000005DD
	thumb_func_end ov43_0222CD98

