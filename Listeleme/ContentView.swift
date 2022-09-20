//
//  ContentView.swift
//  BeraListe
//
//  Created by utku enes alagöz on 19.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(animals) { animal in
                NavigationLink(destination: DetailView(animal: animal)) {
                    HStack {
                        
                        Image(animal.image)
                        
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 40, style: .continuous))
                         // Spacer() bir tarafa dayamak için kullanılır
                        
                        VStack(alignment: .leading) {
                            
                            Text("\(animal.title)")
                                .font(.system(size: 18, weight: .bold, design: .monospaced))
                            
                            
                            Text("\(animal.subtitle)")
                            
                        }
                        
                        

                    
                    
                    }
                }
            }
            .navigationBarTitle("Canlılar")
        }
    }
}
                    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct ListItem: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var subtitle: String
    
}

var animals = [
    ListItem(title: "Balinalar", image: "dolphins", subtitle: "Bak ne güzel yüzüyorlar"),
    ListItem(title: "Maymunlar",  image: "monkeys", subtitle: "Acaba bu maymunlar Bali'de mi?"),
    ListItem(title: "Deniz kaplumbağası", image: "turtle", subtitle: "Bu benim en sevdiğim resim seçildi!"),
    ListItem(title: "Havalı Keçi", image: "goat", subtitle: "Şu boynuzlara bak"),
    ListItem(title: "Tatlı fare", image: "mouse", subtitle: "Neden herkes farelerden nefret ediyor"),
    ListItem(title: "Papağan", image: "bird", subtitle: "Papağanımsı kuş"),
    ListItem(title: "Koala", image: "koala", subtitle: "Koalalar aldatıcı bir şekilde arkadaş canlısı görünüyor..."),
    ListItem(title: "Geyik", image: "deer", subtitle: "Manzaraya baak!"),
    ListItem(title: "Antilop", image: "wildebeest", subtitle: "Bu hikayenin nasıl bittiğini biliyorum")
    
    
]
