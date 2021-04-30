//
//  Course.swift
//  Courses
//
//  Created by Kadir Ince on 30.04.2021.
//

import SwiftUI

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
    var color: Color
}

var courses = [
    Course(
        title: "UI Design for iOS 14",
        subtitle: "20 Sections",
        image: "Illustration 1",
        color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
    ),
    Course(
        title: "Build a SwiftUI app for iOS 14",
        subtitle: "24 Sections",
        image: "Illustration 2",
        color: Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
    ),
    Course(
        title: "UI Design for iPadOS",
        subtitle: "12 Sections",
        image: "Illustration 3",
        color: Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
    ),
    Course(
        title: "UI Design for macOS",
        subtitle: "12 Sections",
        image: "Illustration 4",
        color: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))
    ),
    Course(
        title: "Build a SwiftUI app for iOS 13",
        subtitle: "20 Sections",
        image: "Illustration 5",
        color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
    ),
    Course(
        title: "Design System in Figma",
        subtitle: "20 Sections",
        image: "Illustration 6",
        color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
    ),
    Course(
        title: "React for Desginers",
        subtitle: "21 Sections",
        image: "Illustration 7",
        color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
    ),
    Course(
        title: "Figma for Developers",
        subtitle: "20 Sections",
        image: "Illustration 8",
        color: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
    ),
    Course(
        title: "React Hooks",
        subtitle: "12 Sections",
        image: "Illustration 9",
        color: Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    ),
    Course(
        title: "Flutter for Designers",
        subtitle: "24 Sections",
        image: "Illustration 10",
        color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
    )
]
