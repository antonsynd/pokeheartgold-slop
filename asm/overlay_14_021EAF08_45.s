#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021ED7DC
	.public ov14_021ED820

    .text

	thumb_func_start ov14_021ED7DC
ov14_021ED7DC: ; 0x021ED7DC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x34]
	ldr r2, _021ED81C ; =0x0000044D
	ldrb r3, [r1, r2]
	lsr r6, r3, #0x1f
	lsl r5, r3, #0x1e
	sub r5, r5, r6
	mov r3, #0x1e
	ror r5, r3
	add r3, r2, #0
	add r5, r6, r5
	sub r3, #0x11
	str r5, [r1, r3]
	ldr r3, [r4, #0x34]
	sub r2, #0x11
	ldr r2, [r3, r2]
	mov r1, #0xa
	bl ov14_021F6AC0
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0xe
	bl ov14_021F29E4
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x27
	bl ov14_021F6844
	mov r0, #0x42
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021ED81C: .word 0x0000044D
	thumb_func_end ov14_021ED7DC

	thumb_func_start ov14_021ED820
ov14_021ED820: ; 0x021ED820
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_HandleInput_AllowHold
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bhi _021ED856
	bhs _021ED8E0
	cmp r0, #7
	bhi _021ED914
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021ED846: ; jump table
	.short _021ED860 - _021ED846 - 2 ; case 0
	.short _021ED872 - _021ED846 - 2 ; case 1
	.short _021ED884 - _021ED846 - 2 ; case 2
	.short _021ED896 - _021ED846 - 2 ; case 3
	.short _021ED8A8 - _021ED846 - 2 ; case 4
	.short _021ED8BC - _021ED846 - 2 ; case 5
	.short _021ED8CE - _021ED846 - 2 ; case 6
	.short _021ED8F8 - _021ED846 - 2 ; case 7
_021ED856:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _021ED902
	b _021ED914
_021ED860:
	ldr r0, _021ED918 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F129C
	mov r0, #0x42
	pop {r4, pc}
_021ED872:
	ldr r0, _021ED918 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F129C
	mov r0, #0x42
	pop {r4, pc}
_021ED884:
	ldr r0, _021ED918 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #2
	bl ov14_021F129C
	mov r0, #0x42
	pop {r4, pc}
_021ED896:
	ldr r0, _021ED918 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #3
	bl ov14_021F129C
	mov r0, #0x42
	pop {r4, pc}
_021ED8A8:
	ldr r0, _021ED91C ; =0x000005DC
	bl PlaySE
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov14_021F1228
	mov r0, #0x42
	pop {r4, pc}
_021ED8BC:
	ldr r0, _021ED91C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F1228
	mov r0, #0x42
	pop {r4, pc}
_021ED8CE:
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	add r0, r4, #0
	bl ov14_021F131C
	pop {r4, pc}
_021ED8E0:
	ldr r0, _021ED91C ; =0x000005DC
	bl PlaySE
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021ED914
	add r0, r4, #0
	mov r1, #0x49
	bl ov14_021F0244
	pop {r4, pc}
_021ED8F8:
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
_021ED902:
	ldr r0, _021ED91C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0xa6
	bl ov14_021F2270
	pop {r4, pc}
_021ED914:
	mov r0, #0x42
	pop {r4, pc}
	.balign 4, 0
_021ED918: .word 0x000005DD
_021ED91C: .word 0x000005DC
	thumb_func_end ov14_021ED820

