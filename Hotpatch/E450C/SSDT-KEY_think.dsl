/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-KEY_think.aml, Sun Jun 17 23:19:39 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001CF (463)
 *     Revision         0x02
 *     Checksum         0xD8
 *     OEM ID           "hack"
 *     OEM Table ID     "KEY"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "KEY", 0x00000000)
{
    External (_SB_.LID_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HWAK, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.PS2K, DeviceObj)    // (from opcode)
    External (RMCF.XKEY, IntObj)    // (from opcode)
    External (RRBF, IntObj)    // (from opcode)

    Scope (\_SB.PCI0.LPC.EC)
    {
        Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (LEqual (\RMCF.XKEY, Zero))
            {
                Notify (\_SB.PCI0.LPC.PS2K, 0x0406)
            }
            ElseIf (LEqual (\RMCF.XKEY, One))
            {
                Notify (\_SB.PCI0.LPC.PS2K, 0x10)
            }
            Else
            {
            }
        }

        Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (LEqual (\RMCF.XKEY, Zero))
            {
                Notify (\_SB.PCI0.LPC.PS2K, 0x0405)
            }
            ElseIf (LEqual (\RMCF.XKEY, One))
            {
                Notify (\_SB.PCI0.LPC.PS2K, 0x20)
            }
            Else
            {
            }
        }

        Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query
        {
        }
    }

    Method (_SB.PCI0.LPC.PS2K._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LNot (Arg2))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x06)
        {
            "RM,oem-id", 
            "LENOVO", 
            "RM,oem-table-id", 
            "ThinkPad", 
            "AAPL,has-embedded-fn-keys", 
            Buffer (0x04)
            {
                 0x01, 0x00, 0x00, 0x00                         
            }
        })
    }
}

