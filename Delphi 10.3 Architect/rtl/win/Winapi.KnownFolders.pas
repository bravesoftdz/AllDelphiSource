{*******************************************************}
{                                                       }
{                Delphi Runtime Library                 }
{                                                       }
{          File: KnownFolders.h                         }
{          Copyright (c) Microsoft Corporation          }
{          All Rights Reserved.                         }
{                                                       }
{       Translator: Embarcadero Technologies, Inc.      }
{ Copyright(c) 1995-2018 Embarcadero Technologies, Inc. }
{              All rights reserved                      }
{                                                       }
{*******************************************************}

unit Winapi.KnownFolders;

{$ALIGN ON}
{$MINENUMSIZE 4}
{$WEAKPACKAGEUNIT}

interface

uses Winapi.Windows;

{$HPPEMIT '#include <KnownFolders.h>'}
{$HPPEMIT LEGACYHPP}

const
// legacy CSIDL value: CSIDL_NETWORK
// display name: "Network"
// legacy display name: "My Network Places"
// default path:
// {D20BEEC4-5CA8-4905-AE3B-BF251EA09B53}
  FOLDERID_NetworkFolder: TGUID                  = '{D20BEEC4-5CA8-4905-AE3B-BF251EA09B53}';
  {$EXTERNALSYM FOLDERID_NetworkFolder}

// {0AC0837C-BBF8-452A-850D-79D08E667CA7}
  FOLDERID_ComputerFolder: TGUID                 = '{0AC0837C-BBF8-452A-850D-79D08E667CA7}';
  {$EXTERNALSYM FOLDERID_ComputerFolder}

// {4D9F7874-4E0C-4904-967B-40B0D20C3E4B}
  FOLDERID_InternetFolder: TGUID                 = '{4D9F7874-4E0C-4904-967B-40B0D20C3E4B}';
  {$EXTERNALSYM FOLDERID_InternetFolder}

// {82A74AEB-AEB4-465C-A014-D097EE346D63}
  FOLDERID_ControlPanelFolder: TGUID             = '{82A74AEB-AEB4-465C-A014-D097EE346D63}';
  {$EXTERNALSYM FOLDERID_ControlPanelFolder}

// {76FC4E2D-D6AD-4519-A663-37BD56068185}
  FOLDERID_PrintersFolder: TGUID                 = '{76FC4E2D-D6AD-4519-A663-37BD56068185}';
  {$EXTERNALSYM FOLDERID_PrintersFolder}

// {43668BF8-C14E-49B2-97C9-747784D784B7}
  FOLDERID_SyncManagerFolder: TGUID              = '{43668BF8-C14E-49B2-97C9-747784D784B7}';
  {$EXTERNALSYM FOLDERID_SyncManagerFolder}

// {0F214138-B1D3-4a90-BBA9-27CBC0C5389A}
  FOLDERID_SyncSetupFolder: TGUID                = '{0F214138-B1D3-4A90-BBA9-27CBC0C5389A}';
  {$EXTERNALSYM FOLDERID_SyncSetupFolder}

// {4bfefb45-347d-4006-a5be-ac0cb0567192}
  FOLDERID_ConflictFolder: TGUID                 = '{4BFEFB45-347D-4006-A5BE-AC0CB0567192}';
  {$EXTERNALSYM FOLDERID_ConflictFolder}

// {289a9a43-be44-4057-a41b-587a76d7e7f9}
  FOLDERID_SyncResultsFolder: TGUID              = '{289A9A43-BE44-4057-A41B-587A76D7E7F9}';
  {$EXTERNALSYM FOLDERID_SyncResultsFolder}

// {B7534046-3ECB-4C18-BE4E-64CD4CB7D6AC}
  FOLDERID_RecycleBinFolder: TGUID               = '{B7534046-3ECB-4C18-BE4E-64CD4CB7D6AC}';
  {$EXTERNALSYM FOLDERID_RecycleBinFolder}

// {6F0CD92B-2E97-45D1-88FF-B0D186B8DEDD}
  FOLDERID_ConnectionsFolder: TGUID              = '{6F0CD92B-2E97-45D1-88FF-B0D186B8DEDD}';
  {$EXTERNALSYM FOLDERID_ConnectionsFolder}

