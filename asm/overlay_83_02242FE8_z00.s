	.include "asm/macros.inc"
	.include "overlay_83_02242FE8.inc"
	.include "global.inc"
	.public ov83_02242FE8
	.public ov83_02243108
	.extern ov83_022432B4
	.extern ov83_022433F8
	.extern ov83_02243C88

    .text

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

