#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F4B90.inc"
	.include "global.inc"

    .text

	thumb_func_start ov14_021F4B90
ov14_021F4B90: ; 0x021F4B90
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r2, #0
	add r2, r3, #0
	bl ManagedSprite_SetPositionXY
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F2A18
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov14_021F2A60
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021F4B90

	thumb_func_start ov14_021F4BC0
ov14_021F4BC0: ; 0x021F4BC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x34]
	mov r1, #4
	mov r2, #0xc
	mov r3, #0x54
	bl ov14_021F4B90
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x34]
	mov r1, #5
	mov r2, #0xf4
	mov r3, #0x54
	bl ov14_021F4B90
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x34]
	mov r1, #6
	mov r2, #0x2b
	mov r3, #0x54
	bl ov14_021F4B90
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x34]
	mov r1, #7
	mov r2, #0x80
	mov r3, #0x41
	bl ov14_021F4B90
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x34]
	mov r1, #8
	mov r2, #0x80
	mov r3, #0x4d
	bl ov14_021F4B90
	mov r6, #0
	add r4, r6, #0
	mov r7, #1
_021F4C1C:
	ldr r0, [r5, #0x34]
	add r2, sp, #4
	add r1, r0, r4
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	add r1, #2
	bl ManagedSprite_GetPositionXY
	str r7, [sp]
	add r1, r6, #0
	add r3, sp, #4
	mov r2, #2
	ldrsh r2, [r3, r2]
	ldr r0, [r5, #0x34]
	add r1, #0xf
	mov r3, #0x54
	bl ov14_021F4B90
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blo _021F4C1C
	add r0, r5, #0
	bl ov14_021F49E0
	ldr r0, [r5, #0x34]
	mov r1, #7
	mov r2, #5
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	bl ov14_021F46F4
	ldr r1, [r5, #0x34]
	ldr r0, _021F4C98 ; =0x00000414
	ldr r0, [r1, r0]
	mov r1, #1
	bl TextOBJ_SetSpritesDrawFlag
	ldr r1, [r5, #0x34]
	ldr r0, _021F4C9C ; =0x00000424
	ldr r0, [r1, r0]
	mov r1, #1
	bl TextOBJ_SetSpritesDrawFlag
	ldr r1, [r5, #0x34]
	ldr r0, _021F4C98 ; =0x00000414
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_020137F0
	ldr r1, [r5, #0x34]
	ldr r0, _021F4C9C ; =0x00000424
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_020137F0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4C98: .word 0x00000414
_021F4C9C: .word 0x00000424
	thumb_func_end ov14_021F4BC0

	thumb_func_start ov14_021F4CA0
ov14_021F4CA0: ; 0x021F4CA0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #4
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	mov r1, #5
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	mov r1, #6
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	mov r1, #7
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	mov r1, #8
	mov r2, #0
	bl ov14_021F2A18
	mov r4, #0
	add r6, r4, #0
_021F4CDA:
	add r1, r4, #0
	ldr r0, [r5, #0x34]
	add r1, #0xf
	add r2, r6, #0
	bl ov14_021F2A18
	add r4, r4, #1
	cmp r4, #6
	blo _021F4CDA
	ldr r1, [r5, #0x34]
	ldr r0, _021F4D08 ; =0x00000414
	ldr r0, [r1, r0]
	mov r1, #0
	bl TextOBJ_SetSpritesDrawFlag
	ldr r1, [r5, #0x34]
	ldr r0, _021F4D0C ; =0x00000424
	ldr r0, [r1, r0]
	mov r1, #0
	bl TextOBJ_SetSpritesDrawFlag
	pop {r4, r5, r6, pc}
	nop
_021F4D08: .word 0x00000414
_021F4D0C: .word 0x00000424
	thumb_func_end ov14_021F4CA0

	thumb_func_start ov14_021F4D10
ov14_021F4D10: ; 0x021F4D10
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r4, r0, #0
	mov r0, #2
	mov r1, #0xa
	bl FontSystem_NewInit
	mov r1, #0x41
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #4
	add r5, r4, r0
	add r0, sp, #0x38
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r0, [r4, #0x14]
	add r1, sp, #0x38
	mov r2, #0xc
	bl AddTextWindowTopLeftCorner
	add r0, sp, #0x38
	mov r1, #1
	mov r2, #0xa
	bl sub_02013688
	mov r1, #1
	add r2, r1, #0
	add r3, r5, #4
	bl sub_02021AC8
	mov r0, #0x41
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	str r0, [sp, #8]
	add r0, sp, #0x38
	str r0, [sp, #0xc]
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl SpriteManager_GetSpriteList
	str r0, [sp, #0x10]
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021F4E5C ; =0x0000C101
	bl SpriteManager_FindPlttResourceProxy
	str r0, [sp, #0x14]
	mov r0, #0xc6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, [r5, #8]
	str r0, [sp, #0x1c]
	mov r0, #0x80
	str r0, [sp, #0x20]
	sub r0, #0x9c
	str r0, [sp, #0x24]
	mov r0, #4
	str r0, [sp, #0x2c]
	mov r0, #0xa
	str r0, [sp, #0x34]
	add r0, sp, #8
	str r1, [sp, #0x28]
	str r1, [sp, #0x30]
	bl sub_020135D8
	ldr r1, _021F4E60 ; =0x00000414
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_020138B0
	ldr r0, _021F4E60 ; =0x00000414
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_020138E0
	add r0, sp, #0x38
	bl RemoveWindow
	ldr r0, _021F4E64 ; =0x00000424
	add r5, r4, r0
	add r0, sp, #0x38
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r0, [r4, #0x14]
	add r1, sp, #0x38
	mov r2, #5
	bl AddTextWindowTopLeftCorner
	add r0, sp, #0x38
	mov r1, #1
	mov r2, #0xa
	bl sub_02013688
	mov r1, #1
	add r2, r1, #0
	add r3, r5, #4
	bl sub_02021AC8
	mov r0, #0x41
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	str r0, [sp, #8]
	add r0, sp, #0x38
	str r0, [sp, #0xc]
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl SpriteManager_GetSpriteList
	str r0, [sp, #0x10]
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021F4E5C ; =0x0000C101
	bl SpriteManager_FindPlttResourceProxy
	str r0, [sp, #0x14]
	mov r0, #0xc6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, [r5, #8]
	str r0, [sp, #0x1c]
	mov r0, #0x80
	str r0, [sp, #0x20]
	sub r0, #0x9c
	str r0, [sp, #0x24]
	mov r0, #4
	str r0, [sp, #0x2c]
	mov r0, #0xa
	str r0, [sp, #0x34]
	str r1, [sp, #0x28]
	str r1, [sp, #0x30]
	add r0, sp, #8
	bl sub_020135D8
	str r0, [r5]
	mov r1, #1
	bl sub_020138B0
	ldr r0, [r5]
	mov r1, #1
	bl sub_020138E0
	add r0, sp, #0x38
	bl RemoveWindow
	add sp, #0x48
	pop {r3, r4, r5, pc}
	nop
_021F4E5C: .word 0x0000C101
_021F4E60: .word 0x00000414
_021F4E64: .word 0x00000424
	thumb_func_end ov14_021F4D10

	thumb_func_start ov14_021F4E68
ov14_021F4E68: ; 0x021F4E68
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021F4E9C ; =0x00000418
	str r0, [sp]
	mov r6, #0
	add r4, r0, r1
	add r5, r0, #0
	sub r7, r1, #4
_021F4E76:
	add r0, r4, #0
	bl sub_02021B5C
	ldr r0, [r5, r7]
	bl FontOAM_Delete
	add r6, r6, #1
	add r4, #0x10
	add r5, #0x10
	cmp r6, #2
	blo _021F4E76
	mov r1, #0x41
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl sub_020135AC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4E9C: .word 0x00000418
	thumb_func_end ov14_021F4E68

	thumb_func_start ov14_021F4EA0
ov14_021F4EA0: ; 0x021F4EA0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r0, r4, #0
	mov r1, #0xa
	bl sub_02013910
	add r7, r0, #0
	lsl r0, r6, #4
	add r1, r5, r0
	ldr r0, _021F4ECC ; =0x00000414
	add r2, r4, #0
	ldr r0, [r1, r0]
	add r1, r7, #0
	mov r3, #0xa
	bl TextOBJ_CopyFromBGWindow
	add r0, r7, #0
	bl sub_02013938
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4ECC: .word 0x00000414
	thumb_func_end ov14_021F4EA0

	thumb_func_start ov14_021F4ED0
ov14_021F4ED0: ; 0x021F4ED0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #4
	mov r1, #0xa
	bl FontID_Alloc
	mov r6, #0
	ldr r4, _021F4EFC ; =ov14_021F84B4
	add r5, r6, #0
_021F4EE2:
	ldr r1, [r7, #0x34]
	add r2, r4, #0
	ldr r0, [r1, #0x14]
	add r1, #0x30
	add r1, r1, r5
	bl AddWindow
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #0x2c
	blo _021F4EE2
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4EFC: .word ov14_021F84B4
	thumb_func_end ov14_021F4ED0

	thumb_func_start ov14_021F4F00
ov14_021F4F00: ; 0x021F4F00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021F4F06:
	ldr r1, [r5, #0x34]
	lsl r0, r4, #4
	add r1, #0x30
	add r0, r1, r0
	bl RemoveWindow
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x2c
	blo _021F4F06
	mov r0, #4
	bl FontID_Release
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021F4F00

	thumb_func_start ov14_021F4F24
ov14_021F4F24: ; 0x021F4F24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x10]
	add r5, r2, #0
	add r6, r3, #0
	ldr r4, [sp, #0x28]
	cmp r0, #1
	bne _021F4F44
	add r0, r4, #0
	mov r2, #0
	bl FontID_String_GetWidth
	sub r5, r5, r0
	b _021F4F66
_021F4F44:
	cmp r0, #2
	bne _021F4F56
	add r0, r4, #0
	mov r2, #0
	bl FontID_String_GetWidth
	lsr r0, r0, #1
	sub r5, r5, r0
	b _021F4F66
_021F4F56:
	cmp r0, #3
	bne _021F4F66
	add r0, r4, #0
	mov r2, #0
	bl FontID_String_GetWidthMultiline
	lsr r0, r0, #1
	sub r5, r5, r0
_021F4F66:
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r1, r4, #0
	add r3, r5, #0
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov14_021F4F24

	thumb_func_start ov14_021F4F84
ov14_021F4F84: ; 0x021F4F84
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	add r4, r2, #0
	bl NewString_ReadMsgData
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	add r5, #0x30
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x24]
	str r0, [sp, #8]
	lsl r0, r4, #4
	add r0, r5, r0
	add r1, r6, #0
	bl ov14_021F4F24
	add r0, r6, #0
	bl String_Delete
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov14_021F4F84

	thumb_func_start ov14_021F4FBC
ov14_021F4FBC: ; 0x021F4FBC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	add r4, r2, #0
	bl NewString_ReadMsgData
	add r6, r0, #0
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, r6, #0
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x28]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x20]
	str r0, [sp, #8]
	lsl r0, r4, #4
	add r0, r1, r0
	ldr r1, [r5, #0x28]
	ldr r3, [sp, #0x24]
	bl ov14_021F4F24
	add r0, r6, #0
	bl String_Delete
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov14_021F4FBC

	thumb_func_start ov14_021F5000
ov14_021F5000: ; 0x021F5000
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r5, #0
	add r0, r2, #0
	add r6, r1, #0
	add r4, #0x30
	lsl r7, r0, #4
	add r0, r4, r7
	mov r1, #0
	str r2, [sp, #0x14]
	bl FillWindowPixelBuffer
	ldrb r0, [r6, #0x12]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021F5044
	ldr r0, [r5, #0x24]
	ldr r2, [r6]
	mov r1, #0
	bl BufferBoxMonSpeciesName
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	ldr r0, _021F5050 ; =0x00010200
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r1, [r5, #0x20]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	bl ov14_021F4FBC
_021F5044:
	add r0, r4, r7
	bl ScheduleWindowCopyToVram
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F5050: .word 0x00010200
	thumb_func_end ov14_021F5000

	thumb_func_start ov14_021F5054
ov14_021F5054: ; 0x021F5054
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r5, #0
	add r0, r2, #0
	add r7, r1, #0
	add r4, #0x30
	lsl r6, r0, #4
	add r0, r4, r6
	mov r1, #0
	str r2, [sp, #0x14]
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x24]
	ldr r2, [r7]
	mov r1, #0
	bl BufferBoxMonNickname
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _021F509C ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r5, #0x20]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	mov r3, #1
	bl ov14_021F4FBC
	add r0, r4, r6
	bl ScheduleWindowCopyToVram
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F509C: .word 0x00010200
	thumb_func_end ov14_021F5054

	thumb_func_start ov14_021F50A0
ov14_021F50A0: ; 0x021F50A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r5, #0
	add r0, r2, #0
	add r7, r1, #0
	add r4, #0x30
	lsl r6, r0, #4
	add r0, r4, r6
	mov r1, #0
	str r2, [sp, #0x14]
	bl FillWindowPixelBuffer
	ldrb r0, [r7, #0x12]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021F5104
	mov r0, #5
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	mov r1, #1
	add r2, r4, r6
	mov r3, #0
	bl sub_0200CDAC
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r2, [r7, #0x12]
	ldr r0, [r5, #0x24]
	mov r3, #3
	lsl r2, r2, #0x19
	lsr r2, r2, #0x19
	bl BufferIntegerAsString
	mov r0, #0x10
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r0, _021F5110 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r5, #0x20]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	mov r3, #0x5a
	bl ov14_021F4FBC
_021F5104:
	add r0, r4, r6
	bl ScheduleWindowCopyToVram
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F5110: .word 0x00010200
	thumb_func_end ov14_021F50A0

	thumb_func_start ov14_021F5114
ov14_021F5114: ; 0x021F5114
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r4, r6, #0
	add r0, r2, #0
	add r5, r1, #0
	add r4, #0x30
	lsl r7, r0, #4
	add r0, r4, r7
	mov r1, #0
	str r2, [sp, #0x14]
	bl FillWindowPixelBuffer
	ldrb r0, [r5, #0x12]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021F5182
	ldrb r0, [r5, #0x13]
	lsl r1, r0, #0x18
	lsr r1, r1, #0x1f
	cmp r1, #1
	bne _021F5182
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	bne _021F5162
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _021F518C ; =0x00070800
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r6, #0x20]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	mov r3, #0x52
	bl ov14_021F4F84
	b _021F5182
_021F5162:
	cmp r0, #1
	bne _021F5182
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xc1
	str r1, [sp, #8]
	lsl r0, r0, #0xa
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r6, #0x20]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	mov r3, #0x53
	bl ov14_021F4F84
_021F5182:
	add r0, r4, r7
	bl ScheduleWindowCopyToVram
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F518C: .word 0x00070800
	thumb_func_end ov14_021F5114

	thumb_func_start ov14_021F5190
ov14_021F5190: ; 0x021F5190
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r7, r2, #0
	lsl r4, r7, #4
	add r0, #0x30
	add r6, r1, #0
	add r0, r0, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	ldrb r0, [r6, #0x12]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021F5208
	ldr r0, [r5]
	ldr r0, [r0]
	bl SaveArray_IsNatDexEnabled
	ldrh r1, [r6, #4]
	bl Pokedex_ConvertToCurrentDexNo
	add r6, r0, #0
	beq _021F5208
	ldr r2, [r5, #0x34]
	mov r0, #5
	str r0, [sp]
	ldr r0, [r2, #0x1c]
	add r2, #0x30
	mov r1, #2
	add r2, r2, r4
	mov r3, #0
	bl sub_0200CDAC
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x24]
	add r2, r6, #0
	mov r3, #3
	bl BufferIntegerAsString
	ldr r0, [r5, #0x34]
	mov r1, #0x10
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r1, _021F5218 ; =0x00010200
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r1, [r0, #0x20]
	add r2, r7, #0
	mov r3, #0x5b
	bl ov14_021F4FBC
_021F5208:
	ldr r0, [r5, #0x34]
	add r0, #0x30
	add r0, r0, r4
	bl ScheduleWindowCopyToVram
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021F5218: .word 0x00010200
	thumb_func_end ov14_021F5190

	thumb_func_start ov14_021F521C
ov14_021F521C: ; 0x021F521C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r5, #0
	add r0, r2, #0
	add r6, r1, #0
	add r4, #0x30
	lsl r7, r0, #4
	add r0, r4, r7
	mov r1, #0
	str r2, [sp, #0x14]
	bl FillWindowPixelBuffer
	ldrb r0, [r6, #0x12]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021F5264
	ldrb r2, [r6, #0xf]
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferNatureName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _021F5288 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r5, #0x20]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	mov r3, #0x55
	bl ov14_021F4FBC
	b _021F527E
_021F5264:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _021F5288 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r5, #0x20]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	mov r3, #0x5d
	bl ov14_021F4F84
_021F527E:
	add r0, r4, r7
	bl ScheduleWindowCopyToVram
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F5288: .word 0x00010200
	thumb_func_end ov14_021F521C

	thumb_func_start ov14_021F528C
ov14_021F528C: ; 0x021F528C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r5, #0
	add r0, r2, #0
	add r6, r1, #0
	add r4, #0x30
	lsl r7, r0, #4
	add r0, r4, r7
	mov r1, #0
	str r2, [sp, #0x14]
	bl FillWindowPixelBuffer
	ldrb r0, [r6, #0x12]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021F52D4
	ldrb r2, [r6, #0xe]
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferAbilityName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _021F52F8 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r5, #0x20]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	mov r3, #0x54
	bl ov14_021F4FBC
	b _021F52EE
_021F52D4:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _021F52F8 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r5, #0x20]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	mov r3, #0x5d
	bl ov14_021F4F84
_021F52EE:
	add r0, r4, r7
	bl ScheduleWindowCopyToVram
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F52F8: .word 0x00010200
	thumb_func_end ov14_021F528C

	thumb_func_start ov14_021F52FC
ov14_021F52FC: ; 0x021F52FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r5, #0
	add r0, r2, #0
	add r7, r1, #0
	add r4, #0x30
	lsl r6, r0, #4
	add r0, r4, r6
	mov r1, #0
	str r2, [sp, #0x14]
	bl FillWindowPixelBuffer
	ldrh r2, [r7, #6]
	cmp r2, #0
	beq _021F5340
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferItemName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _021F5364 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r5, #0x20]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	mov r3, #0x56
	bl ov14_021F4FBC
	b _021F535A
_021F5340:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _021F5364 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r5, #0x20]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	mov r3, #0x5c
	bl ov14_021F4F84
_021F535A:
	add r0, r4, r6
	bl ScheduleWindowCopyToVram
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F5364: .word 0x00010200
	thumb_func_end ov14_021F52FC

	thumb_func_start ov14_021F5368
ov14_021F5368: ; 0x021F5368
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	mov r2, #0
	add r4, r1, #0
	bl ov14_021F5000
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	mov r2, #1
	bl ov14_021F5054
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	mov r2, #2
	bl ov14_021F50A0
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	mov r2, #4
	bl ov14_021F5114
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #5
	bl ov14_021F5190
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	mov r2, #6
	bl ov14_021F521C
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	mov r2, #7
	bl ov14_021F528C
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	mov r2, #8
	bl ov14_021F52FC
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021F5368

	thumb_func_start ov14_021F53C0
ov14_021F53C0: ; 0x021F53C0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x30
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	add r0, #0x40
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	add r0, #0x50
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	add r0, #0x70
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	add r0, #0x80
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	add r0, #0x90
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	add r0, #0xa0
	bl ClearWindowTilemapAndScheduleTransfer
	add r4, #0xb0
	add r0, r4, #0
	bl ClearWindowTilemapAndScheduleTransfer
	pop {r4, pc}
	thumb_func_end ov14_021F53C0

	thumb_func_start ov14_021F5404
ov14_021F5404: ; 0x021F5404
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r6, r0, #0
	ldr r3, [r6, #0x34]
	ldr r0, _021F5558 ; =0x0000044E
	str r1, [sp, #0x1c]
	ldrb r0, [r3, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bne _021F541E
	mov r0, #9
	str r0, [sp, #0x20]
	b _021F5422
_021F541E:
	mov r0, #0xd
	str r0, [sp, #0x20]
_021F5422:
	ldr r0, _021F5558 ; =0x0000044E
	mov r2, #0xf
	ldrb r4, [r3, r0]
	add r1, r4, #0
	bic r1, r2
	lsl r2, r4, #0x1c
	lsr r4, r2, #0x1c
	mov r2, #1
	eor r4, r2
	lsl r4, r4, #0x18
	lsr r5, r4, #0x18
	mov r4, #0xf
	and r4, r5
	orr r1, r4
	strb r1, [r3, r0]
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0x13
	mov r1, #6
	add r3, sp, #0x3c
	bl GfGfxLoader_GetCharData
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x3c]
	ldr r2, _021F555C ; =0x000002EE
	ldr r0, [r0, #0x14]
	mov r1, #0x1b
	str r0, [sp, #0x30]
	mov r0, #0
	mov r3, #0xa
	bl NewMsgDataFromNarc
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0, #0x12]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021F553A
	mov r0, #0
	str r0, [sp, #0x28]
_021F5472:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x28]
	mov r4, #0
	add r0, r1, r0
	str r0, [sp, #0x24]
	lsl r7, r0, #4
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x38]
	add r0, #0x20
	str r0, [sp, #0x38]
_021F5486:
	mov r0, #8
	str r0, [sp]
	lsl r5, r4, #3
	str r0, [sp, #4]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0xff
	str r0, [sp, #0x18]
	ldr r0, [r6, #0x34]
	mov r1, #0x16
	add r0, #0x30
	ldr r2, [sp, #0x30]
	lsl r1, r1, #4
	add r1, r2, r1
	mov r2, #0
	add r0, r0, r7
	add r3, r2, #0
	bl BlitBitmapRect
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #0xff
	str r0, [sp, #0x18]
	ldr r0, [r6, #0x34]
	mov r2, #0
	add r0, #0x30
	ldr r1, [sp, #0x38]
	add r0, r0, r7
	add r3, r2, #0
	bl BlitBitmapRect
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xb
	blo _021F5486
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _021F5560 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r3, [sp, #0x28]
	ldr r0, [r6, #0x34]
	lsl r4, r3, #1
	ldr r3, [sp, #0x1c]
	ldr r1, [sp, #0x2c]
	add r3, r3, r4
	ldrh r3, [r3, #0x14]
	ldr r2, [sp, #0x24]
	bl ov14_021F4F84
	ldr r1, [r6, #0x34]
	ldr r0, [sp, #0x24]
	add r1, #0x30
	lsl r0, r0, #4
	add r0, r1, r0
	bl CopyWindowPixelsToVram_TextMode
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x28]
	cmp r0, #4
	blo _021F5472
	ldr r3, [r6, #0x34]
	ldr r1, _021F5558 ; =0x0000044E
	mov r0, #0x70
	ldrb r2, [r3, r1]
	bic r2, r0
	mov r0, #0x10
	orr r0, r2
	strb r0, [r3, r1]
	b _021F5546
_021F553A:
	ldr r3, [r6, #0x34]
	ldr r1, _021F5558 ; =0x0000044E
	mov r0, #0x70
	ldrb r2, [r3, r1]
	bic r2, r0
	strb r2, [r3, r1]
_021F5546:
	ldr r0, [sp, #0x2c]
	bl DestroyMsgData
	ldr r0, [sp, #0x34]
	bl Heap_Free
	ldr r0, [sp, #0x20]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F5558: .word 0x0000044E
_021F555C: .word 0x000002EE
_021F5560: .word 0x00010200
	thumb_func_end ov14_021F5404

	thumb_func_start ov14_021F5564
ov14_021F5564: ; 0x021F5564
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #0xc]
	add r6, r0, #0
	ldr r0, [r6, #0x34]
	ldr r1, _021F5618 ; =0x0000044E
	ldrb r1, [r0, r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bne _021F557C
	mov r7, #0x14
	b _021F557E
_021F557C:
	mov r7, #0x16
_021F557E:
	ldr r1, _021F5618 ; =0x0000044E
	add r5, r0, #0
	ldrb r2, [r0, r1]
	mov r1, #0xf
	add r5, #0x30
	add r3, r2, #0
	bic r3, r1
	lsl r1, r2, #0x1c
	lsr r2, r1, #0x1c
	mov r1, #1
	eor r1, r2
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0xf
	and r1, r2
	add r2, r3, #0
	orr r2, r1
	ldr r1, _021F5618 ; =0x0000044E
	lsl r4, r7, #4
	strb r2, [r0, r1]
	add r0, r5, r4
	mov r1, #0xd
	bl FillWindowPixelBuffer
	add r0, r5, r4
	add r0, #0x10
	mov r1, #0xd
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _021F5612
	ldr r0, [r6, #0x34]
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #0x28]
	mov r2, #0xa
	bl GetItemNameIntoString
	mov r2, #0
	ldr r0, _021F561C ; =0x00010200
	str r2, [sp]
	str r0, [sp, #4]
	str r2, [sp, #8]
	ldr r1, [r6, #0x34]
	add r0, r5, r4
	ldr r1, [r1, #0x28]
	add r3, r2, #0
	bl ov14_021F4F24
	add r0, r5, r4
	bl CopyWindowPixelsToVram_TextMode
	ldr r0, [r6, #0x34]
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #0x28]
	mov r2, #0xa
	bl GetItemDescIntoString
	mov r2, #0
	ldr r0, _021F561C ; =0x00010200
	str r2, [sp]
	str r0, [sp, #4]
	str r2, [sp, #8]
	ldr r1, [r6, #0x34]
	add r0, r5, r4
	ldr r1, [r1, #0x28]
	add r0, #0x10
	add r3, r2, #0
	bl ov14_021F4F24
	add r0, r5, r4
	add r0, #0x10
	bl CopyWindowPixelsToVram_TextMode
_021F5612:
	add r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F5618: .word 0x0000044E
_021F561C: .word 0x00010200
	thumb_func_end ov14_021F5564

	thumb_func_start ov14_021F5620
ov14_021F5620: ; 0x021F5620
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl ov14_021F6628
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #0
	add r0, #0x60
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, _021F5668 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r3, [r5]
	ldr r0, [r5, #0x34]
	ldr r3, [r3, #8]
	add r1, r4, #0
	mov r2, #3
	add r3, #0x32
	bl ov14_021F4F84
	add r0, r4, #0
	bl DestroyMsgData
	ldr r0, [r5, #0x34]
	add r0, #0x60
	bl CopyWindowToVram
	add sp, #0x14
	pop {r4, r5, pc}
	.balign 4, 0
_021F5668: .word 0x00010200
	thumb_func_end ov14_021F5620

	thumb_func_start ov14_021F566C
ov14_021F566C: ; 0x021F566C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #5
	ldr r1, [r4, #0x34]
	lsl r0, r0, #6
	add r0, r1, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x15
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x16
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r4, #0x34]
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r1, _021F5714 ; =0x00010200
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r1, [r0, #0x20]
	mov r2, #0x11
	mov r3, #0x57
	bl ov14_021F4F84
	ldr r0, [r4, #0x34]
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r1, _021F5714 ; =0x00010200
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r1, [r0, #0x20]
	mov r2, #0x12
	mov r3, #0x58
	bl ov14_021F4F84
	ldr r0, [r4, #0x34]
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r1, _021F5714 ; =0x00010200
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r1, [r0, #0x20]
	mov r2, #0x13
	mov r3, #0x59
	bl ov14_021F4F84
	mov r0, #5
	ldr r1, [r4, #0x34]
	lsl r0, r0, #6
	add r0, r1, r0
	bl CopyWindowToVram
	mov r0, #0x15
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	add r0, r1, r0
	bl CopyWindowToVram
	mov r0, #0x16
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	add r0, r1, r0
	bl CopyWindowToVram
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_021F5714: .word 0x00010200
	thumb_func_end ov14_021F566C

	thumb_func_start ov14_021F5718
ov14_021F5718: ; 0x021F5718
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	str r1, [sp, #0x14]
	add r5, r3, #0
	mov r0, #0xa
	mov r1, #0x10
	add r7, r2, #0
	bl Heap_AllocAtEnd
	add r4, r0, #0
	mov r3, #0
	lsl r0, r5, #0x18
	str r3, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsl r0, r7, #0x10
	str r3, [sp, #0xc]
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x34]
	mov r2, #3
	ldr r0, [r0, #0x14]
	bl AddWindowParameterized
	ldr r2, [sp, #0x30]
	ldr r0, [sp, #0x14]
	mul r2, r5
	ldr r1, [r4, #0xc]
	lsl r2, r2, #5
	bl MIi_CpuCopy32
	mov r0, #0x14
	mov r1, #0xa
	bl String_New
	add r7, r0, #0
	ldrb r1, [r6, #0x1f]
	ldr r0, [r6, #4]
	add r2, r7, #0
	bl PCStorage_GetBoxName
	mov r0, #0
	ldr r3, [sp, #0x30]
	str r0, [sp]
	ldr r0, _021F57B4 ; =0x00020100
	lsl r3, r3, #3
	str r0, [sp, #4]
	mov r0, #2
	lsl r2, r5, #3
	lsr r3, r3, #1
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r7, #0
	lsr r2, r2, #1
	sub r3, #8
	bl ov14_021F4F24
	add r0, r7, #0
	bl String_Delete
	add r0, r4, #0
	bl CopyWindowPixelsToVram_TextMode
	add r0, r4, #0
	bl RemoveWindow
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F57B4: .word 0x00020100
	thumb_func_end ov14_021F5718

	thumb_func_start ov14_021F57B8
ov14_021F57B8: ; 0x021F57B8
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r0, sp, #0xc
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x34]
	add r1, sp, #0xc
	ldr r0, [r0, #0x14]
	mov r2, #0xc
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	mov r0, #0x14
	mov r1, #0xa
	bl String_New
	add r5, r0, #0
	add r1, r4, #0
	add r1, #0x25
	ldrb r1, [r1]
	ldr r0, [r4, #4]
	add r2, r5, #0
	bl PCStorage_GetBoxName
	mov r3, #0
	ldr r0, _021F58B4 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, sp, #0xc
	add r1, r5, #0
	mov r2, #0x30
	bl ov14_021F4F24
	add r0, r5, #0
	bl String_Delete
	ldr r0, [r4, #0x34]
	add r1, sp, #0xc
	mov r2, #0
	bl ov14_021F4EA0
	add r0, sp, #0xc
	bl RemoveWindow
	add r0, sp, #0xc
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x34]
	add r1, sp, #0xc
	ldr r0, [r0, #0x14]
	mov r2, #5
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	ldr r0, [r4, #0x34]
	mov r1, #0x18
	ldr r0, [r0, #0x20]
	bl NewString_ReadMsgData
	add r1, r4, #0
	add r1, #0x25
	add r5, r0, #0
	ldrb r1, [r1]
	ldr r0, [r4, #4]
	bl PCStorage_CountMonsAndEggsInBox
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x34]
	mov r3, #2
	ldr r0, [r0, #0x24]
	bl BufferIntegerAsString
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r4, #0x34]
	mov r2, #0x1e
	ldr r0, [r0, #0x24]
	mov r3, #2
	bl BufferIntegerAsString
	ldr r1, [r4, #0x34]
	add r2, r5, #0
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	bl StringExpandPlaceholders
	mov r3, #0
	ldr r0, _021F58B4 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r1, [r4, #0x34]
	add r0, sp, #0xc
	ldr r1, [r1, #0x28]
	mov r2, #0x14
	bl ov14_021F4F24
	add r0, r5, #0
	bl String_Delete
	ldr r0, [r4, #0x34]
	add r1, sp, #0xc
	mov r2, #1
	bl ov14_021F4EA0
	add r0, sp, #0xc
	bl RemoveWindow
	add sp, #0x1c
	pop {r4, r5, pc}
	.balign 4, 0
_021F58B4: .word 0x00010200
	thumb_func_end ov14_021F57B8


    .rodata

ov14_021F84B4: ; 0x021F84B4
	.byte 0x04, 0x08, 0x05, 0x08, 0x02, 0x0F, 0x69, 0x00, 0x04, 0x01, 0x07, 0x08
	.byte 0x02, 0x0F, 0x79, 0x00, 0x04, 0x04, 0x09, 0x06, 0x02, 0x0F, 0x89, 0x00, 0x04, 0x01, 0x00, 0x1E
	.byte 0x03, 0x0F, 0x0F, 0x00, 0x04, 0x10, 0x05, 0x02, 0x02, 0x0F, 0x95, 0x00, 0x04, 0x01, 0x05, 0x06
	.byte 0x02, 0x0F, 0x99, 0x00, 0x04, 0x01, 0x0D, 0x08, 0x02, 0x0F, 0xA5, 0x00, 0x04, 0x01, 0x11, 0x0B
	.byte 0x02, 0x0F, 0xB5, 0x00, 0x04, 0x01, 0x15, 0x0C, 0x02, 0x0F, 0xCB, 0x00, 0x06, 0x01, 0x01, 0x0B
	.byte 0x02, 0x01, 0xEA, 0x03, 0x06, 0x01, 0x03, 0x0B, 0x02, 0x01, 0xD4, 0x03, 0x06, 0x01, 0x05, 0x0B
	.byte 0x02, 0x01, 0xBE, 0x03, 0x06, 0x01, 0x07, 0x0B, 0x02, 0x01, 0xA8, 0x03, 0x06, 0x01, 0x01, 0x0B
	.byte 0x02, 0x01, 0x92, 0x03, 0x06, 0x01, 0x03, 0x0B, 0x02, 0x01, 0x7C, 0x03, 0x06, 0x01, 0x05, 0x0B
	.byte 0x02, 0x01, 0x66, 0x03, 0x06, 0x01, 0x07, 0x0B, 0x02, 0x01, 0x50, 0x03, 0x04, 0x01, 0x0B, 0x08
	.byte 0x02, 0x0F, 0xE3, 0x00, 0x04, 0x01, 0x0F, 0x0B, 0x02, 0x0F, 0xF3, 0x00, 0x04, 0x01, 0x13, 0x0C
	.byte 0x02, 0x0F, 0x09, 0x01, 0x06, 0x01, 0x01, 0x0C, 0x02, 0x01, 0xE8, 0x03, 0x06, 0x04, 0x03, 0x1B
	.byte 0x06, 0x01, 0x2E, 0x03, 0x06, 0x01, 0x01, 0x0C, 0x02, 0x01, 0xD0, 0x03, 0x06, 0x04, 0x03, 0x1B
	.byte 0x06, 0x01, 0x8C, 0x02, 0x01, 0x00, 0x00, 0x0B, 0x03, 0x0C, 0xC7, 0x03, 0x01, 0x00, 0x00, 0x0B
	.byte 0x03, 0x02, 0xA6, 0x03, 0x01, 0x00, 0x00, 0x08, 0x03, 0x0C, 0x8E, 0x03, 0x01, 0x00, 0x00, 0x08
	.byte 0x03, 0x0C, 0x8E, 0x03, 0x01, 0x00, 0x00, 0x08, 0x03, 0x0C, 0x76, 0x03, 0x00, 0x00, 0x00, 0x0B
	.byte 0x03, 0x0C, 0x6D, 0x03, 0x00, 0x00, 0x00, 0x0B, 0x03, 0x0C, 0x4C, 0x03, 0x00, 0x00, 0x00, 0x0B
	.byte 0x03, 0x0C, 0x2B, 0x03, 0x00, 0x00, 0x00, 0x0B, 0x03, 0x0C, 0x0A, 0x03, 0x00, 0x00, 0x00, 0x0B
	.byte 0x03, 0x0C, 0xE9, 0x02, 0x00, 0x02, 0x0B, 0x07, 0x02, 0x01, 0x80, 0x03, 0x00, 0x02, 0x0F, 0x07
	.byte 0x02, 0x01, 0x72, 0x03, 0x01, 0x02, 0x0F, 0x07, 0x02, 0x01, 0x68, 0x03, 0x00, 0x02, 0x15, 0x1B
	.byte 0x02, 0x0B, 0xB3, 0x02, 0x00, 0x02, 0x01, 0x1B, 0x02, 0x0B, 0xB3, 0x02, 0x00, 0x02, 0x15, 0x13
	.byte 0x02, 0x0B, 0xB3, 0x02, 0x00, 0x02, 0x15, 0x1B, 0x02, 0x0B, 0x7D, 0x02, 0x00, 0x16, 0x10, 0x09
	.byte 0x04, 0x0C, 0x59, 0x02, 0x01, 0x00, 0x00, 0x11, 0x03, 0x0C, 0x35, 0x03, 0x01, 0x00, 0x00, 0x11
	.byte 0x03, 0x02, 0x02, 0x03

