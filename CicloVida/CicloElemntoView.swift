import SwiftUI

struct CicloElemntoView: View {
    
    @State private var bShow = true
    
    var body: some View {
        
        VStack {
            Button(bShow ? "Ocultar" : "Mostrar") {
                self.bShow.toggle()
            }
            
            if bShow {
                Text("Ciclo por elemento individual")
                    .onAppear {
                        print("Se muestra Text")
                    }
                    .onDisappear {
                        print("Se oculta Text")
                    }
            }
        }
        
        .navigationTitle("Ciclo de un elemento")
    }
}

struct CicloElemntoView_Previews: PreviewProvider {
    static var previews: some View {
        CicloElemntoView()
    }
}
