private
defaultPackageCategoriesNames
	"As it says: categories for packages who don't use the - convention. But also the place where we may start organizing nicely the system to have a better structure. Do a initialize and reopen a window of the AltBrowser to see the changes in the opened browsers."

	"AltBrowser initialize."

	^ #(#(#PharoBootstrap) #(#Core #Compiler #Reflectivity #Regex) #(#Development #Scripting #PragmaCollector #SLICE) #(#Network) #(#External #FileSystem #System) #BaselineOf #ConfigurationOf #(#Packages #Gofer #Metacello #Monticello #ConfigurationCommandLine))