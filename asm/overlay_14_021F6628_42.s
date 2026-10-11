#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F7B7C
	.extern ov14_021F86C8

    .text

	.text
	thumb_func_start ov14_021F7B7C
ov14_021F7B7C: ; 0x021F7B7C
	push {r3, lr}
	ldr r1, [r0, #0x34]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #0
	bne _021F7B92
	mov r0, #0
	pop {r3, pc}
_021F7B92:
	ldr r0, _021F7BB4 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #2
	lsl r0, r0, #0xa
	tst r0, r1
	beq _021F7BA2
	mov r0, #1
	pop {r3, pc}
_021F7BA2:
	ldr r0, _021F7BB8 ; =ov14_021F86C8
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #1
	bne _021F7BB0
	mov r0, #1
	pop {r3, pc}
_021F7BB0:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_021F7BB4: .word gSystem
_021F7BB8: .word ov14_021F86C8
	thumb_func_end ov14_021F7B7C


