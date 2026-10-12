	.include "asm/macros.inc"
	.include "overlay_18_021EE35C.inc"
	.include "global.inc"
	.public ov18_021EE638
	.extern ov18_021E590C

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
	thumb_func_start ov18_021EE638
ov18_021EE638: ; 0x021EE638
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	beq _021EE6A6
	add r4, r5, #0
	add r4, #0xc
	lsl r6, r2, #4
	add r0, r4, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, _021EE6B4 ; =0x0000185C
	add r0, r7, #0
	ldrb r1, [r5, r1]
	mov r2, #0x25
	bl ov18_021E590C
	add r7, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl Pokedex_GetInternationalViewFlag
	cmp r0, #1
	ldr r0, _021EE6B8 ; =0x00020100
	bne _021EE682
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r4, r6
	add r1, r7, #0
	mov r2, #0x38
	bl ov18_021F95FC
	b _021EE696
_021EE682:
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r4, r6
	add r1, r7, #0
	mov r2, #0x2c
	bl ov18_021F95FC
_021EE696:
	add r0, r7, #0
	bl String_Delete
	add r0, r4, r6
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021EE6A6:
	add r5, #0xc
	lsl r0, r2, #4
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE6B4: .word 0x0000185C
_021EE6B8: .word 0x00020100
	thumb_func_end ov18_021EE638

