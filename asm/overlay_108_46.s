	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E838C
	.extern ov108_021EA98C
	.extern ov108_021EA9A0

	.text

	.text
	thumb_func_start ov108_021E838C
ov108_021E838C: ; 0x021E838C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	mov r0, #0x20
	bl GF_CreateVramTransferManager
	ldr r0, [r4]
	bl SpriteSystem_Alloc
	mov r1, #0xd3
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	ldr r1, _021E83C0 ; =ov108_021EA9A0
	ldr r2, _021E83C4 ; =ov108_021EA98C
	mov r3, #4
	bl SpriteSystem_Init
	ldr r0, [r4]
	bl thunk_ClearMainOAM
	ldr r0, [r4]
	bl thunk_ClearSubOAM
	pop {r4, pc}
	nop
_021E83C0: .word ov108_021EA9A0
_021E83C4: .word ov108_021EA98C
	thumb_func_end ov108_021E838C