// {FD228CB7-AE11-4AE3-864C-16F3910AB8FE}
  FOLDERID_Fonts: TGUID                          = '{FD228CB7-AE11-4AE3-864C-16F3910AB8FE}';
  {$EXTERNALSYM FOLDERID_Fonts}

// display name:        "Desktop"
// default path:        "C:\Users\<UserName>\Desktop"
// legacy default path: "C:\Documents and Settings\<userName>\Desktop"
// legacy CSIDL value:  CSIDL_DESKTOP
// {B4BFCC3A-DB2C-424C-B029-7FE99A87C641}
  FOLDERID_Desktop: TGUID                        = '{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}';
  {$EXTERNALSYM FOLDERID_Desktop}

// {B97D20BB-F46A-4C97-BA10-5E3608430854}
  FOLDERID_Startup: TGUID                        = '{B97D20BB-F46A-4C97-BA10-5E3608430854}';
  {$EXTERNALSYM FOLDERID_Startup}

// {A77F5D77-2E2B-44C3-A6A2-ABA601054A51}
  FOLDERID_Programs: TGUID                       = '{A77F5D77-2E2B-44C3-A6A2-ABA601054A51}';
  {$EXTERNALSYM FOLDERID_Programs}

// {625B53C3-AB48-4EC1-BA1F-A1EF4146FC19}
  FOLDERID_StartMenu: TGUID                      = '{625B53C3-AB48-4EC1-BA1F-A1EF4146FC19}';
  {$EXTERNALSYM FOLDERID_StartMenu}

// {AE50C081-EBD2-438A-8655-8A092E34987A}
  FOLDERID_Recent: TGUID                         = '{AE50C081-EBD2-438A-8655-8A092E34987A}';
  {$EXTERNALSYM FOLDERID_Recent}

// {8983036C-27C0-404B-8F08-102D10DCFD74}
  FOLDERID_SendTo: TGUID                         = '{8983036C-27C0-404B-8F08-102D10DCFD74}';
  {$EXTERNALSYM FOLDERID_SendTo}

// {FDD39AD0-238F-46AF-ADB4-6C85480369C7}
  FOLDERID_Documents: TGUID                      = '{FDD39AD0-238F-46AF-ADB4-6C85480369C7}';
  {$EXTERNALSYM FOLDERID_Documents}

// {1777F761-68AD-4D8A-87BD-30B759FA33DD}
  FOLDERID_Favorites: TGUID                      = '{1777F761-68AD-4D8A-87BD-30B759FA33DD}';
  {$EXTERNALSYM FOLDERID_Favorites}

// {C5ABBF53-E17F-4121-8900-86626FC2C973}
  FOLDERID_NetHood: TGUID                        = '{C5ABBF53-E17F-4121-8900-86626FC2C973}';
  {$EXTERNALSYM FOLDERID_NetHood}

// {9274BD8D-CFD1-41C3-B35E-B13F55A758F4}
  FOLDERID_PrintHood: TGUID                      = '{9274BD8D-CFD1-41C3-B35E-B13F55A758F4}';
  {$EXTERNALSYM FOLDERID_PrintHood}

// {A63293E8-664E-48DB-A079-DF759E0509F7}
  FOLDERID_Templates: TGUID                      = '{A63293E8-664E-48DB-A079-DF759E0509F7}';
  {$EXTERNALSYM FOLDERID_Templates}

// {82A5EA35-D9CD-47C5-9629-E15D2F714E6E}
  FOLDERID_CommonStartup: TGUID                  = '{82A5EA35-D9CD-47C5-9629-E15D2F714E6E}';
  {$EXTERNALSYM FOLDERID_CommonStartup}

// {0139D44E-6AFE-49F2-8690-3DAFCAE6FFB8}
  FOLDERID_CommonPrograms: TGUID                 = '{0139D44E-6AFE-49F2-8690-3DAFCAE6FFB8}';
  {$EXTERNALSYM FOLDERID_CommonPrograms}

// {A4115719-D62E-491D-AA7C-E74B8BE3B067}
  FOLDERID_CommonStartMenu: TGUID                = '{A4115719-D62E-491D-AA7C-E74B8BE3B067}';
  {$EXTERNALSYM FOLDERID_CommonStartMenu}

