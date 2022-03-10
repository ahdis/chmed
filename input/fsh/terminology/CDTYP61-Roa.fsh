/*
ValueSet: RouteOfAdministration
Id: chmed-valueset-cdtyp61
Title: "CHMED Route of Administration"
Description: "Value set for ROA codes"
* ^publisher = "HCI Solutions AG"
* ^contact.name = "Hotline"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "hotline@hcisolutions.ch"
* include codes from system RouteOfAdministration
*/


CodeSystem: CDTYP61
Id: chmed-codesystem-cdtyp61
Title: "CHMED Route of Administration"
Description: "Code system for ROA codes (Release 2011-11)"
* ^identifier.system = "https://index.hcisolutions.ch/codes/"
* ^identifier.value = "cdtyp61"
* ^publisher = "HCI Solutions AG"
* ^contact.name = "Hotline"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "hotline@hcisolutions.ch"
* ^caseSensitive = true
* ^content = #complete

* #BLADINJ "intravesikal (Injektion)"
* #BLADINJ ^designation[0].language = #de-CH
* #BLADINJ ^designation[=].value = "intravesikal (Injektion)"
* #BLADINJ ^designation[+].language = #fr-CH
* #BLADINJ ^designation[=].value = "intravésicale (injection)"

* #BUC "buccal"
* #BUC ^designation[0].language = #de-CH
* #BUC ^designation[=].value = "buccal"
* #BUC ^designation[+].language = #fr-CH
* #BUC ^designation[=].value = "buccal"

* #EPI "epidural (Infusion)"
* #EPI ^designation[0].language = #de-CH
* #EPI ^designation[=].value = "epidural (Infusion)"
* #EPI ^designation[+].language = #fr-CH
* #EPI ^designation[=].value = "épidurale (perfusion)"

* #EPIDURINJ "epidural (Injektion)"
* #EPIDURINJ ^designation[0].language = #de-CH
* #EPIDURINJ ^designation[=].value = "epidural (Injektion)"
* #EPIDURINJ ^designation[+].language = #fr-CH
* #EPIDURINJ ^designation[=].value = "épidurale (injection)"

* #ETINSTL "endotracheal (Instillation)"
* #ETINSTL ^designation[0].language = #de-CH
* #ETINSTL ^designation[=].value = "endotracheal (Instillation)"
* #ETINSTL ^designation[+].language = #fr-CH
* #ETINSTL ^designation[=].value = "endotrachéale (instillation)"

* #IAINJ "intraarteriel (Injektion)"
* #IAINJ ^designation[0].language = #de-CH
* #IAINJ ^designation[=].value = "intraarteriel (Injektion)"
* #IAINJ ^designation[+].language = #fr-CH
* #IAINJ ^designation[=].value = "intra-artérielle (injection)"

* #IARTINJ "intraartikulär"
* #IARTINJ ^designation[0].language = #de-CH
* #IARTINJ ^designation[=].value = "intraartikulär"
* #IARTINJ ^designation[+].language = #fr-CH
* #IARTINJ ^designation[=].value = "intra-articulaire"

* #IBURSINJ "intrabursal"
* #IBURSINJ ^designation[0].language = #de-CH
* #IBURSINJ ^designation[=].value = "intrabursal"
* #IBURSINJ ^designation[+].language = #fr-CH
* #IBURSINJ ^designation[=].value = "intrabursique"

* #ICORPCAVINJ "In Corpus cavernosum"
* #ICORPCAVINJ ^designation[0].language = #de-CH
* #ICORPCAVINJ ^designation[=].value = "In Corpus cavernosum"
* #ICORPCAVINJ ^designation[+].language = #fr-CH
* #ICORPCAVINJ ^designation[=].value = "intracaverneuse"

* #IDINJ "intracutan (injektion)"
* #IDINJ ^designation[0].language = #de-CH
* #IDINJ ^designation[=].value = "intracutan (injektion)"
* #IDINJ ^designation[+].language = #fr-CH
* #IDINJ ^designation[=].value = "intracutanée (injection)"

