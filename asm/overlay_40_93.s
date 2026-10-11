	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02231700
	.public ov40_02245100
	.public ov40_02245104

	.text

	thumb_func_start ov40_02231700
ov40_02231700: ; 0x02231700
	push {r3, lr}
	ldr r0, _02231724 ; =ov40_02245100
	bl TouchscreenHitbox_TouchHeldIsIn
	cmp r0, #0
	beq _02231710
	mov r0, #1
	pop {r3, pc}
_02231710:
	ldr r0, _02231728 ; =ov40_02245104
	bl TouchscreenHitbox_TouchHeldIsIn
	cmp r0, #0
	beq _0223171E
	mov r0, #2
	pop {r3, pc}
_0223171E:
	mov r0, #0
	pop {r3, pc}
	nop
_02231724: .word ov40_02245100
_02231728: .word ov40_02245104
	thumb_func_end ov40_02231700

