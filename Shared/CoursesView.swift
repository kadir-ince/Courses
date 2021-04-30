//
//  CoursesView.swift
//  Courses
//
//  Created by Kadir Ince on 30.04.2021.
//

import SwiftUI

struct CoursesView: View {
    @State var show = false
    @State var selectedItem: Course? = nil
    @State var isDisabled = false
    @Namespace var namespace
    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(
                    columns: [
                        GridItem(.adaptive(minimum: 160), spacing: 16)
                    ],
                    spacing: 16) {
                        ForEach(courses) { item in
                            VStack {
                                CourseItem(course: item)
                                    .matchedGeometryEffect(id: item.id, in: namespace, isSource: !show)
                                    .frame(height: 200)
                                    .onTapGesture {
                                        withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0)) {
                                            show.toggle()
                                            selectedItem = item
                                            isDisabled = true
                                        }
                                    }
                                    .disabled(isDisabled)
                            }
                            .matchedGeometryEffect(id: "container\(item.id)", in: namespace, isSource: !show)
                        }
                }
                .padding(16)
                .frame(maxWidth: .infinity)
            }
            .zIndex(1)

            if selectedItem != nil {
                ZStack(alignment: .topTrailing) {
                    VStack {
                        ScrollView {
                            CourseItem(course: selectedItem!)
                                .matchedGeometryEffect(id: selectedItem!.id, in: namespace)
                                .frame(height: 280)

                            VStack {
                                ForEach(0 ..< 20) { _ in
                                    CourseRow()
                                }
                            }
                            .padding()
                        }
                    }
                    .background(Color("Background 1"))
                    .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
                    .matchedGeometryEffect(id: "container\(selectedItem!.id)", in: namespace)
                    .edgesIgnoringSafeArea(.all)

                    CloseButton()
                        .padding(.trailing, 16)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                show.toggle()
                                selectedItem = nil
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    isDisabled = false
                                }
                            }
                        }
                }
                .zIndex(2)
            }
        }
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
