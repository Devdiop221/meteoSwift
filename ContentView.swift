import SwiftUI

struct neige: View {
    var body: some View {
        Label("Neige",systemImage:"snow")
            .labelStyle(.titleAndIcon)
    }
}

struct pluie: View {
    var body: some View {
        Label("Pluie",systemImage:"cloud.rain")
            .labelStyle(.titleAndIcon)
    }
}

struct soleil: View {
    var body: some View {
        Label("Soleil",systemImage:"cloud.sun")
            .labelStyle(.titleAndIcon)
    }
}

struct eclair: View {
    var body: some View {
        Label("Eclair",systemImage:"bolt")
            .labelStyle(.titleAndIcon)
    }
}
    
struct ContentView: View {
    var body: some View {
        NavigationView{
            NavigationLink(destination: Meteo()){
                Text("Consulter la météo")
                    .foregroundColor(.cyan)
            }
            .navigationBarTitle("Sen'Météo")
        }
        
    }
}

struct Meteo: View{
    var body: some View{
        Text("Ma météo")
            .font(.title)
        List{
            Section(header: Text("Aujourd'hui")){
                pluie()
                soleil()
                neige()
                eclair()
            }
        }
        
        List{
            Section(header: Text("Demain")){
                pluie()
                soleil()
                neige()
                eclair()
            }
        }
    }
}
