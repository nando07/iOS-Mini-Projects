/**
 * Copyright (c) 2017 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import Foundation

//: ### METHODS
//: Create a structure named `Student` with three properties: first name, last name and grade. Then create a structure named `Classroom` with two properties: the class name, and an array of students. Finally, create a method named `highestGrade()` that returns the highest grade in the classroom. Try using `reduce` on the array to perform the calculation.

// TODO: Write solution here

//: Make an extension on classroom with a method named `curveGrades()`. This method should find the difference between 100 and the highest grade, and add this amount to all students scores. Finally, sort the students array so they are ordered from the students with the highest score, to the students with the lowest score.
//: 
//: **Hint**: remember that structures are value types, so if you iterate with `for student in students` you'll get a constant copy of the student, not the student inside the array. Is there another way you can loop through the students in the array?

// TODO: Write solution here

//: Make an extension on Student that implements `CustomStringConvertible`. It should return a string in this format: "[last name], [first name]: [grade]".

// TODO: Write solution here

//: Make an extension on Classroom that implements `CustomStringConvertible`. It should return a string with the classroom name, and a newline, followed by the list of students with a newline between each student.

// TODO: Write solution here
