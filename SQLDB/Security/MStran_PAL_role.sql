﻿CREATE ROLE [MStran_PAL_role]
    AUTHORIZATION [dbo];


GO
ALTER ROLE [MStran_PAL_role] ADD MEMBER [CORPORATE\Steven.Lundlarsen];


GO
ALTER ROLE [MStran_PAL_role] ADD MEMBER [MSReplPAL_7_1];


GO
ALTER ROLE [MStran_PAL_role] ADD MEMBER [MSReplPAL_13_1];
