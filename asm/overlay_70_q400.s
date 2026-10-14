#include "config.h"
#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0224190C
	.public ov70_02241DB4
	.extern ov70_02245D60
	.extern ov70_02245D6E
	.extern ov70_02245D96
	.extern ov70_02245DA2
	.extern ov70_02245E0E
	.extern ov70_02245E10

	.text

	.text
	thumb_func_start ov70_0224190C
ov70_0224190C: ; 0x0224190C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r0, #0
	cmp r1, #6
	bls _02241918
	b _02241DAA
_02241918:
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02241924: ; jump table
	.short _02241A58 - _02241924 - 2 ; case 0
	.short _02241C60 - _02241924 - 2 ; case 1
	.short _02241D00 - _02241924 - 2 ; case 2
	.short _02241BB2 - _02241924 - 2 ; case 3
	.short _02241932 - _02241924 - 2 ; case 4
	.short _022419B2 - _02241924 - 2 ; case 5
	.short _02241B06 - _02241924 - 2 ; case 6
_02241932:
	mov r0, #0
	ldr r6, _02241C68 ; =ov70_02245E0E
	str r0, [sp, #0x28]
	mov r7, #0x30
	add r5, r0, #0
_0224193C:
	ldrb r0, [r6, #1]
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldrb r3, [r6]
	ldr r0, [r4]
	add r1, r1, r5
	lsr r2, r2, #0x18
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, r0, r5
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x28]
	add r7, r7, #6
	add r0, r0, #1
	add r6, r6, #2
	add r5, #0x10
	str r0, [sp, #0x28]
	cmp r0, #9
	blt _0224193C
	mov r0, #0x11
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, _02241C6C ; =0x0000012F
	mov r3, #9
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldr r0, [r4]
	add r1, #0xe0
	lsr r2, r2, #0x18
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, #0xe0
	bl FillWindowPixelBuffer
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_022419B2:
	mov r1, #2
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r3, #1
	str r3, [sp, #0xc]
	mov r0, #0x30
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r0, [r4]
	lsl r2, r2, #0x18
	ldr r1, [r4, #4]
	lsr r2, r2, #0x18
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	bl FillWindowPixelBuffer
	ldr r6, _02241C70 ; =ov70_02245E10
	mov r7, #1
	mov r5, #0x10
_022419E0:
	sub r0, r6, #1
	ldrb r0, [r0]
	sub r3, r6, #2
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	sub r0, r7, #1
	lsl r0, r0, #2
	add r0, #0x36
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldrb r3, [r3]
	ldr r0, [r4]
	add r1, r1, r5
	lsr r2, r2, #0x18
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, r0, r5
	bl FillWindowPixelBuffer
	add r7, r7, #1
	add r6, r6, #2
	add r5, #0x10
	cmp r7, #4
	blt _022419E0
	mov r0, #0x11
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, _02241C6C ; =0x0000012F
	mov r3, #9
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldr r0, [r4]
	add r1, #0xe0
	lsr r2, r2, #0x18
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, #0xe0
	bl FillWindowPixelBuffer
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_02241A58:
	mov r0, #0
	ldr r6, _02241C74 ; =ov70_02245DA2
	str r0, [sp, #0x14]
	mov r7, #0x30
	add r5, r0, #0
_02241A62:
	ldrb r0, [r6, #1]
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldrb r3, [r6]
	ldr r0, [r4]
	add r1, r1, r5
	lsr r2, r2, #0x18
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, r0, r5
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x14]
	add r7, #0x10
	add r0, r0, #1
	add r6, r6, #3
	add r5, #0x10
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _02241A62
	mov r0, #0xe
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x70
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldr r0, [r4]
	add r1, #0x40
	lsr r2, r2, #0x18
	mov r3, #6
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, #0x40
	bl FillWindowPixelBuffer
	mov r0, #0x11
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, _02241C6C ; =0x0000012F
	mov r3, #9
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldr r0, [r4]
	add r1, #0xe0
	lsr r2, r2, #0x18
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, #0xe0
	bl FillWindowPixelBuffer
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_02241B06:
	mov r0, #0
	ldr r6, _02241C68 ; =ov70_02245E0E
	str r0, [sp, #0x18]
	mov r7, #0x30
	add r5, r0, #0
_02241B10:
	ldrb r0, [r6, #1]
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldrb r3, [r6]
	ldr r0, [r4]
	add r1, r1, r5
	lsr r2, r2, #0x18
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, r0, r5
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x18]
	add r7, r7, #6
	add r0, r0, #1
	add r6, r6, #2
	add r5, #0x10
	str r0, [sp, #0x18]
	cmp r0, #9
	blt _02241B10
	mov r0, #0x11
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, _02241C6C ; =0x0000012F
	mov r3, #9
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldr r0, [r4]
	add r1, #0xe0
	lsr r2, r2, #0x18
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, #0xe0
	bl FillWindowPixelBuffer
	mov r3, #2
	str r3, [sp]
	mov r0, #9
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x66
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldr r0, [r4]
	add r1, #0xf0
	lsr r2, r2, #0x18
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, #0xf0
	bl FillWindowPixelBuffer
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_02241BB2:
	mov r0, #0
	ldr r6, _02241C78 ; =ov70_02245D96
	str r0, [sp, #0x1c]
	mov r7, #0x30
	add r5, r0, #0
_02241BBC:
	ldrb r0, [r6, #1]
	str r0, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldrb r3, [r6]
	ldr r0, [r4]
	add r1, r1, r5
	lsr r2, r2, #0x18
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, r0, r5
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x1c]
	add r7, #0x2e
	add r0, r0, #1
	add r6, r6, #2
	add r5, #0x10
	str r0, [sp, #0x1c]
	cmp r0, #5
	blt _02241BBC
	mov r0, #0x10
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _02241C7C ; =0x00000116
	mov r3, #0xd
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldr r0, [r4]
	add r1, #0x50
	lsr r2, r2, #0x18
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, #0x50
	bl FillWindowPixelBuffer
	mov r0, #0x11
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, _02241C6C ; =0x0000012F
	mov r3, #0x18
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldr r0, [r4]
	add r1, #0xe0
	lsr r2, r2, #0x18
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, #0xe0
	bl FillWindowPixelBuffer
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_02241C60:
	mov r0, #0
	ldr r6, _02241C80 ; =ov70_02245D60
	b _02241C84
	nop
_02241C68: .word ov70_02245E0E
_02241C6C: .word 0x0000012F
_02241C70: .word ov70_02245E10
_02241C74: .word ov70_02245DA2
_02241C78: .word ov70_02245D96
_02241C7C: .word 0x00000116
_02241C80: .word ov70_02245D60
_02241C84:
	str r0, [sp, #0x20]
	mov r7, #0x30
	add r5, r0, #0
_02241C8A:
	ldrb r0, [r6, #1]
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldrb r3, [r6]
	ldr r0, [r4]
	add r1, r1, r5
	lsr r2, r2, #0x18
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, r0, r5
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x20]
	add r7, #0x10
	add r0, r0, #1
	add r6, r6, #2
	add r5, #0x10
	str r0, [sp, #0x20]
	cmp r0, #3
	blt _02241C8A
	mov r0, #0x11
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x60
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldr r0, [r4]
	add r1, #0xe0
	lsr r2, r2, #0x18
	mov r3, #9
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, #0xe0
	bl FillWindowPixelBuffer
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_02241D00:
	mov r0, #0
	ldr r6, _02241DB0 ; =ov70_02245D6E
	str r0, [sp, #0x24]
	mov r7, #0x30
	add r5, r0, #0
_02241D0A:
	ldrb r0, [r6, #1]
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldrb r3, [r6]
	ldr r0, [r4]
	add r1, r1, r5
	lsr r2, r2, #0x18
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, r0, r5
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x24]
	add r7, #0x16
	add r0, r0, #1
	add r6, r6, #2
	add r5, #0x10
	str r0, [sp, #0x24]
	cmp r0, #4
	blt _02241D0A
	mov r0, #0xe
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x88
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldr r0, [r4]
	add r1, #0x40
	lsr r2, r2, #0x18
	mov r3, #6
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, #0x40
	bl FillWindowPixelBuffer
	mov r0, #0x11
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0xa1
	str r0, [sp, #0x10]
	ldr r2, [r4, #0x54]
	ldr r1, [r4, #4]
	lsl r2, r2, #0x18
	ldr r0, [r4]
	add r1, #0xe0
	lsr r2, r2, #0x18
	mov r3, #9
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0x22
	add r0, #0xe0
	bl FillWindowPixelBuffer
_02241DAA:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_02241DB0: .word ov70_02245D6E
	thumb_func_end ov70_0224190C

	thumb_func_start ov70_02241DB4
ov70_02241DB4: ; 0x02241DB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r2, sp, #0x10
	add r5, r1, #0
	ldr r0, [r4, #0x1c]
	mov r1, #0
	add r2, #1
	add r3, sp, #0x10
	bl sub_02019B1C
	cmp r5, #6
	bls _02241DD0
	b _02242010
_02241DD0:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02241DDC: ; jump table
	.short _02241EA6 - _02241DDC - 2 ; case 0
	.short _02241FD4 - _02241DDC - 2 ; case 1
	.short _02241FF4 - _02241DDC - 2 ; case 2
	.short _02241F6A - _02241DDC - 2 ; case 3
	.short _02241DEA - _02241DDC - 2 ; case 4
	.short _02241E48 - _02241DDC - 2 ; case 5
	.short _02241F04 - _02241DDC - 2 ; case 6
_02241DEA:
	mov r6, #0
	add r5, r6, #0
	mov r7, #0x22
_02241DF0:
	ldr r0, [r4, #4]
	add r1, r7, #0
	add r0, r0, r5
	bl FillWindowPixelBuffer
	ldr r0, [r4, #4]
	add r0, r0, r5
	bl CopyWindowPixelsToVram_TextMode
	ldr r0, [r4, #4]
	add r0, r0, r5
	bl RemoveWindow
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #9
	blt _02241DF0
	add r0, sp, #0x10
	mov r1, #1
	ldrsb r0, [r0, r1]
	cmp r0, #0x10
	bne _02241E3C
	str r1, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #2
	mov r2, #5
	mov r3, #0x11
	bl FillBgTilemapRect
	ldr r0, [r4]
	mov r1, #2
	bl BgCommitTilemapBufferToVram
_02241E3C:
	ldr r0, [r4, #4]
	add r0, #0xe0
	bl RemoveWindow
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02241E48:
	mov r6, #0
	add r5, r6, #0
	mov r7, #0x22
_02241E4E:
	ldr r0, [r4, #4]
	add r1, r7, #0
	add r0, r0, r5
	bl FillWindowPixelBuffer
	ldr r0, [r4, #4]
	add r0, r0, r5
	bl CopyWindowPixelsToVram_TextMode
	ldr r0, [r4, #4]
	add r0, r0, r5
	bl RemoveWindow
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #4
	blt _02241E4E
	add r0, sp, #0x10
	mov r1, #1
	ldrsb r0, [r0, r1]
	cmp r0, #0x10
	bne _02241E9A
	str r1, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #2
	mov r2, #5
	mov r3, #0x11
	bl FillBgTilemapRect
	ldr r0, [r4]
	mov r1, #2
	bl BgCommitTilemapBufferToVram
_02241E9A:
	ldr r0, [r4, #4]
	add r0, #0xe0
	bl RemoveWindow
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02241EA6:
	mov r6, #0
	add r5, r6, #0
	mov r7, #0x22
_02241EAC:
	ldr r0, [r4, #4]
	add r1, r7, #0
	add r0, r0, r5
	bl FillWindowPixelBuffer
	ldr r0, [r4, #4]
	add r0, r0, r5
	bl CopyWindowPixelsToVram_TextMode
	ldr r0, [r4, #4]
	add r0, r0, r5
	bl RemoveWindow
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #5
	blt _02241EAC
	add r0, sp, #0x10
	mov r1, #1
	ldrsb r0, [r0, r1]
	cmp r0, #0x10
	bne _02241EF8
	str r1, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #2
	mov r2, #5
	mov r3, #0x11
	bl FillBgTilemapRect
	ldr r0, [r4]
	mov r1, #2
	bl BgCommitTilemapBufferToVram
_02241EF8:
	ldr r0, [r4, #4]
	add r0, #0xe0
	bl RemoveWindow
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02241F04:
	mov r6, #0
	add r5, r6, #0
	mov r7, #0x22
_02241F0A:
	ldr r0, [r4, #4]
	add r1, r7, #0
	add r0, r0, r5
	bl FillWindowPixelBuffer
	ldr r0, [r4, #4]
	add r0, r0, r5
	bl CopyWindowPixelsToVram_TextMode
	ldr r0, [r4, #4]
	add r0, r0, r5
	bl RemoveWindow
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #9
	blt _02241F0A
	add r0, sp, #0x10
	mov r1, #1
	ldrsb r0, [r0, r1]
	cmp r0, #0x10
	bne _02241F56
	str r1, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #2
	mov r2, #5
	mov r3, #0x11
	bl FillBgTilemapRect
	ldr r0, [r4]
	mov r1, #2
	bl BgCommitTilemapBufferToVram
_02241F56:
	ldr r0, [r4, #4]
	add r0, #0xe0
	bl RemoveWindow
	ldr r0, [r4, #4]
	add r0, #0xf0
	bl RemoveWindow
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02241F6A:
	mov r6, #0
	add r5, r6, #0
	mov r7, #0x22
_02241F70:
	ldr r0, [r4, #4]
	add r1, r7, #0
	add r0, r0, r5
	bl FillWindowPixelBuffer
	ldr r0, [r4, #4]
	add r0, r0, r5
	bl CopyWindowPixelsToVram_TextMode
	ldr r0, [r4, #4]
	add r0, r0, r5
	bl RemoveWindow
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #6
	blt _02241F70
	add r0, sp, #0x10
	mov r1, #1
	ldrsb r0, [r0, r1]
	sub r0, #0x10
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _02241FC8
	str r1, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #2
	mov r2, #5
	mov r3, #0x12
	bl FillBgTilemapRect
	ldr r0, [r4]
	mov r1, #2
	bl BgCommitTilemapBufferToVram
_02241FC8:
	ldr r0, [r4, #4]
	add r0, #0xe0
	bl RemoveWindow
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02241FD4:
	mov r6, #0
	add r5, r6, #0
_02241FD8:
	ldr r0, [r4, #4]
	add r0, r0, r5
	bl RemoveWindow
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #3
	blt _02241FD8
	ldr r0, [r4, #4]
	add r0, #0xe0
	bl RemoveWindow
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02241FF4:
	mov r6, #0
	add r5, r6, #0
_02241FF8:
	ldr r0, [r4, #4]
	add r0, r0, r5
	bl RemoveWindow
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #5
	blt _02241FF8
	ldr r0, [r4, #4]
	add r0, #0xe0
	bl RemoveWindow
_02242010:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_02241DB4