* #ILESINJ "intraläsional (Injektion)"
* #ILESINJ ^designation[0].language = #de-CH
* #ILESINJ ^designation[=].value = "intraläsional (Injektion)"
* #ILESINJ ^designation[+].language = #fr-CH
* #ILESINJ ^designation[=].value = "intralésionnelle (injection)"

* #IM "intramuskulär"
* #IM ^designation[0].language = #de-CH
* #IM ^designation[=].value = "intramuskulär"
* #IM ^designation[+].language = #fr-CH
* #IM ^designation[=].value = "intramusculaire"

* #IOINJ "intraokulär (Injektion)"
* #IOINJ ^designation[0].language = #de-CH
* #IOINJ ^designation[=].value = "intraokulär (Injektion)"
* #IOINJ ^designation[+].language = #fr-CH
* #IOINJ ^designation[=].value = "intraoculaire (injection)"

* #IPLRINJ "intrapleural"
* #IPLRINJ ^designation[0].language = #de-CH
* #IPLRINJ ^designation[=].value = "intrapleural"
* #IPLRINJ ^designation[+].language = #fr-CH
* #IPLRINJ ^designation[=].value = "intrapleural"

* #IT "intrathekal (Infusion)"
* #IT ^designation[0].language = #de-CH
* #IT ^designation[=].value = "intrathekal (Infusion)"
* #IT ^designation[+].language = #fr-CH
* #IT ^designation[=].value = "intrathécale (perfusion)"

* #ITINJ "intrathekal (Injektion)"
* #ITINJ ^designation[0].language = #de-CH
* #ITINJ ^designation[=].value = "intrathekal (Injektion)"
* #ITINJ ^designation[+].language = #fr-CH
* #ITINJ ^designation[=].value = "intrathécale (injection)"

* #ITUMINJ "intratumoral"
* #ITUMINJ ^designation[0].language = #de-CH
* #ITUMINJ ^designation[=].value = "intratumoral"
* #ITUMINJ ^designation[+].language = #fr-CH
* #ITUMINJ ^designation[=].value = "intratumoral"

* #IV "intravenös (Infusion)"
* #IV ^designation[0].language = #de-CH
* #IV ^designation[=].value = "intravenös (Infusion)"
* #IV ^designation[+].language = #fr-CH
* #IV ^designation[=].value = "intraveineuse (perfusion)"

* #IVENTINJ "intraventrikulär"
* #IVENTINJ ^designation[0].language = #de-CH
* #IVENTINJ ^designation[=].value = "intraventrikulär"
* #IVENTINJ ^designation[+].language = #fr-CH
* #IVENTINJ ^designation[=].value = "intraventriculaire"

* #IVINJ "intravenös (Injektion)"
* #IVINJ ^designation[0].language = #de-CH
* #IVINJ ^designation[=].value = "intravenös (Injektion)"
* #IVINJ ^designation[+].language = #fr-CH
* #IVINJ ^designation[=].value = "intraveineuse (injection)"

* #IVITINJ "intravitreal (Injektion)"
* #IVITINJ ^designation[0].language = #de-CH
* #IVITINJ ^designation[=].value = "intravitreal (Injektion)"
* #IVITINJ ^designation[+].language = #fr-CH
* #IVITINJ ^designation[=].value = "intravitréenne (injection)"

* #NASAL "nasal"
* #NASAL ^designation[0].language = #de-CH
* #NASAL ^designation[=].value = "nasal"
* #NASAL ^designation[+].language = #fr-CH
* #NASAL ^designation[=].value = "nasal"

* #OPTHALTA "ophthalmologisch"
* #OPTHALTA ^designation[0].language = #de-CH
* #OPTHALTA ^designation[=].value = "ophthalmologisch"
* #OPTHALTA ^designation[+].language = #fr-CH
* #OPTHALTA ^designation[=].value = "ophtalmologique"

* #ORINHL "inhalation oral"
* #ORINHL ^designation[0].language = #de-CH
* #ORINHL ^designation[=].value = "inhalation oral"
* #ORINHL ^designation[+].language = #fr-CH
* #ORINHL ^designation[=].value = "inhalation orale"

