/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-IGPU.aml, Sun Jun 17 23:19:39 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001539 (5433)
 *     Revision         0x02
 *     Checksum         0xF6
 *     OEM ID           "hack"
 *     OEM Table ID     "_IGPU"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_IGPU", 0x00000000)
{
    External (_SB_.PCI0.IGPU, DeviceObj)    // (from opcode)
    External (RMCF.HIGH, IntObj)    // (from opcode)
    External (RMCF.IGPI, IntObj)    // (from opcode)
    External (RMCF.TYPE, IntObj)    // (from opcode)
    External (RMGO, PkgObj)    // (from opcode)

    Scope (_SB.PCI0.IGPU)
    {
        OperationRegion (RMP1, PCI_Config, 0x02, 0x02)
        Field (RMP1, AnyAcc, NoLock, Preserve)
        {
            GDID,   16
        }

        Name (LAPL, Package (0x11)
        {
            0x0116, 
            0x0126, 
            Zero, 
            Package (0x08)
            {
                "AAPL,snb-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x01, 0x00                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 3000"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "AAPL,os-info", 
                Buffer (0x14)
                {
                    /* 0000 */  0x30, 0x49, 0x01, 0x11, 0x11, 0x11, 0x08, 0x00,
                    /* 0008 */  0x00, 0x01, 0xF0, 0x1F, 0x01, 0x00, 0x00, 0x00,
                    /* 0010 */  0x10, 0x07, 0x00, 0x00                         
                }
            }, 

            0x0166, 
            0x0162, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x03, 0x00, 0x66, 0x01                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 4000"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x0A1E, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x06, 0x00, 0x26, 0x0A                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 4200"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x12, 0x04, 0x00, 0x00                         
                }
            }, 

            0x0A16, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x06, 0x00, 0x26, 0x0A                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 4400"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x12, 0x04, 0x00, 0x00                         
                }
            }, 

            0x0416, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x06, 0x00, 0x26, 0x0A                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 4600"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x12, 0x04, 0x00, 0x00                         
                }
            }
        })
        Name (LAPH, Package (0x16)
        {
            0x0116, 
            0x0126, 
            Zero, 
            Package (0x0A)
            {
                "AAPL,snb-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x01, 0x00                         
                }, 

                "AAPL00,DualLink", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 3000"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "AAPL,os-info", 
                Buffer (0x14)
                {
                    /* 0000 */  0x30, 0x49, 0x01, 0x11, 0x11, 0x11, 0x08, 0x00,
                    /* 0008 */  0x00, 0x01, 0xF0, 0x1F, 0x01, 0x00, 0x00, 0x00,
                    /* 0010 */  0x10, 0x07, 0x00, 0x00                         
                }
            }, 

            0x0166, 
            0x0162, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x04, 0x00, 0x66, 0x01                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 4000"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x0A1E, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x08, 0x00, 0x2E, 0x0A                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 4200"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x12, 0x04, 0x00, 0x00                         
                }
            }, 

            0x0A16, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x08, 0x00, 0x2E, 0x0A                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 4400"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x12, 0x04, 0x00, 0x00                         
                }
            }, 

            0x0416, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x08, 0x00, 0x2E, 0x0A                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 4600"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x12, 0x04, 0x00, 0x00                         
                }
            }, 

            0x0A26, 
            0x0A2E, 
            0x0D26, 
            Zero, 
            Package (0x04)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x08, 0x00, 0x2E, 0x0A                         
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }
        })
        Name (LAPG, Package (0x0E)
        {
            0x161E, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x1E, 0x16                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 5300"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x1616, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x04, 0x00, 0x26, 0x16                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 5500"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x1612, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x04, 0x00, 0x26, 0x16                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 5600"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x1626, 
            0x162B, 
            0x1622, 
            Zero, 
            Package (0x04)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x04, 0x00, 0x26, 0x16                         
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }
        })
        Name (DESK, Package (0x63)
        {
            0x0116, 
            0x0126, 
            Zero, 
            Package (0x08)
            {
                "AAPL,snb-platform-id", 
                Buffer (0x04)
                {
                     0x10, 0x00, 0x03, 0x00                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 3000"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "AAPL00,DualLink", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                }
            }, 

            0x0112, 
            0x0122, 
            Zero, 
            Package (0x0A)
            {
                "AAPL,snb-platform-id", 
                Buffer (0x04)
                {
                     0x10, 0x00, 0x03, 0x00                         
                }, 

                "AAPL00,DualLink", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 3000"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x26, 0x01, 0x00, 0x00                         
                }
            }, 

            0x0166, 
            0x0162, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x0A, 0x00, 0x66, 0x01                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 4000"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x0A1E, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x03, 0x00, 0x22, 0x0D                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 4200"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x12, 0x04, 0x00, 0x00                         
                }
            }, 

            0x0A16, 
            0x041E, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x03, 0x00, 0x22, 0x0D                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 4400"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x12, 0x04, 0x00, 0x00                         
                }
            }, 

            0x0416, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x03, 0x00, 0x22, 0x0D                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 4600"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x12, 0x04, 0x00, 0x00                         
                }
            }, 

            0x0412, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x03, 0x00, 0x22, 0x0D                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 4600"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x0A26, 
            0x0A2E, 
            0x0D22, 
            0x0D26, 
            Zero, 
            Package (0x04)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x03, 0x00, 0x22, 0x0D                         
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x161E, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x1E, 0x16                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 5300"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x1616, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x02, 0x00, 0x16, 0x16                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 5500"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x1612, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x02, 0x00, 0x16, 0x16                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel HD Graphics 5600"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x1626, 
            0x162B, 
            Zero, 
            Package (0x04)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x02, 0x00, 0x16, 0x16                         
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x1622, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x02, 0x00, 0x22, 0x16                         
                }, 

                "model", 
                Buffer (0x1D)
                {
                    "Intel Iris Pro Graphics 6200"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x1902, 
            0x1906, 
            Zero, 
            Package (0x0C)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x1E, 0x19                         
                }, 

                "model", 
                Buffer (0x16)
                {
                    "Intel HD Graphics 510"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x02, 0x19, 0x00, 0x00                         
                }, 

                "RM,device-id", 
                Buffer (0x04)
                {
                     0x02, 0x19, 0x00, 0x00                         
                }, 

                "AAPL,GfxYTile", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                }
            }, 

            0x191E, 
            Zero, 
            Package (0x0A)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x1E, 0x19                         
                }, 

                "model", 
                Buffer (0x16)
                {
                    "Intel HD Graphics 515"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "RM,device-id", 
                Buffer (0x04)
                {
                     0x1E, 0x19, 0x00, 0x00                         
                }, 

                "AAPL,GfxYTile", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                }
            }, 

            0x1916, 
            Zero, 
            Package (0x0A)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x02, 0x00, 0x16, 0x19                         
                }, 

                "model", 
                Buffer (0x16)
                {
                    "Intel HD Graphics 520"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "RM,device-id", 
                Buffer (0x04)
                {
                     0x16, 0x19, 0x00, 0x00                         
                }, 

                "AAPL,GfxYTile", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                }
            }, 

            0x1912, 
            Zero, 
            Package (0x0A)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x02, 0x00, 0x16, 0x19                         
                }, 

                "model", 
                Buffer (0x16)
                {
                    "Intel HD Graphics 530"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "RM,device-id", 
                Buffer (0x04)
                {
                     0x12, 0x19, 0x00, 0x00                         
                }, 

                "AAPL,GfxYTile", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                }
            }, 

            0x191B, 
            Zero, 
            Package (0x0C)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x1B, 0x19                         
                }, 

                "model", 
                Buffer (0x16)
                {
                    "Intel HD Graphics 530"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x1B, 0x19, 0x00, 0x00                         
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "RM,device-id", 
                Buffer (0x04)
                {
                     0x1B, 0x19, 0x00, 0x00                         
                }, 

                "AAPL,GfxYTile", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                }
            }, 

            0x1926, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x02, 0x00, 0x26, 0x19                         
                }, 

                "model", 
                Buffer (0x18)
                {
                    "Intel Iris Graphics 540"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "RM,device-id", 
                Buffer (0x04)
                {
                     0x26, 0x19, 0x00, 0x00                         
                }
            }, 

            0x1927, 
            Zero, 
            Package (0x0A)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x02, 0x00, 0x26, 0x19                         
                }, 

                "model", 
                Buffer (0x18)
                {
                    "Intel Iris Graphics 550"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x26, 0x19, 0x00, 0x00                         
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "RM,device-id", 
                Buffer (0x04)
                {
                     0x26, 0x19, 0x00, 0x00                         
                }
            }, 

            0x193B, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x05, 0x00, 0x3B, 0x19                         
                }, 

                "model", 
                Buffer (0x1C)
                {
                    "Intel Iris Pro Graphics 580"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "RM,device-id", 
                Buffer (0x04)
                {
                     0x3B, 0x19, 0x00, 0x00                         
                }
            }, 

            0x591E, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x1E, 0x59                         
                }, 

                "model", 
                Buffer (0x16)
                {
                    "Intel HD Graphics 615"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x5916, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x16, 0x59                         
                }, 

                "model", 
                Buffer (0x16)
                {
                    "Intel HD Graphics 620"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x5917, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x16, 0x59                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel UHD Graphics 620"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x16, 0x59, 0x00, 0x00                         
                }
            }, 

            0x5912, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x12, 0x59                         
                }, 

                "model", 
                Buffer (0x16)
                {
                    "Intel HD Graphics 630"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x591B, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x1B, 0x59                         
                }, 

                "model", 
                Buffer (0x16)
                {
                    "Intel HD Graphics 630"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x5926, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x02, 0x00, 0x26, 0x59                         
                }, 

                "model", 
                Buffer (0x1D)
                {
                    "Intel Iris Plus Graphics 640"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x5927, 
            Zero, 
            Package (0x06)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x02, 0x00, 0x26, 0x59                         
                }, 

                "model", 
                Buffer (0x1D)
                {
                    "Intel Iris Plus Graphics 650"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }
            }, 

            0x3E91, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x12, 0x59                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel UHD Graphics 620"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x12, 0x59, 0x00, 0x00                         
                }
            }, 

            0x3E92, 
            Zero, 
            Package (0x08)
            {
                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x12, 0x59                         
                }, 

                "model", 
                Buffer (0x17)
                {
                    "Intel UHD Graphics 630"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x12, 0x59, 0x00, 0x00                         
                }
            }
        })
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (CondRefOf (\RMCF.IGPI))
            {
                If (LEqual (Ones, \RMCF.IGPI))
                {
                    Return (Zero)
                }
            }

            If (LNot (Arg2))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Store (Ones, Local0)
            While (One)
            {
                If (CondRefOf (\RMGO))
                {
                    Store (RMGO, Local1)
                    Store (Match (Local1, MEQ, GDID, MTR, Zero, Zero), Local0)
                    If (LNotEqual (Ones, Local0))
                    {
                        Break
                    }
                }

                If (CondRefOf (\RMCF.TYPE))
                {
                    If (LEqual (One, \RMCF.TYPE))
                    {
                        Store (Zero, Local2)
                        If (CondRefOf (\RMCF.HIGH))
                        {
                            Store (\RMCF.HIGH, Local2)
                        }

                        If (LEqual (Zero, Local2))
                        {
                            Store (LAPL, Local1)
                            Store (Match (Local1, MEQ, GDID, MTR, Zero, Zero), Local0)
                            If (LNotEqual (Ones, Local0))
                            {
                                Break
                            }
                        }
                        ElseIf (LEqual (One, Local2))
                        {
                            Store (LAPH, Local1)
                            Store (Match (Local1, MEQ, GDID, MTR, Zero, Zero), Local0)
                            If (LNotEqual (Ones, Local0))
                            {
                                Break
                            }
                        }

                        Store (LAPG, Local1)
                        Store (Match (Local1, MEQ, GDID, MTR, Zero, Zero), Local0)
                        If (LNotEqual (Ones, Local0))
                        {
                            Break
                        }
                    }
                }

                Store (DESK, Local1)
                Store (Match (Local1, MEQ, GDID, MTR, Zero, Zero), Local0)
                Break
            }

            If (LEqual (Ones, Local0))
            {
                Return (Package (0x00){})
            }

            Store (DerefOf (Index (Local1, Add (Match (Local1, MEQ, Zero, MTR, Zero, Add (Local0, One)), One))), Local0)
            If (CondRefOf (\RMCF.IGPI))
            {
                If (LNotEqual (Zero, \RMCF.IGPI))
                {
                    CreateDWordField (DerefOf (Index (Local0, One)), Zero, IGPI)
                    Store (\RMCF.IGPI, IGPI)
                }
            }

            Return (Local0)
        }
    }
}

