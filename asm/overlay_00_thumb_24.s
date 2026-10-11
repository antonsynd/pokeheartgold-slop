	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E65D4
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E65D4
ov00_021E65D4: ; 0x021E65D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl OS_DisableInterrupts
	add r7, r0, #0
	ldr r0, _021E662C ; =_0221A680
	add r2, r6, #0
	ldr r1, [r0]
	ldr r0, _021E6630 ; =0x00000F94
	ldr r0, [r1, r0]
	add r1, r5, #0
	bl NNS_FndAllocFromExpHeapEx
	add r4, r0, #0
	bne _021E660E
	ldr r0, _021E662C ; =_0221A680
	ldr r1, _021E6634 ; =0x00000F98
	ldr r0, [r0]
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _021E660E
	add r1, r1, #4
	ldr r0, [r0, r1]
	add r1, r5, #0
	add r2, r6, #0
	bl NNS_FndAllocFromExpHeapEx
	add r4, r0, #0
_021E660E:
	cmp r4, #0
	bne _021E6622
	mov r0, #1
	bl sub_02039AD8
	add r0, r7, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6622:
	add r0, r7, #0
	bl OS_RestoreInterrupts
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E662C: .word _0221A680
_021E6630: .word 0x00000F94
_021E6634: .word 0x00000F98
	thumb_func_end ov00_021E65D4

