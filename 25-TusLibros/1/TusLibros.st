!classDefinition: #CartTest category: #TusLibros stamp: 'HJGG 10/31/2019 15:56:25'!
TestCase subclass: #CartTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!CartTest methodsFor: 'as yet unclassified' stamp: 'HJGG 10/31/2019 15:45:58'!
test01AmountOfBooksInCartWith1IsCorrect

	| aCart theShining |
	aCart _ Cart new.
	theShining _ '9780451119674'.
	aCart addToCart: theShining.
	self assert: aCart amountOfBooks = 1.! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HJGG 10/31/2019 15:45:58'!
test02AmountOfBooksInCartWith2DifferentIsCorrect

	| aCart theShining theShining2|
	aCart _ Cart new.
	theShining _ '9780451119674'.
	theShining2 _ '9780451119675'.
	aCart addToCart: theShining.
	aCart addToCart: theShining2.	
	self assert: aCart amountOfBooks = 2.! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HJGG 10/31/2019 15:45:58'!
test03AmountOfBooksInCartWith2EqualIsCorrect

	| aCart theShining|
	aCart _ Cart new.
	theShining _ '9780451119674'.
	aCart addToCart: theShining.
	aCart addToCart: theShining.	
	self assert: aCart amountOfBooks = 2.! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HJGG 10/31/2019 15:54:51'!
test04CanAddMultipleCopiesAtOnce

	| aCart theShining|
	aCart _ Cart new.
	theShining _ '9780451119674'.
	aCart addtToCart: 100 copiesOf: theShining.
	self assert: aCart amountOfBooks = 100.! !


!classDefinition: #Cart category: #TusLibros stamp: 'HJGG 10/31/2019 15:56:25'!
Object subclass: #Cart
	instanceVariableNames: 'elements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!Cart methodsFor: 'accesing' stamp: 'HJGG 10/31/2019 15:40:51'!
amountOfBooks
	
	^elements size.! !


!Cart methodsFor: 'cart usage' stamp: 'HJGG 10/31/2019 15:45:58'!
addToCart: aBook 
	
	elements add: aBook! !

!Cart methodsFor: 'cart usage' stamp: 'HJGG 10/31/2019 15:52:43'!
addtToCart: amount copiesOf: aBook 
	
	elements add: aBook withOccurrences: amount.
! !


!Cart methodsFor: 'initialization' stamp: 'HJGG 10/31/2019 15:44:55'!
initialize

	elements _ Bag new.
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Cart class' category: #TusLibros stamp: 'HJGG 10/31/2019 15:56:25'!
Cart class
	instanceVariableNames: ''!

!Cart class methodsFor: 'instance creation' stamp: 'HJGG 10/31/2019 15:24:16'!
new

	^self basicNew initialize.! !
