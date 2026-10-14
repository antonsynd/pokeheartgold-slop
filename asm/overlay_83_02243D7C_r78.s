	.include "macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02246114
	.extern ov83_02244A98
	.extern ov83_02245D08

    .text

	.text
	thumb_func_start ov83_02246114
ov83_02246114: ; 0x02246114
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0xaf
	str r1, [sp, #0x14]
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	mov r2, #2
	bl ov83_0224777C
	add r6, r0, #0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	bl ov83_02247768
	add r4, r0, #0
	mov r0, #0x11
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x12
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #5
	lsl r0, r0, #6
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #6
	lsl r0, r0, #6
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #7
	lsl r0, r0, #6
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x1e
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #2
	lsl r0, r0, #8
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #9
	lsl r0, r0, #6
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x27
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, _02246538 ; =0x000005C6
	ldrb r0, [r5, r0]
	lsl r1, r0, #0x18
	lsr r1, r1, #0x1f
	bne _0224621E
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	bne _022461FE
	mov r3, #0
	str r3, [sp]
	ldr r0, _0224653C ; =0x00050600
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x40
	bl ov83_022479E4
	b _0224621E
_022461FE:
	cmp r0, #1
	bne _0224621E
	mov r3, #0
	str r3, [sp]
	mov r0, #0xc1
	str r3, [sp, #4]
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x41
	bl ov83_022479E4
_0224621E:
	mov r1, #0
	ldr r2, _02246540 ; =0x000005C7
	str r1, [sp]
	ldrb r2, [r5, r2]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02244A98
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02246544 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #5
	lsl r1, r1, #6
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x48
	bl ov83_02245D08
	ldr r0, _02246548 ; =0x0000054C
	ldr r1, [r5, r0]
	ldrb r1, [r1, r4]
	cmp r1, #0
	beq _022462D8
	add r0, #0x70
	ldr r0, [r5, r0]
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferBoxMonSpeciesName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02246544 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x45
	bl ov83_02245D08
	mov r1, #0
	mov r2, #0x5d
	str r1, [sp]
	lsl r2, r2, #4
	ldrh r2, [r5, r2]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02244A98
	mov r0, #0
	str r0, [sp]
	ldr r2, _0224654C ; =0x000005D2
	add r0, r5, #0
	ldrh r2, [r5, r2]
	mov r1, #1
	mov r3, #3
	bl ov83_02244A98
	mov r0, #7
	lsl r0, r0, #6
	add r0, r5, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02246544 ; =0x00010200
	mov r1, #7
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #6
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x4e
	bl ov83_02245D08
	b _0224631C
_022462D8:
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246544 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x4b
	bl ov83_022479E4
	mov r0, #7
	lsl r0, r0, #6
	add r0, r5, r0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02246544 ; =0x00010200
	mov r2, #0x4d
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #7
	lsl r0, r0, #6
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	lsl r3, r3, #3
	bl ov83_022479E4
_0224631C:
	ldr r2, _02246550 ; =0x00000554
	ldr r0, [r5, r2]
	ldrb r0, [r0, r4]
	cmp r0, #0
	bne _02246328
	b _022464D2
_02246328:
	add r2, #0x74
	ldrb r2, [r5, r2]
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferAbilityName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02246544 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x35
	bl ov83_02245D08
	ldr r2, _02246554 ; =0x000005C9
	ldr r0, [r5, #0x24]
	ldrb r2, [r5, r2]
	mov r1, #0
	bl BufferNatureName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02246544 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #6
	lsl r1, r1, #6
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x33
	bl ov83_02245D08
	ldr r2, _02246558 ; =0x000005CA
	ldr r0, [r5, #0x24]
	ldrh r2, [r5, r2]
	mov r1, #0
	bl BufferItemName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02246544 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x1a
	lsl r1, r1, #4
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x31
	bl ov83_02245D08
	mov r1, #0
	ldr r2, _0224655C ; =0x000005D4
	str r1, [sp]
	ldrh r2, [r5, r2]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02244A98
	mov r0, #0x1e
	lsl r0, r0, #4
	add r0, r5, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02246544 ; =0x00010200
	mov r1, #0x1e
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x37
	bl ov83_02245D08
	mov r1, #0
	ldr r2, _02246560 ; =0x000005D6
	str r1, [sp]
	ldrh r2, [r5, r2]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02244A98
	mov r0, #2
	lsl r0, r0, #8
	add r0, r5, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02246544 ; =0x00010200
	mov r1, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	lsl r1, r1, #9
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x3b
	bl ov83_02245D08
	mov r1, #0
	ldr r2, _02246564 ; =0x000005D8
	str r1, [sp]
	ldrh r2, [r5, r2]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02244A98
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02246544 ; =0x00010200
	mov r1, #0x22
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x39
	bl ov83_02245D08
	mov r1, #0
	ldr r2, _02246568 ; =0x000005DA
	str r1, [sp]
	ldrh r2, [r5, r2]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02244A98
	mov r0, #9
	lsl r0, r0, #6
	add r0, r5, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02246544 ; =0x00010200
	mov r1, #9
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #6
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x3d
	bl ov83_02245D08
	mov r1, #0
	ldr r2, _0224656C ; =0x000005DC
	str r1, [sp]
	ldrh r2, [r5, r2]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02244A98
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r5, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02246544 ; =0x00010200
	mov r1, #0x26
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x3f
	bl ov83_02245D08
	b _0224662C
_022464D2:
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246544 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x4b
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246544 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x4b
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246544 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x4b
	bl ov83_022479E4
	mov r0, #0x1e
	lsl r0, r0, #4
	add r0, r5, r0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02246544 ; =0x00010200
	b _02246570
	nop
_02246538: .word 0x000005C6
_0224653C: .word 0x00050600
_02246540: .word 0x000005C7
_02246544: .word 0x00010200
_02246548: .word 0x0000054C
_0224654C: .word 0x000005D2
_02246550: .word 0x00000554
_02246554: .word 0x000005C9
_02246558: .word 0x000005CA
_0224655C: .word 0x000005D4
_02246560: .word 0x000005D6
_02246564: .word 0x000005D8
_02246568: .word 0x000005DA
_0224656C: .word 0x000005DC
_02246570:
	mov r2, #0x4a
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	lsl r3, r3, #3
	bl ov83_022479E4
	mov r0, #2
	lsl r0, r0, #8
	add r0, r5, r0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224690C ; =0x00010200
	mov r2, #0x4a
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	lsl r0, r0, #9
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	lsl r3, r3, #3
	bl ov83_022479E4
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224690C ; =0x00010200
	mov r2, #0x4a
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	lsl r3, r3, #3
	bl ov83_022479E4
	mov r0, #9
	lsl r0, r0, #6
	add r0, r5, r0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224690C ; =0x00010200
	mov r2, #0x4a
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #9
	lsl r0, r0, #6
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	lsl r3, r3, #3
	bl ov83_022479E4
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r5, r0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224690C ; =0x00010200
	mov r2, #0x4a
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	lsl r3, r3, #3
	bl ov83_022479E4
_0224662C:
	cmp r6, #1
	bne _0224664C
	mov r3, #0
	str r3, [sp]
	ldr r0, _0224690C ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x4c
	bl ov83_022479E4
	b _02246864
_0224664C:
	ldr r0, _02246910 ; =0x00000558
	ldr r0, [r5, r0]
	ldrb r0, [r0, r4]
	cmp r0, #0
	bne _02246722
	mov r0, #0
	str r0, [sp, #0x20]
_0224665A:
	ldr r0, [sp, #0x20]
	mov r2, #0x4b
	lsl r4, r0, #4
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0224690C ; =0x00010200
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	bl ov83_022479E4
	ldr r0, [r5, #0x20]
	mov r1, #0x44
	bl NewString_ReadMsgData
	add r7, r0, #0
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	lsl r0, r0, #0x17
	lsr r6, r0, #0x18
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224690C ; =0x00010200
	add r1, r7, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x27
	lsl r0, r0, #4
	add r0, r5, r0
	mov r2, #0x78
	add r3, r4, #0
	bl ov83_02247998
	add r0, r7, #0
	bl String_Delete
	ldr r0, [r5, #0x20]
	mov r1, #0x49
	bl NewString_ReadMsgData
	add r7, r0, #0
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224690C ; =0x00010200
	mov r2, #0x78
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x27
	lsl r0, r0, #4
	sub r2, r2, r6
	sub r2, r2, r3
	add r0, r5, r0
	add r1, r7, #0
	add r3, r4, #0
	bl ov83_02247998
	add r0, r7, #0
	bl String_Delete
	add r6, #0x78
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0224690C ; =0x00010200
	mov r2, #0x49
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	add r3, r6, #0
	bl ov83_022479E4
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	cmp r0, #4
	blo _0224665A
	b _02246864
_02246722:
	mov r4, #0
_02246724:
	lsl r0, r4, #1
	mov r2, #0x5e
	add r7, r5, r0
	lsl r2, r2, #4
	ldrh r2, [r7, r2]
	ldr r0, [r5, #0x24]
	add r1, r4, #0
	bl BufferMoveName
	mov r0, #0
	mov r1, #0x27
	lsl r1, r1, #4
	add r3, r4, #0
	lsl r6, r4, #4
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0224690C ; =0x00010200
	add r1, r5, r1
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r3, #0x54
	bl ov83_02245D08
	mov r0, #0x5e
	lsl r0, r0, #4
	ldrh r0, [r7, r0]
	cmp r0, #0
	bne _02246784
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0224690C ; =0x00010200
	mov r2, #0x5a
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r3, #0x78
	bl ov83_022479E4
	b _02246858
_02246784:
	ldr r0, [r5, #0x20]
	mov r1, #0x44
	bl NewString_ReadMsgData
	add r7, r0, #0
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	lsl r0, r0, #0x17
	lsr r6, r0, #0x18
	lsl r0, r4, #4
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224690C ; =0x00010200
	ldr r3, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x27
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r7, #0
	mov r2, #0x78
	bl ov83_02247998
	add r0, r7, #0
	bl String_Delete
	add r0, r5, r4
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp]
	ldr r3, [sp, #0x18]
	ldr r2, _02246914 ; =0x000005E8
	add r0, r5, #0
	ldrb r2, [r3, r2]
	mov r1, #0
	mov r3, #2
	bl ov83_02244A98
	ldr r0, [r5, #0x20]
	mov r1, #0x59
	bl NewString_ReadMsgData
	add r7, r0, #0
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, r7, #0
	bl StringExpandPlaceholders
	mov r0, #0
	ldr r1, [r5, #0x28]
	add r2, r0, #0
	bl FontID_String_GetWidth
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224690C ; =0x00010200
	mov r3, #0x78
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x27
	sub r3, r3, r6
	lsl r0, r0, #4
	sub r2, r3, r2
	ldr r1, [r5, #0x28]
	ldr r3, [sp, #0x1c]
	add r0, r5, r0
	bl ov83_02247998
	add r0, r7, #0
	bl String_Delete
	mov r0, #0
	str r0, [sp]
	ldr r3, [sp, #0x18]
	ldr r2, _02246918 ; =0x000005EC
	add r0, r5, #0
	ldrb r2, [r3, r2]
	mov r1, #0
	mov r3, #2
	bl ov83_02244A98
	add r6, #0x78
	mov r1, #0x27
	lsl r1, r1, #4
	ldr r0, [sp, #0x1c]
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _0224690C ; =0x00010200
	add r1, r5, r1
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	mov r3, #0x59
	bl ov83_02245D08
_02246858:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	bhs _02246864
	b _02246724
_02246864:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _02246884
	mov r4, #0xc
	add r5, #0x50
_0224686E:
	lsl r0, r4, #4
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x22
	bls _0224686E
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_02246884:
	mov r0, #0x11
	lsl r0, r0, #4
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x12
	lsl r0, r0, #4
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #5
	lsl r0, r0, #6
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #6
	lsl r0, r0, #6
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #7
	lsl r0, r0, #6
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x1e
	lsl r0, r0, #4
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #2
	lsl r0, r0, #8
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #9
	lsl r0, r0, #6
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x27
	lsl r0, r0, #4
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0224690C: .word 0x00010200
_02246910: .word 0x00000558
_02246914: .word 0x000005E8
_02246918: .word 0x000005EC
	thumb_func_end ov83_02246114

