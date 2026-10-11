#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E7470
	.public ov14_021E74F0
	.public ov14_021E7588
	.public ov14_021E75F4
	.extern ov14_021E60C0
	.extern ov14_021E7358
	.extern ov14_021E7468
	.extern ov14_021E765C
	.extern ov14_021E88A4
	.extern ov14_021E8944
	.extern ov14_021E895C

    .text

	.text
	thumb_func_start ov14_021E7470
ov14_021E7470: ; 0x021E7470
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	bl ov14_021F5404
	mov r7, #0x2f
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #4
_021E7482:
	ldr r2, [r5, #0x34]
	add r3, r6, r4
	ldr r0, [r2, r7]
	add r2, #0x30
	lsl r3, r3, #4
	mov r1, #0x10
	add r2, r2, r3
	bl sub_02019A60
	add r4, r4, #1
	cmp r4, #4
	blo _021E7482
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88A4
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #2
	bl ov14_021F36DC
	ldr r0, [r5, #0x34]
	ldr r1, _021E74EC ; =0x000088D0
	mov r2, #1
	ldrh r1, [r0, r1]
	eor r1, r2
	add r1, r1, #2
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	ldr r1, _021E74EC ; =0x000088D0
	mov r2, #0
	ldrh r1, [r0, r1]
	add r1, r1, #2
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	ldr r1, [sp]
	bl ov14_021F3D70
	ldr r1, [sp]
	add r0, r5, #0
	bl ov14_021F5368
	ldr r1, [sp]
	add r0, r5, #0
	ldrh r1, [r1, #0x10]
	bl ov14_021E895C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E74EC: .word 0x000088D0
	thumb_func_end ov14_021E7470

	thumb_func_start ov14_021E74F0
ov14_021E74F0: ; 0x021E74F0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldrh r1, [r4, #6]
	add r5, r0, #0
	cmp r1, #0
	beq _021E7534
	bl ov14_021F5564
	add r6, r0, #0
	mov r0, #0x2f
	ldr r2, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, #0x30
	lsl r3, r6, #4
	mov r1, #0x10
	add r2, r2, r3
	bl sub_02019A60
	mov r0, #0x2f
	add r3, r6, #1
	ldr r2, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, #0x30
	lsl r3, r3, #4
	mov r1, #0x10
	add r2, r2, r3
	bl sub_02019A60
	ldrh r1, [r4, #6]
	ldr r0, [r5, #0x34]
	bl ov14_021F38B0
_021E7534:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8944
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov14_021F36DC
	ldr r0, [r5, #0x34]
	ldr r1, _021E7584 ; =0x000088D0
	mov r2, #1
	ldrh r1, [r0, r1]
	eor r1, r2
	add r1, r1, #2
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	ldr r1, _021E7584 ; =0x000088D0
	mov r2, #0
	ldrh r1, [r0, r1]
	add r1, r1, #2
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	bl ov14_021F3D70
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F5368
	ldrh r1, [r4, #0x10]
	add r0, r5, #0
	bl ov14_021E895C
	pop {r4, r5, r6, pc}
	nop
_021E7584: .word 0x000088D0
	thumb_func_end ov14_021E74F0

	thumb_func_start ov14_021E7588
ov14_021E7588: ; 0x021E7588
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r2, r1, #0
	ldrb r1, [r5, #0x1f]
	bl ov14_021E60C0
	add r4, r0, #0
	beq _021E75E6
	bl AcquireBoxMonLock
	add r7, r0, #0
	add r0, r4, #0
	bl ov14_021E7358
	add r6, r0, #0
	beq _021E75CA
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #3
	bne _021E75BA
	add r0, r5, #0
	add r1, r6, #0
	bl ov14_021E74F0
	b _021E75C2
_021E75BA:
	add r0, r5, #0
	add r1, r6, #0
	bl ov14_021E7470
_021E75C2:
	add r0, r6, #0
	bl ov14_021E7468
	b _021E75DC
_021E75CA:
	add r0, r5, #0
	bl ov14_021E765C
	add r0, r4, #0
	add r1, r7, #0
	bl ReleaseBoxMonLock
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E75DC:
	add r0, r4, #0
	add r1, r7, #0
	bl ReleaseBoxMonLock
	b _021E75F0
_021E75E6:
	add r0, r5, #0
	bl ov14_021E765C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E75F0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021E7588

	thumb_func_start ov14_021E75F4
ov14_021E75F4: ; 0x021E75F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r2, r1, #0
	ldrb r1, [r5, #0x1f]
	bl ov14_021E60C0
	add r4, r0, #0
	bl AcquireBoxMonLock
	add r7, r0, #0
	add r0, r4, #0
	bl ov14_021E7358
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	bl ov14_021F36DC
	ldr r0, [r5, #0x34]
	ldr r1, _021E7658 ; =0x000088D0
	mov r2, #1
	ldrh r1, [r0, r1]
	eor r1, r2
	add r1, r1, #2
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	ldr r1, _021E7658 ; =0x000088D0
	mov r2, #0
	ldrh r1, [r0, r1]
	add r1, r1, #2
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	add r1, r6, #0
	bl ov14_021F3D70
	add r0, r5, #0
	add r1, r6, #0
	bl ov14_021F5368
	add r0, r6, #0
	bl ov14_021E7468
	add r0, r4, #0
	add r1, r7, #0
	bl ReleaseBoxMonLock
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7658: .word 0x000088D0
	thumb_func_end ov14_021E75F4

