	.include "macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02232580
	.public ov07_022325BC
	.extern ov07_0223717C
	.extern ov07_02237188

	.text

	.text
	thumb_func_start ov07_02232580
ov07_02232580: ; 0x02232580
	push {r4, r5}
	sub sp, #0x18
	ldr r3, _022325B8 ; =ov07_02237188
	add r2, sp, #0
	add r5, r0, #0
	add r4, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	add r2, r0, #0
_0223259C:
	ldr r1, [r4]
	cmp r5, r1
	bne _022325AA
	add sp, #0x18
	mov r0, #1
	pop {r4, r5}
	bx lr
_022325AA:
	add r2, r2, #1
	add r4, r4, #4
	cmp r2, #6
	blo _0223259C
	add sp, #0x18
	pop {r4, r5}
	bx lr
	.balign 4, 0
_022325B8: .word ov07_02237188
	thumb_func_end ov07_02232580

	thumb_func_start ov07_022325BC
ov07_022325BC: ; 0x022325BC
	push {r3, r4, r5}
	sub sp, #0xc
	ldr r5, _022325F0 ; =ov07_0223717C
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #0
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	mov r0, #1
	mov r4, #0
_022325D4:
	ldr r1, [r2]
	cmp r3, r1
	bne _022325E2
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5}
	bx lr
_022325E2:
	add r4, r4, #1
	add r2, r2, #4
	cmp r4, #3
	blo _022325D4
	add sp, #0xc
	pop {r3, r4, r5}
	bx lr
	.balign 4, 0
_022325F0: .word ov07_0223717C
	thumb_func_end ov07_022325BC

