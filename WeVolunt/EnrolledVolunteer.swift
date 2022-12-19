//
//  EnrolledVolunteer.swift
//  WeVolunt
//
//  Created by roba on 06/12/2022.
//

import SwiftUI

struct EnrolledVolunteer: View {
    @Binding var showingVolunteerSheet: Bool

    var body: some View {
        ScrollView(.vertical){
            
            VStack{
                Button {
                    showingVolunteerSheet.toggle()
                } label: {
                    Image(systemName: "xmark.circle")
                        .foregroundColor(Color("ourOrange"))
                }
                .padding(.trailing, 250)
                .padding(.top, 20)
                //
                Spacer()
                // *** START PAGE CONTENT ***
                Text("Helping Affected Families ")
                    .font(.system(size: 24,weight: .bold))
                    .foregroundColor(Color("ourBlue"))
                    .multilineTextAlignment(.leading)
                //.fixedSize(horizontal: false, vertical: true)
                    .padding(.bottom,3)
                
                
                Text("Nafaa  Charity Association")
                    .font(.system(size: 19 , weight: .regular))
                //  .multilineTextAlignment(.leading)
                    .padding(.trailing,60)
                    .foregroundColor(Color("ourOrange"))
                
                
                Image("volunteerImage")
                    .resizable()
                    .frame(width: 290,height: 131)
                    .cornerRadius(26)
                    .padding(.bottom,3)
                
                Text("Participate in field visits to help \naffected families and record data")
                    .foregroundColor(Color("volunteerFont"))
                    .multilineTextAlignment(.leading)
                    .padding(.top,16)
                    .padding(.leading,40)
                    .padding(.trailing,60)
                    .padding(.bottom,22)
                // .padding(.horizontal,30)
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "calendar")
                            .font(.system(size: 24))
                            .foregroundColor(Color("ourOrange"))
                        //  .padding(.leading,-75)
                        
                        Text("1 December")
                            .foregroundColor(Color("volunteerFont"))
                            .multilineTextAlignment(.leading)
                            .padding(.leading,12)
                        
                    }.padding(.bottom,8)
                    
                    HStack(){
                        //  Spacer()
                        Image(systemName: "mappin.and.ellipse")
                            .font(.system(size: 24))
                            .foregroundColor(Color("ourOrange"))
                        //.padding(.leading,-90)
                        
                        
                        Text("Jeddah")
                            .foregroundColor(Color("volunteerFont"))
                            .multilineTextAlignment(.leading)
                            .padding(.leading,13)
                        //   Spacer()
                    }.padding(.bottom,8)
                    
                    HStack{
                        Image(systemName: "clock")
                            .font(.system(size: 24))
                            .foregroundColor(Color("ourOrange"))
                        //  .padding(.leading,-90)
                            .padding(.bottom,29)
                        
                        Text("3 Hours")
                            .foregroundColor(Color("volunteerFont"))
                            .padding(.bottom,29)
                            .padding(.leading,12)
                        
                    }
                    
                    HStack{
                        Text("Status :")
                            .font(.system(size: 21 , weight: .bold))
                            .foregroundColor(Color("ourBlue"))
                            .multilineTextAlignment(.leading)
                            .padding(.bottom,44)
                        
                        Text(" Accepted ")
                            .font(.system(size: 21 , weight: .medium))
                            .foregroundColor(Color(.green))
                            .padding(.bottom,44)
                    }
                }
                
                .padding(.trailing, 90)
                //withdraw button
                Button("withdraw"){
                }
                .frame(width:281 , height:41 )
                .foregroundColor(.white)
                .background(Color("ourOrange"))
                .cornerRadius(8)
                .fontWeight(.semibold)
                .padding(.bottom,57)
            }
        }
        
    }
}

struct EnrolledVolunteer_Previews: PreviewProvider {
    @Binding var showingVolunteerSheet: Bool

    static var previews: some View {
        EnrolledVolunteer(showingVolunteerSheet: .constant(true))
    }
}
