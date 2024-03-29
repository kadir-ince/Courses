//
//  CourseItem.swift
//  Courses
//
//  Created by Kadir Ince on 30.04.2021.
//

import SwiftUI

struct CourseItem: View {
    var course:Course = courses[0]
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            HStack {
                Spacer()
                Image(course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Text(course.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)

            Text(course.subtitle)
                .font(.footnote)
                .foregroundColor(Color.white)
        }
        .padding(.all)
        .background(course.color)
        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
        .shadow(color: course.color.opacity(0.3),radius: 10, x: 0,y: 10)
    }
}

struct CourseItem_Previews: PreviewProvider {
    static var previews: some View {
        CourseItem()
    }
}
