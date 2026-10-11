#include "config.h"
#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_022378C0.inc"
	.include "global.inc"
	.public ov12_0223A620

	.text

	.text
	thumb_func_start ov12_0223A620
ov12_0223A620: ; 0x0223A620
	push {r3, lr}
	ldr r2, [r0, #0x2c]
	ldr r1, _0223A65C ; =0x00000404
	tst r1, r2
	bne _0223A634
	ldr r1, _0223A660 ; =0x0000240C
	ldr r1, [r0, r1]
	mov r0, #0x10
	tst r0, r1
	beq _0223A648
_0223A634:
	mov r0, #1
	bl TextFlags_SetAutoScrollParam
	mov r0, #1
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	pop {r3, pc}
_0223A648:
	mov r0, #3
	bl TextFlags_SetAutoScrollParam
	mov r0, #1
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	pop {r3, pc}
	.balign 4, 0
_0223A65C: .word 0x00000404
_0223A660: .word 0x0000240C
	thumb_func_end ov12_0223A620

