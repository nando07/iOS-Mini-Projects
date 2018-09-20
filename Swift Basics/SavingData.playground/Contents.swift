import Foundation

FileManager.documentDirectoryURL.path

try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false
)

let mysteryDataURL = URL(fileURLWithPath: "mystery", relativeTo: FileManager.documentDirectoryURL).path

let stringURL = FileManager.documentDirectoryURL.appendingPathComponent("string").appendingPathExtension("txt")

stringURL.path

let challengeString: String = "thebestdev"
let challengeStringURL = URL(fileURLWithPath: challengeString, relativeTo: FileManager.documentDirectoryURL).appendingPathExtension("txt")

challengeStringURL.lastPathComponent

let mysteryBytes: [UInt8] = [
   240,          159,          152,          184,
   240,          159,          152,          185,
   0b1111_0000,  0b1001_1111,  0b1001_1000,  186,
   0xF0,         0x9F,         0x98,         187
]

let mysteryDataURL2 = URL(
   fileURLWithPath: "mystery",
   relativeTo: FileManager.documentDirectoryURL
)

let mysteryData = Data(bytes: mysteryBytes)
try mysteryData.write(to: mysteryDataURL2)

let savedMysteryData = try Data(contentsOf: mysteryDataURL2)

let savedMysteryBytes = Array(savedMysteryData)

savedMysteryBytes == mysteryBytes


try mysteryData.write(to: mysteryDataURL2.appendingPathExtension("txt"))

//: ## String
let string = String(data: savedMysteryData, encoding: .utf8)!
let stringURL2 =   FileManager.documentDirectoryURL
      .appendingPathComponent("string")
      .appendingPathExtension("txt")

try string.write(to: stringURL2, atomically: true, encoding: .utf8)
try String(contentsOf: stringURL2)
//: ## Challenge
let challengeString2 = "low F#"
let challengeStringURL2 = URL(
   fileURLWithPath: challengeString,
   relativeTo: FileManager.documentDirectoryURL
   ).appendingPathExtension("txt")

let challengeStringData = challengeString2.data(using: .utf8)!

try challengeStringData.write(to: challengeStringURL2, options: .atomic)

let savedChallengeString2 = try String(contentsOf: challengeStringURL2)

