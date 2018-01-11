I represent all announcements from a announcer during the period where I am inspected.

Upon termination of the inspection, I should be released.

Beware of the release and termination requirements: the announcer subscription must be released (in #release), and should not automatically create the subscription when the instance is created, but only when the list of announcers is needed.

Why? Because, under certain circumstances (AltTreeItemModel>>#hasContents), we create eye elements just to count the number of possible items, and we never link them to the display (and let them be garbage collected afterwards). If creating the element has side-effects such as subscribing to an announcer, this creates a memory leak.

Our solution here:
- Only create the subscription to the announcer when the announcements instance variable is requested, and this occurs only when the element is being linked to a display item.