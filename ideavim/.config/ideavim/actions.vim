"IDE Actions
map <leader>? <Action>(ShowSettings)
map <leader>l <Action>(ReformatCode)
map <leader>S <Action>(ReplaceInPath)
map <leader>yp <Action>(CopyPathFromRepositoryRootProvider)

"Sensible copy-pasting to and from system clipboard
vmap <C-y> <Action>(EditorCopy)
nmap <C-y> <Action>(EditorCopy)
nmap <C-p> <Action>(EditorPaste)
vmap <C-p> <Action>(EditorPaste)
imap <C-p> <Action>(EditorPaste)

"Code
map <CR> <Action>(EditorSelectWord)
map <BS> <Action>(EditorUnSelectWord)
map rn <Action>(RenameElement)
map rf <Action>(Refactorings.QuickListPopupAction)
map <C-A-f> <Action>(Refactorings.QuickListPopupAction)
map <A-CR> <Action>(ShowIntentionActions)
map <leader>/ <Action>(CommentByLineComment)
map ge <Action>(ShowErrorDescription)
map <C-k> <Action>(QuickJavaDoc)
map <leader>cg <Action>(Generate)
map <leader>ci <Action>(ImplementMethods)
map <leader>co <Action>(OverrideMethods)
map <leader>cs <Action>(SurroundWith)
map <leader>cf <Action>(NewElement)

"Gotos
map gn <Action>(GotoNextError)
map gp <Action>(GotoPreviousError)
map gi <Action>(GotoImplementation)
map gr <Action>(FindUsages)
map <C-b> <Action>(GotoDeclaration)
map gt <Action>(GotoTest)

"Git
map <leader>gA <Action>(Annotate)
map <leader>gb <Action>(Vcs.RollbackChangedLines)
map <leader>gB <Action>(ChangesView.Revert)
map <leader>gn <Action>(VcsShowNextChangeMarker)
map <leader>gp <Action>(VcsShowPrevChangeMarker)
map <leader>gH <Action>(Vcs.ShowTabbedFileHistory)
map <C-g> <Action>(GitHub.Copy.Link)
map <C-S-g> <Action>(GitHub.Copy.Link)

"Navigation
map <leader>sv <Action>(MoveTabRight)
map <leader>sh <Action>(MoveTabDown)
map <C-A-l> <Action>(NextSplitter)
map <C-A-h> <Action>(PrevSplitter)
map + <Action>(StretchSplitToRight)
map - <Action>(StretchSplitToLeft)

"Finders
map <C-f> <Action>(GotoFile)
map <leader>f <Action>(GotoFile)
map <leader>F <Action>(FindInPath)
map <leader>A <Action>(GotoAction)

"Folds
map zO <Action>(ExpandAllRegions)
map zo <Action>(ExpandRegion)
map zC <Action>(CollapseAllRegions)
map zc <Action>(CollapseRegion)

"Run/Debug
if &ide =~? 'JetBrains Rider'
	map <leader>r <Action>(RiderUnitTestRepeatPreviousRunAction)
else
	map <leader>r <Action>(ChooseRunConfiguration)
endif

map <leader>nl <Action>(StepOver)
map <leader>nb <Action>(Resume)
map <leader>ni <Action>(StepInto)
map <leader>no <Action>(StepOut)
map <leader>s <Action>(Stop)

"Multicursor
map <C-Up> <Action>(EditorCloneCaretAbove)
map <C-Down> <Action>(EditorCloneCaretBelow)
map <C-n> <Action>(SelectNextOccurrence)
map <C-S-n> <Action>(UnselectPreviousOccurrence)

"Harpoon Plugin
map <leader>a <Action>(AddToHarpoon)
map <leader>h <Action>(ShowHarpoon)
