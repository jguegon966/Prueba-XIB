//
//  CustomView.swift
//  PruebaXIB
//
//  Created by Jesus on 20/2/24.
//

import UIKit

class CustomView: UIView {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var label: UILabel!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        let nib = UINib(nibName: "CustomView", bundle: nil)
        guard let customView = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            fatalError("Error instantiating CustomView")
        }
        addSubview(customView)
    }
    
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        
        label.text = "\(Int(slider.value))"
        
    }
    
    
    
}
