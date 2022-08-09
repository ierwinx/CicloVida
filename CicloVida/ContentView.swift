import SwiftUI

struct ContentView: View {

    @Environment(\.scenePhase) var scenePhase
    
    @State private var bShow = false
    
    var body: some View {
        NavigationView {

            NavigationLink(destination: CicloElemntoView(), isActive: $bShow) {
                Button("Ciclo por elemento") {
                    self.bShow = true
                }.padding()
                .padding([.trailing, .leading], 30)
                .background(.red)
                .foregroundColor(.white)
            }
            
            .navigationTitle("Ciclo de vida App")
            .navigationBarTitleDisplayMode(.inline)
        }
        .onChange(of: scenePhase) { phase in
            switch phase {
            case .background:
                print("Esta en background")
            case .inactive:
                print("Esta inactiva")
            case .active:
                print("Esta activa")
            @unknown default:
                print("Desconocido")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
