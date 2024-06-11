//
//  SettingsView.swift
//  Hike
//
//  Created by Fakiya Imangaliyeva on 6/5/24.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    private let alternateAppIcons: [String] = [
        "AppIcon - MagnifyingGlass",
        "AppIcon - Backpack",
        "AppIcon - Map",
        "AppIcon - Mushroom",
        "AppIcon - Camera",
        "AppIcon - Campfire "
        
    ]
    
    var body: some View {
        List{
            
            Section {
                // MARK: - SECTION: HEADER
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                
                .foregroundStyle(LinearGradient(colors:[ .customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom))
                
                .padding(.top, 8)
                
                VStack(spacing: 8){
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app. ")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGrayMedium)
                    
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                
            } // HEADER
            
            .listRowSeparator(.hidden)
            //MARK: - SECTION: ICONS
            
            Section(header: Text("Alternate Icons")) {
                ScrollView( .horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(alternateAppIcons.indices, id: \.self ) { item in
                            Button {
                                print("Icon \(alternateAppIcons[item]) was pressed")
                                
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item]) {error in
                                    if error != nil {
                                        
                                        print("Failed request to update the app's icon: \(String(describing: error?.localizedDescription    ))")
                                    } else{
                                        
                                        print("Success! You have changed the app's icon to \(alternateAppIcons[item])")
                                    }
                                    
                                }
                            } label: {
                                Image("\(alternateAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(16)
                        }
                        }
                    }
                } //: SCROLL VIEW
                
                .padding(.top, 12)
                Text("Choose your favourite app icon from the collection above.")
                    .frame(minWidth:0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.top, 12)
            }
            .listRowSeparator(.hidden)
            //MARK: - SECTION: ABOUT
            Section(
            header: Text("ABOUT THE APP"),
            footer: HStack {
                Spacer()
                Text("Copyright © All right reserved.")
                Spacer()
                }
                .padding(.vertical, 8)
            
            ){
                // Basic Labeled Content
                //LabeledContent("Application", value: "Hike")
                
                // Advanced Labeled Content
                CustomListRow(rowLabel: "Application", rowIcon: "apps.iphone", rowContent:   "HIKE", rowTintColor: .blue)
                
                CustomListRow(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                
                CustomListRow(rowLabel: "Technology", rowIcon: "swift", rowContent:   "Swift", rowTintColor: .orange)
                
                CustomListRow(rowLabel: "Version", rowIcon: "gear", rowContent:   "1.0", rowTintColor: .purple)
                
                CustomListRow(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent:   "John Doe", rowTintColor: .mint)
                
                CustomListRow(rowLabel: "Designer", rowIcon: "paintpalette", rowContent:   "Fakiya Imangaliyeva", rowTintColor: .pink)
                
                CustomListRow(rowLabel: "Website", rowIcon: "globe",  rowTintColor: .indigo, rowLinkLabel: "Credo Academy", rowLinkDestination: "https://credo.academy")
            } //: SECTION
            
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View{
        SettingsView()
    }
}
