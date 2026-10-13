	.include "asm/macros.inc"
	.include "overlay_67.inc"
	.include "global.inc"
	.public ov67_021E6688
	.extern ov67_021E6118
	.extern ov67_021E6164
	.extern ov67_021E61A0

	.text

	.text
	thumb_func_start ov67_021E6688
ov67_021E6688: ; 0x021E6688
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r0, _021E680C ; =0x000004A3
	str r1, [sp, #0x10]
	ldrb r0, [r6, r0]
	cmp r0, #0
	bne _021E669C
	mov r7, #5
	b _021E669E
_021E669C:
	mov r7, #8
_021E669E:
	add r1, r6, #0
	add r1, #0x6c
	lsl r0, r7, #4
	add r4, r1, r0
	mov r5, #0
_021E66A8:
	lsl r0, r5, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #3
	blo _021E66A8
	ldr r0, [sp, #0x10]
	cmp r0, #0x1e
	blo _021E66C4
	b _021E67E8
_021E66C4:
	mov r2, #0x2a
	lsl r2, r2, #4
	lsl r5, r0, #4
	add r0, r6, r2
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r3, r6, r5
	sub r2, r2, #4
	ldr r2, [r3, r2]
	ldr r3, [sp, #0x14]
	ldr r0, [r6, #0x2c]
	ldrb r3, [r3, r5]
	mov r1, #0
	bl BufferString
	ldr r0, [sp, #0x14]
	ldrb r0, [r0, r5]
	cmp r0, #0
	ldr r0, _021E6810 ; =0x00010200
	bne _021E6708
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0x16
	str r3, [sp, #0xc]
	bl ov67_021E61A0
	b _021E671C
_021E6708:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0x17
	str r3, [sp, #0xc]
	bl ov67_021E61A0
_021E671C:
	mov r3, #0
	str r3, [sp]
	ldr r0, _021E6810 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r7, #1
	mov r2, #0x1c
	str r3, [sp, #0xc]
	bl ov67_021E6164
	ldr r0, _021E6814 ; =0x000002A1
	add r0, r6, r0
	ldrb r2, [r0, r5]
	str r0, [sp, #0x18]
	cmp r2, #0
	bne _021E6758
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	ldr r0, _021E6810 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r7, #1
	mov r2, #0x1f
	str r3, [sp, #0xc]
	bl ov67_021E6164
	b _021E6778
_021E6758:
	ldr r0, [r6, #0x2c]
	mov r1, #0
	bl BufferCountryName
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	ldr r0, _021E6810 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r7, #1
	mov r2, #0x1d
	str r3, [sp, #0xc]
	bl ov67_021E61A0
_021E6778:
	ldr r0, _021E6818 ; =0x000002A2
	add r1, r6, r5
	ldrb r3, [r1, r0]
	cmp r3, #0
	beq _021E67A6
	ldr r2, [sp, #0x18]
	ldr r0, [r6, #0x2c]
	ldrb r2, [r2, r5]
	mov r1, #0
	bl BufferCityName
	mov r0, #0x20
	str r0, [sp]
	mov r3, #0
	ldr r0, _021E6810 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r7, #1
	mov r2, #0x1e
	str r3, [sp, #0xc]
	bl ov67_021E61A0
_021E67A6:
	mov r3, #0
	str r3, [sp]
	ldr r0, _021E6810 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r7, #2
	mov r2, #0x20
	str r3, [sp, #0xc]
	bl ov67_021E6164
	mov r0, #0xa9
	lsl r0, r0, #2
	add r0, r6, r0
	ldr r1, [r6]
	add r0, r0, r5
	bl MailMsg_GetExpandedString
	add r5, r0, #0
	mov r2, #0
	ldr r0, _021E6810 ; =0x00010200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x20
	add r1, r5, #0
	mov r3, #0x10
	str r2, [sp, #8]
	bl ov67_021E6118
	add r0, r5, #0
	bl String_Delete
_021E67E8:
	mov r5, #0
_021E67EA:
	lsl r0, r5, #4
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #3
	blo _021E67EA
	ldr r1, _021E680C ; =0x000004A3
	mov r0, #1
	ldrb r2, [r6, r1]
	eor r0, r2
	strb r0, [r6, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021E680C: .word 0x000004A3
_021E6810: .word 0x00010200
_021E6814: .word 0x000002A1
_021E6818: .word 0x000002A2
	thumb_func_end ov67_021E6688

