	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E5E54
	.public ov00_021E5F84
	.public ov00_021E602C
	.public ov00_021E60E8
	.public ov00_021E61A8
	.extern _0221A680
	.extern ov00_021E5E34
	.extern ov00_021E6274
	.extern ov00_021E6298
	.extern ov00_021E629C
	.extern ov00_021E62D4
	.extern ov00_021E6690
	.extern ov00_021E6790
	.extern ov00_021E6850
	.extern ov00_021E69A8

	.text

	.text
	thumb_func_start ov00_021E5E54
ov00_021E5E54: ; 0x021E5E54
	push {r4, lr}
	ldr r2, _021E5F70 ; =_0221A680
	ldr r1, _021E5F74 ; =0x00001070
	ldr r3, [r2]
	ldr r4, [r3, r1]
	cmp r4, #0x10
	bls _021E5E64
	b _021E5F68
_021E5E64:
	add r4, r4, r4
	add r4, pc
	ldrh r4, [r4, #6]
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	add pc, r4
_021E5E70: ; jump table
	.short _021E5F68 - _021E5E70 - 2 ; case 0
	.short _021E5F68 - _021E5E70 - 2 ; case 1
	.short _021E5F68 - _021E5E70 - 2 ; case 2
	.short _021E5F68 - _021E5E70 - 2 ; case 3
	.short _021E5F68 - _021E5E70 - 2 ; case 4
	.short _021E5E92 - _021E5E70 - 2 ; case 5
	.short _021E5EC4 - _021E5E70 - 2 ; case 6
	.short _021E5EDC - _021E5E70 - 2 ; case 7
	.short _021E5F68 - _021E5E70 - 2 ; case 8
	.short _021E5F18 - _021E5E70 - 2 ; case 9
	.short _021E5EC4 - _021E5E70 - 2 ; case 10
	.short _021E5F32 - _021E5E70 - 2 ; case 11
	.short _021E5F4C - _021E5E70 - 2 ; case 12
	.short _021E5F68 - _021E5E70 - 2 ; case 13
	.short _021E5F68 - _021E5E70 - 2 ; case 14
	.short _021E5F68 - _021E5E70 - 2 ; case 15
	.short _021E5F52 - _021E5E70 - 2 ; case 16
_021E5E92:
	cmp r0, #0
	beq _021E5E9A
	mov r0, #6
	str r0, [r3, r1]
_021E5E9A:
	ldr r0, _021E5F70 ; =_0221A680
	ldr r2, _021E5F78 ; =0x00001074
	ldr r0, [r0]
	ldr r1, [r0, r2]
	cmp r1, #2
	bne _021E5F68
	add r1, r2, #0
	add r1, #0x20
	ldr r1, [r0, r1]
	cmp r1, #0
	blt _021E5F68
	add r3, r0, r1
	add r1, r2, #0
	sub r1, #0x30
	ldrb r1, [r3, r1]
	cmp r1, #6
	beq _021E5F68
	mov r3, #0xa
	sub r1, r2, #4
	str r3, [r0, r1]
	b _021E5F68
_021E5EC4:
	add r0, r1, #4
	ldr r0, [r3, r0]
	cmp r0, #0
	bne _021E5ED2
	bl ov00_021F1284
	b _021E5F68
_021E5ED2:
	bl ov00_021EE278
	bl ov00_021E5E34
	b _021E5F68
_021E5EDC:
	bl sub_0203993C
	bl sub_02034084
	cmp r0, #0
	bne _021E5EF4
	ldr r0, _021E5F70 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E5F7C ; =0x00001084
	ldr r0, [r1, r0]
	bl ov00_021E69A8
_021E5EF4:
	ldr r0, _021E5F70 ; =_0221A680
	ldr r2, [r0]
	ldr r0, _021E5F80 ; =0x0000109C
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _021E5F04
	mov r1, #1
	b _021E5F06
_021E5F04:
	mov r1, #0
_021E5F06:
	add r0, #0x38
	strh r1, [r2, r0]
	ldr r0, _021E5F70 ; =_0221A680
	mov r2, #8
	ldr r1, [r0]
	ldr r0, _021E5F74 ; =0x00001070
	str r2, [r1, r0]
	mov r0, #0x14
	pop {r4, pc}
_021E5F18:
	mov r0, #4
	str r0, [r3, r1]
	add r0, r1, #0
	ldr r3, [r2]
	mov r4, #0
	add r0, #8
	str r4, [r3, r0]
	ldr r0, [r2]
	sub r3, r4, #1
	add r1, #0x28
	str r3, [r0, r1]
	mov r0, #0x15
	pop {r4, pc}
_021E5F32:
	mov r0, #4
	str r0, [r3, r1]
	add r0, r1, #0
	ldr r3, [r2]
	mov r4, #0
	add r0, #8
	str r4, [r3, r0]
	ldr r0, [r2]
	sub r3, r4, #1
	add r1, #0x28
	str r3, [r0, r1]
	mov r0, #0x16
	pop {r4, pc}
_021E5F4C:
	bl ov00_021E6690
	pop {r4, pc}
_021E5F52:
	add r1, #0x20
	ldr r0, [r3, r1]
	cmp r0, #0
	bne _021E5F68
	bl ov00_021EE278
	ldr r0, _021E5F70 ; =_0221A680
	mov r2, #0x11
	ldr r1, [r0]
	ldr r0, _021E5F74 ; =0x00001070
	str r2, [r1, r0]
_021E5F68:
	bl ov00_021E6850
	pop {r4, pc}
	nop
_021E5F70: .word _0221A680
_021E5F74: .word 0x00001070
_021E5F78: .word 0x00001074
_021E5F7C: .word 0x00001084
_021E5F80: .word 0x0000109C
	thumb_func_end ov00_021E5E54

	thumb_func_start ov00_021E5F84
ov00_021E5F84: ; 0x021E5F84
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	lsl r0, r0, #8
	cmp r4, r0
	blt _021E5F96
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E5F96:
	bl ov00_021EE490
	cmp r0, #0
	bne _021E5FB8
	ldr r0, _021E601C ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E6020 ; =0x00000FA4
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _021E5FB4
	lsl r2, r4, #0x10
	mov r0, #0
	add r1, r5, #0
	lsr r2, r2, #0x10
	blx r3
_021E5FB4:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E5FB8:
	ldr r0, _021E601C ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E6024 ; =0x00001078
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021E5FCC
	bl ov00_021E6790
	cmp r0, #0
	bne _021E5FD0
_021E5FCC:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E5FD0:
	ldr r1, _021E601C ; =_0221A680
	ldr r0, _021E6028 ; =0x000010D4
	ldr r2, [r1]
	ldrh r3, [r2, r0]
	lsl r6, r3, #8
	mov r3, #1
	orr r3, r6
	str r3, [r2]
	add r3, r0, #0
	ldr r2, [r1]
	add r3, #8
	ldrb r3, [r2, r3]
	add r6, r3, #1
	add r3, r0, #0
	add r3, #8
	strb r6, [r2, r3]
	ldr r2, [r1]
	add r0, #8
	ldrb r0, [r2, r0]
	strb r0, [r2, #2]
	ldr r1, [r1]
	add r0, r5, #0
	add r1, r1, #4
	add r2, r4, #0
	bl MI_CpuCopy8
	ldr r2, _021E601C ; =_0221A680
	ldr r1, _021E6024 ; =0x00001078
	ldr r3, [r2]
	mov r0, #1
	str r0, [r3, r1]
	ldr r1, [r2]
	add r2, r4, #4
	bl ov00_021F9750
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_021E601C: .word _0221A680
_021E6020: .word 0x00000FA4
_021E6024: .word 0x00001078
_021E6028: .word 0x000010D4
	thumb_func_end ov00_021E5F84

	thumb_func_start ov00_021E602C
ov00_021E602C: ; 0x021E602C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	lsl r0, r0, #8
	cmp r4, r0
	blt _021E603E
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E603E:
	bl ov00_021EE490
	cmp r0, #0
	beq _021E604A
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E604A:
	ldr r0, _021E60D8 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E60DC ; =0x00001078
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021E605E
	bl ov00_021E6790
	cmp r0, #0
	bne _021E6062
_021E605E:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E6062:
	ldr r1, _021E60D8 ; =_0221A680
	ldr r0, _021E60E0 ; =0x000010D4
	ldr r2, [r1]
	ldrh r3, [r2, r0]
	lsl r6, r3, #8
	mov r3, #1
	orr r3, r6
	str r3, [r2]
	add r3, r0, #0
	ldr r2, [r1]
	add r3, #8
	ldrb r3, [r2, r3]
	add r6, r3, #1
	add r3, r0, #0
	add r3, #8
	strb r6, [r2, r3]
	ldr r2, [r1]
	add r0, #8
	ldrb r0, [r2, r0]
	strb r0, [r2, #2]
	ldr r1, [r1]
	add r0, r5, #0
	add r1, r1, #4
	add r2, r4, #0
	bl MI_CpuCopy8
	ldr r0, _021E60D8 ; =_0221A680
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _021E60DC ; =0x00001078
	str r2, [r1, r0]
	bl ov00_021EE4FC
	ldr r1, _021E60D8 ; =_0221A680
	add r2, r4, #4
	ldr r1, [r1]
	bl ov00_021F9750
	cmp r0, #0
	bne _021E60BE
	ldr r1, _021E60D8 ; =_0221A680
	mov r0, #0
	ldr r2, [r1]
	ldr r1, _021E60DC ; =0x00001078
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
_021E60BE:
	ldr r0, _021E60D8 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E60E4 ; =0x00000FA8
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _021E60D4
	lsl r2, r4, #0x10
	mov r0, #0
	add r1, r5, #0
	lsr r2, r2, #0x10
	blx r3
_021E60D4:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E60D8: .word _0221A680
_021E60DC: .word 0x00001078
_021E60E0: .word 0x000010D4
_021E60E4: .word 0x00000FA8
	thumb_func_end ov00_021E602C

	thumb_func_start ov00_021E60E8
ov00_021E60E8: ; 0x021E60E8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	lsl r0, r0, #8
	cmp r4, r0
	blt _021E60FA
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E60FA:
	ldr r0, _021E6198 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E619C ; =0x00001078
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021E610E
	bl ov00_021E6790
	cmp r0, #0
	bne _021E6112
_021E610E:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E6112:
	ldr r1, _021E6198 ; =_0221A680
	ldr r0, _021E61A0 ; =0x000010D4
	ldr r2, [r1]
	ldrh r3, [r2, r0]
	lsl r6, r3, #8
	mov r3, #1
	orr r3, r6
	str r3, [r2]
	add r3, r0, #0
	ldr r2, [r1]
	add r3, #8
	ldrb r3, [r2, r3]
	add r6, r3, #1
	add r3, r0, #0
	add r3, #8
	strb r6, [r2, r3]
	ldr r2, [r1]
	add r0, #8
	ldrb r0, [r2, r0]
	strb r0, [r2, #2]
	ldr r1, [r1]
	add r0, r5, #0
	add r1, r1, #4
	add r2, r4, #0
	bl MI_CpuCopy8
	ldr r0, _021E6198 ; =_0221A680
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _021E619C ; =0x00001078
	str r2, [r1, r0]
	bl ov00_021EE4FC
	ldr r1, _021E6198 ; =_0221A680
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r1, [r1]
	add r0, r6, #0
	add r2, r4, #4
	bl ov00_021F9750
	cmp r6, r0
	beq _021E6174
	ldr r1, _021E6198 ; =_0221A680
	mov r0, #0
	ldr r2, [r1]
	ldr r1, _021E619C ; =0x00001078
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
_021E6174:
	ldr r0, _021E6198 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E61A4 ; =0x00000FA8
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021E6194
	bl ov00_021EE490
	lsl r2, r4, #0x10
	ldr r3, _021E6198 ; =_0221A680
	add r1, r5, #0
	ldr r4, [r3]
	ldr r3, _021E61A4 ; =0x00000FA8
	lsr r2, r2, #0x10
	ldr r3, [r4, r3]
	blx r3
_021E6194:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E6198: .word _0221A680
_021E619C: .word 0x00001078
_021E61A0: .word 0x000010D4
_021E61A4: .word 0x00000FA8
	thumb_func_end ov00_021E60E8

	thumb_func_start ov00_021E61A8
ov00_021E61A8: ; 0x021E61A8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021E6224 ; =_0221A680
	add r4, r2, #0
	ldr r1, [r0]
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl DWC_CheckDirtyFlag
	cmp r0, #0
	beq _021E61DA
	ldr r0, _021E6224 ; =_0221A680
	ldr r1, [r0]
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl DWC_ClearDirtyFlag
	ldr r0, _021E6224 ; =_0221A680
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _021E6228 ; =0x000010E6
	strb r2, [r1, r0]
_021E61DA:
	cmp r5, #0
	bne _021E6214
	ldr r0, _021E622C ; =ov00_021E629C
	str r4, [sp]
	str r0, [sp, #4]
	ldr r2, _021E6224 ; =_0221A680
	str r4, [sp, #8]
	ldr r3, [r2]
	mov r2, #0xf1
	lsl r2, r2, #4
	ldr r2, [r3, r2]
	ldr r1, _021E6230 ; =ov00_021E6274
	ldr r3, _021E6234 ; =ov00_021E6298
	mov r0, #0
	bl ov00_021EDE74
	cmp r0, #0
	bne _021E6208
	mov r0, #1
	bl sub_02039AD8
	add sp, #0xc
	pop {r4, r5, pc}
_021E6208:
	ldr r0, _021E6238 ; =ov00_021E62D4
	mov r1, #0
	bl ov00_021EFF04
	add sp, #0xc
	pop {r4, r5, pc}
_021E6214:
	ldr r0, _021E6224 ; =_0221A680
	mov r2, #0xc
	ldr r1, [r0]
	ldr r0, _021E623C ; =0x00001070
	str r2, [r1, r0]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021E6224: .word _0221A680
_021E6228: .word 0x000010E6
_021E622C: .word ov00_021E629C
_021E6230: .word ov00_021E6274
_021E6234: .word ov00_021E6298
_021E6238: .word ov00_021E62D4
_021E623C: .word 0x00001070
	thumb_func_end ov00_021E61A8

