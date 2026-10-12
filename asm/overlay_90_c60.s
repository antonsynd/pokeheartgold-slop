	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225938C

	.text

	.text
	thumb_func_start ov90_0225938C
ov90_0225938C: ; 0x0225938C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	add r7, r1, #0
	str r0, [sp, #0x30]
	add r0, r2, #0
	str r3, [sp, #0x18]
	bl Save_PlayerData_GetOptionsAddr
	bl Options_GetFrame
	add r4, r0, #0
	mov r0, #1
	bl TextFlags_BeginAutoScroll
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x30]
	mov r1, #2
	str r0, [sp, #4]
	ldr r0, [r7]
	mov r2, #1
	mov r3, #0xd
	bl LoadUserFrameGfx2
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x30]
	mov r1, #4
	str r0, [sp, #4]
	ldr r0, [r7]
	mov r2, #1
	mov r3, #0xd
	bl LoadUserFrameGfx2
	ldr r4, [sp, #0x14]
	mov r6, #0
	add r5, r4, #0
_022593DE:
	cmp r6, #0
	bne _022593E8
	mov r2, #2
	mov r0, #0x13
	b _022593EC
_022593E8:
	mov r2, #4
	mov r0, #1
_022593EC:
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	lsl r2, r2, #0x18
	ldr r0, [r7]
	add r1, r4, #0
	lsr r2, r2, #0x18
	mov r3, #2
	bl AddWindowParameterized
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, [sp, #0x30]
	mov r0, #0x80
	bl String_New
	str r0, [r5, #0x24]
	add r6, r6, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r6, #2
	blt _022593DE
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	str r1, [r0, #0x34]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov90_0225938C

