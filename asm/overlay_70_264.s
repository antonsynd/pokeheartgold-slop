#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02241DB4
	.public ov70_02243C8C
	.public ov70_02245F5C

	.text

	thumb_func_start ov70_02243C8C
ov70_02243C8C: ; 0x02243C8C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #3
	bl ov70_02241DB4
	ldr r0, [r4, #0x34]
	bl ListMenuItems_Delete
	mov r0, #0x3c
	ldrsh r0, [r4, r0]
	cmp r0, #8
	ble _02243CA8
	bl GF_AssertFail
_02243CA8:
	mov r0, #0x3c
	ldrsh r0, [r4, r0]
	lsl r1, r0, #3
	ldr r0, _02243CC4 ; =ov70_02245F5C
	ldr r0, [r0, r1]
	cmp r0, #1
	bne _02243CBA
	mov r0, #0x13
	b _02243CBC
_02243CBA:
	mov r0, #0x17
_02243CBC:
	str r0, [r4, #0x4c]
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	.balign 4, 0
_02243CC4: .word ov70_02245F5C
	thumb_func_end ov70_02243C8C

