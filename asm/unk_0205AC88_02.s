	.include "asm/macros.inc"
	.include "unk_0205AC88.inc"
	.include "global.inc"
	.public sub_0205AF78
	.public sub_0205B0DC
	.public sub_0205B118
	.public sub_0205B13C
	.public sub_0205B1E4
	.public sub_0205B218
	.public sub_0205B240
	.public sub_0205B27C
	.public sub_0205B338
	.public sub_0205B35C
	.public sub_0205B380
	.public sub_0205B3A0
	.public sub_0205B3B8
	.public sub_0205B3CC

	.public _020FC824

	.text

	.text
	thumb_func_start sub_0205AF78
sub_0205AF78: ; 0x0205AF78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [r0, #8]
	str r1, [sp, #4]
	cmp r0, #0
	bne _0205AF8A
	bl GF_AssertFail
_0205AF8A:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	bl PlayerAvatar_GetXCoord
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	bl PlayerAvatar_GetZCoord
	ldr r4, [sp]
	str r0, [sp, #8]
	add r6, r4, #0
	mov r7, #0
	add r6, #0xc
_0205AFA6:
	ldr r0, [sp, #4]
	add r1, r7, #1
	bl MapObjectManager_GetFirstActiveObjectByID
	add r5, r0, #0
	bne _0205AFB6
	bl GF_AssertFail
_0205AFB6:
	ldrb r0, [r4, #0xd]
	cmp r0, #4
	bhi _0205B0AA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205AFC8: ; jump table
	.short _0205AFD2 - _0205AFC8 - 2 ; case 0
	.short _0205AFF2 - _0205AFC8 - 2 ; case 1
	.short _0205B052 - _0205AFC8 - 2 ; case 2
	.short _0205B07A - _0205AFC8 - 2 ; case 3
	.short _0205B0A6 - _0205AFC8 - 2 ; case 4
_0205AFD2:
	add r0, r5, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _0205B0AA
	ldrb r0, [r4, #0xc]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0205B0AA
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0205B13C
	b _0205B0AA
_0205AFF2:
	add r0, r5, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _0205B0AA
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0205B012
	mov r0, #0
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
	add r0, r6, #0
	mov r1, #1
	bl sub_0205B0DC
	b _0205B0AA
_0205B012:
	add r0, r5, #0
	bl MapObject_ClearHeldMovementIfActive
	add r0, r5, #0
	mov r1, #0
	bl MapObject_SetFlag19
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _0205B048
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _0205B048
	add r0, r5, #0
	mov r1, #3
	bl sub_0205FC94
	add r0, r5, #0
	mov r1, #1
	bl MapObject_SetXRange
	add r0, r5, #0
	mov r1, #1
	bl MapObject_SetYRange
	mov r0, #1
	strb r0, [r4, #0x15]
_0205B048:
	mov r0, #2
	strb r0, [r4, #0xd]
	mov r0, #0
	strb r0, [r4, #0xc]
	b _0205B0AA
_0205B052:
	add r0, r5, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _0205B0AA
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0205B218
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	bne _0205B072
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0205B1E4
_0205B072:
	add r0, r6, #0
	bl sub_0205B118
	b _0205B0AA
_0205B07A:
	add r0, r5, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _0205B0AA
	add r0, r5, #0
	bl MapObject_ClearHeldMovementIfActive
	mov r0, #4
	strb r0, [r4, #0xd]
	mov r0, #0
	strb r0, [r4, #0xc]
	strb r0, [r4, #0x15]
	add r0, r5, #0
	mov r1, #1
	bl MapObject_SetVisible
	add r0, r5, #0
	mov r1, #0
	bl MapObject_ClearFlag18
	b _0205B0AA
_0205B0A6:
	mov r0, #0
	strb r0, [r4, #0xd]
_0205B0AA:
	add r7, r7, #1
	add r4, #0x18
	add r6, #0x18
	cmp r7, #0x32
	bge _0205B0B6
	b _0205AFA6
_0205B0B6:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	bl PlayerAvatar_GetMapObject
	add r1, r0, #0
	ldr r2, _0205B0D8 ; =0x000004BC
	ldr r0, [sp]
	add r0, r0, r2
	bl sub_0205B218
	ldr r1, _0205B0D8 ; =0x000004BC
	ldr r0, [sp]
	add r0, r0, r1
	bl sub_0205B118
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0205B0D8: .word 0x000004BC
	thumb_func_end sub_0205AF78

	thumb_func_start sub_0205B0DC
sub_0205B0DC: ; 0x0205B0DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	cmp r0, #0
	beq _0205B0FA
	bl sub_02068CCC
	cmp r0, #0
	beq _0205B0F6
	ldr r0, [r5, #0x10]
	bl sub_02068B48
_0205B0F6:
	mov r0, #0
	str r0, [r5, #0x10]
_0205B0FA:
	cmp r4, #0
	beq _0205B116
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0205B116
	bl sub_02068CCC
	cmp r0, #0
	beq _0205B112
	ldr r0, [r5, #0x14]
	bl sub_02068B48
_0205B112:
	mov r0, #0
	str r0, [r5, #0x14]
_0205B116:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205B0DC

	thumb_func_start sub_0205B118
sub_0205B118: ; 0x0205B118
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #4]
	cmp r1, #0
	beq _0205B138
	ldrh r1, [r4, #6]
	sub r1, r1, #1
	strh r1, [r4, #6]
	ldrh r1, [r4, #6]
	cmp r1, #0
	bne _0205B138
	mov r1, #0
	bl sub_0205B0DC
	mov r0, #0
	strb r0, [r4, #4]
_0205B138:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_0205B118

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

	thumb_func_start sub_0205B1E4
sub_0205B1E4: ; 0x0205B1E4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x43
	bl MapObject_SetHeldMovement
	add r0, r5, #0
	mov r1, #1
	bl MapObject_SetFlag19
	add r0, r5, #0
	mov r1, #0
	bl sub_0205FC94
	add r0, r4, #0
	mov r1, #1
	bl sub_0205B0DC
	mov r0, #0
	strb r0, [r4, #4]
	strh r0, [r4, #6]
	mov r0, #3
	strb r0, [r4, #1]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0205B1E4

	thumb_func_start sub_0205B218
sub_0205B218: ; 0x0205B218
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #1
	bne _0205B23C
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0205B23C
	add r0, r1, #0
	bl ov01_02200730
	str r0, [r4, #0x10]
	mov r0, #0x1e
	strh r0, [r4, #6]
	mov r0, #0
	strb r0, [r4, #3]
	mov r0, #1
	strb r0, [r4, #4]
_0205B23C:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_0205B218

	thumb_func_start sub_0205B240
sub_0205B240: ; 0x0205B240
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r7, r0, #0
	cmp r5, r6
	bge _0205B27A
_0205B24C:
	add r0, r7, #0
	add r1, r5, #0
	bl MapObjectManager_GetFirstActiveObjectByID
	add r4, r0, #0
	bne _0205B25C
	bl GF_AssertFail
_0205B25C:
	add r0, r4, #0
	mov r1, #1
	bl MapObject_SetVisible
	add r0, r4, #0
	mov r1, #0
	bl MapObject_ClearFlag18
	add r0, r4, #0
	mov r1, #1
	bl MapObject_SetFlag19
	add r5, r5, #1
	cmp r5, r6
	blt _0205B24C
_0205B27A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205B240

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

	thumb_func_start sub_0205B35C
sub_0205B35C: ; 0x0205B35C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0205B364:
	add r0, r5, #0
	bl sub_0205B338
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #0x1e
	blt _0205B364
	mov r0, #0xd2
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	add r0, r0, #4
	str r1, [r6, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205B35C

	thumb_func_start sub_0205B380
sub_0205B380: ; 0x0205B380
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl Heap_Free
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0205B394
	bl String_Delete
_0205B394:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0205B39E
	bl String_Delete
_0205B39E:
	pop {r4, pc}
	thumb_func_end sub_0205B380

	thumb_func_start sub_0205B3A0
sub_0205B3A0: ; 0x0205B3A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0205B3A6:
	add r0, r5, #0
	bl sub_0205B380
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #0x1e
	blt _0205B3A6
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_0205B3A0

	thumb_func_start sub_0205B3B8
sub_0205B3B8: ; 0x0205B3B8
	push {r4, lr}
	mov r1, #0x35
	lsl r1, r1, #4
	bl Heap_Alloc
	add r4, r0, #0
	bl sub_0205B35C
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0205B3B8

	thumb_func_start sub_0205B3CC
sub_0205B3CC: ; 0x0205B3CC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205B3A0
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	thumb_func_end sub_0205B3CC
