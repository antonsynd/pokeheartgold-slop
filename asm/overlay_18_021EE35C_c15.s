	.include "asm/macros.inc"
	.include "overlay_18_021EE35C.inc"
	.include "global.inc"
	.public ov18_021EE834
	.extern ov18_021E595C

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
	thumb_func_start ov18_021EE834
ov18_021EE834: ; 0x021EE834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r6, #0
	lsl r5, r3, #4
	add r4, #0xc
	add r7, r1, #0
	add r0, r4, r5
	mov r1, #0
	str r2, [sp, #0xc]
	bl FillWindowPixelBuffer
	cmp r7, #0
	beq _021EE8A6
	ldr r0, [sp, #0xc]
	lsl r0, r0, #2
	add r1, r6, r0
	ldr r0, _021EE8B0 ; =0x00001032
	ldrh r0, [r1, r0]
	cmp r0, #2
	bne _021EE86A
	add r0, r7, #0
	mov r1, #2
	mov r2, #0x25
	bl ov18_021E595C
	b _021EE874
_021EE86A:
	mov r0, #0
	mov r1, #2
	mov r2, #0x25
	bl ov18_021E595C
_021EE874:
	add r6, r0, #0
	add r0, r4, r5
	bl GetWindowWidth
	lsl r0, r0, #3
	sub r2, r0, #4
	mov r0, #4
	str r0, [sp]
	ldr r0, _021EE8B4 ; =0x00020100
	add r1, r6, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r4, r5
	mov r3, #0
	bl ov18_021F95FC
	add r0, r6, #0
	bl String_Delete
	add r0, r4, r5
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021EE8A6:
	add r0, r4, r5
	bl ClearWindowTilemapAndScheduleTransfer
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE8B0: .word 0x00001032
_021EE8B4: .word 0x00020100
	thumb_func_end ov18_021EE834

