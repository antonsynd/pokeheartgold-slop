	.include "asm/macros.inc"
	.include "overlay_67.inc"
	.include "global.inc"
	.public ov67_021E6490
	.extern ov67_021E6118

	.text

	.text
	thumb_func_start ov67_021E6490
ov67_021E6490: ; 0x021E6490
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r1, _021E6528 ; =0x000004A2
	str r0, [sp, #0xc]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021E64A6
	mov r1, #0x47
	lsl r1, r1, #2
	ldr r0, [sp, #0xc]
	b _021E64AC
_021E64A6:
	mov r1, #0x77
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
_021E64AC:
	add r5, r0, r1
	mov r1, #0x4a
	ldr r0, [sp, #0xc]
	lsl r1, r1, #4
	ldrh r1, [r0, r1]
	mov r0, #0xc
	mov r6, #0
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_021E64C0:
	lsl r7, r6, #4
	add r0, r5, r7
	mov r1, #0
	bl FillWindowPixelBuffer
	cmp r4, #0x1e
	bhs _021E64FE
	ldr r0, [sp, #0xc]
	lsl r1, r4, #4
	add r1, r0, r1
	mov r0, #0x2a
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _021E64E2
	ldr r2, _021E652C ; =0x00070800
	b _021E64E6
_021E64E2:
	mov r2, #0xc1
	lsl r2, r2, #0xa
_021E64E6:
	mov r0, #0
	str r0, [sp]
	str r2, [sp, #4]
	mov r2, #0xa7
	str r0, [sp, #8]
	lsl r2, r2, #2
	ldr r1, [r1, r2]
	mov r2, #0
	add r0, r5, r7
	add r3, r2, #0
	bl ov67_021E6118
_021E64FE:
	add r0, r5, r7
	bl ScheduleWindowCopyToVram
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0xc
	blo _021E64C0
	ldr r1, _021E6528 ; =0x000004A2
	ldr r0, [sp, #0xc]
	ldrb r2, [r0, r1]
	mov r0, #1
	eor r2, r0
	ldr r0, [sp, #0xc]
	strb r2, [r0, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6528: .word 0x000004A2
_021E652C: .word 0x00070800
	thumb_func_end ov67_021E6490

