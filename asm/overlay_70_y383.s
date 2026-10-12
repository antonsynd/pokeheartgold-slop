#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02243F00
	.public ov70_02243F54
	.public ov70_02243F7C
	.public ov70_02243FD4
	.extern ov70_0223F658
	.extern ov70_0223F8D0
	.extern ov70_0224342C
	.extern ov70_02245E84
	.extern ov70_02245F58
	.extern ov70_02245F5C

	.text

	.text
	thumb_func_start ov70_02243F00
ov70_02243F00: ; 0x02243F00
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	add r1, r3, #1
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #2
	mov r3, #1
	bl PrintUIntOnWindow
	mov r1, #0
	str r1, [sp]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0x10
	bl sub_0200CDAC
	str r4, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r3, #0
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	mov r2, #2
	str r3, [sp, #8]
	bl PrintUIntOnWindow
	add r0, r4, #0
	bl CopyWindowPixelsToVram_TextMode
	add r0, r6, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_02019A60
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov70_02243F00

	thumb_func_start ov70_02243F54
ov70_02243F54: ; 0x02243F54
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x3d
	add r2, sp, #0
	bl ov70_0223F658
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x20]
	ldr r2, [sp]
	add r3, r5, #0
	bl ov70_0224342C
	add r4, r0, #0
	add r0, r5, #0
	bl Heap_Free
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov70_02243F54

	thumb_func_start ov70_02243F7C
ov70_02243F7C: ; 0x02243F7C
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _02243FC8 ; =ov70_02245E84
	lsl r3, r1, #2
	ldr r4, [r2, r3]
	ldr r2, _02243FCC ; =ov70_02245F5C
	lsl r1, r1, #3
	ldr r2, [r2, r1]
	add r7, r0, #0
	cmp r2, #0
	ble _02243FB4
	mov r5, #0
	cmp r2, #0
	ble _02243FC2
	ldr r0, _02243FD0 ; =ov70_02245F58
	add r6, r0, r1
_02243F9A:
	add r0, r7, #0
	add r1, r4, r5
	bl ov70_02243F54
	cmp r0, #0
	ble _02243FAA
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02243FAA:
	ldr r0, [r6, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _02243F9A
	b _02243FC2
_02243FB4:
	add r1, r4, #0
	bl ov70_02243F54
	cmp r0, #0
	ble _02243FC2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02243FC2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243FC8: .word ov70_02245E84
_02243FCC: .word ov70_02245F5C
_02243FD0: .word ov70_02245F58
	thumb_func_end ov70_02243F7C

	thumb_func_start ov70_02243FD4
ov70_02243FD4: ; 0x02243FD4
	push {r3, lr}
	add r0, r1, #0
	add r1, sp, #0
	bl ov70_0223F8D0
	pop {r3, pc}
	thumb_func_end ov70_02243FD4

