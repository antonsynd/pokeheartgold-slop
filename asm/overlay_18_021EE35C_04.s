	.include "asm/macros.inc"
	.include "overlay_18_021EE35C.inc"
	.include "global.inc"
	.public ov18_021EE44C

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
	thumb_func_start ov18_021EE44C
ov18_021EE44C: ; 0x021EE44C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x1c]
	mov r0, #0x25
	add r4, r1, #0
	str r0, [sp]
	ldr r1, _021EE4FC ; =0x00000854
	ldr r0, [sp, #0x1c]
	str r2, [sp, #0x20]
	ldr r0, [r0, r1]
	mov r1, #1
	add r2, r1, #0
	add r3, sp, #0x2c
	bl GfGfxLoader_GetCharDataFromOpenNarc
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	lsl r6, r4, #4
	ldr r7, [r0, #0x14]
	ldr r4, [sp, #0x1c]
	mov r5, #0
	str r5, [sp, #0x24]
	add r4, #0xc
	add r7, #0x20
_021EE47C:
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0xff
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r4, r6
	add r1, r7, #0
	add r3, r2, #0
	bl BlitBitmapRect
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0xff
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r4, r6
	add r1, r7, #0
	add r3, r2, #0
	bl BlitBitmapRect
	ldr r0, [sp, #0x24]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #0xc
	blo _021EE47C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021EE500 ; =0x000F0800
	ldr r2, _021EE504 ; =0x0000065C
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	add r0, r4, r6
	ldr r1, [r1, r2]
	ldr r2, [sp, #0x20]
	mov r3, #0x60
	bl ov18_021F9648
	ldr r0, [sp, #0x28]
	bl Heap_Free
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE4FC: .word 0x00000854
_021EE500: .word 0x000F0800
_021EE504: .word 0x0000065C
	thumb_func_end ov18_021EE44C

