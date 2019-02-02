// 2019 Matthew Raimondi
// www.mattraimondi.com
// www.github.com/mattraimondi

// Scientific Calculator 1.0.0-alpha.1
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

class BasicOperations {
    func add(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
    func subtract(_ a: Double, _ b: Double) -> Double  {
        return a - b
    }
    func multiply(_ a: Double, _ b: Double) -> Double  {
        return a * b
    }
    func divide(_ a: Double, _ b: Double) -> Double  {
        return a / b
    }
    func square(_ a: Double) -> Double  {
        return pow(abs(a), 2)
    }
    func exponent(_ a: Double, _ b: Double) -> Double  {
        return pow(abs(a), abs(b))
    }
    func squareRoot(_ a: Double) -> Double  {
        return pow(abs(a), (1 / 2))
    }
    func root(_ a: Double, _ b: Double) -> Double  {
        return pow(abs(a), (1 / abs(b)))
    }
}

class AlgebraicFunctions {
    func solve(_ equation: String, _ variable: String) {

    }
}

class VariableHandling {
    func storeVariable(_ variable: String, _ value: Double) {

    }

    func retrieveVariable(_ variable: String) -> Double {
        return 0.00
    }

}

class FractionHandling {

}

class GraphingFunctions {

}

func changeGraphingState(_ newState: String) {

}

func parseInput(_ input: String) -> String {
    if input == "exit" {
        exit(0)
    } else if input == "quit" {
        exit(0)
    }
    return "placeholder"
}

func main() {
    print("scientific-calculator> ", terminator:"")
    if let stdin = readLine() {
        var output = parseInput(stdin)
    }
}

while true {
    main()
}
