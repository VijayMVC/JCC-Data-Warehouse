﻿create view AA_SYS_LANGUAGE_LABEL_SIMPLE_VIEW
/*
** Returns a table to be used specifically with AA_SYS_LANGUAGE_LABEL_LIST_S
** Written:      17/05/04 NC
** Last Amended: 18/05/04 NC; 28/07/04, 13/06/05 NC, 11/07/05 NC, 22/07/05 SR, 16/08/05 SR, 03/10/05 NC
**
*/
as

select
     LK.LANGUAGE_LINK_PRIMARY as [PRIMARY]
   , L.LANGUAGE_PRIMARY as LANGUAGE_PRIMARY
   , L.LANGUAGE_CODE as LANGUAGE_CODE
   , LL.FORM_KEY
   , LL.LABEL_TAG
   , T.LANGUAGE_TEXT as LANGUAGE_TEXT
   , LK.MODIFIED_DATE
   from SYS_LANGUAGE_LABEL_TEXT_LINK as LK
      join SYS_LANGUAGES as L on LANGUAGE_PRIMARY = LK.LANGUAGE_FK
      join SYS_LANGUAGE_LABEL_TEXT as T on T.LANGUAGE_LABEL_TEXT_PRIMARY = LK.LANGUAGE_TEXT_FK
      join SYS_LANGUAGE_LABELS as LL on LL.LANGUAGE_LABEL_PRIMARY = LK.LANGUAGE_LABEL_FK