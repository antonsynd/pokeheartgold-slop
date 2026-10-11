	.include "asm/macros.inc"
	.include "overlay_28.inc"
	.include "global.inc"
	.public ov28_0225D520
	.extern ov28_0225D628
	.extern ov28_0225D650
	.extern ov28_0225D6FC
	.extern ov28_0225D764
	.extern ov28_0225D7E0
	.extern ov28_0225D898
	.extern ov28_0225DC2C

	.text

	.text
	thumb_func_start ov28_0225D520
ov28_0225D520: ; 0x0225D520
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #3
	str r2, [sp]
	mov r1, #8
	lsl r2, r0, #0xf
	str r3, [sp, #4]
	bl Heap_Create
	ldr r0, _0225D5E4 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	mov r1, #0xd
	ldr r0, _0225D5E8 ; =ov28_0225DC2C
	lsl r1, r1, #6
	mov r2, #0xa
	mov r3, #8
	bl CreateSysTaskAndEnvironment
	add r6, r0, #0
	bl SysTask_GetData
	add r4, r0, #0
	str r5, [r4, #0x10]
	ldr r0, [sp]
	str r7, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [sp, #4]
	mov r1, #0
	str r0, [r4, #0x1c]
	mov r0, #0xcf
	str r6, [r4, #0x20]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r4, #0x18]
	bl ov01_021E7F54
	mov r1, #0xcd
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _0225D5A6
	ldr r0, [r4, #0x18]
	add r1, sp, #8
	bl FieldSystem_GetFacingObject
	ldr r0, [sp, #8]
	bl MapObject_GetScriptID
	bl ov01_021F6BD0
	cmp r0, #1
	beq _0225D59E
	ldr r0, [sp, #8]
	bl MapObject_GetSpriteID
	bl ov01_021F6BB0
	cmp r0, #1
	bne _0225D5A6
_0225D59E:
	mov r0, #0xcd
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0225D5A6:
	mov r0, #0xfd
	mov r1, #8
	bl NARC_New
	add r7, r0, #0
	bl ov28_0225D628
	add r0, r5, #0
	bl ov28_0225D650
	add r0, r4, #0
	add r1, r7, #0
	bl ov28_0225D6FC
	add r0, r4, #0
	bl ov28_0225D764
	add r0, r4, #0
	bl ov28_0225D7E0
	add r0, r4, #0
	add r1, r7, #0
	bl ov28_0225D898
	add r0, r7, #0
	bl NARC_Delete
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0225D5E4: .word 0x04001050
_0225D5E8: .word ov28_0225DC2C
	thumb_func_end ov28_0225D520

