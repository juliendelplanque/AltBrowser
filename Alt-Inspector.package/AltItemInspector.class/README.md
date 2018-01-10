I represent the core eye inspector object, giving access to the object instance variables (building model objects over an object being inspected).

I do not mix gui duties with model duties.

This framework is a bit complex, and has multiple entry points when you want to add a specific inspector extension to a class: the inspector level and the eye element level.