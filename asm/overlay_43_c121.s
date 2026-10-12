	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222D8B8
	.extern ov43_0222AB20
	.extern ov43_0222AB5C
	.extern ov43_0222AB94
	.extern ov43_0222ECD4

	.text

	.text
	thumb_func_start ov43_0222D8B8
ov43_0222D8B8: ; 0x0222D8B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #4]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl sub_0202C6F4
	mov r1, #0xb
	ldrsb r1, [r5, r1]
	mov r2, #8
	str r0, [sp, #0x24]
	add r1, r5, r1
	ldrb r1, [r1, #0x18]
	bl sub_0202C090
	str r0, [sp, #0x20]
	mov r0, #0x46
	lsl r0, r0, #2
	mov r6, #0
	add r4, r7, r0
_0222D8E4:
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #8
	blo _0222D8E4
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x18]
	mov r3, #2
	add r2, r5, r2
	add r2, #0x38
	ldrb r2, [r2]
	ldr r0, [r0, #0x50]
	add r2, r2, #1
	bl BufferIntegerAsString
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r2, [r5, #0x14]
	ldr r0, [r0, #0x50]
	mov r3, #2
	bl BufferIntegerAsString
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222DAC0 ; =0x000F0200
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0x46
	lsl r0, r0, #2
	add r0, r7, r0
	add r1, r5, #0
	mov r3, #0x12
	bl ov43_0222ECD4
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0222D94A
	ldr r4, _0222DAC4 ; =0x00050600
	b _0222D956
_0222D94A:
	cmp r0, #1
	bne _0222D954
	mov r4, #0xc1
	lsl r4, r4, #0xa
	b _0222D956
_0222D954:
	ldr r4, _0222DAC8 ; =0x00010200
_0222D956:
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x18]
	ldr r1, [r5, #4]
	add r2, r5, r2
	ldrb r2, [r2, #0x18]
	ldr r3, [sp, #0x1c]
	bl ov43_0222AB20
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r2, [sp, #0x18]
	add r0, r7, r0
	add r1, r5, #0
	mov r3, #0x11
	str r4, [sp, #8]
	bl ov43_0222ECD4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222DAC0 ; =0x000F0200
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r7, r0
	add r1, r5, #0
	mov r3, #0xf
	bl ov43_0222ECD4
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x18]
	ldr r1, [r5, #4]
	add r2, r5, r2
	ldrb r2, [r2, #0x18]
	ldr r3, [sp, #0x1c]
	bl ov43_0222AB5C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222DAC8 ; =0x00010200
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0x52
	lsl r0, r0, #2
	add r0, r7, r0
	add r1, r5, #0
	mov r3, #0x10
	bl ov43_0222ECD4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222DAC0 ; =0x000F0200
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0x62
	lsl r0, r0, #2
	add r0, r7, r0
	add r1, r5, #0
	mov r3, #0x1b
	bl ov43_0222ECD4
	mov r2, #0xb
	ldrsb r2, [r5, r2]
	ldr r0, [sp, #0x18]
	ldr r1, [r5, #4]
	add r2, r5, r2
	ldrb r2, [r2, #0x18]
	bl ov43_0222AB94
	cmp r0, #0
	beq _0222DA0E
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222DAC8 ; =0x00010200
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r7, r0
	add r1, r5, #0
	mov r3, #0x1c
	bl ov43_0222ECD4
_0222DA0E:
	mov r1, #0xb
	ldrsb r1, [r5, r1]
	ldr r0, [sp, #0x24]
	mov r2, #7
	add r1, r5, r1
	ldrb r1, [r1, #0x18]
	bl sub_0202C090
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	mov r2, #1
	bl GetUnionRoomAvatarAttrBySprite
	mov r1, #2
	add r2, sp, #0x28
	bl sub_02070D84
	mov r1, #0x32
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #6
	bl Heap_Alloc
	mov r3, #0
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x1c]
	bl sub_020141C4
	mov r0, #0x50
	str r0, [sp]
	mov r2, #0
	str r0, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0x5a
	lsl r0, r0, #2
	add r0, r7, r0
	add r1, r4, #0
	add r3, r2, #0
	bl BlitBitmapRectToWindow
	add r0, r4, #0
	bl Heap_Free
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	mov r3, #0x1e
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x30]
	mov r2, #4
	lsl r3, r3, #4
	bl GfGfxLoader_GXLoadPal
	mov r1, #4
	mov r0, #0xa
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	add r2, r1, #0
	ldr r0, [r0]
	add r3, r1, #0
	bl BgTilemapRectChangePalette
	mov r0, #0x46
	lsl r0, r0, #2
	mov r4, #0
	add r5, r7, r0
_0222DAAC:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #8
	blo _0222DAAC
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222DAC0: .word 0x000F0200
_0222DAC4: .word 0x00050600
_0222DAC8: .word 0x00010200
	thumb_func_end ov43_0222D8B8

