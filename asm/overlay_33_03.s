	.include "asm/macros.inc"
	.include "overlay_33.inc"
	.include "global.inc"
	.public ov33_0225D5D0
	.extern ov33_0225D9D4
	.extern ov33_0225DA50

	.text

	.text
	thumb_func_start ov33_0225D5D0
ov33_0225D5D0: ; 0x0225D5D0
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _0225D6E4 ; =0x000001BA
	ldr r0, _0225D6E8 ; =ov33_0225DA50
	ldrh r2, [r4, r1]
	sub r3, r2, #1
	mov r2, #0xc
	mul r2, r3
	add r0, r0, r2
	sub r2, r1, #2
	ldrh r2, [r4, r2]
	cmp r2, #2
	bhs _0225D604
	ldr r2, [r4, #0x10]
	ldrb r2, [r2, #5]
	cmp r2, #1
	bne _0225D5FA
	mov r2, #2
	sub r1, r1, #2
	strh r2, [r4, r1]
	b _0225D604
_0225D5FA:
	cmp r2, #2
	bne _0225D604
	mov r2, #4
	sub r1, r1, #2
	strh r2, [r4, r1]
_0225D604:
	mov r1, #0x6e
	lsl r1, r1, #2
	ldrh r1, [r4, r1]
	cmp r1, #5
	bhi _0225D6E0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225D61A: ; jump table
	.short _0225D626 - _0225D61A - 2 ; case 0
	.short _0225D656 - _0225D61A - 2 ; case 1
	.short _0225D67E - _0225D61A - 2 ; case 2
	.short _0225D6E0 - _0225D61A - 2 ; case 3
	.short _0225D6A8 - _0225D61A - 2 ; case 4
	.short _0225D6D2 - _0225D61A - 2 ; case 5
_0225D626:
	ldr r0, [r0, #4]
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	ldr r1, [r4, r1]
	mvn r0, r0
	cmp r1, r0
	beq _0225D6E0
	add r0, r4, #0
	mov r1, #1
	bl ov33_0225D9D4
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	ldr r1, [r4, #0x10]
	sub r0, r0, #4
	strh r2, [r1, #6]
	mov r1, #1
	strh r1, [r4, r0]
	pop {r4, pc}
_0225D656:
	ldr r0, [r0, #4]
	bl TouchscreenHitbox_FindRectAtTouchHeld
	ldr r2, _0225D6EC ; =0x0000FFFF
	ldr r1, [r4, #0x10]
	strh r2, [r1, #6]
	mov r1, #0x6f
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r0, r1
	beq _0225D6E0
	add r0, r4, #0
	mov r1, #0
	bl ov33_0225D9D4
	mov r0, #0x6e
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r4, r0]
	pop {r4, pc}
_0225D67E:
	ldr r0, [r4]
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4]
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4]
	mov r1, #4
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, [r4]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #0x6e
	mov r1, #3
	lsl r0, r0, #2
	strh r1, [r4, r0]
	pop {r4, pc}
_0225D6A8:
	ldr r0, [r4]
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4]
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4]
	mov r1, #4
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, [r4]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #0x6e
	mov r1, #5
	lsl r0, r0, #2
	strh r1, [r4, r0]
	pop {r4, pc}
_0225D6D2:
	ldr r0, _0225D6F0 ; =gSystem + 0x40
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	beq _0225D6E0
	ldr r0, _0225D6F4 ; =gSystem
	mov r1, #1
	str r1, [r0, #0x5c]
_0225D6E0:
	pop {r4, pc}
	nop
_0225D6E4: .word 0x000001BA
_0225D6E8: .word ov33_0225DA50
_0225D6EC: .word 0x0000FFFF
_0225D6F0: .word gSystem + 0x40
_0225D6F4: .word gSystem
	thumb_func_end ov33_0225D5D0

