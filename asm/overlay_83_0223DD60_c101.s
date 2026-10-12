	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02242BF0
	.public ov83_02242CAC
	.extern ov83_02242AEC
	.extern ov83_02247EB0
	.extern ov83_02247F4C
	.extern ov83_02248008

    .text

	.text
	thumb_func_start ov83_02242BF0
ov83_02242BF0: ; 0x02242BF0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #5
	mov r1, #0x6b
	bl ListMenuItems_New
	ldr r1, _02242C9C ; =0x00000844
	mov r2, #0
	str r0, [r4, r1]
	ldr r0, _02242CA0 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	bl ov83_0224777C
	mov r5, #0
	add r7, r0, #0
	add r6, r5, #0
_02242C12:
	mov r0, #0xc
	add r1, r6, #0
	mul r1, r0
	ldr r0, _02242CA4 ; =ov83_02247F4C
	add r2, r0, r1
	ldr r3, [r2, #8]
	cmp r3, #4
	bhi _02242C6A
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02242C2E: ; jump table
	.short _02242C6A - _02242C2E - 2 ; case 0
	.short _02242C38 - _02242C2E - 2 ; case 1
	.short _02242C38 - _02242C2E - 2 ; case 2
	.short _02242C38 - _02242C2E - 2 ; case 3
	.short _02242C52 - _02242C2E - 2 ; case 4
_02242C38:
	ldr r0, [r2]
	cmp r7, r0
	blo _02242C7C
	ldr r0, _02242C9C ; =0x00000844
	ldr r1, [r4, #0x20]
	ldr r0, [r4, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _02242C7C
_02242C52:
	cmp r7, #3
	beq _02242C7C
	ldr r0, _02242C9C ; =0x00000844
	ldr r1, [r4, #0x20]
	ldr r0, [r4, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _02242C7C
_02242C6A:
	ldr r0, _02242C9C ; =0x00000844
	ldr r1, [r4, #0x20]
	ldr r0, [r4, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_02242C7C:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #5
	blo _02242C12
	ldr r3, _02242CA8 ; =ov83_02248008
	mov r0, #0xd
	ldrb r3, [r3, r5]
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x11
	bl ov83_02242AEC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242C9C: .word 0x00000844
_02242CA0: .word 0x0000050C
_02242CA4: .word ov83_02247F4C
_02242CA8: .word ov83_02248008
	thumb_func_end ov83_02242BF0

	thumb_func_start ov83_02242CAC
ov83_02242CAC: ; 0x02242CAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x6b
	bl ListMenuItems_New
	ldr r1, _02242D4C ; =0x00000844
	mov r2, #1
	str r0, [r5, r1]
	ldr r0, _02242D50 ; =0x0000050C
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	bl ov83_0224777C
	mov r4, #0
	add r7, r0, #0
	add r6, r4, #0
_02242CCE:
	mov r0, #0xc
	add r1, r6, #0
	mul r1, r0
	ldr r0, _02242D54 ; =ov83_02247EB0
	add r2, r0, r1
	ldr r3, [r2, #8]
	cmp r3, #6
	beq _02242CE8
	cmp r3, #7
	beq _02242CE8
	cmp r3, #8
	beq _02242D02
	b _02242D1A
_02242CE8:
	ldr r0, [r2]
	cmp r7, r0
	blo _02242D2C
	ldr r0, _02242D4C ; =0x00000844
	ldr r1, [r5, #0x20]
	ldr r0, [r5, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	b _02242D2C
_02242D02:
	cmp r7, #3
	beq _02242D2C
	ldr r0, _02242D4C ; =0x00000844
	ldr r1, [r5, #0x20]
	ldr r0, [r5, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	b _02242D2C
_02242D1A:
	ldr r0, _02242D4C ; =0x00000844
	ldr r1, [r5, #0x20]
	ldr r0, [r5, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02242D2C:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _02242CCE
	ldr r3, _02242D58 ; =ov83_02248008
	mov r0, #0xd
	ldrb r3, [r3, r4]
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x11
	bl ov83_02242AEC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242D4C: .word 0x00000844
_02242D50: .word 0x0000050C
_02242D54: .word ov83_02247EB0
_02242D58: .word ov83_02248008
	thumb_func_end ov83_02242CAC

