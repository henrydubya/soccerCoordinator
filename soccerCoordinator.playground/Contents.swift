// Each player is represnted by a dictionary with string keys and values
let playerOne: [String: Any] = [
    "name" : "Joe Smith",
    "height" : "42.0",
    "experience" : true,
    "guardian" : "Jim and Jan Smith"
]

let playerTwo: [String: Any] = [
    "name" : "Jill Tanner",
    "height" : "36.0",
    "experience" : true,
    "guardian" : "Clara Tanner"
]

let playerThree: [String: Any] = [
    "name" : "Bill Bon",
    "height" : "43.0",
    "experience" : true,
    "guardian" : "Sara and Jenny Bon"
]

var playerFour: [String: Any] = [
    "name" : "Eva Gordon",
    "height" : "45.0",
    "experience" : false,
    "guardian" : "Wendy and Mike Gordon"
]

let playerFive: [String: Any] = [
    "name" : "Matt Gill",
    "height" : "40.0",
    "experience" : false,
    "guardian" : "Charles and Sylvia Gill"
]

var playerSix: [String: Any] = [
    "name" : "Kimmy Stein",
    "height" : "41.0",
    "experience" : false,
    "guardian" : "Bill and Hillary Stein"
]

let playerSeven: [String: Any] = [
    "name" : "Sammy Adams",
    "height" : "45.0",
    "experience" : false,
    "guardian" : "Jeff Adams"
]

let playerEight: [String: Any] = [
    "name" : "Karl Saygan",
    "height" : "42.0",
    "experience" : true,
    "guardian" : "Heather Bledsoe"
]

let playerNine: [String: Any] = [
    "name" : "Suzanne Greenberg",
    "height" : "44.0",
    "experience" : true,
    "guardian" : "Henrietta Dumas"
]

let playerTen: [String: Any] = [
    "name" : "Sal Dali",
    "height" : "41.0",
    "experience" : false,
    "guardian" : "Gala Dali"
]

let playerEleven: [String: Any] = [
    "name" : "Joe Kavalier",
    "height" : "39.0",
    "experience" : false,
    "guardian" : "Sam and Elaine Kavalier"
]

let playerTwelve: [String: Any] = [
    "name" : "Ben Finkelstein",
    "height" : "44.0",
    "experience" : false,
    "guardian" : "Aaron and Jill Finkelstein"
]

let playerThirteen: [String: Any] = [
    "name" : "Diego Soto",
    "height" : "41.0",
    "experience" : true,
    "guardian" : "Robin and Sarika Soto"
]

let playerFourteen: [String: Any] = [
    "name" : "Chloe Alaska",
    "height" : "47.0",
    "experience" : false,
    "guardian" : "David and Jamie Alaska"
]

let playerFifteen: [String: Any] = [
    "name" : "Arnold Willis",
    "height" : "43.0",
    "experience" : false,
    "guardian" : "Claire Willis"
]

let playerSixteen: [String: Any] = [
    "name" : "Phillip Helm",
    "height" : "44",
    "experience" : true,
    "guardian" : "Thomas Helm and Eva Jones"
]

let playerSeventeen: [String: Any] = [
    "name" : "Les Clay",
    "height" : "42.0",
    "experience" : true,
    "guardian" : "Wynonna Brown"
]

let playerEighteen: [String: Any] = [
    "name" : "Herschel Krustofski",
    "height" : "45.0",
    "experience" : true,
    "guardian" : "Hyman and Rachel Krustofski"
]

// Single collection containing all players
var players = [
    playerOne,
    playerTwo,
    playerThree,
    playerFour,
    playerFive,
    playerSix,
    playerSeven,
    playerEight,
    playerNine,
    playerTen,
    playerEleven,
    playerTwelve,
    playerThirteen,
    playerFourteen,
    playerFifteen,
    playerSixteen,
    playerSeventeen,
    playerEighteen
]

// Creating variables on which I'll use to switch and create teams

var hasExperience = [[String:Any]]()
var hasNoExperience = [[String:Any]]()

// Determine team based on player experience

for player in players {
    let isExperienced = player["experience"] as! Bool
    
    if isExperienced {
        hasExperience.append(player)
    } else {
        hasNoExperience.append(player)
    }
}

// Create variables that will hold all the players for the three teams using the team "name" prefixed with 'team'

var teamDragons: [[String:Any]] = []
var teamRaptors: [[String:Any]] = []
var teamSharks: [[String:Any]] = []

// Sorting experienced players into fair teams

for i in 0..<hasExperience.count {
    switch true {
    case i % 3 == 0:
        teamDragons.append(hasExperience[i])
    case i % 3 == 1:
        teamRaptors.append(hasExperience[i])
    case i % 3 == 2:
        teamSharks.append(hasExperience[i])
    default:
        break
    }
}

// Sorting players without experience into fair teams

for i in 0..<hasNoExperience.count {
    switch true {
    case i % 3 == 0:
        teamDragons.append(hasExperience[i])
    case i % 3 == 1:
        teamRaptors.append(hasExperience[i])
    case i % 3 == 2:
        teamSharks.append(hasExperience[i])
    default:
        break
    }
}

// Collect all the first practice times

 let practiceTime: [String: String] = ["Team Dragons": "March 17th, at 1 p.m.", "Team Sharks": "March 17th, at 3 p.m.", "Team Raptors": "March 18th, at 1 p.m."]

// Make a collection for all guardian letters

var letters = [String]()

// Function to create the letters

func createLetter(for player: [String: Any], onTeam team: String) -> String {
    let letter = "Howdy \(player["guardian"]!), it's that time of year again! Our annual Youth Soccer League is about to begin, and \(player["name"]!) has been placed on \(team). Get riled up for the first team practice on \(practiceTime[team]!) No equipment will be needed for this practice, just smiling faces. :) We look forward to seeing you there!"
    return letter
}

// Logic that adds the individual player letters to the letters collection
func addPlayerLetters(for team: [[String: Any]], onTeam: String) {
    for player in team {
        letters.append(createLetter(for: player, onTeam: onTeam))
    }
}

// Calling a function to append the letters to each team's letter's collection

addPlayerLetters(for: teamDragons, onTeam: "Team Dragons")
addPlayerLetters(for: teamRaptors, onTeam: "Team Raptors")
addPlayerLetters(for: teamSharks, onTeam: "Team Sharks")

// Printing each player letter to the console
for letter in letters {
    print(letter)
}
 