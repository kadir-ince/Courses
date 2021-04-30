//
//  CourseList.swift
//  Courses
//
//  Created by Kadir Ince on 30.04.2021.
//

import SwiftUI

struct CourseList: View {
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        content
            .listStyle(InsetGroupedListStyle())
        #else
        content
            .frame(minWidth:800, minHeight: 600)
        #endif
    }

    var content: some View {
        List(0 ..< 20) { _ in
            CourseRow()
        }
        .navigationTitle("Courses")
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}
