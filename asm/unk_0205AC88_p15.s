	.include "asm/macros.inc"
	.include "unk_0205AC88.inc"
	.include "global.inc"
	.public sub_0205B27C
	.public sub_0205B338
	.extern sub_0205B240

	.public _020FC824

	.text

	.text
	thumb_func_start sub_0205B27C
sub_0205B27C: ; 0x0205B27C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	add r7, r0, #0
	bl MapObjectManager_GetFirstActiveObjectByID
	add r4, r0, #0
	bne _0205B290
	bl GF_AssertFail
_0205B290:
	add r0, r4, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _0205B336
	bl sub_02037FCC
	cmp r0, #0
	bne _0205B2AA
	bl sub_02037F94
	cmp r0, #0
	beq _0205B32C
_0205B2AA:
	mov r6, #0
	add r5, #0xc
_0205B2AE:
	ldrb r0, [r5, #1]
	cmp r0, #1
	bne _0205B318
	add r0, r7, #0
	add r1, r6, #1
	bl MapObjectManager_GetFirstActiveObjectByID
	add r4, r0, #0
	bne _0205B2C4
	bl GF_AssertFail
_0205B2C4:
	ldrb r1, [r5, #8]
	add r0, r4, #0
	bl sub_0205E3AC
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
	mov r0, #1
	strb r0, [r5, #1]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0205B318
	cmp r0, #1
	bne _0205B306
	add r0, r4, #0
	mov r1, #1
	bl ov01_021FD8E8
	str r0, [r5, #0x14]
	b _0205B314
_0205B306:
	cmp r0, #2
	blo _0205B314
	add r0, r4, #0
	mov r1, #2
	bl ov01_021FD8E8
	str r0, [r5, #0x14]
_0205B314:
	mov r0, #0
	strb r0, [r5, #2]
_0205B318:
	add r6, r6, #1
	add r5, #0x18
	cmp r6, #0xa
	blt _0205B2AE
	add r0, r7, #0
	mov r1, #0xb
	mov r2, #0x33
	bl sub_0205B240
	pop {r3, r4, r5, r6, r7, pc}
_0205B32C:
	add r0, r7, #0
	mov r1, #1
	mov r2, #0x33
	bl sub_0205B240
_0205B336:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205B27C

	thumb_func_start sub_0205B338
sub_0205B338: ; 0x0205B338
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	mov r1, #0x57
	bl String_New
	str r0, [r4]
	mov r1, #0
	add r0, r4, #0
	str r1, [r4, #4]
	add r0, #0x14
	str r1, [r4, #8]
	bl MailMsg_Init_WithBank
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end sub_0205B338

