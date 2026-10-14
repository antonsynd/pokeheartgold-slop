	.include "macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223D618
	.public ov40_0223D68C
	.extern ov40_0222FEA0
	.extern ov40_022303B8
	.extern ov40_02245808
	.extern ov40_02245948

	.text

	.text
	thumb_func_start ov40_0223D618
ov40_0223D618: ; 0x0223D618
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	ldr r4, _0223D684 ; =ov40_02245948
	add r3, sp, #0xc
	mov r2, #0x3c
_0223D622:
	ldrh r1, [r4]
	add r4, r4, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0223D622
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r7, _0223D688 ; =0x0000051C
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	str r0, [sp]
_0223D640:
	ldr r0, [sp]
	ldr r4, [sp, #4]
	lsl r1, r0, #2
	add r0, sp, #0xc
	mov r6, #0
	add r5, r0, r1
_0223D64C:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0223D65E
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	bl ManagedSprite_SetPositionXY
_0223D65E:
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #6
	blt _0223D64C
	ldr r0, [sp, #4]
	add r0, #0x30
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #5
	blt _0223D640
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
_0223D684: .word ov40_02245948
_0223D688: .word 0x0000051C
	thumb_func_end ov40_0223D618

	thumb_func_start ov40_0223D68C
ov40_0223D68C: ; 0x0223D68C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r0, r1]
	ldr r4, _0223D814 ; =ov40_02245808
	str r0, [sp, #0x14]
	add r3, sp, #0x50
	mov r2, #6
_0223D6A0:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223D6A0
	mov r0, #0
	add r1, sp, #0x38
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	add r1, sp, #0x20
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [sp, #0x18]
	ldr r1, _0223D818 ; =0x000004A4
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	lsl r1, r0, #2
	ldr r0, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
_0223D6DA:
	ldr r1, _0223D81C ; =0x00002608
	ldr r0, [sp, #0x10]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0223D6E6
	b _0223D7F2
_0223D6E6:
	add r0, #0x80
	bl ov40_022303B8
	cmp r0, #0
	beq _0223D6F4
	mov r0, #1
	b _0223D6F6
_0223D6F4:
	mov r0, #0
_0223D6F6:
	mov r7, #0
	add r1, r7, #0
	add r2, sp, #0x38
	add r4, sp, #0x20
	add r3, r7, #0
_0223D700:
	stmia r2!, {r3}
	add r1, r1, #1
	stmia r4!, {r3}
	cmp r1, #6
	blt _0223D700
	mov r1, #0x18
	mul r1, r0
	add r0, sp, #0x50
	str r1, [sp, #0x1c]
	add r0, r0, r1
	add r1, sp, #0x38
	add r2, sp, #0x20
_0223D718:
	ldr r5, [sp, #0x10]
	ldr r4, _0223D81C ; =0x00002608
	ldr r6, [r0]
	ldr r5, [r5, r4]
	lsl r4, r6, #1
	add r4, r5, r4
	add r4, #0x80
	ldrh r4, [r4]
	cmp r4, #0
	beq _0223D73E
	stmia r1!, {r4}
	ldr r5, [sp, #0x10]
	ldr r4, _0223D81C ; =0x00002608
	add r7, r7, #1
	ldr r4, [r5, r4]
	add r4, r4, r6
	add r4, #0x98
	ldrb r4, [r4]
	stmia r2!, {r4}
_0223D73E:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, #3
	blt _0223D718
	ldr r1, _0223D81C ; =0x00002608
	ldr r0, [sp, #0x10]
	ldr r0, [r0, r1]
	add r0, #0x80
	bl ov40_022303B8
	cmp r0, #0
	beq _0223D758
	mov r7, #3
_0223D758:
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x50
	add r0, r1, r0
	lsl r4, r7, #2
	add r1, sp, #0x38
	add r2, sp, #0x20
	mov r3, #3
	add r0, #0xc
	add r1, r1, r4
	add r2, r2, r4
_0223D76C:
	ldr r5, [sp, #0x10]
	ldr r4, _0223D81C ; =0x00002608
	ldr r6, [r0]
	ldr r5, [r5, r4]
	lsl r4, r6, #1
	add r4, r5, r4
	add r4, #0x80
	ldrh r4, [r4]
	cmp r4, #0
	beq _0223D792
	stmia r1!, {r4}
	ldr r5, [sp, #0x10]
	ldr r4, _0223D81C ; =0x00002608
	add r7, r7, #1
	ldr r4, [r5, r4]
	add r4, r4, r6
	add r4, #0x98
	ldrb r4, [r4]
	stmia r2!, {r4}
_0223D792:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, #6
	blt _0223D76C
	ldr r5, [sp, #0xc]
	mov r7, #0
	add r6, sp, #0x38
	add r4, sp, #0x20
_0223D7A2:
	ldr r2, [sp, #0x14]
	ldr r1, _0223D820 ; =0x00000514
	ldr r3, [r6]
	ldr r2, [r2, r1]
	ldr r0, [r4]
	add r1, r1, #4
	str r2, [r5, r1]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	ldr r1, _0223D824 ; =0x0000050C
	ldr r0, [sp, #8]
	ldr r1, [r2, r1]
	ldr r2, _0223D828 ; =0x00000518
	ldr r2, [r5, r2]
	bl ov40_0222FEA0
	ldr r1, _0223D82C ; =0x0000051C
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223D7DA
	mov r1, #6
	sub r1, r1, r7
	bl ManagedSprite_SetDrawPriority
_0223D7DA:
	ldr r1, [sp, #0x14]
	ldr r0, _0223D820 ; =0x00000514
	add r7, r7, #1
	ldr r0, [r1, r0]
	add r6, r6, #4
	add r2, r0, #1
	ldr r0, _0223D820 ; =0x00000514
	add r4, r4, #4
	add r5, #8
	str r2, [r1, r0]
	cmp r7, #6
	blt _0223D7A2
_0223D7F2:
	ldr r0, [sp, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #5
	bge _0223D80A
	b _0223D6DA
_0223D80A:
	ldr r0, [sp, #8]
	bl ov40_0223D618
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223D814: .word ov40_02245808
_0223D818: .word 0x000004A4
_0223D81C: .word 0x00002608
_0223D820: .word 0x00000514
_0223D824: .word 0x0000050C
_0223D828: .word 0x00000518
_0223D82C: .word 0x0000051C
	thumb_func_end ov40_0223D68C

