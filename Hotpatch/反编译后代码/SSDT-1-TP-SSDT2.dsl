/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-1-TP-SSDT2.aml, Wed Jun 13 10:42:09 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000486 (1158)
 *     Revision         0x01
 *     Checksum         0xB9
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TP-SSDT2"
 *     OEM Revision     0x00000200 (512)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "TP-SSDT2", 0x00000200)
{
    /*
     * iASL Warning: There were 4 external control methods found during
     * disassembly, but only 1 was resolved (3 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.PCI0.LPC_.EC__.BFRQ, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPC_.EC__.BRCD, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPC_.EC__.BRNS, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (_SB_.PCI0.LPC_.EC__.BRTW, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.PEG_.VID_.ISOP, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.PEG_.VID_.LCD0, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.VID_.AINT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.VID_.LCD0, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.VID_.PFMB, FieldUnitObj)
    External (BRLV, IntObj)    // Warning: Unknown object
    External (NBCF, IntObj)    // Warning: Unknown object
    External (UCMS, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (VBRC, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (WIN7, UnknownObj)    // Warning: Unknown object
    External (WIN8, IntObj)    // Warning: Unknown object
    External (WVIS, IntObj)    // Warning: Unknown object

    Scope (\)
    {
        Method (KOU2, 0, NotSerialized)
        {
            Stall (0x64)
        }
    }

    Scope (\_SB.PCI0.VID.LCD0)
    {
        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
        {
            If (\WVIS)
            {
                Store (0x01, \NBCF)
            }

            Store (\_SB.PCI0.LPC.EC.BFRQ, Local0)
            If (LNotEqual (\_SB.PCI0.VID.PFMB, Local0))
            {
                \_SB.PCI0.VID.AINT (0x03, Local0)
            }

            If (\WIN8)
            {
                Return (Package (0x67)
                {
                    0x64, 
                    0x64, 
                    0x00, 
                    0x01, 
                    0x02, 
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1B, 
                    0x1C, 
                    0x1D, 
                    0x1E, 
                    0x1F, 
                    0x20, 
                    0x21, 
                    0x22, 
                    0x23, 
                    0x24, 
                    0x25, 
                    0x26, 
                    0x27, 
                    0x28, 
                    0x29, 
                    0x2A, 
                    0x2B, 
                    0x2C, 
                    0x2D, 
                    0x2E, 
                    0x2F, 
                    0x30, 
                    0x31, 
                    0x32, 
                    0x33, 
                    0x34, 
                    0x35, 
                    0x36, 
                    0x37, 
                    0x38, 
                    0x39, 
                    0x3A, 
                    0x3B, 
                    0x3C, 
                    0x3D, 
                    0x3E, 
                    0x3F, 
                    0x40, 
                    0x41, 
                    0x42, 
                    0x43, 
                    0x44, 
                    0x45, 
                    0x46, 
                    0x47, 
                    0x48, 
                    0x49, 
                    0x4A, 
                    0x4B, 
                    0x4C, 
                    0x4D, 
                    0x4E, 
                    0x4F, 
                    0x50, 
                    0x51, 
                    0x52, 
                    0x53, 
                    0x54, 
                    0x55, 
                    0x56, 
                    0x57, 
                    0x58, 
                    0x59, 
                    0x5A, 
                    0x5B, 
                    0x5C, 
                    0x5D, 
                    0x5E, 
                    0x5F, 
                    0x60, 
                    0x61, 
                    0x62, 
                    0x63, 
                    0x64
                })
            }

            Return (\_SB.PCI0.LPC.EC.BRTW)
        }

        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
        {
            If (\WIN8)
            {
                \_SB.PCI0.VID.AINT (0x01, \_SB.PCI0.LPC.EC.BRCD)
                Arg0
            }
            Else
            {
                Store (Match (\_SB.PCI0.LPC.EC.BRTW, MEQ, Arg0, MTR, 0x00, 0x02), Local0)
                If (LNotEqual (Local0, Ones))
                {
                    Subtract (Local0, 0x02, Local1)
                    Store (Local1, \BRLV)
                    \_SB.PCI0.LPC.EC.BRNS (\UCMS (0x16))
                }
            }
        }

        Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
        {
            Store (\BRLV, Local0)
            Add (Local0, 0x02, Local1)
            If (LLessEqual (Local1, 0x11))
            {
                Return (DerefOf (Index (\_SB.PCI0.LPC.EC.BRTW, Local1)))
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.PEG.VID.LCD0)
    {
        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
        {
            If (\WVIS)
            {
                Store (0x01, \NBCF)
            }

            If (\WIN8)
            {
                Return (Package (0x67)
                {
                    0x64, 
                    0x64, 
                    0x00, 
                    0x01, 
                    0x02, 
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1B, 
                    0x1C, 
                    0x1D, 
                    0x1E, 
                    0x1F, 
                    0x20, 
                    0x21, 
                    0x22, 
                    0x23, 
                    0x24, 
                    0x25, 
                    0x26, 
                    0x27, 
                    0x28, 
                    0x29, 
                    0x2A, 
                    0x2B, 
                    0x2C, 
                    0x2D, 
                    0x2E, 
                    0x2F, 
                    0x30, 
                    0x31, 
                    0x32, 
                    0x33, 
                    0x34, 
                    0x35, 
                    0x36, 
                    0x37, 
                    0x38, 
                    0x39, 
                    0x3A, 
                    0x3B, 
                    0x3C, 
                    0x3D, 
                    0x3E, 
                    0x3F, 
                    0x40, 
                    0x41, 
                    0x42, 
                    0x43, 
                    0x44, 
                    0x45, 
                    0x46, 
                    0x47, 
                    0x48, 
                    0x49, 
                    0x4A, 
                    0x4B, 
                    0x4C, 
                    0x4D, 
                    0x4E, 
                    0x4F, 
                    0x50, 
                    0x51, 
                    0x52, 
                    0x53, 
                    0x54, 
                    0x55, 
                    0x56, 
                    0x57, 
                    0x58, 
                    0x59, 
                    0x5A, 
                    0x5B, 
                    0x5C, 
                    0x5D, 
                    0x5E, 
                    0x5F, 
                    0x60, 
                    0x61, 
                    0x62, 
                    0x63, 
                    0x64
                })
            }

            Return (\_SB.PCI0.LPC.EC.BRTW)
        }

        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
        {
            If (LAnd (LNotEqual (\WIN7, 0x00), \_SB.PCI0.PEG.VID.ISOP))
            {
                \_SB.PCI0.VID.LCD0._BCM (Arg0)
            }
            ElseIf (\NBCF)
            {
                Store (Match (\_SB.PCI0.LPC.EC.BRTW, MEQ, Arg0, MTR, 0x00, 0x02), Local0)
                If (LNotEqual (Local0, Ones))
                {
                    Subtract (Local0, 0x02, Local1)
                    \VBRC (Local1)
                    Store (Local1, \BRLV)
                }
            }
        }

        Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
        {
            If (LAnd (LNotEqual (\WIN7, 0x00), \_SB.PCI0.PEG.VID.ISOP))
            {
                Return (\_SB.PCI0.VID.LCD0._BQC ())
            }
            Else
            {
                Store (\BRLV, Local0)
                Add (Local0, 0x02, Local1)
                If (LLessEqual (Local1, 0x11))
                {
                    Return (DerefOf (Index (\_SB.PCI0.LPC.EC.BRTW, Local1)))
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}

