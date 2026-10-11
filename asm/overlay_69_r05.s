	.include "asm/macros.inc"
	.include "overlay_69.inc"
	.include "global.inc"
	.public ov69_021E6308
	.extern ov69_021E645C

	.text

	.text
	thumb_func_start ov69_021E6308
ov69_021E6308: ; 0x021E6308
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, _021E6448 ; =0x0000C308
	mov r3, #0
	ldr r1, _021E644C ; =gSystem + 0x40
	str r3, [r4, r0]
	ldrh r2, [r1, #0x20]
	cmp r2, #0xc0
	blo _021E6332
	mov r0, #1
	lsl r0, r0, #8
	cmp r2, r0
	bhi _021E6332
	ldrh r0, [r1, #0x22]
	cmp r0, #0xa0
	blo _021E6332
	cmp r0, #0xb8
	bhi _021E6332
	mov r3, #2
	b _021E6346
_021E6332:
	cmp r2, #0x40
	bhi _021E6346
	ldr r0, _021E644C ; =gSystem + 0x40
	ldrh r0, [r0, #0x22]
	cmp r0, #0xa0
	blo _021E6346
	cmp r0, #0xb8
	bhi _021E6346
	mov r3, #1
	lsl r3, r3, #0xa
_021E6346:
	ldr r1, _021E644C ; =gSystem + 0x40
	ldrh r0, [r1, #0x24]
	cmp r0, #0
	beq _021E638A
	cmp r3, #0
	beq _021E635A
	ldr r0, _021E6448 ; =0x0000C308
	add sp, #0x18
	str r3, [r4, r0]
	pop {r3, r4, r5, pc}
_021E635A:
	ldr r0, _021E6450 ; =0x0000C30C
	mov r2, #0
	add r5, r0, #0
	str r2, [r4, r0]
	add r5, #0xc
	str r2, [r4, r5]
	add r5, r0, #0
	add r5, #0x10
	str r2, [r4, r5]
	add r5, r0, #0
	add r5, #0x14
	str r2, [r4, r5]
	sub r5, r0, #4
	str r2, [r4, r5]
	ldrh r5, [r1, #0x20]
	add r2, r0, #4
	str r5, [r4, r2]
	ldrh r2, [r1, #0x22]
	add r1, r0, #0
	add r1, #8
	str r2, [r4, r1]
	mov r1, #4
	add r0, #0x14
	str r1, [r4, r0]
_021E638A:
	ldr r0, _021E644C ; =gSystem + 0x40
	ldrh r0, [r0, #0x26]
	cmp r0, #0
	beq _021E6408
	ldr r1, _021E6450 ; =0x0000C30C
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _021E63A2
	cmp r2, #1
	beq _021E63BE
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021E63A2:
	add r0, r1, #0
	add r0, #0x14
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021E63B2
	add r0, r2, #1
	str r0, [r4, r1]
	b _021E63BE
_021E63B2:
	add r0, r1, #0
	add r0, #0x14
	ldr r0, [r4, r0]
	add r1, #0x14
	sub r0, r0, #1
	str r0, [r4, r1]
_021E63BE:
	cmp r3, #0
	bne _021E6442
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	ldr r1, _021E6454 ; =0x0000C310
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl ov69_021E645C
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	orr r0, r1
	ldr r1, _021E6448 ; =0x0000C308
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r2, [sp, #0x10]
	add r0, #0x10
	str r2, [r4, r0]
	ldr r2, [sp, #8]
	add r0, r1, #0
	add r0, #0x14
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, _021E644C ; =gSystem + 0x40
	add r0, #8
	ldrh r3, [r2, #0x20]
	add r1, #0xc
	add sp, #0x18
	str r3, [r4, r0]
	ldrh r0, [r2, #0x22]
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_021E6408:
	cmp r3, #0
	bne _021E642C
	ldr r1, _021E6458 ; =0x0000C320
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _021E642C
	add r0, r1, #0
	sub r0, #8
	ldr r0, [r4, r0]
	cmp r0, #4
	bge _021E642C
	sub r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #4
	bge _021E642C
	mov r0, #1
	sub r1, #0x18
	str r0, [r4, r1]
_021E642C:
	ldr r1, _021E6450 ; =0x0000C30C
	mov r2, #0
	add r0, r1, #0
	str r2, [r4, r1]
	add r0, #0xc
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x10
	str r2, [r4, r0]
	add r1, #0x14
	str r2, [r4, r1]
_021E6442:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021E6448: .word 0x0000C308
_021E644C: .word gSystem + 0x40
_021E6450: .word 0x0000C30C
_021E6454: .word 0x0000C310
_021E6458: .word 0x0000C320
	thumb_func_end ov69_021E6308

