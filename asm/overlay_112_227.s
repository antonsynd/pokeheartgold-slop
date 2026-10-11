#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EDF4C
	.public ov112_021EDFE8
	.public ov112_021EE044
	.extern ov112_021E7464
	.extern ov112_021EA08C
	.extern ov112_021EAAE4
	.extern ov112_021ED610
	.extern ov112_021ED640
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EDF4C
ov112_021EDF4C: ; 0x021EDF4C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0xc
	mov r1, #0x9a
	bl String_New
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	mov r1, #2
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, [r5, #0x18]
	mov r1, #2
	bl BgCommitTilemapBufferToVram
	add r0, r5, #0
	bl ov112_021ED610
	cmp r0, #0
	beq _021EDFB8
	ldr r1, _021EDFD8 ; =0x00009D54
	add r0, r4, #0
	add r1, r5, r1
	mov r2, #0xc
	bl CopyU16ArrayToStringN
	mov r1, #1
	str r1, [sp]
	ldr r3, _021EDFDC ; =0x00009D51
	str r1, [sp, #4]
	ldrb r3, [r5, r3]
	ldr r0, _021EDFE0 ; =0x0001E448
	add r2, r4, #0
	lsl r3, r3, #0x19
	ldr r0, [r5, r0]
	lsr r3, r3, #0x1e
	bl BufferString
	add r0, r5, #0
	mov r1, #2
	mov r2, #0x1b
	bl ov112_021EA08C
	b _021EDFC2
_021EDFB8:
	add r0, r5, #0
	mov r1, #2
	mov r2, #0x20
	bl ov112_021EA08C
_021EDFC2:
	ldr r1, _021EDFE4 ; =0x0001E524
	str r0, [r5, r1]
	bl ov112_021E7464
	add r0, r4, #0
	bl String_Delete
	mov r0, #0x26
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021EDFD8: .word 0x00009D54
_021EDFDC: .word 0x00009D51
_021EDFE0: .word 0x0001E448
_021EDFE4: .word 0x0001E524
	thumb_func_end ov112_021EDF4C

	thumb_func_start ov112_021EDFE8
ov112_021EDFE8: ; 0x021EDFE8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x9a
	mov r6, #1
	bl AllocMonZeroed
	add r4, r0, #0
	ldr r0, _021EE03C ; =0x0001E440
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl Pokewalker_TryGetBoxMon
	cmp r0, #0
	bne _021EE006
	mov r6, #0
_021EE006:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	ldr r1, _021EE040 ; =0x00009D44
	ldrh r2, [r5, r1]
	cmp r2, r7
	bne _021EE030
	add r1, #0xd
	ldrb r1, [r5, r1]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	cmp r1, r0
	beq _021EE032
_021EE030:
	mov r6, #0
_021EE032:
	add r0, r4, #0
	bl Heap_Free
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE03C: .word 0x0001E440
_021EE040: .word 0x00009D44
	thumb_func_end ov112_021EDFE8

	thumb_func_start ov112_021EE044
ov112_021EE044: ; 0x021EE044
	push {r4, lr}
	ldr r1, _021EE0E0 ; =0x0001F2C0
	add r4, r0, #0
	add r1, r4, r1
	bl ov112_021EAAE4
	ldr r0, _021EE0E4 ; =0x0001E524
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _021EE0DC
	bl IsFanfarePlaying
	cmp r0, #0
	bne _021EE0DC
	add r0, r4, #0
	bl ov112_021ED610
	cmp r0, #0
	bne _021EE088
	ldr r1, _021EE0E8 ; =0x00009D44
	mov r0, #0
	add r1, r4, r1
	mov r2, #0x10
	bl MIi_CpuClearFast
	ldr r1, _021EE0EC ; =0x000010E7
	mov r0, #4
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
_021EE088:
	add r0, r4, #0
	bl ov112_021ED640
	cmp r0, #0
	bne _021EE0AC
	mov r1, #0xad
	lsl r1, r1, #8
	mov r2, #0xbf
	mov r0, #0
	add r1, r4, r1
	lsl r2, r2, #2
	bl MIi_CpuClearFast
	ldr r1, _021EE0F0 ; =0x0000AABC
	mov r0, #0x20
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
_021EE0AC:
	add r0, r4, #0
	bl ov112_021EDFE8
	cmp r0, #0
	bne _021EE0D0
	ldr r0, _021EE0F0 ; =0x0000AABC
	ldrb r0, [r4, r0]
	lsl r1, r0, #0x1a
	lsr r1, r1, #0x1f
	bne _021EE0D0
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bne _021EE0D0
	ldr r0, _021EE0EC ; =0x000010E7
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021EE0D8
_021EE0D0:
	mov r0, #6
	str r0, [r4, #4]
	mov r0, #0x42
	pop {r4, pc}
_021EE0D8:
	mov r0, #0x27
	pop {r4, pc}
_021EE0DC:
	mov r0, #0x26
	pop {r4, pc}
	.balign 4, 0
_021EE0E0: .word 0x0001F2C0
_021EE0E4: .word 0x0001E524
_021EE0E8: .word 0x00009D44
_021EE0EC: .word 0x000010E7
_021EE0F0: .word 0x0000AABC
	thumb_func_end ov112_021EE044

