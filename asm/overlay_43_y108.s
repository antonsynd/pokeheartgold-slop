	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222D508
	.public ov43_0222D584
	.public ov43_0222D610
	.public ov43_0222D654
	.public ov43_0222D778
	.public ov43_0222D87C
	.public ov43_0222D8B8
	.extern ov43_0222A9F4
	.extern ov43_0222AA70
	.extern ov43_0222AB20
	.extern ov43_0222AB5C
	.extern ov43_0222AB94
	.extern ov43_0222AD00
	.extern ov43_0222AD20
	.extern ov43_0222AD40
	.extern ov43_0222AD98
	.extern ov43_0222DACC
	.extern ov43_0222DAE8
	.extern ov43_0222DB84
	.extern ov43_0222DB94
	.extern ov43_0222DC7C
	.extern ov43_0222DD40
	.extern ov43_0222DD88
	.extern ov43_0222DDA0
	.extern ov43_0222DDD0
	.extern ov43_0222DDF0
	.extern ov43_0222DE10
	.extern ov43_0222DE14
	.extern ov43_0222DED0
	.extern ov43_0222DF90
	.extern ov43_0222ECD4
	.extern ov43_0222EDAC
	.extern ov43_0222EE08
	.extern ov43_0222F0D0
	.extern ov43_0222F10C

	.text

	.text
	thumb_func_start ov43_0222D508
