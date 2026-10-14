	.include "asm/macros.inc"
	.include "unk_0205AC88.inc"
	.include "global.inc"
	.public sub_0205B13C
	.extern sub_0205B0DC

	.public _020FC824

	.text

	.text
	thumb_func_start sub_0205B13C
sub_0205B13C: ; 0x0205B13C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl MapObject_GetInitialX
	add r7, r0, #0
	add r0, r4, #0
	bl MapObject_GetInitialY
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl MapObject_GetInitialZ
	add r6, r0, #0
	ldr r0, [sp, #4]
	cmp r7, r0
	bne _0205B16C
	ldr r0, [sp, #8]
	cmp r6, r0
	beq _0205B1DC
_0205B16C:
	ldr r0, _0205B1E0 ; =0x0000064E
	bl PlaySE
	ldrb r1, [r5, #8]
	add r0, r4, #0
	bl sub_0205E3AC
	add r0, r5, #0
	mov r1, #0
	bl sub_0205B0DC
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	add r3, r6, #0
	bl MapObject_SetPositionFromXYZAndDirection
	add r0, r4, #0
	mov r1, #1
	bl MapObject_SetFacingDirectionDirect
	add r0, r4, #0
	mov r1, #0x44
	bl MapObject_SetHeldMovement
	add r0, r4, #0
	mov r1, #0
	bl MapObject_SetVisible
	add r0, r4, #0
	mov r1, #1
	bl MapObject_ClearFlag18
	mov r1, #1
	strb r1, [r5, #1]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0205B1DC
	cmp r0, #1
	bne _0205B1CA
	add r0, r4, #0
	bl ov01_021FD8E8
	str r0, [r5, #0x14]
	b _0205B1D8
_0205B1CA:
	cmp r0, #2
	blo _0205B1D8
	add r0, r4, #0
	mov r1, #2
	bl ov01_021FD8E8
	str r0, [r5, #0x14]
_0205B1D8:
	mov r0, #0
	strb r0, [r5, #2]
_0205B1DC:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0205B1E0: .word 0x0000064E
	thumb_func_end sub_0205B13C

