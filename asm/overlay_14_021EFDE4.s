#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EFDE4.inc"
	.include "global.inc"

    .text

	thumb_func_start ov14_021EFDE4
ov14_021EFDE4: ; 0x021EFDE4
	push {r3, lr}
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0xc]
	bl Heap_Free
	mov r0, #0x8b
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021EFDE4

	thumb_func_start ov14_021EFDF4
ov14_021EFDF4: ; 0x021EFDF4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	add r1, r4, #0
	ldr r5, [r0, #0xc]
	add r1, #0x21
	ldrh r2, [r5]
	ldrb r1, [r1]
	cmp r2, r1
	beq _021EFE10
	ldr r1, _021EFEF0 ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	bne _021EFEB0
_021EFE10:
	add r0, r4, #0
	ldrh r5, [r5, #2]
	bl ov14_021F1F38
	ldr r0, [r4, #0x34]
	ldr r1, _021EFEF4 ; =0x0000044A
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _021EFE6C
	ldr r1, _021EFEF0 ; =0x000088C8
	ldrh r0, [r0, r1]
	bl ItemIdIsMail
	cmp r0, #1
	bne _021EFE7A
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r5, r0
	beq _021EFE7A
	ldr r0, _021EFEF8 ; =0x000005F3
	bl PlaySE
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #7
	bl sub_0201980C
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #0
	bl ov14_021F34C8
	add r0, r4, #0
	mov r1, #7
	mov r2, #0x28
	bl ov14_021F68C0
	mov r0, #0x92
	str r0, [r4, #0x30]
	mov r0, #6
	pop {r3, r4, r5, pc}
_021EFE6C:
	mov r1, #0x28
	bl ov14_021F6654
	ldr r1, [r4, #0x34]
	ldr r0, _021EFEF4 ; =0x0000044A
	mov r2, #0
	strb r2, [r1, r0]
_021EFE7A:
	ldr r1, [r4, #0x34]
	ldr r0, _021EFEF0 ; =0x000088C8
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _021EFE98
	ldr r0, _021EFEFC ; =0x000005EA
	bl PlaySE
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #0
	bl ov14_021F34C8
_021EFE98:
	ldr r0, [r4, #0x34]
	mov r1, #8
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x8b
	pop {r3, r4, r5, pc}
_021EFEB0:
	mov r1, #0x28
	bl ov14_021F6654
	ldr r0, _021EFEFC ; =0x000005EA
	bl PlaySE
	ldrh r1, [r5]
	ldr r0, [r4, #0x34]
	mov r2, #0
	bl ov14_021F34C8
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #1
	bl ov14_021F34C8
	add r0, r4, #0
	bl ov14_021F40DC
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	mov r0, #0x8e
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EFEF0: .word 0x000088C8
_021EFEF4: .word 0x0000044A
_021EFEF8: .word 0x000005F3
_021EFEFC: .word 0x000005EA
	thumb_func_end ov14_021EFDF4

	thumb_func_start ov14_021EFF00
ov14_021EFF00: ; 0x021EFF00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #1
	bne _021EFF14
	mov r0, #0x8e
	pop {r3, r4, r5, r6, r7, pc}
_021EFF14:
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	mov r2, #6
	ldr r4, [r0, #0xc]
	add r0, r5, #0
	ldrh r1, [r4]
	mov r3, #0
	bl ov14_021E6070
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldrh r1, [r4]
	ldr r6, [r5, #0x34]
	ldr r3, _021F0084 ; =0x000088C8
	add r0, r5, #0
	mov r2, #6
	add r3, r6, r3
	bl ov14_021E6094
	ldrb r1, [r5, #0x1f]
	ldrh r2, [r4]
	add r0, r5, #0
	bl ov14_021E60C0
	bl ov14_021E64D0
	cmp r0, #1
	bne _021EFF6E
	ldrh r2, [r4]
	ldr r3, [r5, #0x34]
	ldrb r1, [r5, #0x1f]
	add r6, r3, r2
	ldr r3, _021F0088 ; =0x00004094
	add r0, r5, #0
	ldrb r3, [r6, r3]
	bl ov14_021F2ED0
_021EFF6E:
	ldrh r1, [r4]
	add r0, r5, #0
	bl ov14_021E7588
	add r1, r5, #0
	ldr r0, [r5, #0x34]
	ldr r3, _021F0084 ; =0x000088C8
	add r1, #0x21
	strh r7, [r0, r3]
	ldr r6, [r5, #0x34]
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #6
	add r3, r6, r3
	bl ov14_021E6094
	add r2, r5, #0
	add r2, #0x21
	ldrb r1, [r5, #0x1f]
	ldrb r2, [r2]
	add r0, r5, #0
	bl ov14_021E60C0
	bl ov14_021E64D0
	cmp r0, #1
	bne _021EFFBA
	add r0, r5, #0
	add r0, #0x21
	ldrb r2, [r0]
	ldr r3, [r5, #0x34]
	ldrb r1, [r5, #0x1f]
	add r6, r3, r2
	ldr r3, _021F0088 ; =0x00004094
	add r0, r5, #0
	ldrb r3, [r6, r3]
	bl ov14_021F2ED0
_021EFFBA:
	ldr r0, [r5, #0x34]
	ldr r1, _021F0084 ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	bne _021F0046
	ldr r1, _021F008C ; =0x0000044A
	ldrb r2, [r0, r1]
	cmp r2, #0
	bne _021F0006
	ldrh r1, [r4]
	add r0, r5, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r5, #0
	bl ov14_021F1F38
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	sub r1, #0x1e
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	ldr r1, _021F0090 ; =ov14_021E94BC
	add r0, r5, #0
	mov r2, #0x8f
	bl ov14_021F0234
	pop {r3, r4, r5, r6, r7, pc}
_021F0006:
	mov r2, #0
	strb r2, [r0, r1]
	add r0, r5, #0
	bl ov14_021F1F38
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	sub r1, #0x1e
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7EE0
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov14_021F3488
	ldr r1, _021F0094 ; =ov14_021E9518
	add r0, r5, #0
	mov r2, #0x8f
	bl ov14_021F0234
	pop {r3, r4, r5, r6, r7, pc}
_021F0046:
	ldr r0, _021F0098 ; =0x000005EB
	bl PlaySE
	ldr r0, [r5, #0x34]
	ldr r1, _021F0084 ; =0x000088C8
	ldrh r1, [r0, r1]
	bl ov14_021F3844
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	bl ov14_021F39D0
	ldr r1, _021F009C ; =ov14_021EAF08
	add r0, r5, #0
	mov r2, #0x90
	bl ov14_021F0234
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F0084: .word 0x000088C8
_021F0088: .word 0x00004094
_021F008C: .word 0x0000044A
_021F0090: .word ov14_021E94BC
_021F0094: .word ov14_021E9518
_021F0098: .word 0x000005EB
_021F009C: .word ov14_021EAF08
	thumb_func_end ov14_021EFF00

	thumb_func_start ov14_021F00A0
ov14_021F00A0: ; 0x021F00A0
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	bl ov14_021E7588
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x8b
	pop {r4, pc}
	thumb_func_end ov14_021F00A0

	thumb_func_start ov14_021F00BC
ov14_021F00BC: ; 0x021F00BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	mov r2, #0
	ldr r4, [r0, #0xc]
	ldrh r1, [r4]
	bl ov14_021F34C8
	ldr r0, _021F011C ; =0x000005EA
	bl PlaySE
	add r0, r5, #0
	bl ov14_021F40DC
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021F00FC
	ldrh r1, [r4]
	add r0, r5, #0
	add r0, #0x21
	strb r1, [r0]
_021F00FC:
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	sub r1, #0x1e
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	add r0, r5, #0
	bl ov14_021F1F38
	mov r0, #0x91
	pop {r3, r4, r5, pc}
	nop
_021F011C: .word 0x000005EA
	thumb_func_end ov14_021F00BC

	thumb_func_start ov14_021F0120
ov14_021F0120: ; 0x021F0120
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #1
	bne _021F0134
	mov r0, #0x91
	pop {r4, pc}
_021F0134:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	ldr r1, _021F0160 ; =ov14_021E94BC
	add r0, r4, #0
	mov r2, #0x8f
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F0160: .word ov14_021E94BC
	thumb_func_end ov14_021F0120

	thumb_func_start ov14_021F0164
ov14_021F0164: ; 0x021F0164
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0x28
	bl ov14_021F6654
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #7
	bl sub_020197F4
	ldr r0, [r4, #0x34]
	mov r1, #8
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x8b
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F0164

	thumb_func_start ov14_021F0198
ov14_021F0198: ; 0x021F0198
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F01B4 ; =0x000005F3
	bl PlaySE
	add r0, r4, #0
	mov r1, #5
	mov r2, #0x25
	bl ov14_021F68C0
	mov r0, #0xe
	str r0, [r4, #0x30]
	mov r0, #6
	pop {r4, pc}
	.balign 4, 0
_021F01B4: .word 0x000005F3
	thumb_func_end ov14_021F0198

	thumb_func_start ov14_021F01B8
ov14_021F01B8: ; 0x021F01B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F01D4 ; =0x000005F3
	bl PlaySE
	add r0, r4, #0
	mov r1, #0x25
	bl ov14_021F6724
	mov r0, #0xe
	str r0, [r4, #0x30]
	mov r0, #6
	pop {r4, pc}
	nop
_021F01D4: .word 0x000005F3
	thumb_func_end ov14_021F01B8

	thumb_func_start ov14_021F01D8
ov14_021F01D8: ; 0x021F01D8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	add r4, r1, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #0x11
	ldr r1, [r5, #0x34]
	lsl r0, r0, #6
	str r4, [r1, r0]
	mov r0, #2
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov14_021F01D8

	thumb_func_start ov14_021F0204
ov14_021F0204: ; 0x021F0204
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0
	add r4, r1, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #0x11
	ldr r1, [r5, #0x34]
	lsl r0, r0, #6
	str r4, [r1, r0]
	mov r0, #2
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021F0204

	thumb_func_start ov14_021F0234
ov14_021F0234: ; 0x021F0234
	push {r3, lr}
	str r2, [r0, #0x30]
	ldr r0, [r0, #0x34]
	bl ov14_021E5A44
	mov r0, #5
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021F0234

	thumb_func_start ov14_021F0244
ov14_021F0244: ; 0x021F0244
	push {r3, lr}
	str r1, [r0, #0x30]
	ldr r0, [r0, #0x34]
	bl ov14_021E5A54
	mov r0, #5
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021F0244

	thumb_func_start ov14_021F0254
ov14_021F0254: ; 0x021F0254
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #1
	bne _021F0266
	mov r1, #1
	bl ov14_021E5EFC
	b _021F026C
_021F0266:
	mov r1, #0
	bl ov14_021E5EFC
_021F026C:
	ldr r1, [r5, #0x34]
	ldr r0, _021F0278 ; =0x00000438
	strh r4, [r1, r0]
	mov r0, #7
	pop {r3, r4, r5, pc}
	nop
_021F0278: .word 0x00000438
	thumb_func_end ov14_021F0254

	thumb_func_start ov14_021F027C
ov14_021F027C: ; 0x021F027C
	ldr r3, _021F0288 ; =ov14_021F0204
	strb r1, [r0, #0x1e]
	mov r1, #9
	str r1, [r0, #0x30]
	mov r1, #1
	bx r3
	.balign 4, 0
_021F0288: .word ov14_021F0204
	thumb_func_end ov14_021F027C

	thumb_func_start ov14_021F028C
ov14_021F028C: ; 0x021F028C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x1f]
	add r4, r1, #0
	cmp r0, #0
	bne _021F029C
	mov r0, #0x11
	b _021F029E
_021F029C:
	sub r0, r0, #1
_021F029E:
	strb r0, [r5, #0x1f]
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021F2DE8
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021E7930
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ov14_021E783C
	ldr r0, [r5, #0x34]
	mov r1, #0
	mov r2, #2
	bl ov14_021F29E4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #1
	bne _021F0302
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	ldr r0, [r5]
	ldr r0, [r0, #8]
	sub r0, r0, #2
	cmp r0, #1
	bhi _021F0302
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8248
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E82A8
_021F0302:
	ldr r1, _021F0310 ; =ov14_021E92AC
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	nop
_021F0310: .word ov14_021E92AC
	thumb_func_end ov14_021F028C

	thumb_func_start ov14_021F0314
ov14_021F0314: ; 0x021F0314
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x1f]
	add r4, r1, #0
	cmp r0, #0x11
	bne _021F0324
	mov r0, #0
	b _021F0326
_021F0324:
	add r0, r0, #1
_021F0326:
	strb r0, [r5, #0x1f]
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021F2DE8
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	bl ov14_021E7930
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl ov14_021E783C
	ldr r0, [r5, #0x34]
	mov r1, #1
	mov r2, #4
	bl ov14_021F29E4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #1
	bne _021F038A
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	ldr r0, [r5]
	ldr r0, [r0, #8]
	sub r0, r0, #2
	cmp r0, #1
	bhi _021F038A
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8248
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E82A8
_021F038A:
	ldr r1, _021F0398 ; =ov14_021E9370
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	nop
_021F0398: .word ov14_021E9370
	thumb_func_end ov14_021F0314

	thumb_func_start ov14_021F039C
ov14_021F039C: ; 0x021F039C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x21
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #0
	bl ov14_021F3190
	add r0, r4, #0
	bl ov14_021F3F6C
	add r0, r4, #0
	bl ov14_021F08BC
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #0
	bne _021F03F2
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8234
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8294
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
_021F03F2:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	add r0, r4, #0
	mov r1, #0
	add r0, #0x22
	strb r1, [r0]
	ldr r1, _021F0414 ; =ov14_021E8BA4
	add r0, r4, #0
	mov r2, #0xd
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F0414: .word ov14_021E8BA4
	thumb_func_end ov14_021F039C

	thumb_func_start ov14_021F0418
ov14_021F0418: ; 0x021F0418
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x21
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #0
	bl ov14_021F3190
	add r0, r4, #0
	bl ov14_021F3F6C
	add r0, r4, #0
	bl ov14_021F3044
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov14_021F3488
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ov14_021F3488
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #0
	bl ov14_021F34C8
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0x27
	bl ov14_021F685C
	ldr r0, [r4, #8]
	bl Party_GetCount
	cmp r0, #6
	beq _021F0482
	add r0, r4, #0
	mov r1, #0x28
	mov r2, #1
	bl ov14_021F6928
	b _021F048C
_021F0482:
	add r0, r4, #0
	mov r1, #0x28
	mov r2, #3
	bl ov14_021F6928
_021F048C:
	add r0, r4, #0
	bl ov14_021F08BC
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #0
	bne _021F04BA
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
_021F04BA:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x22
	strb r1, [r0]
	ldr r1, _021F04D0 ; =ov14_021E9C88
	add r0, r4, #0
	mov r2, #0x57
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F04D0: .word ov14_021E9C88
	thumb_func_end ov14_021F0418

	thumb_func_start ov14_021F04D4
ov14_021F04D4: ; 0x021F04D4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x21
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #1
	bl ov14_021F3190
	add r0, r4, #0
	bl ov14_021F3F6C
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0x27
	bl ov14_021F685C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
	ldr r0, [r4, #0x34]
	bl ov14_021E8824
	ldr r1, _021F052C ; =ov14_021EA068
	add r0, r4, #0
	mov r2, #0x58
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F052C: .word ov14_021EA068
	thumb_func_end ov14_021F04D4

	thumb_func_start ov14_021F0530
ov14_021F0530: ; 0x021F0530
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x21
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #1
	bl ov14_021F3190
	add r0, r4, #0
	bl ov14_021F3F6C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8234
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8294
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
	ldr r0, [r4, #0x34]
	bl ov14_021E8824
	ldr r1, _021F0590 ; =ov14_021EA0B8
	add r0, r4, #0
	mov r2, #0x4a
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F0590: .word ov14_021EA0B8
	thumb_func_end ov14_021F0530

	thumb_func_start ov14_021F0594
ov14_021F0594: ; 0x021F0594
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x21
	add r1, r5, #0
	strb r4, [r0]
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #0
	bl ov14_021F3190
	add r0, r5, #0
	bl ov14_021F3F6C
	add r1, r4, #0
	ldr r0, [r5, #8]
	sub r1, #0x1e
	bl Party_GetMonByIndex
	sub r4, #0x1e
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021E6480
	cmp r0, #0
	bne _021F05E4
	ldrb r1, [r5, #0x1f]
	ldr r0, [r5, #4]
	bl PCStorage_CountMonsInBox
	cmp r0, #0
	bne _021F05E4
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #8
	bl ov14_021F6928
	b _021F062A
_021F05E4:
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ItemIdIsMail
	cmp r0, #1
	bne _021F0606
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #6
	bl ov14_021F6928
	b _021F062A
_021F0606:
	add r0, r6, #0
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _021F0620
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #7
	bl ov14_021F6928
	b _021F062A
_021F0620:
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #0
	bl ov14_021F6928
_021F062A:
	add r0, r5, #0
	bl ov14_021F08BC
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
	add r0, r5, #0
	mov r1, #1
	add r0, #0x22
	strb r1, [r0]
	ldr r1, _021F065C ; =ov14_021E8D20
	add r0, r5, #0
	mov r2, #0x27
	bl ov14_021F0234
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F065C: .word ov14_021E8D20
	thumb_func_end ov14_021F0594

	thumb_func_start ov14_021F0660
ov14_021F0660: ; 0x021F0660
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	add r1, r5, #0
	ldr r0, [sp]
	add r1, #0x21
	strb r0, [r1]
	mov r4, #0x1e
	mov r7, #1
	mov r6, #0
_021F0674:
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r4, r0
	ldr r0, [r5, #0x34]
	bne _021F068A
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F3190
	b _021F0692
_021F068A:
	add r1, r4, #0
	add r2, r7, #0
	bl ov14_021F3190
_021F0692:
	add r4, r4, #1
	cmp r4, #0x24
	blo _021F0674
	add r0, r5, #0
	bl ov14_021F3F6C
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ov14_021F3488
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #0
	bl ov14_021F34C8
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x27
	bl ov14_021F685C
	ldr r1, [sp]
	ldr r0, [r5, #8]
	sub r1, #0x1e
	bl Party_GetMonByIndex
	ldr r1, [sp]
	add r4, r0, #0
	sub r1, #0x1e
	add r0, r5, #0
	str r1, [sp]
	bl ov14_021E6480
	cmp r0, #0
	bne _021F06EE
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #8
	bl ov14_021F6928
	b _021F074C
_021F06EE:
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ItemIdIsMail
	cmp r0, #1
	bne _021F0710
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #6
	bl ov14_021F6928
	b _021F074C
_021F0710:
	add r0, r4, #0
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _021F072A
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #7
	bl ov14_021F6928
	b _021F074C
_021F072A:
	ldrb r1, [r5, #0x1f]
	ldr r0, [r5, #4]
	bl PCStorage_CountEmptySpotsInBox
	cmp r0, #0
	bne _021F0742
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #2
	bl ov14_021F6928
	b _021F074C
_021F0742:
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #0
	bl ov14_021F6928
_021F074C:
	add r0, r5, #0
	bl ov14_021F08BC
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #0
	bne _021F077A
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
_021F077A:
	add r0, r5, #0
	mov r1, #1
	add r0, #0x22
	strb r1, [r0]
	ldr r1, _021F0790 ; =ov14_021E9A24
	add r0, r5, #0
	mov r2, #0x6e
	bl ov14_021F0234
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F0790: .word ov14_021E9A24
	thumb_func_end ov14_021F0660

	thumb_func_start ov14_021F0794
ov14_021F0794: ; 0x021F0794
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x21
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #1
	bl ov14_021F3190
	add r0, r4, #0
	bl ov14_021F3F6C
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0x27
	bl ov14_021F685C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
	ldr r0, [r4, #0x34]
	bl ov14_021E8824
	ldr r1, _021F07EC ; =ov14_021EA068
	add r0, r4, #0
	mov r2, #0x6f
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F07EC: .word ov14_021EA068
	thumb_func_end ov14_021F0794

	thumb_func_start ov14_021F07F0
ov14_021F07F0: ; 0x021F07F0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x21
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #1
	bl ov14_021F3190
	add r0, r4, #0
	bl ov14_021F3F6C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8434
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
	ldr r0, [r4, #0x34]
	bl ov14_021E8824
	ldr r1, _021F0838 ; =ov14_021EA0B8
	add r0, r4, #0
	mov r2, #0x4c
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F0838: .word ov14_021EA0B8
	thumb_func_end ov14_021F07F0

	thumb_func_start ov14_021F083C
ov14_021F083C: ; 0x021F083C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x21
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #0
	bl ov14_021F3190
	add r0, r4, #0
	bl ov14_021F3F6C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	ldr r1, [r4, #0x34]
	bne _021F0876
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85D0
	b _021F0890
_021F0876:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021F0890
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
_021F0890:
	ldr r0, [r4, #0x34]
	bl ov14_021E8824
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F6408
	add r0, r4, #0
	bl ov14_021F08BC
	add r0, r4, #0
	mov r1, #2
	add r0, #0x22
	strb r1, [r0]
	ldr r1, _021F08B8 ; =ov14_021E8FD4
	add r0, r4, #0
	mov r2, #0x2a
	bl ov14_021F0234
	pop {r4, pc}
	.balign 4, 0
_021F08B8: .word ov14_021E8FD4
	thumb_func_end ov14_021F083C

	thumb_func_start ov14_021F08BC
ov14_021F08BC: ; 0x021F08BC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0xa
	mov r1, #0xf0
	bl Heap_Alloc
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	mov r6, #0xa
_021F08D0:
	add r0, r6, #0
	bl AllocMonZeroed
	str r0, [r5]
	add r4, r4, #1
	add r5, #0x20
	cmp r4, #7
	blo _021F08D0
	ldr r0, [sp]
	mov r1, #0
	add r0, #0xe0
	str r1, [r0]
	ldr r1, [r7, #0x34]
	ldr r0, [sp]
	str r0, [r1, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021F08BC

	thumb_func_start ov14_021F08F0
ov14_021F08F0: ; 0x021F08F0
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0x34]
	mov r4, #0
	ldr r6, [r0, #0xc]
	add r5, r6, #0
_021F08FA:
	ldr r0, [r5]
	bl Heap_Free
	add r4, r4, #1
	add r5, #0x20
	cmp r4, #7
	blo _021F08FA
	add r0, r6, #0
	bl Heap_Free
	pop {r4, r5, r6, pc}
	thumb_func_end ov14_021F08F0

	thumb_func_start ov14_021F0910
ov14_021F0910: ; 0x021F0910
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	mov r2, #0x4c
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021F0948
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	ldr r1, _021F09B8 ; =ov14_021E9450
	add r0, r5, #0
	mov r2, #0x4f
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
_021F0948:
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	add r4, r0, #0
	bne _021F096A
	mov r0, #0x26
	str r0, [r5, #0x2c]
	add r0, r5, #0
	mov r1, #1
	bl ov14_021F027C
	pop {r3, r4, r5, pc}
_021F096A:
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl ItemIdIsMail
	cmp r0, #1
	ldr r1, [r5, #0x34]
	bne _021F0998
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	ldr r1, _021F09B8 ; =ov14_021E9450
	add r0, r5, #0
	mov r2, #0x50
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
_021F0998:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E83F4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x25
	bl ov14_021F6704
	add r0, r5, #0
	mov r1, #0
	bl ov14_021F0254
	pop {r3, r4, r5, pc}
	nop
_021F09B8: .word ov14_021E9450
	thumb_func_end ov14_021F0910

	thumb_func_start ov14_021F09BC
ov14_021F09BC: ; 0x021F09BC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _021F09D0
	cmp r1, #1
	beq _021F09DA
	cmp r1, #2
	b _021F09E4
_021F09D0:
	mov r1, #0
	mov r2, #9
	bl ov14_021F6AC0
	b _021F0A04
_021F09DA:
	mov r1, #2
	mov r2, #0x24
	bl ov14_021F6AC0
	b _021F0A04
_021F09E4:
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021F09FA
	add r0, r4, #0
	mov r1, #3
	mov r2, #0x27
	bl ov14_021F6AC0
	b _021F0A04
_021F09FA:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0xb
	bl ov14_021F6AC0
_021F0A04:
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #0x34]
	mov r1, #0x26
	bl ov14_021F6654
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F0A26
	add r0, r4, #0
	bl ov14_021F57B8
_021F0A26:
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021F0A3A
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov14_021F3488
_021F0A3A:
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov14_021F3488
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7E64
	ldr r0, [r4]
	ldr r0, [r0, #8]
	cmp r0, #2
	bne _021F0A6E
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021F0A6E
	ldr r1, _021F0A7C ; =ov14_021E94A8
	add r0, r4, #0
	mov r2, #0x17
	bl ov14_021F0234
	pop {r4, pc}
_021F0A6E:
	ldr r1, _021F0A7C ; =ov14_021E94A8
	add r0, r4, #0
	mov r2, #0xe
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F0A7C: .word ov14_021E94A8
	thumb_func_end ov14_021F09BC

