#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021ED38C
	.public ov14_021ED414

    .text

	.text
	thumb_func_start ov14_021ED38C
ov14_021ED38C: ; 0x021ED38C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5]
	ldr r1, [r1, #8]
	cmp r1, #3
	bne _021ED3A0
	mov r7, #6
	mov r6, #0x22
	mov r4, #0x75
	b _021ED3BC
_021ED3A0:
	add r1, r5, #0
	add r1, #0x2a
	ldrb r1, [r1]
	mov r7, #3
	mov r6, #0x22
	mov r4, #0xc
	cmp r1, #0
	beq _021ED3BC
	add r1, r5, #0
	add r1, #0x2b
	ldrb r6, [r1]
	add r1, r6, #0
	bl ov14_021E7588
_021ED3BC:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ov14_021F6AC0
	add r0, r5, #0
	mov r1, #0
	bl ov14_021F5C84
	add r0, r5, #0
	mov r1, #0
	bl ov14_021F5E94
	add r0, r5, #0
	mov r1, #0
	bl ov14_021F5EB4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8248
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E82A8
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	ldr r1, _021ED410 ; =ov14_021E94BC
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ED410: .word ov14_021E94BC
	thumb_func_end ov14_021ED38C

	thumb_func_start ov14_021ED414
ov14_021ED414: ; 0x021ED414
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_HandleInput_AllowHold
	mov r1, #3
	mvn r1, r1
	cmp r0, r1
	bhi _021ED454
	blo _021ED42C
	b _021ED57C
_021ED42C:
	cmp r0, #0xb
	bhi _021ED45E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021ED43C: ; jump table
	.short _021ED46A - _021ED43C - 2 ; case 0
	.short _021ED47A - _021ED43C - 2 ; case 1
	.short _021ED48A - _021ED43C - 2 ; case 2
	.short _021ED49A - _021ED43C - 2 ; case 3
	.short _021ED4AA - _021ED43C - 2 ; case 4
	.short _021ED4BA - _021ED43C - 2 ; case 5
	.short _021ED4CA - _021ED43C - 2 ; case 6
	.short _021ED4DC - _021ED43C - 2 ; case 7
	.short _021ED4EC - _021ED43C - 2 ; case 8
	.short _021ED526 - _021ED43C - 2 ; case 9
	.short _021ED542 - _021ED43C - 2 ; case 10
	.short _021ED584 - _021ED43C - 2 ; case 11
_021ED454:
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bhi _021ED460
	beq _021ED55E
_021ED45E:
	b _021ED5A0
_021ED460:
	add r1, r1, #1
	cmp r0, r1
	bne _021ED468
	b _021ED58E
_021ED468:
	b _021ED5A0
_021ED46A:
	ldr r0, _021ED5A4 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F1170
	pop {r4, pc}
_021ED47A:
	ldr r0, _021ED5A4 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F1170
	pop {r4, pc}
_021ED48A:
	ldr r0, _021ED5A4 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #2
	bl ov14_021F1170
	pop {r4, pc}
_021ED49A:
	ldr r0, _021ED5A4 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #3
	bl ov14_021F1170
	pop {r4, pc}
_021ED4AA:
	ldr r0, _021ED5A4 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #4
	bl ov14_021F1170
	pop {r4, pc}
_021ED4BA:
	ldr r0, _021ED5A4 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #5
	bl ov14_021F1170
	pop {r4, pc}
_021ED4CA:
	ldr r0, _021ED5A8 ; =0x000005DC
	bl PlaySE
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov14_021F11F8
	pop {r4, pc}
_021ED4DC:
	ldr r0, _021ED5A8 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F11F8
	pop {r4, pc}
_021ED4EC:
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	add r0, r4, #0
	add r0, #0x25
	ldrb r1, [r4, #0x1f]
	ldrb r0, [r0]
	cmp r1, r0
	bne _021ED514
	ldr r0, _021ED5AC ; =0x000005F3
	bl PlaySE
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0x3d
	bl ov14_021F2270
	pop {r4, pc}
_021ED514:
	ldr r0, _021ED5A8 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0xa2
	bl ov14_021F2270
	pop {r4, pc}
_021ED526:
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	ldr r0, _021ED5A4 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #6
	mov r2, #0xa3
	bl ov14_021F2270
	pop {r4, pc}
_021ED542:
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	ldr r0, _021ED5A4 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #7
	mov r2, #0xa4
	bl ov14_021F2270
	pop {r4, pc}
_021ED55E:
	ldr r0, _021ED5A8 ; =0x000005DC
	bl PlaySE
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021ED5A0
	ldr r0, _021ED5A8 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0x3e
	bl ov14_021F0244
	pop {r4, pc}
_021ED57C:
	ldr r0, _021ED5A8 ; =0x000005DC
	bl PlaySE
	b _021ED5A0
_021ED584:
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
_021ED58E:
	ldr r0, _021ED5A8 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0x39
	bl ov14_021F2270
	pop {r4, pc}
_021ED5A0:
	mov r0, #0x3d
	pop {r4, pc}
	.balign 4, 0
_021ED5A4: .word 0x000005DD
_021ED5A8: .word 0x000005DC
_021ED5AC: .word 0x000005F3
	thumb_func_end ov14_021ED414

