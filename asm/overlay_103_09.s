	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ECD68

	.text

	thumb_func_start ov103_021ECD68
ov103_021ECD68: ; 0x021ECD68
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #2
	ldr r0, [r0]
	mov r2, #0xb
	mov r3, #0x9d
	bl sub_0201956C
	ldr r1, [r5, #0xc]
	mov r4, #0
	str r0, [r1, #4]
	mov r6, #4
	mov r7, #2
_021ECD84:
	str r6, [sp]
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	ldr r0, [r0, #4]
	add r2, r7, #0
	mov r3, #0xe
	bl sub_020195F4
	add r4, r4, #1
	cmp r4, #0xa
	blo _021ECD84
	mov r0, #4
	str r0, [sp]
	ldr r0, [r5, #0xc]
	mov r1, #0xa
	ldr r0, [r0, #4]
	mov r2, #1
	mov r3, #0xe
	bl sub_020195F4
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0xc]
	mov r1, #0
	ldr r0, [r0, #4]
	mov r2, #0xfc
	mov r3, #3
	bl sub_02019688
	ldr r0, [r5, #0xc]
	mov r1, #0
	ldr r0, [r0, #4]
	bl sub_02019B08
	add r6, r0, #0
	mov r4, #1
	mov r7, #0x70
_021ECDCE:
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	ldr r0, [r0, #4]
	bl sub_02019B08
	add r1, r0, #0
	add r0, r6, #0
	add r2, r7, #0
	bl MI_CpuCopy8
	add r4, r4, #1
	cmp r4, #0xa
	bls _021ECDCE
	mov r4, #0
_021ECDEA:
	lsl r2, r4, #0x1f
	ldr r0, [r5, #0xc]
	lsr r2, r2, #0x1b
	add r2, r2, #1
	lsr r3, r4, #1
	lsl r2, r2, #0x18
	lsl r3, r3, #0x1a
	ldr r0, [r0, #4]
	add r1, r4, #0
	asr r2, r2, #0x18
	asr r3, r3, #0x18
	bl sub_020196E8
	add r4, r4, #1
	cmp r4, #0xa
	blo _021ECDEA
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov103_021ECD68

