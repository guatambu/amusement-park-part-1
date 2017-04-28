//
//  GuestClassicSource.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 4/19/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//



/*
 
 classes for the entrant types with the simplest entrant type setting the foundation for the increasingly complex ones
 
 [12:02]
 base to subclass
 
 [12:04]
 then i was thinking of using enums and their ability to have methods to go back and create the specific objects for these entrant types to avoid using string wherever i can
 
 [12:04]
 like how you did with the UIColor enum example, but instead of UIColor, plugging in my own objects
 
 [12:05]
 for the various entrant types so a switch statement uses the methods to return the respective types of entrants
 
 [12:06]
 if the inputs where the user is expected to fill things in are left blank, then they would throw an error
 
 [12:06]
 (things like first name, last name, etc.)
 
 [12:06]
 and then the other permissions like area access and discounts would be Booleans that would simply pass true false
 
 [12:07]
 does that seem like a good idea, or is that a mess?
 
 pasan [12:08 PM]
 nope that is more or less how I did it with a few variations. I think (it’s been a while since I looked at my code) that I used enums for access as well.  So a user would maintain reference to access areas through a stored property that was an array of enum values
 
 [12:08]
 if that makes sense
 
 [12:08]
 nope as in its not a mess :slightly_smiling_face:
 
 [12:09]
 im a fan of lots of little types
 
 guatambu [12:09 PM]
 heh.  ok then in the case of the arrays... would you just loop through an array of say area permissions and check to see what's present, and if something is missing then throw an error?
 
 guatambu [12:11 PM]
 and in this case, i was running into the doubt of whether that kind of checking would best be done in one macro swipe method or better broken out into its own kind of swipe method called as well
 
 pasan [12:12 PM]
 @guatambu ultimately that check would be done at a higher level when building out the UI. Something like hit submit button > check if all data is present > if not throw error, else create instance
 
 here’s some example code with poor naming choices
 
 class SubClass: BaseClass {
 var c: String
 
 init(a: String, b: String, c: String) {
 self.c = c
 super.init(a: a, b: b)
 }
 }
 
 [12:34]
 ```protocol Some {
 var name: String { get }
 }
 
 class Foo: Some {
 let name: String
 
 init(name: String) {
 self.name = name
 }
 }
 
 class Baz: Some {
 var name = "John"
 }
 
 enum Bar {
 case first(name: String)
 case second
 
 func object() -> Some {
 switch self {
 case .first(let name): return Foo(name: name)
 case .second: return Baz()
 }
 }
 }
 
 let enumValue = Bar.first(name: "Michael")
 let object = enumValue.object()
 ```
 
 [12:35]
 you have a protocol and two classes that conform to a protocol. One class accepts a name value at point of initialization, the other has a default
 
 [12:35]
 then you have an enum with two members -  the first accepts an associated value of type String
 
 [12:35]
 Using a instance method we return any class that conforms to the Some protocol based on which enum case it is
 
 [12:36]
 if its first, we use the associated value as an argument to the init method of Foo
 
 [12:36]
 At the bottom, create and assign an enum value…call object on it to get the class or whatever you need
 
 [12:36]
 use it
 
 
 */
import Foundation


protocol EntrantTypeable {

    var amusementAreaAccess: Bool { get }
    var allRidesAccess: Bool { get }

}



// Entrant Type: base class: tier 1

struct GuestClassicSource: EntrantTypeable {
    
    var amusementAreaAccess: Bool
    var allRidesAccess: Bool
    
}