// {C4AA340D-F20F-4863-AFEF-F87EF2E6BA25}
  FOLDERID_PublicDesktop: TGUID                  = '{C4AA340D-F20F-4863-AFEF-F87EF2E6BA25}';
  {$EXTERNALSYM FOLDERID_PublicDesktop}

// {62AB5D82-FDC1-4DC3-A9DD-070D1D495D97}
  FOLDERID_ProgramData: TGUID                    = '{62AB5D82-FDC1-4DC3-A9DD-070D1D495D97}';
  {$EXTERNALSYM FOLDERID_ProgramData}

// {B94237E7-57AC-4347-9151-B08C6C32D1F7}
  FOLDERID_CommonTemplates: TGUID                = '{B94237E7-57AC-4347-9151-B08C6C32D1F7}';
  {$EXTERNALSYM FOLDERID_CommonTemplates}

// {ED4824AF-DCE4-45A8-81E2-FC7965083634}
  FOLDERID_PublicDocuments: TGUID                = '{ED4824AF-DCE4-45A8-81E2-FC7965083634}';
  {$EXTERNALSYM FOLDERID_PublicDocuments}

// {3EB685DB-65F9-4CF6-A03A-E3EF65729F3D}
  FOLDERID_RoamingAppData: TGUID                 = '{3EB685DB-65F9-4CF6-A03A-E3EF65729F3D}';
  {$EXTERNALSYM FOLDERID_RoamingAppData}

// {F1B32785-6FBA-4FCF-9D55-7B8E7F157091}
  FOLDERID_LocalAppData: TGUID                   = '{F1B32785-6FBA-4FCF-9D55-7B8E7F157091}';
  {$EXTERNALSYM FOLDERID_LocalAppData}

// {A520A1A4-1780-4FF6-BD18-167343C5AF16}
  FOLDERID_LocalAppDataLow: TGUID                = '{A520A1A4-1780-4FF6-BD18-167343C5AF16}';
  {$EXTERNALSYM FOLDERID_LocalAppDataLow}

// {352481E8-33BE-4251-BA85-6007CAEDCF9D}
  FOLDERID_InternetCache: TGUID                  = '{352481E8-33BE-4251-BA85-6007CAEDCF9D}';
  {$EXTERNALSYM FOLDERID_InternetCache}

// {2B0F765D-C0E9-4171-908E-08A611B84FF6}
  FOLDERID_Cookies: TGUID                        = '{2B0F765D-C0E9-4171-908E-08A611B84FF6}';
  {$EXTERNALSYM FOLDERID_Cookies}

// {D9DC8A3B-B784-432E-A781-5A1130A75963}
  FOLDERID_History: TGUID                        = '{D9DC8A3B-B784-432E-A781-5A1130A75963}';
  {$EXTERNALSYM FOLDERID_History}

// {1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}
  FOLDERID_System: TGUID                         = '{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}';
  {$EXTERNALSYM FOLDERID_System}

// {D65231B0-B2F1-4857-A4CE-A8E7C6EA7D27}
  FOLDERID_SystemX86: TGUID                      = '{D65231B0-B2F1-4857-A4CE-A8E7C6EA7D27}';
  {$EXTERNALSYM FOLDERID_SystemX86}

// {F38BF404-1D43-42F2-9305-67DE0B28FC23}
  FOLDERID_Windows: TGUID                        = '{F38BF404-1D43-42F2-9305-67DE0B28FC23}';
  {$EXTERNALSYM FOLDERID_Windows}

// {5E6C858F-0E22-4760-9AFE-EA3317B67173}
  FOLDERID_Profile: TGUID                        = '{5E6C858F-0E22-4760-9AFE-EA3317B67173}';
  {$EXTERNALSYM FOLDERID_Profile}

// {33E28130-4E1E-4676-835A-98395C3BC3BB}
  FOLDERID_Pictures: TGUID                       = '{33E28130-4E1E-4676-835A-98395C3BC3BB}';
  {$EXTERNALSYM FOLDERID_Pictures}

// {7C5A40EF-A0FB-4BFC-874A-C0F2E0B9FA8E}
  FOLDERID_ProgramFilesX86: TGUID                = '{7C5A40EF-A0FB-4BFC-874A-C0F2E0B9FA8E}';
  {$EXTERNALSYM FOLDERID_ProgramFilesX86}

