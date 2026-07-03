	.include "asm/macros.inc"
	.include "overlay_83_02242FE8.inc"
	.include "global.inc"

    .text

	thumb_func_start ov83_02242FE8
ov83_02242FE8: ; 0x02242FE8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _022430F0 ; =FS_OVERLAY_ID(OVY_80)
	mov r1, #2
	bl HandleLoadOverlay
	bl ov83_02243F9C
	mov r0, #3
	mov r1, #0x6b
	lsl r2, r0, #0x10
	bl Heap_Create
	ldr r1, _022430F4 ; =0x00000614
	add r0, r4, #0
	mov r2, #0x6b
	bl OverlayManager_CreateAndGetData
	ldr r2, _022430F4 ; =0x00000614
	mov r1, #0
	add r5, r0, #0
	bl memset
	mov r0, #0x6b
	bl BgConfig_Alloc
	str r0, [r5, #0x4c]
	add r0, r4, #0
	str r4, [r5]
	bl OverlayManager_GetArgs
	add r4, r0, #0
	mov r0, #0xaf
	ldr r1, [r4]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	bl sub_02030CC8
	mov r1, #0xb
	lsl r1, r1, #6
	str r0, [r5, r1]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	bl sub_02030E08
	mov r1, #0xb1
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r4, #4]
	add r2, r4, #0
	add r2, #0x20
	strb r0, [r5, #9]
	ldr r0, _022430F8 ; =0x00000548
	sub r1, #8
	str r2, [r5, r0]
	ldr r0, [r5, r1]
	bl Save_PlayerData_GetOptionsAddr
	mov r1, #0xae
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r3, r4, #0
	ldr r2, [r4, #0x1c]
	ldr r0, _022430FC ; =0x0000055C
	add r3, #8
	str r2, [r5, r0]
	add r2, r0, #0
	sub r2, #0x10
	str r3, [r5, r2]
	add r3, r4, #0
	add r2, r0, #0
	add r3, #0xc
	sub r2, #0xc
	str r3, [r5, r2]
	add r3, r4, #0
	add r2, r0, #0
	add r3, #0x10
	sub r2, #8
	str r3, [r5, r2]
	add r3, r4, #0
	sub r2, r0, #4
	add r3, #0x14
	str r3, [r5, r2]
	mov r2, #0xff
	strb r2, [r5, #0x11]
	ldrh r2, [r4, #0x28]
	add r0, #0x5e
	strh r2, [r5, r0]
	add r0, r1, #4
	ldr r0, [r5, r0]
	bl Save_Frontier_GetStatic
	str r0, [r5, #4]
	ldr r0, _02243100 ; =0x000005B7
	mov r3, #0
	mov r2, #1
_022430AA:
	add r1, r5, r3
	add r3, r3, #1
	strb r2, [r1, r0]
	cmp r3, #3
	blt _022430AA
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _022430C2
	mov r0, #3
	b _022430C4
_022430C2:
	mov r0, #4
_022430C4:
	strb r0, [r5, #0x14]
	mov r0, #4
	strb r0, [r5, #0x15]
	ldrb r0, [r5, #0x15]
	mov r1, #0
	sub r0, r0, #1
	strb r0, [r5, #0xc]
	ldr r0, _02243104 ; =0x000005B4
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ov83_02243FD4
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _022430EC
	add r0, r5, #0
	bl sub_02096910
_022430EC:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022430F0: .word FS_OVERLAY_ID(OVY_80)
_022430F4: .word 0x00000614
_022430F8: .word 0x00000548
_022430FC: .word 0x0000055C
_02243100: .word 0x000005B7
_02243104: .word 0x000005B4
	thumb_func_end ov83_02242FE8

	thumb_func_start ov83_02243108
ov83_02243108: ; 0x02243108
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	ldr r1, _02243260 ; =0x000005B6
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #1
	bne _02243176
	ldr r2, [r5]
	cmp r2, #1
	bne _022431A2
	mov r2, #0
	strb r2, [r4, r1]
	bl ov83_02245074
	add r0, r4, #0
	bl ov83_022459A0
	ldr r0, _02243264 ; =0x00000504
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02243142
	bl ov83_0224753C
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
_02243142:
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02247944
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl ov80_0222A7CC
	add r0, r4, #0
	mov r1, #7
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov83_02244CD4
	b _022431A2
_02243176:
	ldrb r0, [r4, #0x11]
	cmp r0, #0xff
	beq _022431A2
	ldr r0, [r5]
	cmp r0, #1
	beq _02243186
	cmp r0, #3
	bne _022431A2
_02243186:
	ldr r0, _02243260 ; =0x000005B6
	mov r1, #0
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov83_02245074
	add r0, r4, #0
	bl ov83_022459A0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov83_02244CD4
_022431A2:
	ldr r0, [r5]
	cmp r0, #4
	bhi _0224324C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022431B4: ; jump table
	.short _022431BE - _022431B4 - 2 ; case 0
	.short _022431D4 - _022431B4 - 2 ; case 1
	.short _02243212 - _022431B4 - 2 ; case 2
	.short _02243228 - _022431B4 - 2 ; case 3
	.short _0224323E - _022431B4 - 2 ; case 4
_022431BE:
	add r0, r4, #0
	bl ov83_022432B4
	cmp r0, #1
	bne _0224324C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov83_02244CD4
	b _0224324C
_022431D4:
	add r0, r4, #0
	bl ov83_022433F8
	cmp r0, #1
	bne _0224324C
	ldrb r0, [r4, #0x10]
	cmp r0, #1
	bne _022431F0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov83_02244CD4
	b _0224324C
_022431F0:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _02243206
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov83_02244CD4
	b _0224324C
_02243206:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov83_02244CD4
	b _0224324C
_02243212:
	add r0, r4, #0
	bl ov83_02243C88
	cmp r0, #1
	bne _0224324C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov83_02244CD4
	b _0224324C
_02243228:
	add r0, r4, #0
	bl ov83_02243D7C
	cmp r0, #1
	bne _0224324C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov83_02244CD4
	b _0224324C
_0224323E:
	add r0, r4, #0
	bl ov83_02243DE8
	cmp r0, #1
	bne _0224324C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224324C:
	add r0, r4, #0
	bl ov83_022459AC
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl SpriteList_RenderAndAnimateSprites
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02243260: .word 0x000005B6
_02243264: .word 0x00000504
	thumb_func_end ov83_02243108

	thumb_func_start ov83_02243268
ov83_02243268: ; 0x02243268
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r0, _022432A8 ; =0x00000548
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, r0]
	strh r1, [r0]
	ldr r0, _022432AC ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	bl GF_DestroyVramTransferManager
	add r0, r4, #0
	bl ov83_02243E30
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0x6b
	bl Heap_Destroy
	ldr r0, _022432B0 ; =FS_OVERLAY_ID(OVY_80)
	bl UnloadOverlayByID
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022432A8: .word 0x00000548
_022432AC: .word 0x04000050
_022432B0: .word FS_OVERLAY_ID(OVY_80)
	thumb_func_end ov83_02243268

	thumb_func_start ov83_022432B4
ov83_022432B4: ; 0x022432B4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #4
	bhi _022433B0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022432CC: ; jump table
	.short _022432D6 - _022432CC - 2 ; case 0
	.short _022432F2 - _022432CC - 2 ; case 1
	.short _0224331A - _022432CC - 2 ; case 2
	.short _02243360 - _022432CC - 2 ; case 3
	.short _022433A2 - _022432CC - 2 ; case 4
_022432D6:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _022432EA
	bl sub_02037BEC
	mov r0, #0xd8
	bl sub_02037AC0
_022432EA:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022433B0
_022432F2:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _02243312
	mov r0, #0xd8
	bl sub_02037B38
	cmp r0, #1
	bne _022433B0
	bl sub_02037BEC
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022433B0
_02243312:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022433B0
_0224331A:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _0224333A
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #0
	bl ov83_022450A8
	cmp r0, #1
	bne _022433B0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022433B0
_0224333A:
	add r0, r4, #0
	bl ov83_022433B8
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022433B0
_02243360:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _0224339A
	ldrb r0, [r4, #0x17]
	cmp r0, #2
	blo _022433B0
	mov r0, #0
	strb r0, [r4, #0x17]
	add r0, r4, #0
	bl ov83_022433B8
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022433B0
_0224339A:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022433B0
_022433A2:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _022433B0
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_022433B0:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov83_022432B4

	thumb_func_start ov83_022433B8
ov83_022433B8: ; 0x022433B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x50
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r1, r4, #0
	bl ov83_02245584
	add r0, r5, #0
	add r1, r4, #0
	bl ov83_022453DC
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x80
	bl ov83_022448E4
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x70
	bl ov83_022449D4
	add r0, r5, #0
	bl ov83_02244BEC
	bl GfGfx_BothDispOn
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_022433B8

	thumb_func_start ov83_022433F8
ov83_022433F8: ; 0x022433F8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0x12
	bhi _022434BA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224340E: ; jump table
	.short _02243434 - _0224340E - 2 ; case 0
	.short _0224348E - _0224340E - 2 ; case 1
	.short _022434F6 - _0224340E - 2 ; case 2
	.short _0224361E - _0224340E - 2 ; case 3
	.short _022436D4 - _0224340E - 2 ; case 4
	.short _022437D8 - _0224340E - 2 ; case 5
	.short _022438AE - _0224340E - 2 ; case 6
	.short _02243A36 - _0224340E - 2 ; case 7
	.short _02243A76 - _0224340E - 2 ; case 8
	.short _02243AB6 - _0224340E - 2 ; case 9
	.short _02243B5A - _0224340E - 2 ; case 10
	.short _02243B86 - _0224340E - 2 ; case 11
	.short _02243B92 - _0224340E - 2 ; case 12
	.short _02243BBC - _0224340E - 2 ; case 13
	.short _02243BCE - _0224340E - 2 ; case 14
	.short _02243BE0 - _0224340E - 2 ; case 15
	.short _02243BFA - _0224340E - 2 ; case 16
	.short _02243C1C - _0224340E - 2 ; case 17
	.short _02243C4C - _0224340E - 2 ; case 18
_02243434:
	mov r0, #0
	strb r0, [r4, #0xb]
	mov r0, #1
	strb r0, [r4, #8]
	ldrb r0, [r4, #0xf]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1b
	cmp r0, #1
	bne _02243456
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02245094
	add r0, r4, #0
	bl ov83_02244BEC
	b _02243484
_02243456:
	cmp r0, #2
	bne _0224347C
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02245094
	add r0, r4, #0
	bl ov83_02244C9C
	mov r0, #0x15
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0xc8
	mov r2, #0x69
	bl ov83_02247630
	mov r0, #6
	strb r0, [r4, #8]
	b _02243484
_0224347C:
	cmp r0, #3
	bne _02243484
	mov r0, #0xe
	strb r0, [r4, #8]
_02243484:
	ldrb r1, [r4, #0xf]
	mov r0, #0xf8
	bic r1, r0
	strb r1, [r4, #0xf]
	b _02243C7A
_0224348E:
	mov r0, #0x5f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov83_02247AD4
	cmp r0, #4
	bhi _022434B2
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022434A8: ; jump table
	.short _022434BC - _022434A8 - 2 ; case 0
	.short _022434BC - _022434A8 - 2 ; case 1
	.short _022434BC - _022434A8 - 2 ; case 2
	.short _022434BC - _022434A8 - 2 ; case 3
	.short _022434CE - _022434A8 - 2 ; case 4
_022434B2:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _022434D8
_022434BA:
	b _02243C7A
_022434BC:
	add r0, r4, #0
	bl ov83_02244C4C
	add r0, r4, #0
	bl ov83_02244C58
	mov r0, #2
	strb r0, [r4, #8]
	b _02243C7A
_022434CE:
	ldr r0, _022437F0 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	pop {r3, r4, r5, pc}
_022434D8:
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _0224351A
	mov r0, #0x5f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov83_02247B04
	ldrb r2, [r4, #0xd]
	add r0, r4, #0
	mov r1, #4
	bl ov83_022469D8
	b _02243C7A
_022434F6:
	ldr r0, _022437F4 ; =0x000005F8
	ldr r0, [r4, r0]
	bl TouchscreenListMenu_HandleInput
	ldr r1, _022437F0 ; =0x000005DC
	add r5, r0, #0
	bl ov83_022477B0
	add r0, r4, #0
	bl ov83_02246CC0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _02243536
	bhs _0224360C
	cmp r5, #6
	bls _0224351C
_0224351A:
	b _02243C7A
_0224351C:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02243528: ; jump table
	.short _0224353E - _02243528 - 2 ; case 0
	.short _022435C6 - _02243528 - 2 ; case 1
	.short _022435FA - _02243528 - 2 ; case 2
	.short _02243C7A - _02243528 - 2 ; case 3
	.short _02243C7A - _02243528 - 2 ; case 4
	.short _02243C7A - _02243528 - 2 ; case 5
	.short _0224360C - _02243528 - 2 ; case 6
_02243536:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	b _02243C7A
_0224353E:
	strb r5, [r4, #0x13]
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov83_02247768
	ldr r1, _022437F8 ; =0x0000054C
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02243584
	add r0, r4, #0
	bl ov83_02244C88
	add r0, r4, #0
	bl ov83_022453C0
	mov r1, #0
	add r0, r4, #0
	mov r2, #1
	mov r3, #4
	str r1, [sp]
	bl ov83_02244A98
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov83_02244A74
	mov r0, #3
	strb r0, [r4, #8]
	b _02243C7A
_02243584:
	add r0, r4, #0
	bl ov83_02244C88
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _022437FC ; =0x0000055C
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	add r5, r0, #0
	add r0, r4, #0
	bl ov83_022453C0
	add r0, r5, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov83_02244AB0
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r4, #0xa]
	mov r0, #0x10
	strb r0, [r4, #8]
	b _02243C7A
_022435C6:
	add r0, r4, #0
	strb r5, [r4, #0x13]
	bl ov83_02244C88
	add r0, r4, #0
	bl ov83_022453C0
	mov r2, #0x17
	lsl r2, r2, #6
	ldr r2, [r4, r2]
	add r0, r4, #0
	mov r1, #0
	bl ov83_02244AB0
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov83_02244A88
	mov r0, #4
	strb r0, [r4, #8]
	b _02243C7A
_022435FA:
	add r0, r4, #0
	bl ov83_02244C88
	add r0, r4, #0
	bl ov83_02244C9C
	mov r0, #6
	strb r0, [r4, #8]
	b _02243C7A
_0224360C:
	add r0, r4, #0
	bl ov83_02244C88
	add r0, r4, #0
	bl ov83_02244BEC
	mov r0, #0
	strb r0, [r4, #8]
	b _02243C7A
_0224361E:
	ldr r0, _02243800 ; =0x00000604
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _02243630
	cmp r0, #2
	beq _022436B8
	b _02243C7A
_02243630:
	ldr r0, _02243800 ; =0x00000604
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02245094
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl FrontierSave_GetStat
	cmp r0, #1
	bhs _02243678
	add r0, r4, #0
	bl ov83_022453C0
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r4, #0xa]
	mov r0, #0x10
	strb r0, [r4, #8]
	b _02243C7A
_02243678:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _022436B2
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	mov r2, #1
	bl ov80_02237FA4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov83_022453DC
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov83_02245748
	add r0, r4, #0
	bl ov83_02246988
	add r0, r4, #0
	mov r1, #0
	bl ov83_02246114
	mov r0, #0xb
	strb r0, [r4, #8]
	b _02243C7A
_022436B2:
	mov r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022436B8:
	ldr r0, _02243800 ; =0x00000604
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02245094
	add r0, r4, #0
	bl ov83_02244C58
	mov r0, #2
	strb r0, [r4, #8]
	b _02243C7A
_022436D4:
	ldr r0, _022437F4 ; =0x000005F8
	ldr r0, [r4, r0]
	bl TouchscreenListMenu_HandleInput
	ldr r1, _022437F0 ; =0x000005DC
	add r5, r0, #0
	bl ov83_022477B0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _02243700
	bhs _02243706
	cmp r5, #2
	bhi _022436FE
	cmp r5, #0
	beq _02243720
	cmp r5, #1
	beq _0224377C
	cmp r5, #2
	beq _02243706
_022436FE:
	b _02243C7A
_02243700:
	add r0, r0, #1
	cmp r5, r0
	b _02243C7A
_02243706:
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02245094
	add r0, r4, #0
	bl ov83_02244A90
	add r0, r4, #0
	bl ov83_02244C58
	mov r0, #2
	strb r0, [r4, #8]
	b _02243C7A
_02243720:
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl FrontierSave_GetStat
	add r0, r4, #0
	bl ov83_02244A90
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov83_02247768
	mov r1, #0x55
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0224376E
	add r0, r4, #0
	bl ov83_022453C0
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r4, #0xa]
	mov r0, #0x10
	strb r0, [r4, #8]
	b _02243C7A
_0224376E:
	add r0, r4, #0
	mov r1, #1
	bl ov83_02245554
	mov r0, #5
	strb r0, [r4, #8]
	b _02243C7A
_0224377C:
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl FrontierSave_GetStat
	add r0, r4, #0
	bl ov83_02244A90
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov83_02247768
	mov r1, #0x55
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _022437CA
	add r0, r4, #0
	bl ov83_022453C0
	add r0, r4, #0
	mov r1, #0x1e
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r4, #0xa]
	mov r0, #0x10
	strb r0, [r4, #8]
	b _02243C7A
_022437CA:
	add r0, r4, #0
	mov r1, #2
	bl ov83_02245554
	mov r0, #5
	strb r0, [r4, #8]
	b _02243C7A
_022437D8:
	ldr r0, _02243800 ; =0x00000604
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _022437EA
	cmp r0, #2
	beq _02243892
	b _02243C7A
_022437EA:
	ldr r0, _02243800 ; =0x00000604
	b _02243804
	nop
_022437F0: .word 0x000005DC
_022437F4: .word 0x000005F8
_022437F8: .word 0x0000054C
_022437FC: .word 0x0000055C
_02243800: .word 0x00000604
_02243804:
	add r0, r4, r0
	bl ov83_022478B4
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl FrontierSave_GetStat
	add r5, r0, #0
	ldrb r0, [r4, #0xe]
	bl ov83_02245068
	cmp r5, r0
	bhs _0224384C
	add r0, r4, #0
	bl ov83_022453C0
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r4, #0xa]
	mov r0, #0x10
	strb r0, [r4, #8]
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224384C:
	ldrb r0, [r4, #0xe]
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0224388C
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02245094
	ldrb r0, [r4, #0xe]
	bl ov83_02245068
	add r2, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	bl ov80_02237FA4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov83_022453DC
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	add r0, r4, #0
	bl ov83_02245838
	mov r0, #0xc
	strb r0, [r4, #8]
	b _02243C7A
_0224388C:
	mov r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02243892:
	ldr r0, _02243BA8 ; =0x00000604
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02245094
	add r0, r4, #0
	bl ov83_02244C58
	mov r0, #2
	strb r0, [r4, #8]
	b _02243C7A
_022438AE:
	ldr r0, _02243BAC ; =0x000005F8
	ldr r0, [r4, r0]
	bl TouchscreenListMenu_HandleInput
	ldr r1, _02243BB0 ; =0x000005DC
	add r5, r0, #0
	bl ov83_022477B0
	add r0, r4, #0
	bl ov83_02246D40
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _022438E2
	bhs _022438E8
	cmp r5, #5
	bhi _022438E0
	cmp r5, #3
	blo _022438E0
	beq _02243902
	cmp r5, #4
	beq _0224394E
	cmp r5, #5
	beq _022439C0
_022438E0:
	b _02243C7A
_022438E2:
	add r0, r0, #1
	cmp r5, r0
	b _02243C7A
_022438E8:
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02245094
	add r0, r4, #0
	bl ov83_02244CCC
	add r0, r4, #0
	bl ov83_02244C58
	mov r0, #2
	strb r0, [r4, #8]
	b _02243C7A
_02243902:
	strb r5, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02244CCC
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov83_02247768
	ldr r1, _02243BB4 ; =0x00000554
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02243948
	add r0, r4, #0
	bl ov83_022453C0
	mov r1, #0
	add r0, r4, #0
	mov r2, #2
	mov r3, #4
	str r1, [sp]
	bl ov83_02244A98
	add r0, r4, #0
	mov r1, #0x2b
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov83_02244A74
	mov r0, #7
	strb r0, [r4, #8]
	b _02243C7A
_02243948:
	mov r0, #0x11
	strb r0, [r4, #8]
	b _02243C7A
_0224394E:
	add r0, r4, #0
	strb r5, [r4, #0x13]
	bl ov83_02244CCC
	mov r0, #0xaf
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #2
	bl ov83_0224777C
	cmp r0, #1
	bne _0224397C
	add r0, r4, #0
	mov r1, #0x2a
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #8]
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224397C:
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov83_02247768
	ldr r1, _02243BB8 ; =0x00000558
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022439BA
	add r0, r4, #0
	bl ov83_022453C0
	mov r1, #0
	add r0, r4, #0
	mov r2, #5
	mov r3, #4
	str r1, [sp]
	bl ov83_02244A98
	add r0, r4, #0
	mov r1, #0x4f
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov83_02244A74
	mov r0, #8
	strb r0, [r4, #8]
	b _02243C7A
_022439BA:
	mov r0, #0x12
	strb r0, [r4, #8]
	b _02243C7A
_022439C0:
	mov r0, #0xaf
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #2
	bl ov83_0224777C
	cmp r0, #2
	bne _022439EC
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02245094
	add r0, r4, #0
	bl ov83_02244CCC
	add r0, r4, #0
	bl ov83_02244C58
	mov r0, #2
	strb r0, [r4, #8]
	b _02243C7A
_022439EC:
	strb r5, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02244CCC
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl FrontierSave_GetStat
	mov r1, #0
	add r0, r4, #0
	mov r2, #0x32
	mov r3, #4
	str r1, [sp]
	bl ov83_02244A98
	add r0, r4, #0
	mov r1, #0x5b
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov83_02244A74
	mov r0, #9
	strb r0, [r4, #8]
	b _02243C7A
_02243A36:
	ldr r0, _02243BA8 ; =0x00000604
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _02243A48
	cmp r0, #2
	beq _02243A62
	b _02243C7A
_02243A48:
	ldr r0, _02243BA8 ; =0x00000604
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x2e
	bl ov83_02245A40
	cmp r0, #1
	bne _02243A86
	mov r0, #1
	pop {r3, r4, r5, pc}
_02243A62:
	ldr r0, _02243BA8 ; =0x00000604
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	bl ov83_02244C9C
	mov r0, #6
	strb r0, [r4, #8]
	b _02243C7A
_02243A76:
	ldr r0, _02243BA8 ; =0x00000604
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _02243A88
	cmp r0, #2
	beq _02243AA2
_02243A86:
	b _02243C7A
_02243A88:
	ldr r0, _02243BA8 ; =0x00000604
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	mov r1, #5
	mov r2, #0x52
	bl ov83_02245A40
	cmp r0, #1
	bne _02243AC6
	mov r0, #1
	pop {r3, r4, r5, pc}
_02243AA2:
	ldr r0, _02243BA8 ; =0x00000604
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	bl ov83_02244C9C
	mov r0, #6
	strb r0, [r4, #8]
	b _02243C7A
_02243AB6:
	ldr r0, _02243BA8 ; =0x00000604
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _02243AC8
	cmp r0, #2
	beq _02243B46
_02243AC6:
	b _02243C7A
_02243AC8:
	ldr r0, _02243BA8 ; =0x00000604
	add r0, r4, r0
	bl ov83_022478B4
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl FrontierSave_GetStat
	add r5, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #2
	bl ov83_0224777C
	cmp r5, #0x32
	bhs _02243B26
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02247944
	add r0, r4, #0
	mov r1, #0x52
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #8]
	b _02243C7A
_02243B26:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02243B40
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	mov r2, #5
	bl ov83_02245ACC
	mov r0, #0xa
	strb r0, [r4, #8]
	b _02243C7A
_02243B40:
	mov r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02243B46:
	ldr r0, _02243BA8 ; =0x00000604
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	bl ov83_02244C9C
	mov r0, #6
	strb r0, [r4, #8]
	b _02243C7A
_02243B5A:
	bl ov83_02247CF0
	cmp r0, #1
	beq _02243B64
	b _02243C7A
_02243B64:
	add r0, r4, #0
	bl ov83_02244C9C
	add r0, r4, #0
	mov r1, #0
	bl ov83_02246114
	mov r0, #0x15
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0xc8
	mov r2, #0x69
	bl ov83_02247630
	mov r0, #6
	strb r0, [r4, #8]
	b _02243C7A
_02243B86:
	add r1, r4, #0
	add r1, #0x80
	bl ov83_022448E4
	mov r0, #0xc
	strb r0, [r4, #8]
_02243B92:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02244E24
	cmp r0, #1
	bne _02243C7A
	mov r0, #0x10
	strb r0, [r4, #8]
	b _02243C7A
	nop
_02243BA8: .word 0x00000604
_02243BAC: .word 0x000005F8
_02243BB0: .word 0x000005DC
_02243BB4: .word 0x00000554
_02243BB8: .word 0x00000558
_02243BBC:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	bl ov83_02244E24
	cmp r0, #1
	bne _02243C7A
	mov r0, #0xe
	strb r0, [r4, #8]
	b _02243C7A
_02243BCE:
	ldrb r0, [r4, #0x13]
	cmp r0, #3
	bne _02243BDA
	mov r0, #0x11
	strb r0, [r4, #8]
	b _02243C7A
_02243BDA:
	mov r0, #0x12
	strb r0, [r4, #8]
	b _02243C7A
_02243BE0:
	bl ov83_02247CF0
	cmp r0, #1
	bne _02243C7A
	ldr r0, _02243C80 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov83_02244C9C
	mov r0, #6
	strb r0, [r4, #8]
	b _02243C7A
_02243BFA:
	bl ov83_02247CF0
	cmp r0, #1
	bne _02243C7A
	ldr r0, _02243C80 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02245094
	add r0, r4, #0
	bl ov83_02244BEC
	mov r0, #0
	strb r0, [r4, #8]
	b _02243C7A
_02243C1C:
	ldr r0, _02243C84 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0x20
	tst r0, r1
	bne _02243C7A
	mov r0, #0x10
	tst r0, r1
	bne _02243C7A
	bl ov83_02247CF0
	cmp r0, #1
	bne _02243C7A
	ldr r0, _02243C80 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov83_022459A0
	add r0, r4, #0
	bl ov83_02244C58
	mov r0, #2
	strb r0, [r4, #8]
	b _02243C7A
_02243C4C:
	ldr r0, _02243C84 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0x20
	tst r0, r1
	bne _02243C7A
	mov r0, #0x10
	tst r0, r1
	bne _02243C7A
	bl ov83_02247CF0
	cmp r0, #1
	bne _02243C7A
	ldr r0, _02243C80 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov83_022459A0
	add r0, r4, #0
	bl ov83_02244C58
	mov r0, #2
	strb r0, [r4, #8]
_02243C7A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02243C80: .word 0x000005DC
_02243C84: .word gSystem
	thumb_func_end ov83_022433F8

	thumb_func_start ov83_02243C88
ov83_02243C88: ; 0x02243C88
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #5
	bhi _02243D74
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02243C9E: ; jump table
	.short _02243CAA - _02243C9E - 2 ; case 0
	.short _02243CCE - _02243C9E - 2 ; case 1
	.short _02243CF4 - _02243C9E - 2 ; case 2
	.short _02243D16 - _02243C9E - 2 ; case 3
	.short _02243D34 - _02243C9E - 2 ; case 4
	.short _02243D46 - _02243C9E - 2 ; case 5
_02243CAA:
	ldrb r2, [r4, #0xf]
	mov r1, #0xf8
	bic r2, r1
	mov r1, #8
	orr r1, r2
	strb r1, [r4, #0xf]
	ldrb r2, [r4, #0xd]
	mov r1, #0x15
	bl ov83_022450A8
	cmp r0, #1
	bne _02243D74
	mov r0, #0
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02243D74
_02243CCE:
	ldrb r1, [r4, #0x11]
	cmp r1, #0xff
	beq _02243D74
	mov r1, #0
	strb r1, [r4, #0x17]
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x11]
	cmp r2, #5
	bne _02243CE8
	mov r2, #5
	bl ov83_02245ACC
	b _02243CEC
_02243CE8:
	bl ov83_0224563C
_02243CEC:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02243D74
_02243CF4:
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x11]
	bl ov83_0224776C
	add r1, r0, #0
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02244E24
	cmp r0, #1
	bne _02243D74
	mov r0, #0x1e
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02243D74
_02243D16:
	ldrb r0, [r4, #0x16]
	sub r0, r0, #1
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	bne _02243D74
	bl sub_02037BEC
	mov r0, #0x85
	bl sub_02037AC0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02243D74
_02243D34:
	mov r0, #0x85
	bl sub_02037B38
	cmp r0, #1
	bne _02243D74
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02243D74
_02243D46:
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x11]
	bl ov83_0224776C
	add r1, r0, #0
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02244F60
	cmp r0, #1
	bne _02243D74
	bl sub_02037BEC
	mov r0, #0x6b
	bl sub_020379A0
	mov r0, #0xff
	strb r0, [r4, #0x11]
	ldr r0, _02243D78 ; =0x000005B6
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_02243D74:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_02243D78: .word 0x000005B6
	thumb_func_end ov83_02243C88

