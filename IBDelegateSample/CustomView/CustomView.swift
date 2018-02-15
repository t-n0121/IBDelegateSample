//
//  CustomView.swift
//  IBDelegateSample
//

import UIKit

@objc protocol CustomViewDelegate {
    func customViewButtonTapped(_ sender:UIButton)
}

@IBDesignable
class CustomView: UIView {

    @IBOutlet weak var delegate: CustomViewDelegate?

    @IBAction func buttonTapped(_ sender: UIButton) {
        delegate?.customViewButtonTapped(sender)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
    }

    private func loadNib() {
        let bundle = Bundle(for: type(of: self))
        guard let view = UINib(nibName: "CustomView", bundle: bundle).instantiate(withOwner: self, options: nil).first as? UIView else {
            return
        }
        self.addSubview(view)
    }

}
