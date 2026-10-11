	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021EA1AC
	.public ov85_021EA2C0
	.extern ov85_021EA324

	.text

	.text
	thumb_func_start ov85_021EA1AC
ov85_021EA1AC: ; 0x021EA1AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #0xcf
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x14]
	mov r0, #0xd3
	lsl r0, r0, #2
	mov r4, #0
	add r0, r5, r0
	str r4, [sp, #8]
	add r6, r5, #0
	mov r7, #0x1c
	str r0, [sp, #0x18]
_021EA1CE:
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #3
	bhi _021EA29A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EA1E4: ; jump table
	.short _021EA29A - _021EA1E4 - 2 ; case 0
	.short _021EA1EC - _021EA1E4 - 2 ; case 1
	.short _021EA29A - _021EA1E4 - 2 ; case 2
	.short _021EA262 - _021EA1E4 - 2 ; case 3
_021EA1EC:
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021EA1FA
	bl GF_AssertFail
_021EA1FA:
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl PlayerProfile_GetTrainerGender
	str r0, [sp, #0xc]
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl PlayerProfile_GetAvatar
	str r0, [sp, #0x10]
	bl sub_0203769C
	cmp r4, r0
	bne _021EA22C
	mov r0, #0x8f
	ldr r1, [sp, #0xc]
	lsl r0, r0, #2
	lsl r1, r1, #1
	ldr r0, [r5, r0]
	add r1, #0x26
	bl Sprite_SetAnimCtrlSeq
	b _021EA248
_021EA22C:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	add r2, r4, #0
	bl ov85_021EA324
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #4]
	bl Sprite_SetAnimCtrlSeq
_021EA248:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0xe7
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #8]
	b _021EA29A
_021EA262:
	bl sub_0203769C
	cmp r4, r0
	bne _021EA286
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl PlayerProfile_GetTrainerGender
	add r1, r0, #0
	mov r0, #0x8f
	lsl r0, r0, #2
	lsl r1, r1, #1
	ldr r0, [r5, r0]
	add r1, #0x27
	bl Sprite_SetAnimCtrlSeq
	b _021EA292
_021EA286:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl Sprite_SetAnimCtrlSeq
_021EA292:
	mov r0, #0xe7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_021EA29A:
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r0, r0, #2
	add r5, r5, #4
	add r6, #8
	add r7, r7, #2
	str r0, [sp, #4]
	cmp r4, #5
	blt _021EA1CE
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021EA2B8
	ldr r0, _021EA2BC ; =0x0000064E
	bl PlaySE
_021EA2B8:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EA2BC: .word 0x0000064E
	thumb_func_end ov85_021EA1AC

	thumb_func_start ov85_021EA2C0
ov85_021EA2C0: ; 0x021EA2C0
	push {r3, r4, r5, lr}
	mov r2, #0xd3
	add r5, r0, #0
	lsl r2, r2, #2
	add r4, r1, #0
	mov r0, #0x64
	mov r1, #9
	add r2, r5, r2
	mov r3, #0x66
	bl GfGfxLoader_GetPlttData
	mov r2, #0xd1
	lsl r2, r2, #2
	str r0, [r5, r2]
	add r2, #0xc
	add r0, r4, #0
	mov r1, #7
	add r2, r5, r2
	mov r3, #0x66
	bl GfGfxLoader_GetPlttDataFromOpenNarc
	mov r3, #0xd2
	lsl r3, r3, #2
	str r0, [r5, r3]
	mov r0, #0x66
	sub r3, #0xc
	str r0, [sp]
	mov r0, #0x64
	mov r1, #0x2b
	mov r2, #1
	add r3, r5, r3
	bl GfGfxLoader_GetCharData
	mov r3, #0xcd
	lsl r3, r3, #2
	str r0, [r5, r3]
	mov r0, #0x66
	add r3, #0xc
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	mov r2, #1
	add r3, r5, r3
	bl GfGfxLoader_GetCharDataFromOpenNarc
	mov r1, #0xce
	lsl r1, r1, #2
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov85_021EA2C0

