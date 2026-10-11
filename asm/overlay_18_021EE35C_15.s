	.include "asm/macros.inc"
	.include "overlay_18_021EE35C.inc"
	.include "global.inc"
	.public ov18_021EE984
	.extern ov18_021E59A8

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
	thumb_func_start ov18_021EE984
ov18_021EE984: ; 0x021EE984
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	lsl r0, r2, #2
	add r7, r1, #0
	add r1, r6, r0
	ldr r0, _021EE9F0 ; =0x00001032
	ldrh r0, [r1, r0]
	cmp r0, #2
	bne _021EE9EC
	add r5, r6, #0
	add r5, #0xc
	lsl r4, r3, #4
	add r0, r5, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, _021EE9F4 ; =0x0000185C
	add r0, r7, #0
	ldrb r1, [r6, r1]
	mov r2, #0
	mov r3, #0x25
	bl ov18_021E59A8
	add r6, r0, #0
	add r0, r5, r4
	bl GetWindowWidth
	add r7, r0, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl FontID_String_GetWidthMultiline
	lsl r1, r7, #3
	sub r0, r1, r0
	lsr r2, r0, #1
	mov r3, #0
	ldr r0, _021EE9F8 ; =0x00020100
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r5, r4
	add r1, r6, #0
	str r3, [sp, #8]
	bl ov18_021F95FC
	add r0, r6, #0
	bl String_Delete
	add r0, r5, r4
	bl ScheduleWindowCopyToVram
_021EE9EC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE9F0: .word 0x00001032
_021EE9F4: .word 0x0000185C
_021EE9F8: .word 0x00020100
	thumb_func_end ov18_021EE984

