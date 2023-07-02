import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var containerView: UIView!
    @IBOutlet private weak var contentView: UIView!
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        setupUI()
    }
    
    private func setupUI() {
        contentView.layer.sublayers?.forEach({ $0.removeFromSuperlayer() })
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.green.cgColor, UIColor.blue.cgColor]
        gradientLayer.locations = [0, 0.5, 1]
        gradientLayer.startPoint = .zero
        gradientLayer.endPoint = .init(x: 1, y: 1)
        gradientLayer.frame = contentView.bounds
        contentView.layer.addSublayer(gradientLayer)
        
        contentView.layer.cornerRadius = 16
        
        containerView.layer.shadowColor = UIColor.black.cgColor
        containerView.layer.shadowOpacity = 0.5
        containerView.layer.shadowOffset = .zero
        containerView.layer.shadowRadius = 16
    }
}
