	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_022271DC
	.extern ov07_0221C410
	.extern ov07_0221C4A8
	.extern ov07_0221C4E8
	.extern ov07_0222719C
	.extern ov07_02231FE4
	.extern ov07_022324D8
	.extern ov07_022378B0

	.text

	.text
	thumb_func_start ov07_022271DC
ov07_022271DC: ; 0x022271DC
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x34
	add r4, r0, #0
	bl ov07_022324D8
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov07_02231FE4
	add r0, r4, #0
	mov r1, #0
	bl ov07_0221C4A8
	cmp r0, #0
	bne _02227200
	mov r0, #3
	b _02227208
_02227200:
	add r0, r4, #0
	mov r1, #0
	bl ov07_0221C4A8
_02227208:
	ldr r5, _02227240 ; =ov07_022378B0
	str r0, [r7, #0x2c]
	mov r6, #0
	add r4, r7, #0
_02227210:
	ldr r0, [r7, #4]
	add r1, r6, #0
	bl ov07_0221C4E8
	str r0, [r4, #0x1c]
	cmp r0, #0
	beq _02227224
	ldr r1, [r5]
	bl ManagedSprite_SetDrawPriority
_02227224:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _02227210
	ldr r0, [r7, #4]
	ldr r1, _02227244 ; =ov07_0222719C
	add r2, r7, #0
	bl ov07_0221C410
	add r1, r7, #0
	bl ov07_0222719C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02227240: .word ov07_022378B0
_02227244: .word ov07_0222719C
	thumb_func_end ov07_022271DC

