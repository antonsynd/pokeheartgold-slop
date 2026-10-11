	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02240F08
	.public ov81_022412C4
	.public ov81_02242E50
	.public ov81_0224345C
	.public ov81_0224345E
	.public ov81_02243464
	.public ov81_02243466
	.public ov81_02243470
	.public ov81_02243472
	.public ov81_02243490
	.public ov81_02243492

	.text

	thumb_func_start ov81_022412C4
ov81_022412C4: ; 0x022412C4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	bl ov81_02240F08
	cmp r0, #1
	bne _022412E0
	ldr r0, _02241320 ; =ov81_02243490
	lsl r2, r4, #2
	ldrh r1, [r0, r2]
	ldr r0, _02241324 ; =ov81_02243492
	ldrh r2, [r0, r2]
	b _02241312
_022412E0:
	ldrb r0, [r5, #9]
	bl ov80_02237254
	cmp r0, #0
	bne _022412F6
	ldr r0, _02241328 ; =ov81_02243464
	lsl r2, r4, #2
	ldrh r1, [r0, r2]
	ldr r0, _0224132C ; =ov81_02243466
	ldrh r2, [r0, r2]
	b _02241312
_022412F6:
	ldrb r0, [r5, #0x12]
	cmp r0, #2
	bne _02241308
	ldr r0, _02241330 ; =ov81_0224345C
	lsl r2, r4, #2
	ldrh r1, [r0, r2]
	ldr r0, _02241334 ; =ov81_0224345E
	ldrh r2, [r0, r2]
	b _02241312
_02241308:
	ldr r0, _02241338 ; =ov81_02243470
	lsl r2, r4, #2
	ldrh r1, [r0, r2]
	ldr r0, _0224133C ; =ov81_02243472
	ldrh r2, [r0, r2]
_02241312:
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r5, r0
	mov r3, #0x64
	bl ov81_02242E50
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02241320: .word ov81_02243490
_02241324: .word ov81_02243492
_02241328: .word ov81_02243464
_0224132C: .word ov81_02243466
_02241330: .word ov81_0224345C
_02241334: .word ov81_0224345E
_02241338: .word ov81_02243470
_0224133C: .word ov81_02243472
	thumb_func_end ov81_022412C4

