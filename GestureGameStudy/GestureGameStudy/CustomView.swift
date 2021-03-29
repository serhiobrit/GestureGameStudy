//
//  CustomView.swift
//  GestureGameStudy
//
//  Created by Serhio Brit on 29.03.2021.
//

import UIKit

@IBDesignable class CustomView: UIView {
    
    var workingView: UIView!
    var xibName: String = "CustomView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setCustomView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setCustomView()
    }
    
    func getFromXib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let xib = UINib(nibName: xibName, bundle: bundle)
        let view = xib.instantiate(withOwner: self, options: nil).first as! UIView
        view.backgroundColor = .blue
        
        return view
    }
    
    func setCustomView() {
        workingView = getFromXib()
        workingView.frame = bounds
        workingView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        workingView.layer.cornerRadius = frame.size.width / 2
        
        addSubview(workingView)
    }
}
