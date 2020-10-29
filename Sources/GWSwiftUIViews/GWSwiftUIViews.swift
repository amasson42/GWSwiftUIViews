
import SwiftUI

@available(OSX 10.15, *)
public struct GreenView: View {
    
    public init() {
        
    }
    
    public var body: some View {
        Color.green
    }
}

#if os(macOS)

#else
@available(tvOS 13.0, iOS 13.0, *)
public struct ActivityIndicatorView: UIViewRepresentable {
    
    @Binding public var animating: Bool
    public let style: UIActivityIndicatorView.Style
    
    public func makeUIView(context: Context) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView()
        view.style = self.style
        return view
    }
    
    public func updateUIView(_ uiView: UIViewType, context: Context) {
        if animating {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
    
}
#endif
