	.include "asm/macros.inc"
	.include "overlay_18_021EE35C.inc"
	.include "global.inc"
	.public ov18_021EEC34
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
	thumb_func_start ov18_021EEC34
ov18_021EEC34: ; 0x021EEC34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r6, r2, #0
	add r7, r5, #0
	lsl r0, r6, #4
	str r1, [sp, #0x14]
	add r7, #0xc
	str r0, [sp, #0x18]
	add r0, r7, r0
	mov r1, #0
	add r4, r3, #0
	bl FillWindowPixelBuffer
	cmp r4, #1
	bne _021EEC58
	mov r4, #0
	b _021EEC5A
_021EEC58:
	mov r4, #1
_021EEC5A:
	ldr r0, _021EECA4 ; =0x00001858
	ldr r1, [sp, #0x14]
	ldrb r0, [r5, r0]
	bl Pokedex_ConvertToCurrentDexNo
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x66
	str r4, [sp, #4]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	bl BufferIntegerAsString
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _021EECA8 ; =0x00020100
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, _021EECAC ; =0x0000065C
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #9
	bl ov18_021EE3AC
	ldr r0, [sp, #0x18]
	add r0, r7, r0
	bl ScheduleWindowCopyToVram
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021EECA4: .word 0x00001858
_021EECA8: .word 0x00020100
_021EECAC: .word 0x0000065C
	thumb_func_end ov18_021EEC34