// {DE974D24-D9C6-4D3E-BF91-F4455120B917}
  FOLDERID_ProgramFilesCommonX86: TGUID          = '{DE974D24-D9C6-4D3E-BF91-F4455120B917}';
  {$EXTERNALSYM FOLDERID_ProgramFilesCommonX86}

// {6D809377-6AF0-444b-8957-A3773F02200E}
  FOLDERID_ProgramFilesX64: TGUID                = '{6D809377-6AF0-444B-8957-A3773F02200E}';
  {$EXTERNALSYM FOLDERID_ProgramFilesX64}

// {6365D5A7-0F0D-45e5-87F6-0DA56B6A4F7D}
  FOLDERID_ProgramFilesCommonX64: TGUID          = '{6365D5A7-0F0D-45E5-87F6-0DA56B6A4F7D}';
  {$EXTERNALSYM FOLDERID_ProgramFilesCommonX64}

// {905e63b6-c1bf-494e-b29c-65b732d3d21a}
  FOLDERID_ProgramFiles: TGUID                   = '{905E63B6-C1BF-494E-B29C-65B732D3D21A}';
  {$EXTERNALSYM FOLDERID_ProgramFiles}

// {F7F1ED05-9F6D-47A2-AAAE-29D317C6F066}
  FOLDERID_ProgramFilesCommon: TGUID             = '{F7F1ED05-9F6D-47A2-AAAE-29D317C6F066}';
  {$EXTERNALSYM FOLDERID_ProgramFilesCommon}

// {5cd7aee2-2219-4a67-b85d-6c9ce15660cb}
  FOLDERID_UserProgramFiles: TGUID               = '{5CD7AEE2-2219-4A67-B85D-6C9CE15660CB}';
  {$EXTERNALSYM FOLDERID_UserProgramFiles}

// {bcbd3057-ca5c-4622-b42d-bc56db0ae516}
  FOLDERID_UserProgramFilesCommon: TGUID         = '{BCBD3057-CA5C-4622-B42D-BC56DB0AE516}';
  {$EXTERNALSYM FOLDERID_UserProgramFilesCommon}

// {724EF170-A42D-4FEF-9F26-B60E846FBA4F}
  FOLDERID_AdminTools: TGUID                     = '{724EF170-A42D-4FEF-9F26-B60E846FBA4F}';
  {$EXTERNALSYM FOLDERID_AdminTools}

// {D0384E7D-BAC3-4797-8F14-CBA229B392B5}
  FOLDERID_CommonAdminTools: TGUID               = '{D0384E7D-BAC3-4797-8F14-CBA229B392B5}';
  {$EXTERNALSYM FOLDERID_CommonAdminTools}

// {4BD8D571-6D19-48D3-BE97-422220080E43}
  FOLDERID_Music: TGUID                          = '{4BD8D571-6D19-48D3-BE97-422220080E43}';
  {$EXTERNALSYM FOLDERID_Music}

// {18989B1D-99B5-455B-841C-AB7C74E4DDFC}
  FOLDERID_Videos: TGUID                         = '{18989B1D-99B5-455B-841C-AB7C74E4DDFC}';
  {$EXTERNALSYM FOLDERID_Videos}

// {C870044B-F49E-4126-A9C3-B52A1FF411E8}
  FOLDERID_Ringtones: TGUID                      = '{C870044B-F49E-4126-A9C3-B52A1FF411E8}';
  {$EXTERNALSYM FOLDERID_Ringtones}

// {B6EBFB86-6907-413C-9AF7-4FC2ABF07CC5}
  FOLDERID_PublicPictures: TGUID                 = '{B6EBFB86-6907-413C-9AF7-4FC2ABF07CC5}';
  {$EXTERNALSYM FOLDERID_PublicPictures}

// {3214FAB5-9757-4298-BB61-92A9DEAA44FF}
  FOLDERID_PublicMusic: TGUID                    = '{3214FAB5-9757-4298-BB61-92A9DEAA44FF}';
  {$EXTERNALSYM FOLDERID_PublicMusic}

// {2400183A-6185-49FB-A2D8-4A392A602BA3}
  FOLDERID_PublicVideos: TGUID                   = '{2400183A-6185-49FB-A2D8-4A392A602BA3}';
  {$EXTERNALSYM FOLDERID_PublicVideos}

