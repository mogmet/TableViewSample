//
//  CellView.swift
//  TableViewSample
//
//  Created by mogmet on 2019/03/06.
//  
//

import UIKit

@IBDesignable class CellView: UIView {
    @IBOutlet weak var titleLabel: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadFromNib()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadFromNib()
        
    }
    
    /// IBから読み込まれる時に呼ばれる
    override func prepareForInterfaceBuilder() {
        loadFromNib()
    }
    
    /// Xibファイルからビューを読み込む
    private func loadFromNib() {
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: Bundle(for: type(of: self)))
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        view.frame = bounds
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|", options: NSLayoutConstraint.FormatOptions(rawValue: 0), metrics: nil, views: ["view": view]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|", options: NSLayoutConstraint.FormatOptions(rawValue: 0), metrics: nil, views: ["view": view]))
    }
    
    func inject(text: String) {
        titleLabel.text = text
    }
}
