/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-SHUTUSB.aml, Sun Jun 17 23:19:39 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000067 (103)
 *     Revision         0x02
 *     Checksum         0x4B
 *     OEM ID           "hack"
 *     OEM Table ID     "SHUT#USB"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "SHUT#USB", 0x00000000)
{
    External (_SB_.PCI0.XHC_, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI0.XHC)
    {
        OperationRegion (XHCZ, PCI_Config, Zero, 0x0100)
        Field (XHCZ, AnyAcc, NoLock, Preserve)
        {
            Offset (0x75), 
            PMZZ,   1, 
                ,   6
        }
    }
}