// {E555AB60-153B-4D17-9F04-A5FE99FC15EC}
  FOLDERID_PublicRingtones: TGUID                = '{E555AB60-153B-4D17-9F04-A5FE99FC15EC}';
  {$EXTERNALSYM FOLDERID_PublicRingtones}

// {8AD10C31-2ADB-4296-A8F7-E4701232C972}
  FOLDERID_ResourceDir: TGUID                    = '{8AD10C31-2ADB-4296-A8F7-E4701232C972}';
  {$EXTERNALSYM FOLDERID_ResourceDir}

// {2A00375E-224C-49DE-B8D1-440DF7EF3DDC}
  FOLDERID_LocalizedResourcesDir: TGUID          = '{2A00375E-224C-49DE-B8D1-440DF7EF3DDC}';
  {$EXTERNALSYM FOLDERID_LocalizedResourcesDir}

// {C1BAE2D0-10DF-4334-BEDD-7AA20B227A9D}
  FOLDERID_CommonOEMLinks: TGUID                 = '{C1BAE2D0-10DF-4334-BEDD-7AA20B227A9D}';
  {$EXTERNALSYM FOLDERID_CommonOEMLinks}

// {9E52AB10-F80D-49DF-ACB8-4330F5687855}
  FOLDERID_CDBurning: TGUID                      = '{9E52AB10-F80D-49DF-ACB8-4330F5687855}';
  {$EXTERNALSYM FOLDERID_CDBurning}

// {0762D272-C50A-4BB0-A382-697DCD729B80}
  FOLDERID_UserProfiles: TGUID                   = '{0762D272-C50A-4BB0-A382-697DCD729B80}';
  {$EXTERNALSYM FOLDERID_UserProfiles}

// {DE92C1C7-837F-4F69-A3BB-86E631204A23}
  FOLDERID_Playlists: TGUID                      = '{DE92C1C7-837F-4F69-A3BB-86E631204A23}';
  {$EXTERNALSYM FOLDERID_Playlists}

// {15CA69B3-30EE-49C1-ACE1-6B5EC372AFB5}
  FOLDERID_SamplePlaylists: TGUID                = '{15CA69B3-30EE-49C1-ACE1-6B5EC372AFB5}';
  {$EXTERNALSYM FOLDERID_SamplePlaylists}

// {B250C668-F57D-4EE1-A63C-290EE7D1AA1F}
  FOLDERID_SampleMusic: TGUID                    = '{B250C668-F57D-4EE1-A63C-290EE7D1AA1F}';
  {$EXTERNALSYM FOLDERID_SampleMusic}

// {C4900540-2379-4C75-844B-64E6FAF8716B}
  FOLDERID_SamplePictures: TGUID                 = '{C4900540-2379-4C75-844B-64E6FAF8716B}';
  {$EXTERNALSYM FOLDERID_SamplePictures}

// {859EAD94-2E85-48AD-A71A-0969CB56A6CD}
  FOLDERID_SampleVideos: TGUID                   = '{859EAD94-2E85-48AD-A71A-0969CB56A6CD}';
  {$EXTERNALSYM FOLDERID_SampleVideos}

// {69D2CF90-FC33-4FB7-9A0C-EBB0F0FCB43C}
  FOLDERID_PhotoAlbums: TGUID                    = '{69D2CF90-FC33-4FB7-9A0C-EBB0F0FCB43C}';
  {$EXTERNALSYM FOLDERID_PhotoAlbums}

// {DFDF76A2-C82A-4D63-906A-5644AC457385}
  FOLDERID_Public: TGUID                         = '{DFDF76A2-C82A-4D63-906A-5644AC457385}';
  {$EXTERNALSYM FOLDERID_Public}

// {df7266ac-9274-4867-8d55-3bd661de872d}
  FOLDERID_ChangeRemovePrograms: TGUID           = '{DF7266AC-9274-4867-8D55-3BD661DE872D}';
  {$EXTERNALSYM FOLDERID_ChangeRemovePrograms}

// {a305ce99-f527-492b-8b1a-7e76fa98d6e4}
  FOLDERID_AppUpdates: TGUID                     = '{A305CE99-F527-492B-8B1A-7E76FA98D6E4}';
  {$EXTERNALSYM FOLDERID_AppUpdates}

