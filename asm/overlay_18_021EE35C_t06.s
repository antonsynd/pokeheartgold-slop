	.include "asm/macros.inc"
	.include "overlay_18_021EE35C.inc"
	.include "global.inc"
	.public ov18_021EE520

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021EE520
ov18_021EE520: ; 0x021EE520
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	mov r0, #0x25
	str r0, [sp]
	ldr r0, _021EE5E0 ; =0x00000854
	str r1, [sp, #0x1c]
	ldr r0, [r5, r0]
	mov r1, #1
	str r2, [sp, #0x20]
	add r2, r1, #0
	add r3, sp, #0x2c
	bl GfGfxLoader_GetCharDataFromOpenNarc
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	mov r6, #0
	ldr r7, [r0, #0x14]
	ldr r0, [sp, #0x1c]
	add r5, #0xc
	lsl r0, r0, #4
	add r5, r5, r0
	add r0, r7, #0
	str r0, [sp, #0x28]
	add r0, #0x20
	add r4, r6, #0
	str r0, [sp, #0x28]
_021EE556:
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	mov r1, #3
	str r0, [sp, #0x14]
	mov r0, #0xff
	lsl r1, r1, #8
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, r1
	add r3, r2, #0
	bl BlitBitmapRect
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0xff
	mov r2, #0
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	add r3, r2, #0
	bl BlitBitmapRect
	add r6, r6, #1
	add r4, #8
	cmp r6, #3
	blo _021EE556
	ldr r0, [sp, #0x24]
	bl Heap_Free
	mov r0, #0xf
	mov r1, #8
	mov r2, #7
	mov r3, #0x25
	bl MessagePrinter_New
	str r5, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	ldr r1, [sp, #0x20]
	add r4, r0, #0
	mov r2, #3
	mov r3, #2
	bl PrintUIntOnWindow
	add r0, r4, #0
	bl MessagePrinter_Delete
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE5E0: .word 0x00000854
	thumb_func_end ov18_021EE520

