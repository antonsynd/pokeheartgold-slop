	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E8764
	.extern ov85_021E8530
	.extern ov85_021EA758

	.text

	.text
	thumb_func_start ov85_021E8764
ov85_021E8764: ; 0x021E8764
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	mov r1, #0x11
	add r3, r0, #0
	lsl r1, r1, #4
	ldr r1, [r3, r1]
	add r0, sp, #0x14
	neg r1, r1
	add r4, r2, #0
	bl ov85_021E8530
	ldr r0, [sp, #0x14]
	ldr r1, _021E87E8 ; =0xFFFFC000
	str r0, [sp]
	add r0, sp, #0
	bl ov85_021E8530
	ldr r1, [sp]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r5, r0, #0xc
	ldr r0, [sp, #0x14]
	mov r1, #5
	str r0, [sp]
	add r0, sp, #0
	lsl r1, r1, #0xc
	bl ov85_021E8530
	ldr r1, [sp]
	ldr r2, _021E87EC ; =ov85_021EA758
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	lsl r1, r4, #3
	add r3, r2, r1
	ldr r2, [r2, r1]
	asr r0, r0, #0xc
	ldr r3, [r3, #4]
	cmp r2, #0
	beq _021E87DC
_021E87B6:
	ldrh r4, [r3]
	cmp r5, r4
	blo _021E87C2
	ldrh r1, [r3, #2]
	cmp r5, r1
	bls _021E87CC
_021E87C2:
	cmp r0, r4
	blo _021E87D6
	ldrh r1, [r3, #2]
	cmp r0, r1
	bhi _021E87D6
_021E87CC:
	mov r0, #1
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
_021E87D6:
	add r3, r3, #4
	sub r2, r2, #1
	bne _021E87B6
_021E87DC:
	mov r0, #0
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_021E87E8: .word 0xFFFFC000
_021E87EC: .word ov85_021EA758
	thumb_func_end ov85_021E8764

