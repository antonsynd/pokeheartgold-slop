	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public sub_02015300
	.extern _021D10A0

	.public NNS_G3dGlb

	.text
	thumb_func_start sub_02015300
sub_02015300: ; 0x02015300
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl SPL_Load
	ldr r0, _0201533C ; =_021D10A0
	str r4, [r0]
	ldr r1, [r4, #0x18]
	ldr r0, [r4]
	cmp r1, #0
	bne _0201531E
	bl SPL_LoadTexByVRAMManager
	b _02015322
_0201531E:
	bl SPL_LoadTexByCallbackFunction
_02015322:
	ldr r1, [r4, #0x1c]
	ldr r0, [r4]
	cmp r1, #0
	bne _02015330
	bl SPL_LoadTexPlttByVRAMManager
	b _02015334
_02015330:
	bl SPL_LoadTexPlttByCallbackFunction
_02015334:
	ldr r0, _0201533C ; =_021D10A0
	mov r1, #0
	str r1, [r0]
	pop {r4, pc}
	.balign 4, 0
_0201533C: .word _021D10A0
	thumb_func_end sub_02015300

