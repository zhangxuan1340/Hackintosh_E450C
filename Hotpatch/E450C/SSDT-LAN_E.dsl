/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-LAN_E.aml, Sun Jun 17 23:19:39 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000009A (154)
 *     Revision         0x02
 *     Checksum         0xFB
 *     OEM ID           "hack"
 *     OEM Table ID     "LAN_E"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "LAN_E", 0x00000000)
{
    External (_SB_.PCI0.RP05.PXSX, DeviceObj)    // (from opcode)

    Method (_SB.PCI0.RP05.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
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
            "built-in", 
            Buffer (One)
            {
                 0x00                                           
            }, 

            "model", 
            "Realtek", 
            "device_type", 
            Buffer (0x10)
            {
                "Realtek"
            }
        })
    }
}

