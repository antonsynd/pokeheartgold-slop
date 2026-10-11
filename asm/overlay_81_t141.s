	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02243298
	.public ov81_022432AC
	.public ov81_022432DC
	.extern ov81_022413F4
	.extern ov81_0224141C
	.extern ov81_02243648
	.extern ov81_02243668
	.extern ov81_02243688
	.extern ov81_02243718
	.extern ov81_02243750

	.text

	.text
	thumb_func_start ov81_02243298
ov81_02243298: ; 0x02243298
	push {r3, lr}
	cmp r1, #6
	blt _022432A4
	bl ov81_0224141C
	pop {r3, pc}
_022432A4:
	bl ov81_022413F4
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov81_02243298

	thumb_func_start ov81_022432AC
ov81_022432AC: ; 0x022432AC
	push {lr}
	sub sp, #0xc
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	ldr r0, _022432D0 ; =ov81_02243668
	ldr r1, _022432D4 ; =ov81_02243750
	ldr r2, _022432D8 ; =ov81_02243648
	bl GridInputHandler_Create
	add sp, #0xc
	pop {pc}
	nop
_022432D0: .word ov81_02243668
_022432D4: .word ov81_02243750
_022432D8: .word ov81_02243648
	thumb_func_end ov81_022432AC

	thumb_func_start ov81_022432DC
ov81_022432DC: ; 0x022432DC
	push {r3, r4, lr}
	sub sp, #0xc
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	ldr r0, _02243308 ; =ov81_02243688
	ldr r1, _0224330C ; =ov81_02243718
	ldr r2, _02243310 ; =ov81_02243648
	bl GridInputHandler_Create
	mov r1, #2
	add r4, r0, #0
	bl GridInputHandler_ClearEnabledFlag
	add r0, r4, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_02243308: .word ov81_02243688
_0224330C: .word ov81_02243718
_02243310: .word ov81_02243648
	thumb_func_end ov81_022432DC

