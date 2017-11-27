Temporary variable rename in a method (RBRenameTemporaryRefactoring)

Note 1 : the Refactoring API is ugly. What, have to give the interval of the temporary var in the method source ? This forces the command to reparse, whereas we are already in posession of the right ast node.

Note 2 : the refactoring could be done on any ast, which would allow one to do it during editing. But the refactoring command does not allow for it.