* #PAINJ "periartikulär"
* #PAINJ ^designation[0].language = #de-CH
* #PAINJ ^designation[=].value = "periartikulär"
* #PAINJ ^designation[+].language = #fr-CH
* #PAINJ ^designation[=].value = "périarticulaire"

* #PDPINJ "peritoneal (Injektion)"
* #PDPINJ ^designation[0].language = #de-CH
* #PDPINJ ^designation[=].value = "peritoneal (Injektion)"
* #PDPINJ ^designation[+].language = #fr-CH
* #PDPINJ ^designation[=].value = "péritonéale (injection)"

* #PDPINSTL "peritoneal (Instillation)"
* #PDPINSTL ^designation[0].language = #de-CH
* #PDPINSTL ^designation[=].value = "peritoneal (Instillation)"
* #PDPINSTL ^designation[+].language = #fr-CH
* #PDPINSTL ^designation[=].value = "péritonéale (instillation)"

* #PO "per oral"
* #PO ^designation[0].language = #de-CH
* #PO ^designation[=].value = "per oral"
* #PO ^designation[+].language = #fr-CH
* #PO ^designation[=].value = "per oral"

* #RECTAL "rektal"
* #RECTAL ^designation[0].language = #de-CH
* #RECTAL ^designation[=].value = "rektal"
* #RECTAL ^designation[+].language = #fr-CH
* #RECTAL ^designation[=].value = "rectal"

* #SCINJ "subkonjunktival (Injektion)"
* #SCINJ ^designation[0].language = #de-CH
* #SCINJ ^designation[=].value = "subkonjunktival (Injektion)"
* #SCINJ ^designation[+].language = #fr-CH
* #SCINJ ^designation[=].value = "sous-conjonctivale (injection)"

* #SKIN "topisch"
* #SKIN ^designation[0].language = #de-CH
* #SKIN ^designation[=].value = "topisch"
* #SKIN ^designation[+].language = #fr-CH
* #SKIN ^designation[=].value = "topique"

* #SL "sublingual"
* #SL ^designation[0].language = #de-CH
* #SL ^designation[=].value = "sublingual"
* #SL ^designation[+].language = #fr-CH
* #SL ^designation[=].value = "sublingual"

* #SQ "subcutan (Injektion)"
* #SQ ^designation[0].language = #de-CH
* #SQ ^designation[=].value = "subcutan (Injektion)"
* #SQ ^designation[+].language = #fr-CH
* #SQ ^designation[=].value = "sous-cutanée (injection)"

* #SQINFUS "subcutan (Infusion)"
* #SQINFUS ^designation[0].language = #de-CH
* #SQINFUS ^designation[=].value = "subcutan (Infusion)"
* #SQINFUS ^designation[+].language = #fr-CH
* #SQINFUS ^designation[=].value = "sous-cutanée (perfusion)"

* #VAGINS "vaginal"
* #VAGINS ^designation[0].language = #de-CH
* #VAGINS ^designation[=].value = "vaginal"
* #VAGINS ^designation[+].language = #fr-CH
* #VAGINS ^designation[=].value = "vaginal"

* #HEMODIFF "Hämodialyse (Diffusion)"
* #HEMODIFF ^designation[0].language = #de-CH
* #HEMODIFF ^designation[=].value = "Hämodialyse (Diffusion)"
* #HEMODIFF ^designation[+].language = #fr-CH
* #HEMODIFF ^designation[=].value = "hémodialyse (diffusion)"

* #PNINJ "perineural (Injektion)"
* #PNINJ ^designation[0].language = #de-CH
* #PNINJ ^designation[=].value = "perineural (Injektion)"
* #PNINJ ^designation[+].language = #fr-CH
* #PNINJ ^designation[=].value = "périneurale (injection)"

* #BLADINSTL "intravesikal (Instillation)"
* #BLADINSTL ^designation[0].language = #de-CH
* #BLADINSTL ^designation[=].value = "intravesikal (Instillation)"
* #BLADINSTL ^designation[+].language = #fr-CH
* #BLADINSTL ^designation[=].value = "intravésicale (instillation)"

