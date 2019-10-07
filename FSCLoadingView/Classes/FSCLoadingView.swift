//
//  FSCLoadingView.swift
//  Arachis
//
//  Created by Rafael Costa on 07/10/19.
//  Copyright © 2019 Rafael Costa. All rights reserved.
//

import UIKit

public class FSCLoadingView: UIView {
    
    static var current: FSCLoadingView?
        
    @IBOutlet var backgroundView: UIVisualEffectView?
    @IBOutlet var activityIndicatorView: UIActivityIndicatorView?
    
    static func fromXIB() -> FSCLoadingView? {
        let podBundle = Bundle(for: FSCLoadingView.self)
        let resourceBundleURL = podBundle.resourceURL?.appendingPathComponent("FSCLoadingView.bundle")
        let resourceBundle = Bundle(url: resourceBundleURL!)
        return resourceBundle?.loadNibNamed("FSCLoadingView", owner: self, options: nil)?[0] as? FSCLoadingView
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public static func show(withSquareSize squareSize: CGFloat = 72.0) {
        self.current?.superview?.removeFromSuperview()
        
        guard let _window = UIApplication.shared.delegate?.window, let window = _window else {
            return
        }
        
        guard let loadingView = FSCLoadingView.fromXIB() else {
            return
        }
        
        let frame = window.bounds
        
        let view = UIView(frame: frame)
        view.backgroundColor = UIColor.clear
        view.isUserInteractionEnabled = true
        
        loadingView.frame = CGRect(x: 0, y: 0, width: squareSize, height: squareSize)
        
        view.addSubview(loadingView)
        loadingView.center = view.center
        window.addSubview(view)
        
        self.current = loadingView
    }
    
    public static func hide() {
        self.current?.superview?.removeFromSuperview()
    }
    
}
