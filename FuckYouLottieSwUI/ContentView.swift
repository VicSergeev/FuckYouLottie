import SwiftUI
import Lottie

struct ContentView: View {
    var body: some View {
        // MARK: - Здесь изменять имя в зависимости от нужной анимации
        LottieView(filename: "wait3")
            .frame(width: 200, height: 200)
    }
}

struct LottieView: UIViewRepresentable {
    var filename: String
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        
        let animationView = LottieAnimationView(name: filename)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        view.addSubview(animationView)
        animationView.pin(to: view)
        animationView.play() // Запуск анимации

        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        // Здесь можно обновить представление, если это необходимо
    }
}

#Preview {
    ContentView()
}
