	.include "asm/macros.inc"
	.include "overlay_41_02248ED4.inc"
	.include "global.inc"
	.public ov41_022497A8
	.extern ov41_02249768
	.extern ov41_02249780
	.extern ov41_022497A0

    .text

	.text
	thumb_func_start ov41_022497A8
ov41_022497A8: ; 0x022497A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov41_02249768
	cmp r0, #0
	bne _022497C2
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022497C2:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov41_02249780
	add r0, r5, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov41_022497A0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	sub r1, r2, r0
	ldr r3, [sp, #8]
	ldr r0, [sp]
	lsr r2, r3, #0x1f
	add r2, r3, r2
	asr r2, r2, #1
	sub r0, r0, r2
	str r0, [sp]
	ldr r0, _0224981C ; =gSystem + 0x40
	str r1, [sp, #4]
	ldrh r2, [r0, #0x20]
	mov r3, #0
	sub r1, r2, r1
	str r1, [r4]
	ldrh r1, [r0, #0x22]
	ldr r0, [sp]
	sub r2, r1, r0
	str r2, [r6]
	ldr r1, [r4]
	add r0, r7, #0
	bl ov41_022464BC
	cmp r0, #0
	bne _02249816
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249816:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0224981C: .word gSystem + 0x40
	thumb_func_end ov41_022497A8

