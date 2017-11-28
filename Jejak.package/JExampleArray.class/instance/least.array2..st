actions
least: anArray1 array2: anArray2
	"Sort the two arrays into one. May have one array smaller than the other. Arrays are sorted, so the algorithm is simplified."

	| sz v p i j k a1 a2 p1 p2 |
	#JCollecteur enter: self selector: #least:array2: node: 1.
	#JCollecteur assign: anArray1 to: #anArray1 node: 1.
	#JCollecteur assign: anArray2 to: #anArray2 node: 1.
	#JCollecteur define: '#(#sz #v #p #i #j #k #a1 #a2 #p1 #p2)' node: 4.
	#JCollecteur
		assign: (a1 := #JCollecteur record: #first node: 17 value: anArray1 first)
		to: #a1
		node: 15.
	#JCollecteur
		assign: (p1 := #JCollecteur record: #last node: 22 value: anArray1 last)
		to: #p1
		node: 20.
	#JCollecteur
		assign: (a2 := #JCollecteur record: #first node: 27 value: anArray2 first)
		to: #a2
		node: 25.
	#JCollecteur
		assign: (p2 := #JCollecteur record: #last node: 32 value: anArray2 last)
		to: #p2
		node: 30.
	#JCollecteur
		assign:
			(sz := #JCollecteur
				record: #max:
				node: 37
				value:
					((#JCollecteur record: #size node: 38 value: a1 size)
						max:
							(#JCollecteur record: #size node: 40 value: a2 size)))
		to: #sz
		node: 35.
	#JCollecteur
		assign: (v := #JCollecteur record: #new: node: 44 value: (Array new: sz))
		to: #v
		node: 42.
	#JCollecteur
		assign: (p := #JCollecteur record: #new: node: 49 value: (Array new: sz))
		to: #p
		node: 47.
	#JCollecteur assign: (i := 1) to: #i node: 52.
	#JCollecteur assign: (j := 1) to: #j node: 55.
	#JCollecteur assign: (k := 1) to: #k node: 58.
	#JCollecteur
		record: #whileTrue:
		node: 61
		value:
			([ #JCollecteur enter: 62.
			#JCollecteur
				exit:
					(#JCollecteur record: #<= node: 64 value: k <= sz) ]
				whileTrue: [ #JCollecteur enter: 67.
					#JCollecteur
						exit:
							(#JCollecteur
								record: #ifTrue:ifFalse:
								node: 69
								value:
									((#JCollecteur
										record: #or:
										node: 70
										value:
											((#JCollecteur
												record: #>
												node: 71
												value:
													i >
														(#JCollecteur record: #size node: 73 value: a1 size))
												or: [ #JCollecteur enter: 75.
													#JCollecteur
														exit:
															(#JCollecteur
																record: #and:
																node: 77
																value:
																	((#JCollecteur
																		record: #<=
																		node: 78
																		value:
																			j <=
																				(#JCollecteur record: #size node: 80 value: a2 size))
																		and: [ #JCollecteur enter: 82.
																			#JCollecteur
																				exit:
																					(#JCollecteur
																						record: #<
																						node: 84
																						value:
																							(#JCollecteur record: #at: node: 85 value: (a2 at: j))
																								<
																									(#JCollecteur record: #at: node: 88 value: (a1 at: i))) ])) ]))
										ifTrue: [ #JCollecteur enter: 91.
											#JCollecteur
												assign:
													(#JCollecteur record: #at: node: 96 value: (a2 at: j))
												to: v
												named: #v
												at: k
												node: 93.
											#JCollecteur
												assign:
													(#JCollecteur record: #at: node: 102 value: (p2 at: j))
												to: p
												named: #p
												at: k
												node: 99.
											#JCollecteur
												assign: (j := #JCollecteur record: #+ node: 107 value: j + 1)
												to: #j
												node: 105.
											#JCollecteur
												exit:
													(#JCollecteur
														assign: (k := #JCollecteur record: #+ node: 112 value: k + 1)
														to: #k
														node: 110) ]
										ifFalse: [ #JCollecteur enter: 115.
											#JCollecteur
												assign:
													(#JCollecteur record: #at: node: 120 value: (a1 at: i))
												to: v
												named: #v
												at: k
												node: 117.
											#JCollecteur
												assign:
													(#JCollecteur record: #at: node: 126 value: (p1 at: i))
												to: p
												named: #p
												at: k
												node: 123.
											#JCollecteur
												assign: (k := #JCollecteur record: #+ node: 131 value: k + 1)
												to: #k
												node: 129.
											#JCollecteur
												exit:
													(#JCollecteur
														assign: (i := #JCollecteur record: #+ node: 136 value: i + 1)
														to: #i
														node: 134) ])) ]).
	^ #JCollecteur
		return:
			(#JCollecteur
				record: #with:with:
				node: 140
				value: (Array with: v with: p))
		node: 139