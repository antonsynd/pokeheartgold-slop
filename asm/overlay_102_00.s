	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public EasyChat_Init
	.public ov102_021E7888
	.public ov102_021E940C
	.public ov102_021E9464
	.public ov102_021EA238

	.text

	thumb_func_start EasyChat_Init
EasyChat_Init: ; 0x021E7740
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #0
	beq _021E7752
	cmp r1, #1
	beq _021E778A
	b _021E77B2
_021E7752:
	mov r1, #0
	mov r0, #0x3e
	add r2, r1, #0
	bl Sound_SetSceneAndPlayBGM
	mov r2, #2
	mov r0, #3
	mov r1, #0x22
	lsl r2, r2, #0xe
	bl Heap_Create
	mov r2, #0xa
	mov r0, #3
	mov r1, #0x23
	lsl r2, r2, #0xe
	bl Heap_Create
	add r0, r5, #0
	bl ov102_021E7888
	ldr r0, [r0, #0x14]
	mov r1, #0
	bl ov102_021E940C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E77B2
_021E778A:
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl ov102_021E9464
	cmp r0, #0
	beq _021E77B2
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _021E77A8
	ldr r0, [r4, #0x14]
	bl ov102_021EA238
	b _021E77AA
_021E77A8:
	mov r0, #0
_021E77AA:
	add r4, #0x6a
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E77B2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end EasyChat_Init

