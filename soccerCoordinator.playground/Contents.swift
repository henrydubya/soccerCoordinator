// Each player is represnted by a dictionary with string keys and values
let playerOne: [String: Any] = [
    "name" : "Joe Smith",
    "height" : "42.0",
    "experience" : "true",
    "guardian" : "Jim and Jan Smith"
]

let playerTwo: [String: Any] = [
    "name" : "Jill Tanner",
    "height" : "36.0",
    "experience" : "true",
    "guardian" : "Clara Tanner"
]

let playerThree: [String: Any] = [
    "name" : "Bill Bon",
    "height" : "43.0",
    "experience" : "true",
    "guardian" : "Sara and Jenny Bon"
]

var playerFour: [String: Any] = [
    "name" : "Eva Gordon",
    "height" : "45.0",
    "experience" : "false",
    "guardian" : "Wendy and Mike Gordon"
]

let playerFive: [String: Any] = [
    "name" : "Matt Gill",
    "height" : "40.0",
    "experience" : "false",
    "guardian" : "Charles and Sylvia Gill"
]

var playerSix: [String: Any] = [
    "name" : "Kimmy Stein",
    "height" : "41.0",
    "experience" : "false",
    "guardian" : "Bill and Hillary Stein"
]

let playerSeven: [String: Any] = [
    "name" : "Sammy Adams",
    "height" : "45.0",
    "experience" : "false",
    "guardian" : "Jeff Adams"
]

let playerEight: [String: Any] = [
    "name" : "Karl Saygan",
    "height" : "42.0",
    "experience" : "true",
    "guardian" : "Heather Bledsoe"
]

let playerNine: [String: Any] = [
    "name" : "Suzanne Greenberg",
    "height" : "44.0",
    "experience" : "true",
    "guardian" : "Henrietta Dumas"
]

let playerTen: [String: Any] = [
    "name" : "Sal Dali",
    "height" : "41.0",
    "experience" : "false",
    "guardian" : "Gala Dali"
]

let playerEleven: [String: Any] = [
    "name" : "Joe Kavalier",
    "height" : "39.0",
    "experience" : "false",
    "guardian" : "Sam and Elaine Kavalier"
]

let playerTwelve: [String: Any] = [
    "name" : "Ben Finkelstein",
    "height" : "44.0",
    "experience" : "false",
    "guardian" : "Aaron and Jill Finkelstein"
]

let playerThirteen: [String: Any] = [
    "name" : "Diego Soto",
    "height" : "41.0",
    "experience" : "true",
    "guardian" : "Robin and Sarika Soto"
]

let playerFourteen: [String: Any] = [
    "name" : "Chloe Alaska",
    "height" : "47.0",
    "experience" : "false",
    "guardian" : "David and Jamie Alaska"
]

let playerFifteen: [String: Any] = [
    "name" : "Arnold Willis",
    "height" : "43.0",
    "experience" : "false",
    "guardian" : "Claire Willis"
]

let playerSixteen: [String: Any] = [
    "name" : "Phillip Helm",
    "height" : "44",
    "experience" : "true",
    "guardian" : "Thomas Helm and Eva Jones"
]

let playerSeventeen: [String: Any] = [
    "name" : "Les Clay",
    "height" : "42.0",
    "experience" : "true",
    "guardian" : "Wynonna Brown"
]

let playerEighteen: [String: Any] = [
    "name" : "Herschel Krustofski",
    "height" : "45.0",
    "experience" : "true",
    "guardian" : "Hyman and Rachel Krustofski"
]

// Single collection containing all players
let players = [
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

var hasExperience: [String:Any] = [:]
var hasNoExperience: [String:Any] = [:]

/* Use a switch statement to determine the teams.
 Create logic to iterate through all 18 players and assign them to teams such that the number of experienced players on each team are the same. Store each team’s players in its own new collection variable for use in Part 3. (Please note: your logic should work correctly regardless of the initial ordering of the players and should work, if we theoretically had more or less than 18 players, so NO MAGIC NUMBERS!)
 
 Also, if you would like to attain an “exceeds expectations” rating for this project, add logic to ensure that each team's average height is within 1.5 inches of the others.
 */

for player in players {
    if player["experience"] as! Bool == true {
        hasExperience.append(player)
    }
    else {
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
// Establishing all team's practice time and dates

let firstPractice: [String: String] = ["Team Dragons": "March 17, 1pm", "Team Sharks": "March 17, 3pm", "Team Raptors": "March 18, 1pm"]

//Variable for letters to be collected

var letters: [String] = []

// Letter logic based on player information

func welcomeLetter(for player: [String:Any], onTeam team: String) -> String {
    let letter = // Letter text goes here
    return letter
}

// Adding each player's letter to the letter collection

func addLetter(for team: [[String:Any]], onTeam: String) {
    for player in team {
        letters.append(for: player, onTeam)
    }
}

// Calling functions to append letters
addLetter(for: teamDragons, onTeam: "Team Dragons")
addLetter(for: teamSharks, onTeam: "Team Sharks")
addLetter(for: teamRaptors, onTeam: "Team Raptors")

// Printing the formatted letter
for letter in letters {
    print(letter)
}



