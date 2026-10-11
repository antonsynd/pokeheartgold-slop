	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public TradeSequence_Main
	.public ov71_02246C48
	.public ov71_02246C6C
	.extern ov71_02246D9C
	.extern ov71_022473F0
	.extern ov71_0224BBEC
	.extern ov71_0224BBF0
	.extern ov71_0224BBF4
	.extern ov71_0224BBF8

	.text

	.text
	thumb_func_start TradeSequence_Main
TradeSequence_Main: ; 0x02246BB8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r3, [r4, #4]
	cmp r3, #7
	bhs _02246C34
	ldr r1, [r4]
	ldr r6, _02246C38 ; =ov71_0224BBF8
	lsl r2, r3, #4
	ldr r1, [r1, #0x10]
	ldr r6, [r6, r2]
	tst r1, r6
	beq _02246C24
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _02246BEC
	ldr r1, _02246C3C ; =ov71_0224BBEC
	ldr r1, [r1, r2]
	blx r1
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r4, r1]
_02246BEC:
	ldr r2, [r4, #4]
	mov r0, #0x55
	lsl r3, r2, #4
	ldr r2, _02246C40 ; =ov71_0224BBF0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r2, r3]
	add r1, r5, #0
	blx r2
	cmp r0, #0
	beq _02246C2C
	ldr r1, [r4, #4]
	mov r0, #0x55
	lsl r2, r1, #4
	ldr r1, _02246C44 ; =ov71_0224BBF4
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r1, r2]
	blx r1
	mov r0, #0x55
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	str r1, [r5]
	b _02246C2C
_02246C24:
	add r0, r3, #1
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r5]
_02246C2C:
	bl ov71_022473F0
	mov r0, #0
	pop {r4, r5, r6, pc}
_02246C34:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02246C38: .word ov71_0224BBF8
_02246C3C: .word ov71_0224BBEC
_02246C40: .word ov71_0224BBF0
_02246C44: .word ov71_0224BBF4
	thumb_func_end TradeSequence_Main

	thumb_func_start ov71_02246C48
ov71_02246C48: ; 0x02246C48
	push {r3, lr}
	ldr r0, [r1, #0x18]
	bl SpriteList_RenderAndAnimateSprites
	bl OamManager_ApplyAndResetBuffers
	ldr r3, _02246C64 ; =0x027E0000
	ldr r1, _02246C68 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_02246C64: .word 0x027E0000
_02246C68: .word 0x00003FF8
	thumb_func_end ov71_02246C48

	thumb_func_start ov71_02246C6C
ov71_02246C6C: ; 0x02246C6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x38
	add r6, r1, #0
	add r1, r0, #0
	add r1, #0xc8
	bl Heap_Alloc
	add r4, r0, #0
	ldr r0, _02246D30 ; =0x00000000
	str r0, [r5]
	beq _02246D28
	mov r0, #0x59
	mov r1, #6
	add r2, sp, #4
	mov r3, #0x38
	bl GfGfxLoader_GetPlttData
	add r7, r0, #0
	beq _02246CA6
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x60
	bl MIi_CpuClear16
	add r0, r7, #0
	bl Heap_Free
_02246CA6:
	add r1, r4, #0
	mov r0, #0
	add r1, #0xec
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xf0
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xf4
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xe4
	str r5, [r1]
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xfc
	str r6, [r1]
	add r3, r4, #0
	add r2, r0, #0
_02246CD6:
	add r1, r3, #0
	add r1, #0xc4
	add r0, r0, #1
	add r3, r3, #4
	str r2, [r1]
	cmp r0, #8
	blt _02246CD6
	mov r0, #8
	str r0, [sp]
	ldr r0, _02246D34 ; =0x04000050
	mov r1, #4
	mov r2, #0xc
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
	mov r0, #8
	str r0, [sp]
	ldr r0, _02246D38 ; =0x04001050
	mov r1, #4
	mov r2, #0xc
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
	ldr r0, _02246D3C ; =ov71_02246D9C
	add r1, r4, #0
	mov r2, #0x14
	bl SysTask_CreateOnVWaitQueue
	add r1, r4, #0
	add r1, #0xc0
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	cmp r0, #0
	beq _02246D28
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r1, #1
	str r1, [r0]
_02246D28:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02246D30: .word 0x00000000
_02246D34: .word 0x04000050
_02246D38: .word 0x04001050
_02246D3C: .word ov71_02246D9C
	thumb_func_end ov71_02246C6C

