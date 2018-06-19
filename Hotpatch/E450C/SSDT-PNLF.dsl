/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-PNLF.aml, Sun Jun 17 23:19:39 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000030F (783)
 *     Revision         0x02
 *     Checksum         0xA2
 *     OEM ID           "hack"
 *     OEM Table ID     "PNLF"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "PNLF", 0x00000000)
{
    External (_SB_.PCI0.IGPU, DeviceObj)    // (from opcode)
    External (RMCF.BKLT, IntObj)    // (from opcode)
    External (RMCF.FBTP, IntObj)    // (from opcode)
    External (RMCF.LMAX, IntObj)    // (from opcode)

    Scope (_SB.PCI0.IGPU)
    {
        OperationRegion (IGD5, PCI_Config, Zero, 0x14)
    }

    Device (_SB.PCI0.IGPU.PNLF)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
        Name (_CID, "backlight")  // _CID: Compatible ID
        Name (_UID, Zero)  // _UID: Unique ID
        Name (_STA, 0x0B)  // _STA: Status
        Field (^IGD5, AnyAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            GDID,   16, 
            Offset (0x10), 
            BAR1,   32
        }

        OperationRegion (RMB1, SystemMemory, And (BAR1, 0xFFFFFFFFFFFFFFF0), 0x000E1184)
        Field (RMB1, AnyAcc, Lock, Preserve)
        {
            Offset (0x48250), 
            LEV2,   32, 
            LEVL,   32, 
            Offset (0x70040), 
            P0BL,   32, 
            Offset (0xC8250), 
            LEVW,   32, 
            LEVX,   32, 
            Offset (0xE1180), 
            PCHL,   32
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (CondRefOf (\RMCF.BKLT))
            {
                If (LNotEqual (One, \RMCF.BKLT))
                {
                    Return (Zero)
                }
            }

            Store (GDID, Local0)
            Store (Ones, Local2)
            If (CondRefOf (\RMCF.LMAX))
            {
                Store (\RMCF.LMAX, Local2)
            }

            Store (Zero, Local3)
            If (CondRefOf (\RMCF.FBTP))
            {
                Store (\RMCF.FBTP, Local3)
            }

            If (LEqual (Zero, Local3))
            {
                If (LNotEqual (Ones, Match (Package (0x10)
                                {
                                    0x010B, 
                                    0x0102, 
                                    0x0106, 
                                    0x1106, 
                                    0x1601, 
                                    0x0116, 
                                    0x0126, 
                                    0x0112, 
                                    0x0122, 
                                    0x0152, 
                                    0x0156, 
                                    0x0162, 
                                    0x0166, 
                                    0x016A, 
                                    0x46, 
                                    0x42
                                }, MEQ, Local0, MTR, Zero, Zero)))
                {
                    Store (One, Local3)
                }
                Else
                {
                    Store (0x02, Local3)
                }
            }

            If (LEqual (One, Local3))
            {
                If (LEqual (Ones, Local2))
                {
                    Store (0x0710, Local2)
                }

                ShiftRight (LEVX, 0x10, Local1)
                If (LNot (Local1))
                {
                    Store (Local2, Local1)
                }

                If (LNotEqual (Local2, Local1))
                {
                    Divide (Multiply (LEVL, Local2), Local1, , Local0)
                    ShiftLeft (Local2, 0x10, Local3)
                    If (LGreater (Local2, Local1))
                    {
                        Store (Local3, LEVX)
                        Store (Local0, LEVL)
                    }
                    Else
                    {
                        Store (Local0, LEVL)
                        Store (Local3, LEVX)
                    }
                }
            }
            ElseIf (LEqual (0x02, Local3))
            {
                If (LEqual (Ones, Local2))
                {
                    If (LNotEqual (Ones, Match (Package (0x16)
                                    {
                                        0x0D26, 
                                        0x0A26, 
                                        0x0D22, 
                                        0x0412, 
                                        0x0416, 
                                        0x0A16, 
                                        0x0A1E, 
                                        0x0A1E, 
                                        0x0A2E, 
                                        0x041E, 
                                        0x041A, 
                                        0x0BD1, 
                                        0x0BD2, 
                                        0x0BD3, 
                                        0x1606, 
                                        0x160E, 
                                        0x1616, 
                                        0x161E, 
                                        0x1626, 
                                        0x1622, 
                                        0x1612, 
                                        0x162B
                                    }, MEQ, Local0, MTR, Zero, Zero)))
                    {
                        Store (0x0AD9, Local2)
                    }
                    Else
                    {
                        Store (0x056C, Local2)
                    }
                }

                Store (0xC0000000, LEVW)
                ShiftRight (LEVX, 0x10, Local1)
                If (LNot (Local1))
                {
                    Store (Local2, Local1)
                }

                If (LNotEqual (Local2, Local1))
                {
                    Or (Divide (Multiply (And (LEVX, 0xFFFF), Local2), Local1, ), ShiftLeft (Local2, 0x10), Local0)
                    Store (Local0, LEVX)
                }
            }

            If (LEqual (Local2, 0x0710))
            {
                Store (0x0E, _UID)
            }
            ElseIf (LEqual (Local2, 0x0AD9))
            {
                Store (0x0F, _UID)
            }
            ElseIf (LEqual (Local2, 0x056C))
            {
                Store (0x10, _UID)
            }
            Else
            {
                Store (0x63, _UID)
            }
        }
    }
}

