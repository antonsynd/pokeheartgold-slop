	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E61A8
	.extern _0221A680
	.extern ov00_021E6274
	.extern ov00_021E6298
	.extern ov00_021E629C
	.extern ov00_021E62D4

	.text

	.text
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

