	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02220230
	.extern ov07_0221C468
	.extern ov07_0221C470
	.extern ov07_02231924
	.extern ov07_02235440
	.extern ov07_02235488

	.text

	.text
	thumb_func_start ov07_02220230
ov07_02220230: ; 0x02220230
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	add r5, r0, #0
	add r1, sp, #0
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	ldr r3, _022202D0 ; =ov07_02235440
	add r2, sp, #0x54
	mov r1, #0x24
_0222024C:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _0222024C
	ldr r3, _022202D4 ; =ov07_02235488
	add r2, sp, #0xc
	mov r1, #0x24
_0222025E:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _0222025E
	bl sub_02015504
	add r4, r0, #0
	bl ov07_0221C468
	add r6, r0, #0
	add r0, r4, #0
	bl ov07_0221C470
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov07_02231924
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov07_02231924
	lsl r2, r0, #1
	mov r0, #0xc
	add r1, r6, #0
	mul r1, r0
	add r0, sp, #0x54
	add r0, r0, r1
	ldrsh r4, [r2, r0]
	mov r3, #0xac
	add r0, r4, #0
	ldr r4, [r5, #0x20]
	mul r0, r3
	ldr r4, [r4]
	ldr r4, [r4, #4]
	add r0, r0, r4
	str r0, [r5, #0x28]
	add r0, sp, #0xc
	add r0, r0, r1
	ldrsh r0, [r2, r0]
	add r1, r0, #0
	ldr r0, [r5, #0x20]
	mul r1, r3
	ldr r0, [r0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	str r0, [r5, #0x30]
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	nop
_022202D0: .word ov07_02235440
_022202D4: .word ov07_02235488
	thumb_func_end ov07_02220230

