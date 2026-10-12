	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223F028
	.extern ov40_0222BF80
	.extern ov40_0222DF60
	.extern ov40_0222F734
	.extern ov40_022309DC
	.extern ov40_0223D540
	.extern ov40_0223D5CC

	.text

	.text
	thumb_func_start ov40_0223F028
ov40_0223F028: ; 0x0223F028
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	bl ov40_0223D5CC
	cmp r0, #0
	bne _0223F042
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0223F042:
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _0223F126
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223F054: ; jump table
	.short _0223F05C - _0223F054 - 2 ; case 0
	.short _0223F072 - _0223F054 - 2 ; case 1
	.short _0223F0B2 - _0223F054 - 2 ; case 2
	.short _0223F0FC - _0223F054 - 2 ; case 3
_0223F05C:
	add r0, r4, #0
	mov r1, #0x75
	bl ov40_0222DF60
	ldr r0, _0223F150 ; =0x0000057D
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F148
_0223F072:
	ldr r0, _0223F154 ; =0x000004C2
	ldrb r6, [r5, r0]
	cmp r6, #0xff
	bne _0223F08A
	add r0, r4, #0
	bl sub_02087E1C
	cmp r0, #1
	bne _0223F088
	mov r6, #0xff
	b _0223F08A
_0223F088:
	mov r6, #0xfe
_0223F08A:
	add r0, r4, #0
	bl ov40_0223D540
	ldr r3, _0223F158 ; =0x000004C4
	lsl r2, r6, #0x18
	ldrb r1, [r5, r3]
	lsr r2, r2, #0x18
	str r1, [sp]
	sub r1, r3, #4
	sub r3, r3, #1
	ldrh r1, [r5, r1]
	ldrb r3, [r5, r3]
	bl ov39_02227590
	cmp r0, #1
	bne _0223F148
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F148
_0223F0B2:
	add r0, r4, #0
	bl ov40_0223D540
	add r1, sp, #4
	bl ov39_02227D44
	cmp r0, #1
	ldr r0, _0223F150 ; =0x0000057D
	bne _0223F0E6
	mov r1, #0
	bl StopSE
	ldr r3, [sp, #4]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #7
	bl ov40_022309DC
	ldr r0, _0223F15C ; =0x00004138
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F148
_0223F0E6:
	mov r1, #0
	bl StopSE
	mov r0, #0x51
	mov r1, #0x76
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F148
_0223F0FC:
	ldr r0, _0223F15C ; =0x00004138
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223F118
	mov r1, #0x51
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov40_0222DF60
	ldr r0, _0223F160 ; =0x0000057C
	bl PlaySE
	b _0223F11E
_0223F118:
	ldr r0, _0223F164 ; =0x00000577
	bl PlaySE
_0223F11E:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F148
_0223F126:
	ldr r0, _0223F168 ; =0x0000049C
	add r0, r4, r0
	bl ov40_0222F734
	ldr r0, _0223F15C ; =0x00004138
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223F140
	add r0, r4, #0
	mov r1, #3
	bl ov40_0222BF80
	b _0223F148
_0223F140:
	add r0, r4, #0
	mov r1, #0xd
	bl ov40_0222BF80
_0223F148:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0223F150: .word 0x0000057D
_0223F154: .word 0x000004C2
_0223F158: .word 0x000004C4
_0223F15C: .word 0x00004138
_0223F160: .word 0x0000057C
_0223F164: .word 0x00000577
_0223F168: .word 0x0000049C
	thumb_func_end ov40_0223F028

