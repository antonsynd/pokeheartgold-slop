	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02239938
	.public ov59_0223C648
	.public ov59_0223C678
	.public ov59_0223C750

	.text

	thumb_func_start ov59_02239938
ov59_02239938: ; 0x02239938
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r1, [r4]
	mov r0, #0x20
	bl GF_CreateVramTransferManager
	ldr r0, [r4]
	bl SpriteSystem_Alloc
	mov r1, #0x93
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	ldr r1, _022399A8 ; =ov59_0223C750
	ldr r2, _022399AC ; =ov59_0223C678
	mov r3, #3
	bl SpriteSystem_Init
	ldr r0, [r4]
	bl thunk_ClearMainOAM
	ldr r0, [r4]
	bl thunk_ClearSubOAM
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl SpriteManager_New
	mov r1, #0x25
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0xf
	bl SpriteSystem_InitSprites
	mov r3, #0
	mov r1, #0x93
	str r3, [sp]
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	ldr r2, _022399B0 ; =ov59_0223C648
	bl sub_0200D2A4
	ldr r0, [r4]
	mov r1, #0
	bl TouchscreenListMenuSpawner_Create
	str r0, [r4, #0x58]
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_022399A8: .word ov59_0223C750
_022399AC: .word ov59_0223C678
_022399B0: .word ov59_0223C648
	thumb_func_end ov59_02239938

