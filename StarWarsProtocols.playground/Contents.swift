/*:
 # Star Wars Protocols
 
 Below are six structs -- three for Jedi ("Master ...") and three for Sith ("Darth ...").  As you can see comparing the structs, there are some powers which are *specific to the Jedi*, some that are *specific to the Sith*, and some that are *common to any Force user*, whether Jedi or Sith.  Using protocols and extensions as appropriate, refactor this set of structs so that each struct is smaller and less verbose, but retains all of the functionality listed in the handout.
*/
struct MasterYoda {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 9 }
  func prescience() -> Int { return 5 }
  func introspection() -> String { return "Search your feelings." }
  func mindControl() -> String { return "Do or do not." }
}

struct MasterObiWan {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 5 }
  func prescience() -> Int { return 5 }
  func introspection() -> String { return "Search your feelings." }
  func mindControl() -> String { return "These are not the droids you're looking for." }
}

struct MasterQuiGon {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 5 }
  func prescience() -> Int { return 5 }
  func mindControl() -> String { return "Republic credits will do." }
  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
}

struct DarthVader {
  func lightSaberSkill() -> Int { return 9 }
  func telekinesis() -> Int { return 8 }
  func prescience() -> Int { return 5 }
  func forceChoke() -> Bool { return true }
  func forceLightning() -> Bool { return false }
}

struct DarthSidious {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 7 }
  func prescience() -> Int { return 6 }
  func forceChoke() -> Bool { return true }
  func forceLightning() -> Bool { return true }
}

struct DarthTyrannous {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 5 }
  func prescience() -> Int { return 5 }
  func forceChoke() -> Bool { return false }
  func forceLightning() -> Bool { return true }
}

/*:
 Place your refactored structs below:
 */
protocol ForceUser {
  func lightSaberSkill() -> Int
  func telekinesis() -> Int
  func prescience() -> Int
}

extension ForceUser {
  func lightSaberSkill() -> Int {
    return 8
  }
  
  func telekinesis() -> Int {
    return 5
  }
  
  func prescience() -> Int {
    return 5
  }
}

// Mark: Jedi

protocol Jedi: ForceUser {
  func introspection() -> String
  func mindControl() -> String
}

extension Jedi {
  func introspection() -> String {
    return "Search your feelings."
  }
}

struct Yoda: Jedi {
  func telekinesis() -> Int {
    return 9
  }
  
  func mindControl() -> String { return "Do or do not." }
}

struct ObiWan: Jedi {
  func mindControl() -> String { return "These are not the droids you're looking for." }
}

struct QuiGon: Jedi {
  func mindControl() -> String { return "Republic credits will do." }
  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
}


// Mark: Sith

protocol Sith: ForceUser {
  func forceChoke() -> Bool
  func forceLightning() -> Bool
}

extension Sith {
  func forceChoke() -> Bool {
    return true
  }

  func forceLightning() -> Bool {
    return true
  }
}

struct Vader: Sith {
  func lightSaberSkill() -> Int { return 9 }
  func telekinesis() -> Int { return 8 }
  func forceLightning() -> Bool { return false }
}

struct Sidious: Sith {
  func telekinesis() -> Int { return 7 }
  func prescience() -> Int { return 6 }
}

struct Tyrannous: Sith {
  func forceChoke() -> Bool { return false }
}


let yoda = Yoda()
let obiWan = ObiWan()
let quiGon = QuiGon()

let vader = Vader()
let sidious = Sidious()
let tyrannous = Tyrannous()

print(yoda.lightSaberSkill())
print(yoda.telekinesis())
print(yoda.prescience())
print(yoda.introspection())
print(yoda.mindControl())
print("________________________")

print(obiWan.lightSaberSkill())
print(obiWan.telekinesis())
print(obiWan.prescience())
print(obiWan.introspection())
print(obiWan.mindControl())
print("________________________")

print(quiGon.lightSaberSkill())
print(quiGon.telekinesis())
print(quiGon.prescience())
print(quiGon.mindControl())
print(quiGon.introspection())
print("________________________")

print(vader.lightSaberSkill())
print(vader.telekinesis())
print(vader.prescience())
print(vader.forceChoke())
print(vader.forceLightning())
print("________________________")

print(sidious.lightSaberSkill())
print(sidious.telekinesis())
print(sidious.prescience())
print(sidious.forceChoke())
print(sidious.forceLightning())
print("________________________")

print(tyrannous.lightSaberSkill())
print(tyrannous.telekinesis())
print(tyrannous.prescience())
print(tyrannous.forceChoke())
print(tyrannous.forceLightning())
print("________________________")

