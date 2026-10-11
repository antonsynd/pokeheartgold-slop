#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238C8C
	.public ov70_02238E50
	.public ov70_02244D44

	.text

	thumb_func_start ov70_02244D44
ov70_02244D44: ; 0x02244D44
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02238C8C
	cmp r0, #1
	bne _02244D68
	ldr r0, _02244D7C ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_02238E50
	mov r0, #0xb
	str r0, [r4, #0x2c]
	b _02244D78
_02244D68:
	cmp r0, #2
	bne _02244D78
	ldr r0, _02244D7C ; =0x000011C8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	mov r0, #0
	str r0, [r4, #0x2c]
_02244D78:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_02244D7C: .word 0x000011C8
	thumb_func_end ov70_02244D44

