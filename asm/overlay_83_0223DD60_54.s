	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02240C48
	.public ov83_02241DD8
	.public ov83_022421E0

    .text

	thumb_func_start ov83_022421E0
ov83_022421E0: ; 0x022421E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	mov r0, #0x17
	lsl r0, r0, #4
	str r1, [sp, #0x14]
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #6
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #7
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x1e
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #2
	lsl r0, r0, #8
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #9
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0xa
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x2a
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0xb
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x2d
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x2e
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x2f
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #3
	lsl r0, r0, #8
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x31
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x33
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0xd
	lsl r0, r0, #6
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, _0224262C ; =0x00000804
	ldr r0, [r4, r0]
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl BufferBoxMonNickname
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02242630 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x17
	lsl r1, r1, #4
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x5b
	bl ov83_02241DD8
	ldr r0, _02242634 ; =0x0000080E
	ldrb r0, [r4, r0]
	lsl r1, r0, #0x18
	lsr r1, r1, #0x1f
	bne _02242354
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	bne _02242334
	mov r3, #0
	str r3, [sp]
	ldr r0, _02242638 ; =0x00050600
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x56
	bl ov83_022479E4
	b _02242354
_02242334:
	cmp r0, #1
	bne _02242354
	mov r3, #0
	str r3, [sp]
	mov r0, #0xc1
	str r3, [sp, #4]
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x57
	bl ov83_022479E4
_02242354:
	mov r1, #0
	ldr r2, _0224263C ; =0x0000080F
	str r1, [sp]
	ldrb r2, [r4, r2]
	add r0, r4, #0
	mov r3, #3
	bl ov83_02240C48
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02242630 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x1a
	lsl r1, r1, #4
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x5e
	bl ov83_02241DD8
	mov r2, #0x81
	lsl r2, r2, #4
	ldrb r2, [r4, r2]
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl BufferAbilityName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02242630 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #7
	lsl r1, r1, #6
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x4b
	bl ov83_02241DD8
	ldr r2, _02242640 ; =0x00000811
	ldr r0, [r4, #0x24]
	ldrb r2, [r4, r2]
	mov r1, #0
	bl BufferNatureName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02242630 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x1e
	lsl r1, r1, #4
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x49
	bl ov83_02241DD8
	ldr r2, _02242644 ; =0x00000812
	ldr r0, [r4, #0x24]
	ldrh r2, [r4, r2]
	mov r1, #0
	bl BufferItemName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02242630 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #2
	lsl r1, r1, #8
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x47
	bl ov83_02241DD8
	mov r1, #0
	ldr r2, _02242648 ; =0x00000818
	str r1, [sp]
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0
	str r0, [sp]
	ldr r2, _0224264C ; =0x0000081A
	add r0, r4, #0
	ldrh r2, [r4, r2]
	mov r1, #1
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r4, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02242630 ; =0x00010200
	mov r1, #0x22
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x5f
	bl ov83_02241DD8
	mov r1, #0
	ldr r2, _02242650 ; =0x0000081C
	str r1, [sp]
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #9
	lsl r0, r0, #6
	add r0, r4, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02242630 ; =0x00010200
	mov r1, #9
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #6
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x4d
	bl ov83_02241DD8
	mov r1, #0
	ldr r2, _02242654 ; =0x0000081E
	str r1, [sp]
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r4, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02242630 ; =0x00010200
	mov r1, #0x26
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x51
	bl ov83_02241DD8
	mov r1, #0
	mov r2, #0x82
	str r1, [sp]
	lsl r2, r2, #4
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0xa
	lsl r0, r0, #6
	add r0, r4, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02242630 ; =0x00010200
	mov r1, #0xa
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #6
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x4f
	bl ov83_02241DD8
	mov r1, #0
	ldr r2, _02242658 ; =0x00000822
	str r1, [sp]
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0x2a
	lsl r0, r0, #4
	add r0, r4, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02242630 ; =0x00010200
	mov r1, #0x2a
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x53
	bl ov83_02241DD8
	mov r1, #0
	ldr r2, _0224265C ; =0x00000824
	str r1, [sp]
	ldrh r2, [r4, r2]
	add r0, r4, #0
	mov r3, #3
	bl ov83_02240C48
	mov r0, #0xb
	lsl r0, r0, #6
	add r0, r4, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02242630 ; =0x00010200
	mov r1, #0xb
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #6
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0x55
	bl ov83_02241DD8
	add r6, r4, #0
	mov r5, #0
	str r4, [sp, #0x1c]
	add r6, #0x50
_02242586:
	ldr r3, [sp, #0x1c]
	ldr r2, _02242660 ; =0x00000828
	ldr r0, [r4, #0x24]
	ldrh r2, [r3, r2]
	add r1, r5, #0
	bl BufferMoveName
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02242630 ; =0x00010200
	add r1, r5, #0
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r1, #0x28
	lsl r1, r1, #4
	add r3, r5, #0
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, r6, r1
	add r3, #0x60
	bl ov83_02241DD8
	ldr r1, [sp, #0x1c]
	ldr r0, _02242660 ; =0x00000828
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _022425F2
	add r0, r5, #0
	add r0, #0x2c
	lsl r7, r0, #4
	add r0, r6, r7
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02242630 ; =0x00010200
	lsl r3, r3, #3
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r6, r7
	lsr r7, r3, #0x1f
	add r7, r3, r7
	ldr r1, [r4, #0x20]
	mov r2, #0x66
	asr r3, r7, #1
	bl ov83_022479E4
	b _02242712
_022425F2:
	ldr r0, [r4, #0x20]
	mov r1, #0x5a
	bl NewString_ReadMsgData
	str r0, [sp, #0x28]
	mov r0, #0
	ldr r1, [sp, #0x28]
	add r2, r0, #0
	bl FontID_String_GetWidth
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r0, #0x2c
	lsl r7, r0, #4
	add r0, r6, r7
	bl GetWindowWidth
	lsl r1, r0, #3
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp]
	ldr r0, _02242630 ; =0x00010200
	b _02242664
	.balign 4, 0
_0224262C: .word 0x00000804
_02242630: .word 0x00010200
_02242634: .word 0x0000080E
_02242638: .word 0x00050600
_0224263C: .word 0x0000080F
_02242640: .word 0x00000811
_02242644: .word 0x00000812
_02242648: .word 0x00000818
_0224264C: .word 0x0000081A
_02242650: .word 0x0000081C
_02242654: .word 0x0000081E
_02242658: .word 0x00000822
_0224265C: .word 0x00000824
_02242660: .word 0x00000828
_02242664:
	ldr r1, [sp, #0x28]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r2, [sp, #0x20]
	add r0, r6, r7
	mov r3, #0
	bl ov83_02247998
	ldr r0, [sp, #0x28]
	bl String_Delete
	add r0, r4, r5
	str r0, [sp, #0x18]
	mov r0, #0
	mov r2, #0x83
	str r0, [sp]
	ldr r3, [sp, #0x18]
	lsl r2, r2, #4
	ldrb r2, [r3, r2]
	add r0, r4, #0
	mov r1, #0
	mov r3, #2
	bl ov83_02240C48
	ldr r0, [r4, #0x20]
	mov r1, #0x65
	bl NewString_ReadMsgData
	str r0, [sp, #0x2c]
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	ldr r2, [sp, #0x2c]
	bl StringExpandPlaceholders
	mov r0, #0
	ldr r1, [r4, #0x28]
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov ip, r0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224280C ; =0x00010200
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r3, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r1, [r4, #0x28]
	sub r2, r3, r2
	mov r3, ip
	sub r2, r2, r3
	add r0, r6, r7
	mov r3, #0
	bl ov83_02247998
	ldr r0, [sp, #0x2c]
	bl String_Delete
	mov r0, #0
	str r0, [sp]
	ldr r3, [sp, #0x18]
	ldr r2, _02242810 ; =0x00000834
	add r0, r4, #0
	ldrb r2, [r3, r2]
	mov r1, #0
	mov r3, #2
	bl ov83_02240C48
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	mov r3, #0x65
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0224280C ; =0x00010200
	add r1, r6, r7
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	bl ov83_02241DD8
_02242712:
	ldr r0, [sp, #0x1c]
	add r5, r5, #1
	add r0, r0, #2
	str r0, [sp, #0x1c]
	cmp r5, #4
	bhs _02242720
	b _02242586
_02242720:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _02242740
	mov r0, #0x17
	lsl r0, r0, #4
	mov r5, #0x12
	add r4, r4, r0
_0224272E:
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #0x2f
	bls _0224272E
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_02242740:
	mov r0, #0x17
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #6
	lsl r0, r0, #6
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #7
	lsl r0, r0, #6
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x1e
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #2
	lsl r0, r0, #8
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #9
	lsl r0, r0, #6
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0xa
	lsl r0, r0, #6
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x2a
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0xb
	lsl r0, r0, #6
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x2d
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x2e
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x2f
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #3
	lsl r0, r0, #8
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x31
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x33
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0xd
	lsl r0, r0, #6
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0224280C: .word 0x00010200
_02242810: .word 0x00000834
	thumb_func_end ov83_022421E0