* #IVFLUSH "intravenös Katheter (Flush)"
* #IVFLUSH ^designation[0].language = #de-CH
* #IVFLUSH ^designation[=].value = "intravenös Katheter (Flush)"
* #IVFLUSH ^designation[+].language = #fr-CH
* #IVFLUSH ^designation[=].value = "intraveineuse cathéter (flush)"

* #SQIMPLNT "subcutan (Implantation)"
* #SQIMPLNT ^designation[0].language = #de-CH
* #SQIMPLNT ^designation[=].value = "subcutan (Implantation)"
* #SQIMPLNT ^designation[+].language = #fr-CH
* #SQIMPLNT ^designation[=].value = "sous-cutanée (implantation)"

* #URETHINSTL "urethral (Instillation)"
* #URETHINSTL ^designation[0].language = #de-CH
* #URETHINSTL ^designation[=].value = "urethral (Instillation)"
* #URETHINSTL ^designation[+].language = #fr-CH
* #URETHINSTL ^designation[=].value = "uréthrale (instillation)"

* #TRNSDERMD "transdermal"
* #TRNSDERMD ^designation[0].language = #de-CH
* #TRNSDERMD ^designation[=].value = "transdermal"
* #TRNSDERMD ^designation[+].language = #fr-CH
* #TRNSDERMD ^designation[=].value = "transdermal"

* #IA "intraarteriel (Infusion)"
* #IA ^designation[0].language = #de-CH
* #IA ^designation[=].value = "intraarteriel (Infusion)"
* #IA ^designation[+].language = #fr-CH
* #IA ^designation[=].value = "intra-artérielle (perfusion)"

* #GINGINJ "gingival (Injektion)"
* #GINGINJ ^designation[0].language = #de-CH
* #GINGINJ ^designation[=].value = "gingival (Injektion)"
* #GINGINJ ^designation[+].language = #fr-CH
* #GINGINJ ^designation[=].value = "gingival (injection)"

* #URETHINJ "urethral (Injektion)"
* #URETHINJ ^designation[0].language = #de-CH
* #URETHINJ ^designation[=].value = "urethral (Injektion)"
* #URETHINJ ^designation[+].language = #fr-CH
* #URETHINJ ^designation[=].value = "uréthrale (injection)"

* #IUINJ "intrauterin (Injektion)"
* #IUINJ ^designation[0].language = #de-CH
* #IUINJ ^designation[=].value = "intrauterin (Injektion)"
* #IUINJ ^designation[+].language = #fr-CH
* #IUINJ ^designation[=].value = "intra-utérine (injection)"

* #SUBMUCINJ "submucosal (Injektion)"
* #SUBMUCINJ ^designation[0].language = #de-CH
* #SUBMUCINJ ^designation[=].value = "submucosal (Injektion)"
* #SUBMUCINJ ^designation[+].language = #fr-CH
* #SUBMUCINJ ^designation[=].value = "sous-muqueuse (injection)"

* #ICAVITINJ "intrakavitär (Injektion)"
* #ICAVITINJ ^designation[0].language = #de-CH
* #ICAVITINJ ^designation[=].value = "intrakavitär (Injektion)"
* #ICAVITINJ ^designation[+].language = #fr-CH
* #ICAVITINJ ^designation[=].value = "intracavitaire (injection)"

* #NASALINSTIL "nasal (Instillation)"
* #NASALINSTIL ^designation[0].language = #de-CH
* #NASALINSTIL ^designation[=].value = "nasal (Instillation)"
* #NASALINSTIL ^designation[+].language = #fr-CH
* #NASALINSTIL ^designation[=].value = "nasale (instillation)"

* #OT "Ohr (Instillation)"
* #OT ^designation[0].language = #de-CH
* #OT ^designation[=].value = "Ohr (Instillation)"
* #OT ^designation[+].language = #fr-CH
* #OT ^designation[=].value = "auriculaire (instillation)"

