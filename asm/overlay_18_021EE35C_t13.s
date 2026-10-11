	.include "asm/macros.inc"
	.include "overlay_18_021EE35C.inc"
	.include "global.inc"
	.public ov18_021EE75C
	.public ov18_021EE7DC
	.public ov18_021EE834
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021EE3AC

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
	thumb_func_start ov18_021EE75C
ov18_021EE75C: ; 0x021EE75C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r5, #0
	add r0, r2, #0
	add r7, r1, #0
	add r4, #0xc
	lsl r6, r0, #4
	add r0, r4, r6
	mov r1, #0
	str r2, [sp, #0x14]
	bl FillWindowPixelBuffer
	cmp r7, #0
	beq _021EE7C6
	ldr r0, _021EE7D0 ; =0x00001858
	add r1, r7, #0
	ldrb r0, [r5, r0]
	bl Pokedex_ConvertToCurrentDexNo
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x66
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	bl BufferIntegerAsString
	mov r0, #1
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _021EE7D4 ; =0x00020100
	ldr r2, [sp, #0x14]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, _021EE7D8 ; =0x0000065C
	add r0, r5, #0
	ldr r1, [r5, r1]
	mov r3, #9
	bl ov18_021EE3AC
	add r0, r4, r6
	bl ScheduleWindowCopyToVram
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021EE7C6:
	add r0, r4, r6
	bl ClearWindowTilemapAndScheduleTransfer
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE7D0: .word 0x00001858
_021EE7D4: .word 0x00020100
_021EE7D8: .word 0x0000065C
	thumb_func_end ov18_021EE75C

	thumb_func_start ov18_021EE7DC
ov18_021EE7DC: ; 0x021EE7DC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	lsl r5, r2, #4
	add r4, #0xc
	add r6, r1, #0
	add r0, r4, r5
	mov r1, #0
	bl FillWindowPixelBuffer
	cmp r6, #0
	beq _021EE826
	add r0, r6, #0
	mov r1, #2
	mov r2, #0x25
	bl ov18_021E590C
	add r6, r0, #0
	mov r0, #4
	str r0, [sp]
	ldr r0, _021EE830 ; =0x00020100
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, r5
	add r1, r6, #0
	add r3, r2, #0
	str r2, [sp, #8]
	bl ov18_021F95FC
	add r0, r6, #0
	bl String_Delete
	add r0, r4, r5
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021EE826:
	add r0, r4, r5
	bl ClearWindowTilemapAndScheduleTransfer
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EE830: .word 0x00020100
	thumb_func_end ov18_021EE7DC

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

