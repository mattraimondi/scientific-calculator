// 2019 Matthew Raimondi
// www.mattraimondi.com
// www.github.com/mattraimondi

// Scientific Calculator 1.0.1-alpha.1
// calculator.swift

// MIT License
//
// Copyright (c) 2019 Matthew Raimondi
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation
import Darwin
import Cocoa

// This function displays help. This is a note for Matt so he knows where he left off. No help text yet.
func displayHelp() {
    print("help text here")
    exit(0)
}

// This is a class with methods for the basic operations which will be built upon for higher mathematical concepts.
class BasicOperations {
    class func add(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
    class func subtract(_ a: Double, _ b: Double) -> Double  {
        return a - b
    }
    class func multiply(_ a: Double, _ b: Double) -> Double  {
        return a * b
    }
    class func divide(_ a: Double, _ b: Double) -> Double  {
        return a / b
    }
    class func square(_ a: Double) -> Double  {
        return pow(abs(a), 2)
    }
    class func exponent(_ a: Double, _ b: Double) -> Double  {
        return pow(abs(a), abs(b))
    }
    class func squareRoot(_ a: Double) -> Double  {
        return pow(abs(a), (1 / 2))
    }
    class func root(_ a: Double, _ b: Double) -> Double  {
        return pow(abs(a), (1 / abs(b)))
    }
}

class AlgebraicFunctions {
    class func solve(_ equation: String, _ variable: String) {

    }
}

// Since scientific calculators must be able to handle variable information, a class of methods has been created
// to interact with an XML file for the long term storage of variables.
class VariableHandling {
    class func storeVariable(_ variable: String, _ value: Double) {

    }

    class func retrieveVariable(_ variable: String) -> Double {
        return 0.00
    }

}

// Ah, fractions... they can be tricky to handle, especially without a decent GUI. Therefore,
// there is a class specifically dedicated to the manipulation, handling, and representation of fractions
// in a decimal dominated evironment.
class FractionHandling {

}

class GraphingFunctions {

}

func changeGraphingState(_ newState: String) {

}

// This function performs arithmatic on the parsed input. Most of the logic takes place in this function.
func performArithmetic(_ passedArray: Array<String>, _ inputArrayLength: Int) -> String {
    var inputArray: Array<String> = passedArray
    let operations: Array<String> = ["**", "-*", "*", "/", "+", "-"]
    let alphaNumerals: Array<String> = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    let alphaNumeralsCapital: Array<String> = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

    if operations.contains(inputArray[0]) {
        displayHelp()
    }
    
    for word in inputArray {
        for letter in word {
            if alphaNumerals.contains(String(letter)) {
                displayHelp()
            } else if alphaNumeralsCapital.contains(String(letter)) {
                displayHelp()
            }
        }
    }

    while inputArray.count != 1 {
        for object in inputArray { // nested if, if ** in then this whole block for each operation... or if * then sub if * for each operation...
            if inputArray.contains("**") {
                if object == "**" {
                    let operationIndex: Int = inputArray.firstIndex(of: object)!
                    inputArray[operationIndex] = String(BasicOperations.exponent(Double(inputArray[operationIndex - 1])!, Double(inputArray[operationIndex + 1])!))
                    inputArray.remove(at: operationIndex + 1)
                    inputArray.remove(at: operationIndex - 1)
                    continue
                }
            } else if inputArray.contains("-*") {
                if object == "-*" {
                    let operationIndex: Int = inputArray.firstIndex(of: object)!
                    inputArray[operationIndex] = String(BasicOperations.root(Double(inputArray[operationIndex - 1])!, Double(inputArray[operationIndex + 1])!))
                    inputArray.remove(at: operationIndex + 1)
                    inputArray.remove(at: operationIndex - 1)
                    continue
                }
            } else if inputArray.contains("*") {
                if object == "*" {
                    let operationIndex: Int = inputArray.firstIndex(of: object)!
                    inputArray[operationIndex] = String(BasicOperations.multiply(Double(inputArray[operationIndex - 1])!, Double(inputArray[operationIndex + 1])!))
                    inputArray.remove(at: operationIndex + 1)
                    inputArray.remove(at: operationIndex - 1)
                    continue
                }
            } else if inputArray.contains("/") {
                if object == "/" {
                    let operationIndex: Int = inputArray.firstIndex(of: object)!
                    inputArray[operationIndex] = String(BasicOperations.divide(Double(inputArray[operationIndex - 1])!, Double(inputArray[operationIndex + 1])!))
                    inputArray.remove(at: operationIndex + 1)
                    inputArray.remove(at: operationIndex - 1)
                    continue
                }
            } else if inputArray.contains("+") {
                if object == "+" {
                    let operationIndex: Int = inputArray.firstIndex(of: object)!
                    inputArray[operationIndex] = String(BasicOperations.add(Double(inputArray[operationIndex - 1])!, Double(inputArray[operationIndex + 1])!))
                    inputArray.remove(at: operationIndex + 1)
                    inputArray.remove(at: operationIndex - 1)
                    continue
                }
            } else if inputArray.contains("-") {
                if object == "-" {
                    let operationIndex: Int = inputArray.firstIndex(of: object)!
                    inputArray[operationIndex] = String(BasicOperations.subtract(Double(inputArray[operationIndex - 1])!, Double(inputArray[operationIndex + 1])!))
                    inputArray.remove(at: operationIndex + 1)
                    inputArray.remove(at: operationIndex - 1)
                    continue
                }
            }
        }
    }

    return String(inputArray[0])
}

// Here we have a function for tokenizing and parsing strings.
func parseInput(_ input: String) -> String {
    var inputArray: Array<String> = []
    var inputArrayLength: Int = 0

    if input == "exit" {
        exit(0)
    } else if input == "quit" {
        exit(0)
    } else if input == "help" {
        displayHelp()
    } else {
        inputArray = input.components(separatedBy: " ")
        inputArrayLength = inputArray.count
	}

    return performArithmetic(inputArray, inputArrayLength)
}

// To create a nice interactive environment, the history is written to a file.
func writeHistory(_ input: String) {
    let homeDirURL = FileManager.default.homeDirectoryForCurrentUser
    let history = homeDirURL.appendingPathComponent(".scientific_history")
    let filteredInput = "\(input)\n"
    do {
        let fileHandle = try FileHandle(forWritingTo: history)
        fileHandle.seekToEndOfFile()
        fileHandle.write(filteredInput.data(using: .utf8)!)
        fileHandle.closeFile()
    } catch {
        print("Error writing to file \(error)")
        do {
            try filteredInput.write(to: history, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print(error)
        }
    }
}

// This is the main function which handles input and output from the user.
func main() {
    var output: String = ""

    print("scientific-calculator> ", terminator:"")
    if let stdin = readLine() {
        writeHistory(stdin)
        output = parseInput(stdin)
    }

    print(output)
}

// This is what gets executed first.
print("Welcome to Scientific Calculator by Matthew Raimondi\nwww.mattraimondi.com\n\nTo exit, simply type \'exit\'\nFor help, simply type \'help\'\n")
while true {
    main()
}
