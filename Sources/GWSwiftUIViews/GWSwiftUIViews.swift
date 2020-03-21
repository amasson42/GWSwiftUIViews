
import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
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
