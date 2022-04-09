 '0.1.0'
 '
Copyright 1992-2016 AUTHORS.
See the legal/LICENSE file for license information and legal/AUTHORS for authors.
'
["preFileIn" self] value


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: externalPrograms InitialContents: FollowSlot'
        
         externalPrograms = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'externalPrograms' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             bootstrap remove: 'tree' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'externalPrograms' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules externalPrograms.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames tree.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'externalPrograms' -> () From: ( | {
         'ModuleInfo: Module: externalPrograms InitialContents: InitializeToExpression: (\'\')\x7fVisibility: public'
        
         directory <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'externalPrograms' -> () From: ( | {
         'ModuleInfo: Module: externalPrograms InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'externalPrograms' -> () From: ( | {
         'ModuleInfo: Module: externalPrograms InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'externalPrograms' -> () From: ( | {
         'ModuleInfo: Module: externalPrograms InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'externalPrograms' -> () From: ( | {
         'ModuleInfo: Module: externalPrograms InitialContents: InitializeToExpression: (\'0.1.0\')\x7fVisibility: public'
        
         revision <- '0.1.0'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'externalPrograms' -> () From: ( | {
         'ModuleInfo: Module: externalPrograms InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'externalPrograms' -> () From: ( | {
         'ModuleInfo: Module: externalPrograms InitialContents: InitializeToExpression: (\'self-externalPrograms\')'
        
         tree <- 'self-externalPrograms'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: platform\x7fCategory: external programs\x7fComment: I fetch webpages and other resources\x7fModuleInfo: Module: externalPrograms InitialContents: FollowSlot'
        
         webResourceFetcher = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'webResourceFetcher' -> () From: ( |
             {} = 'Comment: I am an interface to system
binaries allowing fetching 
webpages and other resources available
by URL over HTTP or HTTPS.

Generally I am a interface to fetch,
curl or wget depending on what is available.\x7fModuleInfo: Creator: globals webResourceFetcher.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'webResourceFetcher' -> () From: ( | {
         'ModuleInfo: Module: externalPrograms InitialContents: FollowSlot'
        
         fetch = ( |
            | fetchIfFail: raiseError. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'webResourceFetcher' -> () From: ( | {
         'ModuleInfo: Module: externalPrograms InitialContents: FollowSlot'
        
         fetchIfFail: blk = ( |
            | 
            resource: pluggableCommands fetch fetch: self IfFail: [^ blk value]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'webResourceFetcher' -> () From: ( | {
         'ModuleInfo: Module: externalPrograms InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'webResourceFetcher' -> () From: ( | {
         'Category: pluggable commands\x7fModuleInfo: Module: externalPrograms InitialContents: FollowSlot'
        
         pluggableCommands = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'webResourceFetcher' -> 'pluggableCommands' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals webResourceFetcher pluggableCommands.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'webResourceFetcher' -> 'pluggableCommands' -> () From: ( | {
         'ModuleInfo: Module: externalPrograms InitialContents: FollowSlot'
        
         fetch = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'webResourceFetcher' -> 'pluggableCommands' -> 'fetch' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals webResourceFetcher pluggableCommands fetch.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'webResourceFetcher' -> 'pluggableCommands' -> 'fetch' -> () From: ( | {
         'ModuleInfo: Module: externalPrograms InitialContents: FollowSlot'
        
         fetch: fetcher IfFail: blk = ( |
            | 
            os outputOfCommand: 'fetch -o - ', fetcher uri IfFail: [^ blk value]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'webResourceFetcher' -> 'pluggableCommands' -> 'fetch' -> () From: ( | {
         'ModuleInfo: Module: externalPrograms InitialContents: FollowSlot'
        
         isAvailable = ( |
            | 
            (os command: 'which fetch' IfFail: 0) = 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'webResourceFetcher' -> 'pluggableCommands' -> 'fetch' -> () From: ( | {
         'ModuleInfo: Module: externalPrograms InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'webResourceFetcher' -> () From: ( | {
         'ModuleInfo: Module: externalPrograms InitialContents: InitializeToExpression: (nil)'
        
         resource.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'webResourceFetcher' -> () From: ( | {
         'Category: tests\x7fModuleInfo: Module: externalPrograms InitialContents: FollowSlot'
        
         testFetch = ( |
            | 
            (copy uri: 'https://google.com') fetch resource size > 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'webResourceFetcher' -> () From: ( | {
         'ModuleInfo: Module: externalPrograms InitialContents: InitializeToExpression: (\'\')'
        
         uri <- ''.
        } | ) 



 '-- Side effects'

 globals modules externalPrograms postFileIn
