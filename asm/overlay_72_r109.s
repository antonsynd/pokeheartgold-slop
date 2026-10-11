	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223AF7C
	.extern ov72_0223B2FC
	.extern ov72_0223B4C8

	.text

	.text
	thumb_func_start ov72_0223AF7C
ov72_0223AF7C: ; 0x0223AF7C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0223B078 ; =ov72_0223B4C8
	bl TouchscreenHitbox_FindRectAtTouchNew
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _0223AFE6
	ldr r0, _0223B07C ; =0x000005DC
	bl PlaySE
	cmp r5, #0
	bne _0223AFBE
	add r0, r4, #0
	mov r1, #0
	add r0, #0x33
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x33
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov72_0223B2FC
	ldr r0, [r4, #4]
	mov r1, #3
	bl Sprite_SetAnimCtrlSeq
	mov r0, #3
	add r4, #0x2d
	strb r0, [r4]
	b _0223B074
_0223AFBE:
	cmp r5, #1
	bne _0223B074
	add r0, r4, #0
	mov r1, #1
	add r0, #0x33
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x33
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov72_0223B2FC
	ldr r0, [r4, #4]
	mov r1, #3
	bl Sprite_SetAnimCtrlSeq
	mov r0, #3
	add r4, #0x2d
	strb r0, [r4]
	b _0223B074
_0223AFE6:
	ldr r0, _0223B080 ; =gSystem
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _0223B00A
	add r0, r4, #0
	mov r1, #0
	add r0, #0x33
	strb r1, [r0]
	add r0, r4, #0
	add r4, #0x33
	ldrb r1, [r4]
	bl ov72_0223B2FC
	ldr r0, _0223B07C ; =0x000005DC
	bl PlaySE
	b _0223B074
_0223B00A:
	mov r1, #0x80
	tst r1, r0
	beq _0223B02A
	add r0, r4, #0
	mov r1, #1
	add r0, #0x33
	strb r1, [r0]
	add r0, r4, #0
	add r4, #0x33
	ldrb r1, [r4]
	bl ov72_0223B2FC
	ldr r0, _0223B07C ; =0x000005DC
	bl PlaySE
	b _0223B074
_0223B02A:
	mov r2, #1
	add r1, r0, #0
	tst r1, r2
	beq _0223B048
	ldr r0, [r4, #4]
	mov r1, #3
	bl Sprite_SetAnimCtrlSeq
	mov r0, #3
	add r4, #0x2d
	strb r0, [r4]
	ldr r0, _0223B07C ; =0x000005DC
	bl PlaySE
	b _0223B074
_0223B048:
	mov r1, #2
	tst r0, r1
	beq _0223B074
	add r0, r4, #0
	add r0, #0x33
	add r1, r4, #0
	strb r2, [r0]
	add r1, #0x33
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov72_0223B2FC
	add r0, r4, #0
	mov r1, #3
	add r0, #0x2d
	strb r1, [r0]
	ldr r0, [r4, #4]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _0223B07C ; =0x000005DC
	bl PlaySE
_0223B074:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223B078: .word ov72_0223B4C8
_0223B07C: .word 0x000005DC
_0223B080: .word gSystem
	thumb_func_end ov72_0223AF7C

