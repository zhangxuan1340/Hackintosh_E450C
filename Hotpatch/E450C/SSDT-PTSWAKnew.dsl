/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-PTSWAKnew.aml, Sun Jun 17 23:19:39 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001D0 (464)
 *     Revision         0x02
 *     Checksum         0xD9
 *     OEM ID           "hack"
 *     OEM Table ID     "PTSWAK"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "PTSWAK", 0x00000000)
{
    External (_SB_.LID_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HCMU, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.PMZZ, FieldUnitObj)    // (from opcode)
    External (_SI_._SST, MethodObj)    // 1 Arguments (from opcode)
    External (DGPU._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (DGPU._ON_, MethodObj)    // 0 Arguments (from opcode)
    External (DGPU.RMEN, IntObj)
    External (LIDB, FieldUnitObj)    // (from opcode)
    External (RMCF.XPEE, IntObj)    // (from opcode)
    External (ZPTS, MethodObj)    // 1 Arguments (from opcode)

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (LOr (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)), LEqual (Arg0, 0x05)))
        {
            If (CondRefOf (\DGPU.RMEN))
            {
                \DGPU._ON ()
            }

            ZPTS (Arg0)
            If (LEqual (0x05, Arg0))
            {
                If (LEqual (\_SB.PCI0.LPC.EC.HCMU, Zero))
                {
                    Store (One, \_SB.PCI0.LPC.EC.HCMU)
                }

                If (CondRefOf (\RMCF.XPEE))
                {
                    If (LAnd (\RMCF.XPEE, CondRefOf (\_SB.PCI0.XHC.PMZZ)))
                    {
                        Store (Zero, \_SB.PCI0.XHC.PMZZ)
                    }
                }
            }
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        If (LOr (LLess (Arg0, One), LGreater (Arg0, 0x05)))
        {
            Store (0x03, Arg0)
        }

        If (LEqual (0x03, Arg0))
        {
            \_SI._SST (One)
            Notify (\_SB.LID, 0x80)
            Store (Zero, \_SB.PCI0.LPC.EC.HCMU)
            Store (Zero, \LIDB)
        }

        If (CondRefOf (\DGPU.RMEN))
        {
            \DGPU._OFF ()
        }

        Return (Arg0)
    }
}