// {de61d971-5ebc-4f02-a3a9-6c82895e5c04}
  FOLDERID_AddNewPrograms: TGUID                 = '{DE61D971-5EBC-4F02-A3A9-6C82895E5C04}';
  {$EXTERNALSYM FOLDERID_AddNewPrograms}

// {374DE290-123F-4565-9164-39C4925E467B}
  FOLDERID_Downloads: TGUID                      = '{374DE290-123F-4565-9164-39C4925E467B}';
  {$EXTERNALSYM FOLDERID_Downloads}

// {3D644C9B-1FB8-4f30-9B45-F670235F79C0}
  FOLDERID_PublicDownloads: TGUID                = '{3D644C9B-1FB8-4F30-9B45-F670235F79C0}';
  {$EXTERNALSYM FOLDERID_PublicDownloads}

// {7d1d3a04-debb-4115-95cf-2f29da2920da}
  FOLDERID_SavedSearches: TGUID                  = '{7D1D3A04-DEBB-4115-95CF-2F29DA2920DA}';
  {$EXTERNALSYM FOLDERID_SavedSearches}

// {52a4f021-7b75-48a9-9f6b-4b87a210bc8f}
  FOLDERID_QuickLaunch: TGUID                    = '{52A4F021-7B75-48A9-9F6B-4B87A210BC8F}';
  {$EXTERNALSYM FOLDERID_QuickLaunch}

// {56784854-C6CB-462b-8169-88E350ACB882}
  FOLDERID_Contacts: TGUID                       = '{56784854-C6CB-462B-8169-88E350ACB882}';
  {$EXTERNALSYM FOLDERID_Contacts}

// {A75D362E-50FC-4fb7-AC2C-A8BEAA314493}
  FOLDERID_SidebarParts: TGUID                   = '{A75D362E-50FC-4FB7-AC2C-A8BEAA314493}';
  {$EXTERNALSYM FOLDERID_SidebarParts}

// {7B396E54-9EC5-4300-BE0A-2482EBAE1A26}
  FOLDERID_SidebarDefaultParts: TGUID            = '{7B396E54-9EC5-4300-BE0A-2482EBAE1A26}';
  {$EXTERNALSYM FOLDERID_SidebarDefaultParts}

// {DEBF2536-E1A8-4c59-B6A2-414586476AEA}
  FOLDERID_PublicGameTasks: TGUID                = '{DEBF2536-E1A8-4C59-B6A2-414586476AEA}';
  {$EXTERNALSYM FOLDERID_PublicGameTasks}

// {054FAE61-4DD8-4787-80B6-090220C4B700}
  FOLDERID_GameTasks: TGUID                      = '{054FAE61-4DD8-4787-80B6-090220C4B700}';
  {$EXTERNALSYM FOLDERID_GameTasks}

// {4C5C32FF-BB9D-43b0-B5B4-2D72E54EAAA4}
  FOLDERID_SavedGames: TGUID                     = '{4C5C32FF-BB9D-43B0-B5B4-2D72E54EAAA4}';
  {$EXTERNALSYM FOLDERID_SavedGames}

// {CAC52C1A-B53D-4edc-92D7-6B2E8AC19434}
  FOLDERID_Games: TGUID                          = '{CAC52C1A-B53D-4EDC-92D7-6B2E8AC19434}';
  {$EXTERNALSYM FOLDERID_Games}

// {98ec0e18-2098-4d44-8644-66979315a281}
  FOLDERID_SEARCH_MAPI: TGUID                    = '{98EC0E18-2098-4D44-8644-66979315A281}';
  {$EXTERNALSYM FOLDERID_SEARCH_MAPI}

// {ee32e446-31ca-4aba-814f-a5ebd2fd6d5e}
  FOLDERID_SEARCH_CSC: TGUID                     = '{EE32E446-31CA-4ABA-814F-A5EBD2FD6D5E}';
  {$EXTERNALSYM FOLDERID_SEARCH_CSC}

// {bfb9d5e0-c6a9-404c-b2b2-ae6db6af4968}
  FOLDERID_Links: TGUID                          = '{BFB9D5E0-C6A9-404C-B2B2-AE6DB6AF4968}';
  {$EXTERNALSYM FOLDERID_Links}

