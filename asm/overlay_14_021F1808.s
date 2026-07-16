#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F1808.inc"
	.include "global.inc"

    .text

	thumb_func_start ov14_021F1808
ov14_021F1808: ; 0x021F1808
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0x21
	strb r1, [r2]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	ldr r2, [r4, #0x34]
	ldr r1, _021F18A8 ; =0x000088C8
	strh r0, [r2, r1]
	ldr r2, [r4, #0x34]
	add r0, r4, #0
	ldrh r1, [r2, r1]
	bl ov14_021F5FBC
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8234
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8294
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
	ldr r0, [r4, #0x34]
	ldr r1, _021F18A8 ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021F189C
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #0
	bl ov14_021F396C
	ldr r0, [r4, #0x34]
	ldr r1, _021F18A8 ; =0x000088C8
	ldrh r1, [r0, r1]
	bl ov14_021F3844
	ldr r0, [r4, #0x34]
	bl ov14_021F39D0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88BC
_021F189C:
	ldr r1, _021F18AC ; =ov14_021EA408
	add r0, r4, #0
	mov r2, #0x76
	bl ov14_021F0234
	pop {r4, pc}
	.balign 4, 0
_021F18A8: .word 0x000088C8
_021F18AC: .word ov14_021EA408
	thumb_func_end ov14_021F1808

	thumb_func_start ov14_021F18B0
ov14_021F18B0: ; 0x021F18B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r3, [r5, #0x34]
	ldr r2, _021F19E4 ; =0x000088C8
	ldrh r4, [r3, r2]
	add r2, r5, #0
	add r2, #0x21
	strb r1, [r2]
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	ldr r2, [r5, #0x34]
	ldr r1, _021F19E4 ; =0x000088C8
	strh r0, [r2, r1]
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #1
	bne _021F190E
	cmp r4, #0
	bne _021F18F2
	ldr r1, [r5, #0x34]
	ldr r0, _021F19E4 ; =0x000088C8
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _021F1900
_021F18F2:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E83F4
	b _021F1932
_021F1900:
	beq _021F1932
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	b _021F1932
_021F190E:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8234
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8294
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
_021F1932:
	ldr r2, [r5, #0x34]
	ldr r1, _021F19E4 ; =0x000088C8
	add r0, r5, #0
	ldrh r1, [r2, r1]
	bl ov14_021F5FBC
	ldr r0, [r5, #0x34]
	ldr r1, _021F19E4 ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021F198A
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #0
	bl ov14_021F396C
	ldr r0, [r5, #0x34]
	ldr r1, _021F19E4 ; =0x000088C8
	ldrh r1, [r0, r1]
	bl ov14_021F3844
	ldr r0, [r5, #0x34]
	bl ov14_021F39D0
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #1
	bl ov14_021F34C8
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88BC
	b _021F19A4
_021F198A:
	mov r1, #0xb
	bl ov14_021F2A44
	cmp r0, #1
	bne _021F19A4
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	add r0, r5, #0
	bl ov14_021F40DC
_021F19A4:
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	mov r3, #0
	bl ov14_021F2F88
	add r2, sp, #0
	mov r0, #2
	ldrsh r3, [r2, r0]
	ldr r1, [r5, #0x34]
	ldr r0, _021F19E8 ; =0x000040B8
	add r3, #8
	str r3, [r1, r0]
	mov r1, #0
	ldrsh r2, [r2, r1]
	ldr r1, [r5, #0x34]
	add r0, r0, #4
	add r2, #8
	str r2, [r1, r0]
	add r0, r5, #0
	bl ov14_021F1F24
	ldr r1, _021F19EC ; =ov14_021EA4C8
	add r0, r5, #0
	mov r2, #0x7e
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	nop
_021F19E4: .word 0x000088C8
_021F19E8: .word 0x000040B8
_021F19EC: .word ov14_021EA4C8
	thumb_func_end ov14_021F18B0

	thumb_func_start ov14_021F19F0
ov14_021F19F0: ; 0x021F19F0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0x21
	strb r1, [r2]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	ldr r2, [r4, #0x34]
	ldr r1, _021F1B38 ; =0x000088C8
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F6408
	ldr r1, [r4, #0x34]
	ldr r0, _021F1B38 ; =0x000088C8
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _021F1A78
	ldr r0, [r1, #0x2c]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021F1A4E
	add sp, #4
	mov r0, #0x82
	pop {r3, r4, pc}
_021F1A4E:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	bne _021F1A6A
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85D0
_021F1A6A:
	ldr r1, _021F1B3C ; =ov14_021E99A0
	add r0, r4, #0
	mov r2, #0x82
	bl ov14_021F0234
	add sp, #4
	pop {r3, r4, pc}
_021F1A78:
	ldr r0, _021F1B40 ; =0x000005EB
	bl PlaySE
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #2
	bl ov14_021F396C
	ldr r0, [r4, #0x34]
	ldr r1, _021F1B38 ; =0x000088C8
	ldrh r1, [r0, r1]
	bl ov14_021F3844
	ldr r0, [r4, #0x34]
	bl ov14_021F39D0
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #1
	bl ov14_021F34C8
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88BC
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	ldr r1, [r4, #0x34]
	bne _021F1ADE
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85D0
	b _021F1AF8
_021F1ADE:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021F1AF8
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
_021F1AF8:
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	mov r3, #2
	bl ov14_021F2F88
	add r2, sp, #0
	mov r0, #2
	ldrsh r3, [r2, r0]
	ldr r1, [r4, #0x34]
	ldr r0, _021F1B44 ; =0x000040B8
	add r3, #8
	str r3, [r1, r0]
	mov r1, #0
	ldrsh r2, [r2, r1]
	ldr r1, [r4, #0x34]
	add r0, r0, #4
	add r2, #8
	str r2, [r1, r0]
	add r0, r4, #0
	bl ov14_021F1F24
	ldr r1, _021F1B48 ; =ov14_021EA778
	add r0, r4, #0
	mov r2, #0x84
	bl ov14_021F0234
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021F1B38: .word 0x000088C8
_021F1B3C: .word ov14_021E99A0
_021F1B40: .word 0x000005EB
_021F1B44: .word 0x000040B8
_021F1B48: .word ov14_021EA778
	thumb_func_end ov14_021F19F0

	thumb_func_start ov14_021F1B4C
ov14_021F1B4C: ; 0x021F1B4C
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0x21
	strb r1, [r2]
	ldr r3, [r4, #0x34]
	ldr r2, _021F1BF0 ; =0x000088CA
	strh r1, [r3, r2]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	ldr r2, [r4, #0x34]
	ldr r1, _021F1BF4 ; =0x000088C8
	strh r0, [r2, r1]
	ldr r0, [r4, #0x34]
	ldrh r0, [r0, r1]
	cmp r0, #0
	bne _021F1B7C
	mov r0, #0x82
	pop {r4, pc}
_021F1B7C:
	ldr r0, _021F1BF8 ; =0x000005EB
	bl PlaySE
	ldr r1, [r4, #0x34]
	ldr r0, _021F1BFC ; =0x0000044B
	mov r2, #1
	strb r2, [r1, r0]
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #2
	bl ov14_021F39A0
	ldr r0, [r4, #0x34]
	ldr r1, _021F1BF4 ; =0x000088C8
	ldrh r1, [r0, r1]
	bl ov14_021F3844
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #1
	bl ov14_021F34C8
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88BC
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021F1BE2
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
_021F1BE2:
	ldr r1, _021F1C00 ; =ov14_021EAA04
	add r0, r4, #0
	mov r2, #0x88
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F1BF0: .word 0x000088CA
_021F1BF4: .word 0x000088C8
_021F1BF8: .word 0x000005EB
_021F1BFC: .word 0x0000044B
_021F1C00: .word ov14_021EAA04
	thumb_func_end ov14_021F1B4C

	thumb_func_start ov14_021F1C04
ov14_021F1C04: ; 0x021F1C04
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	cmp r1, #0x24
	bhs _021F1C2E
	add r0, r4, #0
	bl ov14_021E7588
	cmp r0, #1
	bne _021F1C34
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8620
	b _021F1C34
_021F1C2E:
	add r0, r4, #0
	bl ov14_021E765C
_021F1C34:
	add r0, r4, #0
	bl ov14_021F1F24
	ldr r1, _021F1C48 ; =ov14_021EAC24
	add r0, r4, #0
	mov r2, #0x86
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F1C48: .word ov14_021EAC24
	thumb_func_end ov14_021F1C04

	thumb_func_start ov14_021F1C4C
ov14_021F1C4C: ; 0x021F1C4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _021F1CD4 ; =0x0000044C
	mov r2, #0
	strb r4, [r1, r0]
	ldr r1, [r5, #0x34]
	sub r0, r0, #1
	strb r2, [r1, r0]
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0xca
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	add r2, #8
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r1, [r5, #0x34]
	ldr r0, _021F1CD4 ; =0x0000044C
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	bne _021F1CA0
	add r0, r5, #0
	bl ov14_021F1C04
	pop {r3, r4, r5, pc}
_021F1CA0:
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021E6AA0
	cmp r0, #0
	bne _021F1CBA
	add r0, r5, #0
	bl ov14_021F1C04
	pop {r3, r4, r5, pc}
_021F1CBA:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88F8
	ldr r1, _021F1CD8 ; =ov14_021EAB54
	add r0, r5, #0
	mov r2, #0x8a
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	nop
_021F1CD4: .word 0x0000044C
_021F1CD8: .word ov14_021EAB54
	thumb_func_end ov14_021F1C4C

	thumb_func_start ov14_021F1CDC
ov14_021F1CDC: ; 0x021F1CDC
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0x21
	strb r1, [r2]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	ldr r2, [r4, #0x34]
	ldr r1, _021F1D64 ; =0x000088C8
	strh r0, [r2, r1]
	ldr r2, [r4, #0x34]
	add r0, r4, #0
	ldrh r1, [r2, r1]
	bl ov14_021F5FBC
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
	ldr r0, [r4, #0x34]
	ldr r1, _021F1D64 ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021F1D58
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #1
	bl ov14_021F396C
	ldr r0, [r4, #0x34]
	ldr r1, _021F1D64 ; =0x000088C8
	ldrh r1, [r0, r1]
	bl ov14_021F3844
	ldr r0, [r4, #0x34]
	bl ov14_021F39D0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88BC
_021F1D58:
	ldr r1, _021F1D68 ; =ov14_021EA408
	add r0, r4, #0
	mov r2, #0x8c
	bl ov14_021F0234
	pop {r4, pc}
	.balign 4, 0
_021F1D64: .word 0x000088C8
_021F1D68: .word ov14_021EA408
	thumb_func_end ov14_021F1CDC

	thumb_func_start ov14_021F1D6C
ov14_021F1D6C: ; 0x021F1D6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r2, r5, #0
	add r2, #0x21
	strb r1, [r2]
	ldr r2, [r5, #0x34]
	ldr r1, _021F1EAC ; =0x000088C8
	mov r3, #0
	ldrh r4, [r2, r1]
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	mov r2, #6
	bl ov14_021E6070
	ldr r2, [r5, #0x34]
	ldr r1, _021F1EAC ; =0x000088C8
	strh r0, [r2, r1]
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #1
	bne _021F1DCA
	cmp r4, #0
	bne _021F1DAE
	ldr r1, [r5, #0x34]
	ldr r0, _021F1EAC ; =0x000088C8
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _021F1DBC
_021F1DAE:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E83F4
	b _021F1DD6
_021F1DBC:
	beq _021F1DD6
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	b _021F1DD6
_021F1DCA:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
_021F1DD6:
	ldr r2, [r5, #0x34]
	ldr r1, _021F1EAC ; =0x000088C8
	add r0, r5, #0
	ldrh r1, [r2, r1]
	bl ov14_021F5FBC
	ldr r0, [r5, #0x34]
	ldr r1, _021F1EAC ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021F1E52
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #1
	bl ov14_021F396C
	ldr r0, [r5, #0x34]
	ldr r1, _021F1EAC ; =0x000088C8
	ldrh r1, [r0, r1]
	bl ov14_021F3844
	ldr r0, [r5, #0x34]
	bl ov14_021F39D0
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #1
	bl ov14_021F34C8
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88BC
	ldr r1, [r5, #0x34]
	ldr r0, _021F1EAC ; =0x000088C8
	ldrh r0, [r1, r0]
	bl ItemIdIsMail
	cmp r0, #1
	bne _021F1E46
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #9
	bl ov14_021F6928
	b _021F1E6C
_021F1E46:
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #0xa
	bl ov14_021F6928
	b _021F1E6C
_021F1E52:
	mov r1, #0xb
	bl ov14_021F2A44
	cmp r0, #1
	bne _021F1E6C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	add r0, r5, #0
	bl ov14_021F40DC
_021F1E6C:
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	mov r3, #1
	bl ov14_021F2F88
	add r2, sp, #0
	mov r0, #2
	ldrsh r3, [r2, r0]
	ldr r1, [r5, #0x34]
	ldr r0, _021F1EB0 ; =0x000040B8
	add r3, #8
	str r3, [r1, r0]
	mov r1, #0
	ldrsh r2, [r2, r1]
	ldr r1, [r5, #0x34]
	add r0, r0, #4
	add r2, #8
	str r2, [r1, r0]
	add r0, r5, #0
	bl ov14_021F1F24
	ldr r1, _021F1EB4 ; =ov14_021EACD4
	add r0, r5, #0
	mov r2, #0x8d
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	nop
_021F1EAC: .word 0x000088C8
_021F1EB0: .word 0x000040B8
_021F1EB4: .word ov14_021EACD4
	thumb_func_end ov14_021F1D6C

	thumb_func_start ov14_021F1EB8
ov14_021F1EB8: ; 0x021F1EB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	ldr r1, _021F1F1C ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	bne _021F1EFA
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	add r2, r5, #0
	add r2, #0x21
	ldrb r1, [r5, #0x1f]
	ldrb r2, [r2]
	add r0, r5, #0
	bl ov14_021E60C0
	mov r1, #0x4c
	mov r2, #0
	bl GetBoxMonData
	cmp r0, #0
	bne _021F1EF6
	mov r0, #0x24
	str r0, [r5, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov14_021F027C
	pop {r3, r4, r5, pc}
_021F1EF6:
	mov r4, #0x7c
	b _021F1F04
_021F1EFA:
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	mov r4, #0x78
_021F1F04:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	ldr r1, _021F1F20 ; =ov14_021E9450
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F1F1C: .word 0x000088C8
_021F1F20: .word ov14_021E9450
	thumb_func_end ov14_021F1EB8

	thumb_func_start ov14_021F1F24
ov14_021F1F24: ; 0x021F1F24
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xa
	mov r1, #0x1c
	bl Heap_Alloc
	ldr r1, [r4, #0x34]
	str r0, [r1, #0xc]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F1F24

	thumb_func_start ov14_021F1F38
ov14_021F1F38: ; 0x021F1F38
	ldr r0, [r0, #0x34]
	ldr r3, _021F1F40 ; =Heap_Free
	ldr r0, [r0, #0xc]
	bx r3
	.balign 4, 0
_021F1F40: .word Heap_Free
	thumb_func_end ov14_021F1F38

	thumb_func_start ov14_021F1F44
ov14_021F1F44: ; 0x021F1F44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov14_021F7B7C
	cmp r0, #1
	bne _021F1F7E
	ldr r0, _021F2008 ; =0x000005DD
	bl PlaySE
	add r0, r5, #0
	mov r1, #1
	add r0, #0x26
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x27
	strb r1, [r0]
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r1, r5, #0
	add r1, #0x28
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0x97
	bl ov14_021F2330
	pop {r3, r4, r5, pc}
_021F1F7E:
	add r0, r5, #0
	bl ov14_021F7340
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_IsButtonInputMode
	cmp r0, #0
	bne _021F1F96
	mov r4, #1
	mvn r4, r4
_021F1F96:
	mov r1, #2
	mvn r1, r1
	cmp r4, r1
	bhi _021F1FCE
	bhs _021F1FE0
	cmp r4, #0x2a
	bhi _021F1FC4
	add r0, r4, #0
	sub r0, #0x24
	bmi _021F1FFA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F1FB6: ; jump table
	.short _021F1FF0 - _021F1FB6 - 2 ; case 0
	.short _021F1FFA - _021F1FB6 - 2 ; case 1
	.short _021F1FFA - _021F1FB6 - 2 ; case 2
	.short _021F1FFA - _021F1FB6 - 2 ; case 3
	.short _021F1FFA - _021F1FB6 - 2 ; case 4
	.short _021F1FFA - _021F1FB6 - 2 ; case 5
	.short _021F1FFA - _021F1FB6 - 2 ; case 6
_021F1FC4:
	mov r0, #3
	mvn r0, r0
	cmp r4, r0
	beq _021F2004
	b _021F1FFA
_021F1FCE:
	add r0, r1, #1
	cmp r4, r0
	bhi _021F1FD8
	beq _021F1FF0
	b _021F1FFA
_021F1FD8:
	add r0, r1, #2
	cmp r4, r0
	beq _021F2004
	b _021F1FFA
_021F1FE0:
	ldr r0, _021F200C ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #0x74
	bl ov14_021F0244
	pop {r3, r4, r5, pc}
_021F1FF0:
	add r0, r5, #0
	mov r1, #0xff
	bl ov14_021F15C8
	pop {r3, r4, r5, pc}
_021F1FFA:
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F15C8
	pop {r3, r4, r5, pc}
_021F2004:
	mov r0, #0x73
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F2008: .word 0x000005DD
_021F200C: .word 0x000005DC
	thumb_func_end ov14_021F1F44

	thumb_func_start ov14_021F2010
ov14_021F2010: ; 0x021F2010
	push {r3, lr}
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0xc]
	bl Heap_Free
	mov r0, #0x73
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2010

	thumb_func_start ov14_021F2020
ov14_021F2020: ; 0x021F2020
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	add r1, r0, #0
	str r1, [sp]
	lsl r1, r1, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0x10
	mov r2, #1
	mov r3, #0xa
	bl Bag_AddItem
	cmp r0, #1
	bne _021F20A4
	add r2, r5, #0
	add r2, #0x21
	ldrb r1, [r5, #0x1f]
	ldrb r2, [r2]
	add r0, r5, #0
	bl ov14_021E60C0
	add r4, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #0x25
	bl ov14_021F673C
	mov r0, #0
	add r1, r5, #0
	str r0, [sp]
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #6
	add r3, sp, #0
	bl ov14_021E6094
	add r0, r4, #0
	bl ov14_021E64D0
	cmp r0, #1
	bne _021F2096
	add r0, r5, #0
	add r0, #0x21
	ldrb r2, [r0]
	ldr r3, [r5, #0x34]
	ldrb r1, [r5, #0x1f]
	add r4, r3, r2
	ldr r3, _021F20BC ; =0x00004094
	add r0, r5, #0
	ldrb r3, [r4, r3]
	bl ov14_021F2ED0
_021F2096:
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	bl ov14_021E75F4
	b _021F20B2
_021F20A4:
	ldr r0, _021F20C0 ; =0x000005F3
	bl PlaySE
	add r0, r5, #0
	mov r1, #0x25
	bl ov14_021F675C
_021F20B2:
	mov r0, #0xe
	str r0, [r5, #0x30]
	mov r0, #6
	pop {r3, r4, r5, pc}
	nop
_021F20BC: .word 0x00004094
_021F20C0: .word 0x000005F3
	thumb_func_end ov14_021F2020

	thumb_func_start ov14_021F20C4
ov14_021F20C4: ; 0x021F20C4
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021F40DC
	ldr r0, [r4, #0x34]
	mov r1, #0x25
	bl ov14_021F6654
	add r0, r4, #0
	bl ov14_021E71E8
	ldr r1, [r4, #0x34]
	ldr r0, _021F20F0 ; =0x000088DC
	ldr r0, [r1, r0]
	bl ov14_021F3354
	ldr r0, [r4, #0x34]
	bl ov14_021E884C
	mov r0, #0x1a
	pop {r4, pc}
	nop
_021F20F0: .word 0x000088DC
	thumb_func_end ov14_021F20C4

	thumb_func_start ov14_021F20F4
ov14_021F20F4: ; 0x021F20F4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl Save_Bag_Get
	ldr r2, [r4, #0x34]
	ldr r1, _021F21A8 ; =0x000088C8
	mov r3, #0xa
	ldrh r1, [r2, r1]
	mov r2, #1
	bl Bag_AddItem
	cmp r0, #0
	bne _021F212A
	ldr r0, _021F21AC ; =0x000005F3
	bl PlaySE
	add r0, r4, #0
	mov r1, #6
	mov r2, #0x25
	bl ov14_021F68C0
	mov r0, #0x7a
	str r0, [r4, #0x30]
	mov r0, #6
	pop {r3, r4, r5, pc}
_021F212A:
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	mov r2, #6
	add r3, sp, #0
	bl ov14_021E6094
	add r2, r4, #0
	add r2, #0x21
	ldrb r1, [r4, #0x1f]
	ldrb r2, [r2]
	add r0, r4, #0
	bl ov14_021E60C0
	bl ov14_021E64D0
	cmp r0, #1
	bne _021F216C
	add r0, r4, #0
	add r0, #0x21
	ldrb r2, [r0]
	ldr r3, [r4, #0x34]
	ldrb r1, [r4, #0x1f]
	add r5, r3, r2
	ldr r3, _021F21B0 ; =0x00004094
	add r0, r4, #0
	ldrb r3, [r5, r3]
	bl ov14_021F2ED0
_021F216C:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov14_021E7588
	add r0, r4, #0
	bl ov14_021F40DC
	ldr r0, [r4, #0x34]
	mov r1, #0x25
	bl ov14_021F6654
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88F8
	mov r0, #0x79
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F21A8: .word 0x000088C8
_021F21AC: .word 0x000005F3
_021F21B0: .word 0x00004094
	thumb_func_end ov14_021F20F4

	thumb_func_start ov14_021F21B4
ov14_021F21B4: ; 0x021F21B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F21CC ; =0x0000060D
	bl PlaySE
	mov r0, #0xb3
	str r0, [r4, #0x30]
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F0204
	pop {r4, pc}
	.balign 4, 0
_021F21CC: .word 0x0000060D
	thumb_func_end ov14_021F21B4

	thumb_func_start ov14_021F21D0
ov14_021F21D0: ; 0x021F21D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0x25
	bl ov14_021F6654
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	ldr r0, [r4]
	ldr r0, [r0, #8]
	cmp r0, #3
	bhi _021F226A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F21FA: ; jump table
	.short _021F2202 - _021F21FA - 2 ; case 0
	.short _021F221C - _021F21FA - 2 ; case 1
	.short _021F223E - _021F21FA - 2 ; case 2
	.short _021F2254 - _021F21FA - 2 ; case 3
_021F2202:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x27
	bl ov14_021F685C
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov14_021F3488
	mov r0, #0x5b
	pop {r4, pc}
_021F221C:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x27
	bl ov14_021F685C
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov14_021F43F4
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov14_021F3488
	mov r0, #0x51
	pop {r4, pc}
_021F223E:
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov14_021F43F4
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov14_021F3488
	mov r0, #0xc
	pop {r4, pc}
_021F2254:
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov14_021F43F4
	add r0, r4, #0
	mov r1, #0x81
	mov r2, #0
	bl ov14_021F3488
	mov r0, #0x75
	pop {r4, pc}
_021F226A:
	mov r0, #0xc
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F21D0

	thumb_func_start ov14_021F2270
ov14_021F2270: ; 0x021F2270
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r2, #0
	mov r0, #0x2f
	ldr r2, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, sp, #0
	add r2, #1
	add r3, sp, #0
	add r4, r1, #0
	bl sub_02019B1C
	mov r0, #0x2f
	add r3, sp, #0
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r2, sp, #4
	add r3, #2
	bl sub_02019B44
	ldr r2, [r5, #0x34]
	ldr r0, _021F232C ; =0x000088D4
	mov r3, #1
	ldrb r1, [r2, r0]
	bic r1, r3
	mov r3, #1
	orr r1, r3
	strb r1, [r2, r0]
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl sub_02019B10
	lsl r0, r0, #0x19
	ldr r3, [r5, #0x34]
	ldr r1, _021F232C ; =0x000088D4
	mov r4, #0xfe
	ldrb r2, [r3, r1]
	lsr r0, r0, #0x18
	bic r2, r4
	orr r0, r2
	strb r0, [r3, r1]
	ldr r0, [r5, #0x34]
	add r2, r1, #1
	ldrb r3, [r0, r2]
	mov r2, #0xf
	bic r3, r2
	mov r2, #0xd
	orr r3, r2
	add r2, r1, #1
	strb r3, [r0, r2]
	ldr r0, [r5, #0x34]
	ldrb r3, [r0, r2]
	mov r2, #0xf0
	bic r3, r2
	mov r2, #0xc0
	orr r3, r2
	add r2, r1, #1
	strb r3, [r0, r2]
	ldr r3, [r5, #0x34]
	mov r2, #0
	add r0, r1, #2
	strb r2, [r3, r0]
	ldr r3, [r5, #0x34]
	add r0, r1, #3
	strb r2, [r3, r0]
	add r0, sp, #0
	mov r3, #1
	ldrsb r7, [r0, r3]
	ldr r4, [r5, #0x34]
	add r3, r1, #4
	strb r7, [r4, r3]
	ldrsb r4, [r0, r2]
	ldr r3, [r5, #0x34]
	add r2, r1, #5
	strb r4, [r3, r2]
	ldrh r4, [r0, #4]
	ldr r3, [r5, #0x34]
	add r2, r1, #6
	strb r4, [r3, r2]
	ldrh r3, [r0, #2]
	ldr r2, [r5, #0x34]
	add r0, r1, #7
	strb r3, [r2, r0]
	str r6, [r5, #0x30]
	mov r0, #8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F232C: .word 0x000088D4
	thumb_func_end ov14_021F2270

	thumb_func_start ov14_021F2330
ov14_021F2330: ; 0x021F2330
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r2, #0
	mov r0, #0x2f
	ldr r2, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, sp, #0
	add r2, #1
	add r3, sp, #0
	add r4, r1, #0
	bl sub_02019B1C
	mov r0, #0x2f
	add r3, sp, #0
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r2, sp, #4
	add r3, #2
	bl sub_02019B44
	ldr r2, [r5, #0x34]
	ldr r0, _021F23EC ; =0x000088D4
	mov r3, #1
	ldrb r1, [r2, r0]
	bic r1, r3
	mov r3, #1
	orr r1, r3
	strb r1, [r2, r0]
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl sub_02019B10
	lsl r0, r0, #0x19
	ldr r3, [r5, #0x34]
	ldr r1, _021F23EC ; =0x000088D4
	mov r4, #0xfe
	ldrb r2, [r3, r1]
	lsr r0, r0, #0x18
	bic r2, r4
	orr r0, r2
	strb r0, [r3, r1]
	ldr r0, [r5, #0x34]
	add r2, r1, #1
	ldrb r3, [r0, r2]
	mov r2, #0xf
	bic r3, r2
	mov r2, #3
	orr r3, r2
	add r2, r1, #1
	strb r3, [r0, r2]
	ldr r0, [r5, #0x34]
	ldrb r3, [r0, r2]
	mov r2, #0xf0
	bic r3, r2
	mov r2, #0x20
	orr r3, r2
	add r2, r1, #1
	strb r3, [r0, r2]
	ldr r3, [r5, #0x34]
	mov r2, #0
	add r0, r1, #2
	strb r2, [r3, r0]
	ldr r3, [r5, #0x34]
	add r0, r1, #3
	strb r2, [r3, r0]
	add r0, sp, #0
	mov r3, #1
	ldrsb r7, [r0, r3]
	ldr r4, [r5, #0x34]
	add r3, r1, #4
	strb r7, [r4, r3]
	ldrsb r4, [r0, r2]
	ldr r3, [r5, #0x34]
	add r2, r1, #5
	strb r4, [r3, r2]
	ldrh r4, [r0, #4]
	ldr r3, [r5, #0x34]
	add r2, r1, #6
	strb r4, [r3, r2]
	ldrh r3, [r0, #2]
	ldr r2, [r5, #0x34]
	add r0, r1, #7
	strb r3, [r2, r0]
	str r6, [r5, #0x30]
	mov r0, #8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F23EC: .word 0x000088D4
	thumb_func_end ov14_021F2330

	thumb_func_start ov14_021F23F0
ov14_021F23F0: ; 0x021F23F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	ldr r2, [r5, #0x34]
	ldr r0, _021F2488 ; =0x000088D4
	add r4, r1, #0
	ldrb r1, [r2, r0]
	mov r3, #1
	bic r1, r3
	mov r3, #1
	orr r1, r3
	strb r1, [r2, r0]
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	bl sub_02019B10
	lsl r0, r0, #0x19
	ldr r3, [r5, #0x34]
	ldr r1, _021F2488 ; =0x000088D4
	mov r7, #0xfe
	ldrb r2, [r3, r1]
	lsr r0, r0, #0x18
	bic r2, r7
	orr r0, r2
	strb r0, [r3, r1]
	ldr r0, [r5, #0x34]
	add r2, r1, #1
	ldrb r3, [r0, r2]
	mov r2, #0xf
	bic r3, r2
	mov r2, #3
	orr r3, r2
	add r2, r1, #1
	strb r3, [r0, r2]
	ldr r0, [r5, #0x34]
	ldrb r3, [r0, r2]
	mov r2, #0xf0
	bic r3, r2
	mov r2, #0x20
	orr r3, r2
	add r2, r1, #1
	strb r3, [r0, r2]
	ldr r3, [r5, #0x34]
	mov r0, #0
	add r2, r1, #2
	strb r0, [r3, r2]
	add r2, r1, #3
	ldr r3, [r5, #0x34]
	cmp r4, #0
	strb r0, [r3, r2]
	bne _021F2460
	mov r3, #0x10
	b _021F2462
_021F2460:
	mov r3, #0x14
_021F2462:
	ldr r2, [r5, #0x34]
	add r0, r1, #5
	strb r3, [r2, r0]
	ldr r1, [r5, #0x34]
	ldr r0, _021F248C ; =0x000088D8
	mov r2, #0x16
	strb r2, [r1, r0]
	add r1, r0, #2
	ldr r2, [r5, #0x34]
	mov r3, #9
	strb r3, [r2, r1]
	ldr r1, [r5, #0x34]
	mov r2, #4
	add r0, r0, #3
	strb r2, [r1, r0]
	str r6, [r5, #0x30]
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2488: .word 0x000088D4
_021F248C: .word 0x000088D8
	thumb_func_end ov14_021F23F0

