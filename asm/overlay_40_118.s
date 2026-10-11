	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_02230944
	.public ov40_02234470
	.public ov40_022451C8
	.public ov40_022451CC

	.text

	thumb_func_start ov40_02234470
ov40_02234470: ; 0x02234470
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, _022344D0 ; =ov40_022451C8
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _02234492
	add r0, r5, #0
	bl ov40_02230944
	add r0, r5, #0
	mov r1, #5
	bl ov40_0222BF80
_02234492:
	ldr r0, _022344D4 ; =ov40_022451CC
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _022344AA
	add r0, r5, #0
	bl ov40_02230944
	add r0, r5, #0
	mov r1, #4
	bl ov40_0222BF80
_022344AA:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022344CA
	bl Thunk_G3X_Reset
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov41_0224B554
	mov r0, #0
	add r1, r0, #0
	bl RequestSwap3DBuffers
_022344CA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022344D0: .word ov40_022451C8
_022344D4: .word ov40_022451CC
	thumb_func_end ov40_02234470

