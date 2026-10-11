	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E6A2C
	.extern ov68_021E6BEC
	.extern ov68_021E6BFC
	.extern ov68_021E7DA4

	.text

	.text
	thumb_func_start ov68_021E6A2C
ov68_021E6A2C: ; 0x021E6A2C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0xa
	bls _021E6A38
	b _021E6BB0
_021E6A38:
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E6A44: ; jump table
	.short _021E6A5A - _021E6A44 - 2 ; case 0
	.short _021E6A72 - _021E6A44 - 2 ; case 1
	.short _021E6A86 - _021E6A44 - 2 ; case 2
	.short _021E6A9E - _021E6A44 - 2 ; case 3
	.short _021E6ACA - _021E6A44 - 2 ; case 4
	.short _021E6AF6 - _021E6A44 - 2 ; case 5
	.short _021E6B22 - _021E6A44 - 2 ; case 6
	.short _021E6B4E - _021E6A44 - 2 ; case 7
	.short _021E6B62 - _021E6A44 - 2 ; case 8
	.short _021E6B8E - _021E6A44 - 2 ; case 9
	.short _021E6B9E - _021E6A44 - 2 ; case 10
_021E6A5A:
	ldr r0, [r4]
	ldr r0, [r0]
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	bl BufferBoxMonNickname
	b _021E6BB0
_021E6A72:
	bl ov68_021E6BEC
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #1
	bl BufferMoveName
	b _021E6BB0
_021E6A86:
	ldr r0, [r4]
	ldr r0, [r0]
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	bl BufferBoxMonNickname
	b _021E6BB0
_021E6A9E:
	ldr r0, [r4]
	ldr r0, [r0]
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	bl BufferBoxMonNickname
	add r0, r4, #0
	bl ov68_021E6BEC
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #1
	bl BufferMoveName
	b _021E6BB0
_021E6ACA:
	ldr r0, [r4]
	ldr r0, [r0]
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	bl BufferBoxMonNickname
	add r0, r4, #0
	bl ov68_021E6BEC
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #1
	bl BufferMoveName
	b _021E6BB0
_021E6AF6:
	ldr r0, [r4]
	ldr r0, [r0]
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	bl BufferBoxMonNickname
	add r0, r4, #0
	bl ov68_021E6BFC
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #1
	bl BufferMoveName
	b _021E6BB0
_021E6B22:
	ldr r0, [r4]
	ldr r0, [r0]
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	bl BufferBoxMonNickname
	add r0, r4, #0
	bl ov68_021E6BEC
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #1
	bl BufferMoveName
	b _021E6BB0
_021E6B4E:
	bl ov68_021E6BEC
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #1
	bl BufferMoveName
	b _021E6BB0
_021E6B62:
	ldr r0, [r4]
	ldr r0, [r0]
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	bl BufferBoxMonNickname
	add r0, r4, #0
	bl ov68_021E6BEC
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #1
	bl BufferMoveName
	b _021E6BB0
_021E6B8E:
	ldr r2, [r4]
	add r0, #0xfc
	ldr r0, [r0]
	ldr r2, [r2, #4]
	mov r1, #2
	bl BufferPlayersName
	b _021E6BB0
_021E6B9E:
	bl ov68_021E6BFC
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	bl BufferMoveName
_021E6BB0:
	ldr r1, [r4]
	add r0, r4, #0
	ldrb r2, [r1, #0x19]
	add r0, #0xf8
	mov r1, #0x2c
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021E6BE8 ; =ov68_021E7DA4
	lsl r2, r5, #2
	add r1, r1, r3
	ldr r0, [r0]
	ldr r1, [r2, r1]
	bl NewString_ReadMsgData
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	add r0, #0xfc
	lsl r1, r1, #8
	ldr r0, [r0]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl StringExpandPlaceholders
	add r0, r5, #0
	bl String_Delete
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E6BE8: .word ov68_021E7DA4
	thumb_func_end ov68_021E6A2C

