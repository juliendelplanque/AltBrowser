accessing
unregisterAll
	<script>
	self register values do: [ :e | e unapply ].
	Register := nil