// {f3ce0f7c-4901-4acc-8648-d5d44b04ef8f}
  FOLDERID_UsersFiles: TGUID                     = '{F3CE0F7C-4901-4ACC-8648-D5D44B04EF8F}';
  {$EXTERNALSYM FOLDERID_UsersFiles}

// {A302545D-DEFF-464b-ABE8-61C8648D939B}
  FOLDERID_UsersLibraries: TGUID                 = '{A302545D-DEFF-464B-ABE8-61C8648D939B}';
  {$EXTERNALSYM FOLDERID_UsersLibraries}

// {190337d1-b8ca-4121-a639-6d472d16972a}
  FOLDERID_SearchHome: TGUID                     = '{190337D1-B8CA-4121-A639-6D472D16972A}';
  {$EXTERNALSYM FOLDERID_SearchHome}

// {2C36C0AA-5812-4b87-BFD0-4CD0DFB19B39}
  FOLDERID_OriginalImages: TGUID                 = '{2C36C0AA-5812-4B87-BFD0-4CD0DFB19B39}';
  {$EXTERNALSYM FOLDERID_OriginalImages}

// {7b0db17d-9cd2-4a93-9733-46cc89022e7c}
  FOLDERID_DocumentsLibrary: TGUID               = '{7B0DB17D-9CD2-4A93-9733-46CC89022E7C}';
  {$EXTERNALSYM FOLDERID_DocumentsLibrary}

// {2112AB0A-C86A-4ffe-A368-0DE96E47012E}
  FOLDERID_MusicLibrary: TGUID                   = '{2112AB0A-C86A-4FFE-A368-0DE96E47012E}';
  {$EXTERNALSYM FOLDERID_MusicLibrary}

// {A990AE9F-A03B-4e80-94BC-9912D7504104}
  FOLDERID_PicturesLibrary: TGUID                = '{A990AE9F-A03B-4E80-94BC-9912D7504104}';
  {$EXTERNALSYM FOLDERID_PicturesLibrary}

// {491E922F-5643-4af4-A7EB-4E7A138D8174}
  FOLDERID_VideosLibrary: TGUID                  = '{491E922F-5643-4AF4-A7EB-4E7A138D8174}';
  {$EXTERNALSYM FOLDERID_VideosLibrary}

// {1A6FDBA2-F42D-4358-A798-B74D745926C5}
  FOLDERID_RecordedTVLibrary: TGUID              = '{1A6FDBA2-F42D-4358-A798-B74D745926C5}';
  {$EXTERNALSYM FOLDERID_RecordedTVLibrary}

// {52528A6B-B9E3-4add-B60D-588C2DBA842D}
  FOLDERID_HomeGroup: TGUID                      = '{52528A6B-B9E3-4ADD-B60D-588C2DBA842D}';
  {$EXTERNALSYM FOLDERID_HomeGroup}


// {5CE4A5E9-E4EB-479D-B89F-130C02886155}
  FOLDERID_DeviceMetadataStore: TGUID            = '{5CE4A5E9-E4EB-479D-B89F-130C02886155}';
  {$EXTERNALSYM FOLDERID_DeviceMetadataStore}

// {1B3EA5DC-B587-4786-B4EF-BD1DC332AEAE}
  FOLDERID_Libraries: TGUID                      = '{1B3EA5DC-B587-4786-B4EF-BD1DC332AEAE}';
  {$EXTERNALSYM FOLDERID_Libraries}

// {48daf80b-e6cf-4f4e-b800-0e69d84ee384}
  FOLDERID_PublicLibraries: TGUID                = '{48daf80b-e6cf-4f4e-b800-0e69d84ee384}';
  {$EXTERNALSYM FOLDERID_PublicLibraries}

// {9e3995ab-1f9c-4f13-b827-48b24b6c7174}
  FOLDERID_UserPinned: TGUID                     = '{9E3995AB-1F9C-4F13-B827-48B24B6C7174}';
  {$EXTERNALSYM FOLDERID_UserPinned}

// {bcb5256f-79f6-4cee-b725-dc34e402fd46}
  FOLDERID_ImplicitAppShortcuts: TGUID           = '{BCB5256F-79F6-4CEE-B725-DC34E402FD46}';
  {$EXTERNALSYM FOLDERID_ImplicitAppShortcuts}

