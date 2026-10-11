	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E5900
	.public ov86_021E5A40
	.extern ov86_021E5B38
	.extern ov86_021E5BA0
	.extern ov86_021E5C94
	.extern ov86_021E5CDC
	.extern ov86_021E5E0C
	.extern ov86_021E5E90
	.extern ov86_021E5E98
	.extern ov86_021E6E30
	.extern ov86_021E6E98
	.extern ov86_021E703C
	.extern ov86_021E7DF8
	.extern ov86_021E7E68

	.text

	.text
	thumb_func_start ov86_021E5900
ov86_021E5900: ; 0x021E5900
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0
	add r6, r1, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021E5A2C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021E5A30 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	ldr r2, _021E5A34 ; =0x04000304
	ldr r0, _021E5A38 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	mov r0, #3
	mov r1, #0x79
	lsl r2, r0, #0x10
	bl Heap_Create
	mov r1, #0xe5
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x79
	bl OverlayManager_CreateAndGetData
	mov r2, #0xe5
	add r5, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	str r4, [r5]
	mov r0, #0x79
	bl BgConfig_Alloc
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl OverlayManager_GetArgs
	add r4, r0, #0
	mov r0, #0x89
	ldr r1, [r4]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	bl Save_Frontier_GetStatic
	mov r1, #0x8a
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r4, #4]
	strb r0, [r5, #6]
	ldrb r0, [r4, #5]
	strb r0, [r5, #7]
	ldrh r0, [r4, #6]
	strh r0, [r5, #8]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	bl Save_PlayerData_GetOptionsAddr
	mov r1, #0x22
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #4
	mov r1, #0x79
	bl FontID_Alloc
	add r0, r5, #0
	bl ov86_021E5E0C
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0x13
	mov r3, #0x79
	bl NewMsgDataFromNarc
	mov r1, #0x21
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0x79
	bl MessageFormat_New
	mov r1, #0x85
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x32
	lsl r0, r0, #4
	mov r1, #0x79
	bl String_New
	mov r1, #0x86
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	sub r1, #0x78
	mov r2, #0x79
	bl LoadFontPal0
	mov r1, #6
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x79
	bl LoadFontPal1
	ldrb r0, [r5, #7]
	bl ov86_021E5E98
	add r2, r0, #0
	add r1, r5, #0
	ldr r0, [r5, #0xc]
	add r1, #0x10
	bl ov86_021E7DF8
	mov r1, #0x8f
	lsl r1, r1, #2
	ldr r0, [r5, #0xc]
	add r1, r5, r1
	bl ov86_021E7E68
	add r0, r5, #0
	bl ov86_021E6E30
	add r0, r5, #0
	bl ov86_021E6E98
	ldr r0, _021E5A3C ; =ov86_021E5CDC
	add r1, r5, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	str r0, [r6]
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_021E5A2C: .word 0xFFFFE0FF
_021E5A30: .word 0x04001000
_021E5A34: .word 0x04000304
_021E5A38: .word 0xFFFF7FFF
_021E5A3C: .word ov86_021E5CDC
	thumb_func_end ov86_021E5900

	thumb_func_start ov86_021E5A40
ov86_021E5A40: ; 0x021E5A40
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #0
	beq _021E5A5A
	cmp r1, #1
	beq _021E5A6E
	cmp r1, #2
	beq _021E5A82
	b _021E5A8E
_021E5A5A:
	bl ov86_021E5B38
	cmp r0, #1
	bne _021E5A8E
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov86_021E5E90
	b _021E5A8E
_021E5A6E:
	bl ov86_021E5BA0
	cmp r0, #1
	bne _021E5A8E
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov86_021E5E90
	b _021E5A8E
_021E5A82:
	bl ov86_021E5C94
	cmp r0, #1
	bne _021E5A8E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5A8E:
	add r0, r4, #0
	bl ov86_021E703C
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl SpriteSystem_DrawSprites
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov86_021E5A40

