#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_main.inc"
	.include "global.inc"
	.public ov51_021E6CF0
	.public ov51_021E6D44
	.public ov51_021E6DA8
	.extern ov51_021E757C
	.extern ov51_021E7664

	.text

	.text
	thumb_func_start ov51_021E6CF0
ov51_021E6CF0: ; 0x021E6CF0
	push {r4, r5, r6, r7}
	mov r2, #3
	mov r4, #0
	lsl r2, r2, #0xc
_021E6CF8:
	asr r3, r4, #2
	lsr r3, r3, #0x1d
	add r3, r4, r3
	asr r3, r3, #3
	lsr r6, r3, #0x1f
	lsl r5, r3, #0x1d
	sub r5, r5, r6
	mov r3, #0x1d
	ror r5, r3
	add r3, r6, r5
	asr r5, r4, #5
	lsr r5, r5, #0x1a
	lsl r3, r3, #0x18
	add r5, r4, r5
	lsr r3, r3, #0x18
	asr r5, r5, #6
	lsl r5, r5, #3
	add r3, r0, r3
	ldrb r3, [r5, r3]
	lsr r7, r4, #0x1f
	lsl r6, r4, #0x1d
	sub r6, r6, r7
	mov r5, #0x1d
	ror r6, r5
	add r5, r7, r6
	lsl r5, r5, #0x18
	add r6, r3, #0
	lsr r5, r5, #0x18
	asr r6, r5
	mov r3, #1
	and r3, r6
	strb r3, [r1, r4]
	add r4, r4, #1
	cmp r4, r2
	blt _021E6CF8
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end ov51_021E6CF0

	thumb_func_start ov51_021E6D44
ov51_021E6D44: ; 0x021E6D44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	mov r1, #1
	str r1, [sp]
	lsl r1, r7, #0x18
	mov r3, #3
	str r0, [sp, #4]
	lsr r1, r1, #0x18
	lsl r3, r3, #0xc
	bl BG_LoadCharTilesData
	lsl r1, r7, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl GetBgTilemapBuffer
	mov r4, #0
	add r1, r0, #0
	add r3, r4, #0
	add r0, r4, #0
_021E6D6E:
	add r5, r3, #0
	add r5, #0xc
	lsl r5, r5, #6
	add r2, r0, #0
	add r5, r1, r5
_021E6D78:
	lsl r6, r2, #1
	add r4, r4, #1
	add r2, r2, #1
	lsl r4, r4, #0x10
	lsl r2, r2, #0x18
	lsr r4, r4, #0x10
	add r6, r5, r6
	lsr r2, r2, #0x18
	strh r4, [r6, #8]
	cmp r2, #0x18
	blo _021E6D78
	add r2, r3, #1
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	cmp r3, #8
	blo _021E6D6E
	lsl r1, r7, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov51_021E6D44

	thumb_func_start ov51_021E6DA8
ov51_021E6DA8: ; 0x021E6DA8
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _021E6E02
	ldr r0, _021E6E04 ; =0x000030F4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021E6DF2
	ldr r2, _021E6E08 ; =0x00003439
	ldrb r0, [r4, r2]
	cmp r0, #0
	bne _021E6DE0
	add r1, r4, #0
	add r1, #0xe8
	sub r2, #0x71
	ldr r1, [r1]
	ldr r2, [r4, r2]
	add r0, r4, #4
	bl ov51_021E757C
	ldr r2, _021E6E0C ; =0x000033CC
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x54
	mov r1, #1
	bl ov51_021E7664
	b _021E6DF2
_021E6DE0:
	cmp r0, #0xf
	bne _021E6DF2
	sub r2, #0x6d
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x54
	mov r1, #0
	bl ov51_021E7664
_021E6DF2:
	ldr r0, _021E6E08 ; =0x00003439
	mov r1, #0x1e
	ldrb r0, [r4, r0]
	add r0, r0, #1
	bl _s32_div_f
	ldr r0, _021E6E08 ; =0x00003439
	strb r1, [r4, r0]
_021E6E02:
	pop {r4, pc}
	.balign 4, 0
_021E6E04: .word 0x000030F4
_021E6E08: .word 0x00003439
_021E6E0C: .word 0x000033CC
	thumb_func_end ov51_021E6DA8