// {008ca0b1-55b4-4c56-b8a8-4de4b299d3be}
  FOLDERID_AccountPictures: TGUID                = '{008ca0b1-55b4-4c56-b8a8-4de4b299d3be}';
  {$EXTERNALSYM FOLDERID_AccountPictures}

// {A3918781-E5F2-4890-B3D9-A7E54332328C}
  FOLDERID_ApplicationShortcuts: TGUID           = '{A3918781-E5F2-4890-B3D9-A7E54332328C}';
  {$EXTERNALSYM FOLDERID_ApplicationShortcuts}

// {1e87508d-89c2-42f0-8a7e-645a0f50ca58}
  FOLDERID_AppsFolder: TGUID                     = '{1e87508d-89c2-42f0-8a7e-645a0f50ca58}';
  {$EXTERNALSYM FOLDERID_AppsFolder}

// {AB5FB87B-7CE2-4F83-915D-550846C9537B}
  FOLDERID_CameraRoll: TGUID                     = '{AB5FB87B-7CE2-4F83-915D-550846C9537B}';
  {$EXTERNALSYM FOLDERID_CameraRoll}

// {9B74B6A3-0DFD-4f11-9E78-5F7800F2E772}
  FOLDERID_HomeGroupCurrentUser: TGUID           = '{9B74B6A3-0DFD-4f11-9E78-5F7800F2E772}';
  {$EXTERNALSYM FOLDERID_HomeGroupCurrentUser}

// {0482af6c-08f1-4c34-8c90-e17ec98b1e17}
  FOLDERID_PublicUserTiles: TGUID                = '{0482af6c-08f1-4c34-8c90-e17ec98b1e17}';
  {$EXTERNALSYM FOLDERID_PublicUserTiles}

// {AAA8D5A5-F1D6-4259-BAA8-78E7EF60835E}
  FOLDERID_RoamedTileImages: TGUID               = '{AAA8D5A5-F1D6-4259-BAA8-78E7EF60835E}';
  {$EXTERNALSYM FOLDERID_RoamedTileImages}

// {00BCFC5A-ED94-4e48-96A1-3F6217F21990}
  FOLDERID_RoamingTiles: TGUID                   = '{00BCFC5A-ED94-4e48-96A1-3F6217F21990}';
  {$EXTERNALSYM FOLDERID_RoamingTiles}

// {b7bede81-df94-4682-a7d8-57a52620b86f}
  FOLDERID_Screenshots: TGUID                    = '{b7bede81-df94-4682-a7d8-57a52620b86f}';
  {$EXTERNALSYM FOLDERID_Screenshots}

// {0D4C3DB6-03A3-462F-A0E6-08924C41B5D4}
  FOLDERID_SearchHistory: TGUID                  = '{0D4C3DB6-03A3-462F-A0E6-08924C41B5D4}';
  {$EXTERNALSYM FOLDERID_SearchHistory}

// {7E636BFE-DFA9-4D5E-B456-D7B39851D8A9}
  FOLDERID_SearchTemplates: TGUID                = '{7E636BFE-DFA9-4D5E-B456-D7B39851D8A9}';
  {$EXTERNALSYM FOLDERID_SearchTemplates}

// {A52BBA46-E9E1-435f-B3D9-28DAA648C0F6}
  FOLDERID_SkyDrive: TGUID                       = '{A52BBA46-E9E1-435f-B3D9-28DAA648C0F6}';
  {$EXTERNALSYM FOLDERID_SkyDrive}

// {767E6811-49CB-4273-87C2-20F355E1085B}
  FOLDERID_SkyDriveCameraRoll: TGUID             = '{767E6811-49CB-4273-87C2-20F355E1085B}';
  {$EXTERNALSYM FOLDERID_SkyDriveCameraRoll}

// {24D89E24-2F19-4534-9DDE-6A6671FBB8FE}
  FOLDERID_SkyDriveDocuments: TGUID              = '{24D89E24-2F19-4534-9DDE-6A6671FBB8FE}';
  {$EXTERNALSYM FOLDERID_SkyDriveDocuments}

// {339719B5-8C47-4894-94C2-D8F77ADD44A6}
  FOLDERID_SkyDrivePictures: TGUID               = '{339719B5-8C47-4894-94C2-D8F77ADD44A6}';
  {$EXTERNALSYM FOLDERID_SkyDrivePictures}

implementation

end.
