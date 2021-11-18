//
//  ContentView.swift
//  Shared
//
//  Created by 이철구 on 2021/09/26.
//

import SwiftUI
import CoreData

struct userInfo {
    var userId: String
    var userIdx: Int
}

struct ContentView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 15, content: {
                Text("아이디")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                TextField("아이디를 입력해주세요!!!", text: $email)
                    .padding(.top, 5)
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundColor(.gray)
                Divider()
            })
            VStack(alignment: .leading, spacing: 15, content: {
                Text("비밀번호")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                SecureField("비밀번호를 입력해주세요!!!!", text: $password)
                    .padding(.top, 5)
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundColor(.gray)
                Divider()
            }).padding(.top, 5)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("로그인")
                    .foregroundColor(.red)
                    .font(.system(size: 15))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(width: 300, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.red, lineWidth: 2)
                    )
                    .padding(.top, 15)
            })
            
            
            Button(action: {print("user email:", $email)}, label: {
                HStack{
                    Text("큐비가 처음이시가요?")
                        .foregroundColor(.black)
                    Text("회원가입")
                        .foregroundColor(.red)
                        .fontWeight(.bold)
                }
            })
        }
        .padding(30)
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
        
    }
}