* #GARGLE "gurgeln"
* #GARGLE ^designation[0].language = #de-CH
* #GARGLE ^designation[=].value = "gurgeln"
* #GARGLE ^designation[+].language = #fr-CH
* #GARGLE ^designation[=].value = "se gargariser"

* #ILYMPJINJ "intralymphatisch"
* #ILYMPJINJ ^designation[0].language = #de-CH
* #ILYMPJINJ ^designation[=].value = "intralymphatisch"
* #ILYMPJINJ ^designation[+].language = #fr-CH
* #ILYMPJINJ ^designation[=].value = "intralymphatique"

* #OROPHARTA "oropharyngeal"
* #OROPHARTA ^designation[0].language = #de-CH
* #OROPHARTA ^designation[=].value = "oropharyngeal"
* #OROPHARTA ^designation[+].language = #fr-CH
* #OROPHARTA ^designation[=].value = "application oropharyngée"

* #ISINJ "intraspinal (Injektion)"
* #ISINJ ^designation[0].language = #de-CH
* #ISINJ ^designation[=].value = "intraspinal (Injektion)"
* #ISINJ ^designation[+].language = #fr-CH
* #ISINJ ^designation[=].value = "intrarachidienne (injection)"

* #EXTCORPINJ "extrakorporal (Injektion)"
* #EXTCORPINJ ^designation[0].language = #de-CH
* #EXTCORPINJ ^designation[=].value = "extrakorporal (Injektion)"
* #EXTCORPINJ ^designation[+].language = #fr-CH
* #EXTCORPINJ ^designation[=].value = "extracorporelle (injection)"

* #DISSOLVE "löslich, oral"
* #DISSOLVE ^designation[0].language = #de-CH
* #DISSOLVE ^designation[=].value = "löslich, oral"
* #DISSOLVE ^designation[+].language = #fr-CH
* #DISSOLVE ^designation[=].value = "orodispersible"

* #SUCK "lutschen (oromukosal)"
* #SUCK ^designation[0].language = #de-CH
* #SUCK ^designation[=].value = "lutschen (oromukosal)"
* #SUCK ^designation[+].language = #fr-CH
* #SUCK ^designation[=].value = "sucer (muqueuse buccale)"

* #CHEW "kauen, oral"
* #CHEW ^designation[0].language = #de-CH
* #CHEW ^designation[=].value = "kauen, oral"
* #CHEW ^designation[+].language = #fr-CH
* #CHEW ^designation[=].value = "mâcher (oral)"

* #IDUODINSTIL "intraduodenal (Instillation)"
* #IDUODINSTIL ^designation[0].language = #de-CH
* #IDUODINSTIL ^designation[=].value = "intraduodenal (Instillation)"
* #IDUODINSTIL ^designation[+].language = #fr-CH
* #IDUODINSTIL ^designation[=].value = "intraduodénale (instillation)"

* #RBINJ "retrobulbär (Injektion)"
* #RBINJ ^designation[0].language = #de-CH
* #RBINJ ^designation[=].value = "retrobulbär (Injektion)"
* #RBINJ ^designation[+].language = #fr-CH
* #RBINJ ^designation[=].value = "rétrobulbaire (injection)"

* #NASINHL "nasal (Inhalation)"
* #NASINHL ^designation[0].language = #de-CH
* #NASINHL ^designation[=].value = "nasal (Inhalation)"
* #NASINHL ^designation[+].language = #fr-CH
* #NASINHL ^designation[=].value = "nasale (inhalation)"

* #IU "intrauterin (Insertion)"
* #IU ^designation[0].language = #de-CH
* #IU ^designation[=].value = "intrauterin (Insertion)"
* #IU ^designation[+].language = #fr-CH
* #IU ^designation[=].value = "intra-utérine (insertion)"

* #PNINFUS "perineural (Infusion)"
* #PNINFUS ^designation[0].language = #de-CH
* #PNINFUS ^designation[=].value = "perineural (Infusion)"
* #PNINFUS ^designation[+].language = #fr-CH
* #PNINFUS ^designation[=].value = "périneurale (perfusion)"