ov43_0222D508: ; 0x0222D508
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #4
	ble _0222D55C
	mov r2, #0
	ldr r0, [r4]
	mov r1, #2
	add r3, r2, #0
	bl ScheduleSetBgPosText
	mov r2, #0
	ldr r0, [r4]
	mov r1, #3
	add r3, r2, #0
	bl ScheduleSetBgPosText
	mov r3, #0
	ldrsh r0, [r5, r3]
	add r1, r7, #0
	add r2, r4, #0
	str r0, [sp]
	add r0, r5, #0
	str r6, [sp, #4]
	bl ov43_0222DAE8
	add r0, r4, #0
	mov r1, #1
	bl ov43_0222AD20
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xff
	bl ov43_0222DB94
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222D55C:
	lsl r1, r0, #8
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r3, r0, #2
	ldr r0, [r5, #8]
	cmp r0, #2
	bne _0222D56E
	neg r3, r3
_0222D56E:
	ldr r0, [r4]
	mov r1, #3
	mov r2, #0
	bl ScheduleSetBgPosText
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222D508

	thumb_func_start ov43_0222D584
ov43_0222D584: ; 0x0222D584
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	str r2, [sp, #8]
	add r1, r2, #0
	add r0, #0xf8
	add r2, r3, #0
	str r3, [sp, #0xc]
	bl ov43_0222DD40
	ldr r1, [sp, #8]
	add r0, r7, #0
	bl ov43_0222DDA0
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _0222D600 ; =ov43_0222EDAC
	add r7, #0x14
	str r0, [sp, #0x14]
	ldr r0, _0222D604 ; =ov43_0222EE08
	str r0, [sp, #0x10]
_0222D5AE:
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x14]
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0x10]
	ldr r3, [r3]
	add r0, r7, #0
	bl ov43_0222DDF0
	ldr r4, _0222D608 ; =ov43_0222F10C
	ldr r5, _0222D60C ; =ov43_0222F0D0
	mov r6, #0
_0222D5C6:
	ldr r0, [r4]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	str r0, [sp, #4]
	ldrb r3, [r5]
	add r0, r7, #0
	bl ov43_0222DE14
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #1
	cmp r6, #8
	blt _0222D5C6
	ldr r0, [sp, #0x14]
	add r7, #0x4c
	add r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, r0, #6
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _0222D5AE
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222D600: .word ov43_0222EDAC
_0222D604: .word ov43_0222EE08
_0222D608: .word ov43_0222F10C
_0222D60C: .word ov43_0222F0D0
	thumb_func_end ov43_0222D584

	thumb_func_start ov43_0222D610
ov43_0222D610: ; 0x0222D610
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0
	add r5, r0, #0
	str r0, [sp]
	str r2, [sp, #4]
	add r5, #0x14
	add r7, r6, #0
_0222D620:
	add r4, r7, #0
_0222D622:
	add r0, r5, #0
	add r1, r4, #0
	bl ov43_0222DED0
	add r4, r4, #1
	cmp r4, #8
	blt _0222D622
	add r0, r5, #0
	bl ov43_0222DE10
	add r6, r6, #1
	add r5, #0x4c
	cmp r6, #3
	blt _0222D620
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov43_0222DDD0
	ldr r0, [sp]
	add r0, #0xf8
	str r0, [sp]
	bl ov43_0222DD88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222D610

	thumb_func_start ov43_0222D654
ov43_0222D654: ; 0x0222D654
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r4, r2, #0
	mov r2, #0xb
	ldrsb r2, [r6, r2]
	add r5, r0, #0
	ldr r1, [r6, #4]
	add r2, r6, r2
	ldrb r2, [r2, #0x18]
	add r0, r4, #0
	add r7, r3, #0
	bl ov43_0222AB20
	mov r1, #0x4a
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r5, r1
	mov r2, #0xd
	bl ov43_0222A9F4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	mov r3, #0
	str r3, [sp]
	ldrh r0, [r2]
	mov r1, #5
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	bl LoadRectToBgTilemapRect
	ldr r0, [r4]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	add r0, #0xfc
	mov r1, #0
	ldr r2, [r0]
	add r3, r1, #0
	str r1, [sp]
	ldrh r0, [r2]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	bl LoadRectToBgTilemapRect
	ldr r0, [r4]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	mov r3, #0
	str r3, [sp]
	ldrh r0, [r2]
	mov r1, #2
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	bl LoadRectToBgTilemapRect
	ldr r0, [r4]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov43_0222D8B8
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov43_0222AD98
	mov r3, #0
	ldrsh r0, [r5, r3]
	add r1, r6, #0
	add r2, r4, #0
	str r0, [sp]
	add r0, r5, #0
	str r7, [sp, #4]
	bl ov43_0222DAE8
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xff
	bl ov43_0222DB94
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xf4
	mov r2, #0x18
	bl Sprite_SetPositionXY
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov43_0222AD40
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xf4
	mov r2, #0x88
	bl Sprite_SetPositionXY
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ov43_0222AD40
	add r0, r4, #0
	mov r1, #1
	bl ov43_0222AD00
	mov r0, #2
	mov r1, #0
	bl SetBgPriority
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222D654

	thumb_func_start ov43_0222D778
ov43_0222D778: ; 0x0222D778
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov43_0222AD00
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #8
	mov r2, #0x62
	bl Sprite_SetPositionXY
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov43_0222AD40
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xf8
	mov r2, #0x62
	bl Sprite_SetPositionXY
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov43_0222AD40
	add r4, r7, #0
	mov r6, #0
	add r4, #0x14
_0222D7BE:
	add r0, r4, #0
	add r1, r5, #0
	bl ov43_0222DF90
	add r6, r6, #1
	add r4, #0x4c
	cmp r6, #3
	blt _0222D7BE
	add r0, r7, #0
	add r1, r5, #0
	bl ov43_0222DC7C
	add r0, r7, #0
	add r1, r5, #0
	bl ov43_0222DB84
	add r0, r7, #0
	bl ov43_0222DACC
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #5
	add r3, r2, #0
	bl FillBgTilemapRect
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #4
	add r3, r2, #0
	bl FillBgTilemapRect
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #2
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, [r5]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, [r5]
	mov r1, #4
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, [r5]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #0x43
	lsl r0, r0, #2
	mov r1, #0
	ldr r2, [r7, r0]
	add r3, r1, #0
	str r1, [sp]
	ldrh r0, [r2]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	bl LoadRectToBgTilemapRect
	ldr r0, [r5]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	bl ov43_0222AA70
	mov r0, #2
	add r1, r0, #0
	bl SetBgPriority
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222D778

	thumb_func_start ov43_0222D87C
ov43_0222D87C: ; 0x0222D87C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r7, #0
	add r6, r1, #0
	mov r4, #0
	add r5, #0x14
_0222D888:
	add r0, r5, #0
	add r1, r6, #0
	bl ov43_0222DF90
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #3
	blt _0222D888
	mov r0, #0x46
	lsl r0, r0, #2
	mov r5, #0
	add r4, r7, r0
_0222D8A0:
	add r0, r4, #0
	bl ClearWindowTilemapAndScheduleTransfer
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #5
	ble _0222D8A0
	add r0, r6, #0
	bl ov43_0222AA70
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov43_0222D87C

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

