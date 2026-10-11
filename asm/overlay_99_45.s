	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public PokeathlonEventRecord_Exit
	.public PokeathlonEventRecord_Init
	.public PokeathlonEventRecord_Main
	.public _021EA5E4
	.public ov99_021E7150
	.public ov99_021E718C
	.public ov99_021E724C
	.public ov99_021E80D0
	.public ov99_021E810C
	.public ov99_021E8198
	.public ov99_021E8224
	.public ov99_021E82E4
	.public ov99_021E856C
	.public ov99_021E8590
	.public ov99_021E860C
	.public ov99_021E875C
	.public ov99_021E8788
	.public ov99_021E8818
	.public ov99_021E8828
	.public ov99_021E88D4
	.public ov99_021E8C04
	.public ov99_021E8C50
	.public ov99_021E90F4
	.public ov99_021E93DC
	.public ov99_021E9418
	.public ov99_021E9FB0
	.public ov99_021EA180
	.public ov99_021EA45C

	.text

	thumb_func_start ov99_021E80D0
ov99_021E80D0: ; 0x021E80D0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r4, _021E8100 ; =ov99_021EA180
	mov r6, #0
	add r5, r7, #0
_021E80DA:
	ldr r0, _021E8104 ; =0x00000404
	add r1, r4, #0
	ldr r0, [r7, r0]
	bl ov98_0221E6E0
	ldr r1, _021E8108 ; =0x00000408
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl ManagedSprite_SetAnimateFlag
	add r6, r6, #1
	add r4, #0x34
	add r5, r5, #4
	cmp r6, #4
	blt _021E80DA
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E8100: .word ov99_021EA180
_021E8104: .word 0x00000404
_021E8108: .word 0x00000408
	thumb_func_end ov99_021E80D0

	thumb_func_start ov99_021E810C
ov99_021E810C: ; 0x021E810C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	mov r4, #0
	str r0, [sp]
	add r2, sp, #4
	add r0, r4, #0
	add r1, r4, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r7, _021E818C ; =ov99_021E9FB0
	str r0, [r2]
	mov r6, #0x30
