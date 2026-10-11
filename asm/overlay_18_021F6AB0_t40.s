	.include "asm/macros.inc"
	.include "overlay_18_021F6AB0.inc"
	.include "global.inc"
	.public ov18_021F7B94
	.extern ov18_021FB698
	.extern ov18_021FB704

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F7B94
ov18_021F7B94: ; 0x021F7B94
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	bl System_GetTouchNew
	cmp r0, #1
	bne _021F7BE8
	ldr r0, _021F7C04 ; =ov18_021FB704
	bl TouchscreenHitbox_FindRectAtTouchNew
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021F7BFE
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchNewCoords
	ldr r0, _021F7C08 ; =ov18_021FB698
	lsl r1, r6, #2
	ldr r6, [r0, r1]
	cmp r6, #1
	bne _021F7BDE
	ldr r1, _021F7C0C ; =0x000018A2
	ldr r0, [r5]
	ldrh r1, [r5, r1]
	ldr r0, [r0]
	bl Pokedex_CheckMonCaughtFlag
	cmp r0, #0
	bne _021F7BDE
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021F7BDE:
	mov r0, #1
	str r0, [r4]
	add sp, #8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021F7BE8:
	ldr r0, _021F7C10 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r1, r0
	beq _021F7BFC
	mov r0, #0
	str r0, [r4]
	add sp, #8
	mov r0, #3
	pop {r4, r5, r6, pc}
_021F7BFC:
	sub r0, r0, #3
_021F7BFE:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021F7C04: .word ov18_021FB704
_021F7C08: .word ov18_021FB698
_021F7C0C: .word 0x000018A2
_021F7C10: .word gSystem
	thumb_func_end ov18_021F7B94

