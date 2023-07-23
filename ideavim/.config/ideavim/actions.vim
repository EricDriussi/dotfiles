"IDE Actions
map <leader>l <Action>(ShowReformatFileDialog)
map <leader>e <Action>(ActivateProjectToolWindow)
map <leader>S <Action>(ReplaceInPath)
map <C-n> <Action>(NewElementInMenuGroup)
map <C-g> <Action>(GithubCopyPathProvider)

"Code
map <CR> <Action>(EditorSelectWord)
map <BS> <Action>(EditorUnSelectWord)
map rn <Action>(RenameElement)
map <C-A-f> <Action>(Refactorings.QuickListPopupAction)
map <A-CR> <Action>(ShowIntentionActions)
map <leader>/ <Action>(CommentByLineComment)
map ge <Action>(ShowErrorDescription)
map <C-k> <Action>(QuickJavaDoc)

"Gotos
map gn <Action>(GotoNextError)
map gp <Action>(GotoPreviousError)
map gi <Action>(GotoImplementation)
map gr <Action>(FindUsages)
map <C-b> <Action>(GotoDeclaration)

"Git
map <leader>gA <Action>(Annotate)
map <leader>gb <Action>(Vcs.RollbackChangedLines)
map <leader>gB <Action>(ChangesView.Revert)
map <leader>gn <Action>(VcsShowNextChangeMarker)
map <leader>gp <Action>(VcsShowPrevChangeMarker)
map <leader>gH <Action>(Vcs.ShowTabbedFileHistory)

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