_021E812C:
	add r0, sp, #4
	strh r4, [r0, #6]
	mov r0, #0x20
	str r0, [sp, #0x18]
	mov r0, #3
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	mov r0, #2
	str r0, [sp, #0x14]
	ldr r0, [r7]
	str r4, [sp, #0x10]
	lsl r1, r0, #3
	add r1, #0x68
	add r0, sp, #4
	strh r1, [r0]
	strh r6, [r0, #2]
	add r0, r4, #0
	add r0, #0xf
	lsl r1, r0, #2
	ldr r0, [sp]
	add r5, r0, r1
	add r1, r0, #0
	ldr r0, _021E8190 ; =0x00000404
	ldr r0, [r1, r0]
	add r1, sp, #4
	bl ov98_0221E6E0
	ldr r1, _021E8194 ; =0x00000408
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl ManagedSprite_SetAnimateFlag
	ldr r0, _021E8194 ; =0x00000408
	mov r1, #0
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawFlag
	add r4, r4, #1
	add r7, r7, #4
	add r6, #0x20
	cmp r4, #5
	blt _021E812C
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E818C: .word ov99_021E9FB0
_021E8190: .word 0x00000404
_021E8194: .word 0x00000408
	thumb_func_end ov99_021E810C

	thumb_func_start ov99_021E8198
ov99_021E8198: ; 0x021E8198
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r6, r0, #0
	mov r0, #0
	add r2, sp, #0x10
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	str r0, [sp, #8]
	str r0, [r2]
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp]
_021E81BA:
	ldr r0, [sp]
	mov r4, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mov r5, #0x30
	str r0, [sp, #0xc]
_021E81C6:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	add r7, r4, r0
	add r0, r7, #2
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	str r0, [sp, #0x20]
	add r0, sp, #0x10
	strh r5, [r0]
	strh r1, [r0, #2]
	mov r0, #1
	str r0, [sp, #0x3c]
	ldr r0, _021E821C ; =0x00000404
	add r1, sp, #0x10
	ldr r0, [r6, r0]
	bl ov98_0221E6E0
	add r7, #0x14
	lsl r1, r7, #2
	add r2, r6, r1
	ldr r1, _021E8220 ; =0x00000408
	add r4, r4, #1
	add r5, #0x20
	str r0, [r2, r1]
	cmp r4, #6
	blo _021E81C6
	ldr r0, [sp, #4]
	add r0, r0, #6
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #5
	blo _021E81BA
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021E821C: .word 0x00000404
_021E8220: .word 0x00000408
	thumb_func_end ov99_021E8198

	thumb_func_start ov99_021E8224
ov99_021E8224: ; 0x021E8224
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r5, r0]
	bl ov98_0221EEFC
	add r6, r0, #0
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r5, r0]
	mov r1, #0xb
	mov r2, #0x7e
	mov r3, #3
	bl ov98_0221EC24
	mov r1, #0
	mov r0, #1
	str r1, [sp]
	lsl r0, r0, #0xa
	ldr r0, [r5, r0]
	mov r2, #0x7f
	mov r3, #1
	bl ov98_0221EC08
	mov r2, #0
	mov r1, #4
	str r2, [sp]
	str r1, [sp, #4]
	lsl r0, r1, #8
	ldr r0, [r5, r0]
	mov r3, #1
	bl ov98_0221EBEC
	mov r7, #1
	mov r4, #0
	lsl r7, r7, #0xa
_021E8270:
	lsl r2, r4, #0x18
	add r0, r6, #0
	mov r1, #0
	lsr r2, r2, #0x18
	bl BufferPokeathlonMedalName
	ldr r0, [r5, r7]
	add r1, r4, #6
	mov r2, #4
	mov r3, #0
	bl ov98_0221EBD8
	add r4, r4, #1
	cmp r4, #5
	blt _021E8270
	add r0, r5, #0
	bl ov99_021E718C
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	mov r3, #3
	bl BufferIntegerAsString
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xa
	mov r1, #1
	ldr r0, [r5, r0]
	mov r2, #0x80
	add r3, r1, #0
	bl ov98_0221EC08
	add r0, r5, #0
	bl ov99_021E7150
	cmp r0, #0
	beq _021E82E0
	add r0, r5, #0
	bl ov99_021E724C
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r5, r0]
	mov r1, #2
	add r2, #0x71
	mov r3, #1
	bl ov98_0221EC08
_021E82E0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov99_021E8224

	thumb_func_start ov99_021E82E4
ov99_021E82E4: ; 0x021E82E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _021E82F2
	bl GF_AssertFail
_021E82F2:
	cmp r4, #0xa
	blo _021E82FA
	bl GF_AssertFail
_021E82FA:
	ldr r0, [r5]
	ldr r1, [r0, #8]
	lsl r0, r4, #1
	ldrh r0, [r1, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov99_021E82E4

	thumb_func_start PokeathlonEventRecord_Init
PokeathlonEventRecord_Init: ; 0x021E8304
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _021E839C ; =FS_OVERLAY_ID(OVY_98)
	mov r1, #2
	bl HandleLoadOverlay
	add r0, r4, #0
	bl OverlayManager_GetArgs
	add r5, r0, #0
	bne _021E831E
	bl GF_AssertFail
_021E831E:
	mov r0, #3
	mov r1, #0x84
	lsl r2, r0, #0x10
	bl Heap_Create
	add r0, r4, #0
	mov r1, #0xe4
	mov r2, #0x84
	bl OverlayManager_CreateAndGetData
	mov r1, #0
	mov r2, #0xe4
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x84
	str r0, [r4, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	bl ov99_021E93DC
	bl ov98_0221F090
	add r0, r4, #0
	bl ov99_021E8590
	add r0, r4, #0
	bl ov99_021E860C
	ldr r0, _021E83A0 ; =0x0000013A
	ldr r3, _021E83A4 ; =ov99_021EA45C
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #4]
	mov r2, #0x13
	bl ov98_0221EABC
	str r0, [r4, #0x10]
	add r0, r4, #0
	bl ov99_021E88D4
	add r0, r4, #0
	bl ov99_021E8788
	add r0, r4, #0
	bl ov99_021E8C04
	add r0, r4, #0
	bl ov99_021E8818
	mov r0, #0
	bl ResetVisibleHardwareWindows
	mov r0, #1
	bl ResetVisibleHardwareWindows
	ldr r0, _021E83A8 ; =ov99_021E856C
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021E839C: .word FS_OVERLAY_ID(OVY_98)
_021E83A0: .word 0x0000013A
_021E83A4: .word ov99_021EA45C
_021E83A8: .word ov99_021E856C
	thumb_func_end PokeathlonEventRecord_Init

	thumb_func_start PokeathlonEventRecord_Exit
PokeathlonEventRecord_Exit: ; 0x021E83AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r0, [r4]
	bl ov99_021E9418
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x18
	mov r2, #0x25
	bl ov98_0221E684
	ldr r0, [r4, #0x10]
	mov r1, #0x13
	bl ov98_0221EB84
	add r0, r4, #0
	bl ov99_021E875C
	bl ov98_0221F0EC
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0x84
	bl Heap_Destroy
	ldr r0, _021E83F0 ; =FS_OVERLAY_ID(OVY_98)
	bl UnloadOverlayByID
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E83F0: .word FS_OVERLAY_ID(OVY_98)
	thumb_func_end PokeathlonEventRecord_Exit

	thumb_func_start PokeathlonEventRecord_Main
PokeathlonEventRecord_Main: ; 0x021E83F4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #4
	bhi _021E84CC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E8412: ; jump table
	.short _021E841C - _021E8412 - 2 ; case 0
	.short _021E8438 - _021E8412 - 2 ; case 1
	.short _021E8446 - _021E8412 - 2 ; case 2
	.short _021E84B8 - _021E8412 - 2 ; case 3
	.short _021E84C6 - _021E8412 - 2 ; case 4
_021E841C:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	str r0, [r5]
	b _021E84D6
_021E8438:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E84D6
	mov r0, #2
	str r0, [r5]
	b _021E84D6
_021E8446:
	add r1, r4, #0
	add r1, #0xb4
	ldr r1, [r1]
	cmp r1, #0
	beq _021E8464
	add r1, r4, #0
	add r1, #0xb0
	ldr r2, [r1]
	mov r1, #1
	eor r2, r1
	add r1, r4, #0
	add r1, #0xb0
	str r2, [r1]
	bl ov99_021E8828
_021E8464:
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	beq _021E8482
	add r0, r4, #0
	bl ov99_021E8788
	add r0, r4, #0
	bl ov99_021E8C50
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0]
_021E8482:
	bl ov98_0221EF24
	cmp r0, #0
	bne _021E8494
	add r0, r4, #0
	bl ov99_021E90F4
	cmp r0, #0
	beq _021E84D6
_021E8494:
	ldr r0, _021E84E4 ; =0x000005DC
	bl PlaySE
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #3
	str r0, [r5]
	b _021E84D6
_021E84B8:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E84D6
	mov r0, #4
	str r0, [r5]
	b _021E84D6
_021E84C6:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021E84CC:
	ldr r0, _021E84E8 ; =_021EA5E4
	cmp r0, #0
	beq _021E84D6
	bl GF_AssertFail
_021E84D6:
	ldr r0, [r4, #0x14]
	bl ov98_0221E6CC
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021E84E4: .word 0x000005DC
_021E84E8: .word _021EA5E4
	thumb_func_end PokeathlonEventRecord_Main

