//
//  LoadingButton.swift
//  Pods
//
//  Created by Septiyan Andika on 6/26/16.
//
//

import UIKit

public enum ActivityIndicatorAlignment: Int {
    case Left
    case Right
    
}

public class LoadingButton: UIButton {
    
    lazy var activityIndicatorView:UIActivityIndicatorView! = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.Gray)
   
    public var indicatorAlignment:ActivityIndicatorAlignment = ActivityIndicatorAlignment.Right {
        didSet {
           setupPositionIndicator()
        }
    }
    
    
    public var loading:Bool = false {
        didSet {
           realoadView()
        }
    }
    
    public var indicatorColor:UIColor = UIColor.lightGrayColor() {
        didSet {
            activityIndicatorView.color = indicatorColor
        }
    }
    
    public var normalText:String? = nil {
        didSet {
            if(normalText == nil){
                normalText = self.titleLabel?.text
            }
            
            self.titleLabel?.text = normalText
        }
    }
    
    public var loadingText:String?
    
    var topContraints:NSLayoutConstraint?
    var bottomContraints:NSLayoutConstraint?
    var widthContraints:NSLayoutConstraint?
    var rightContraints:NSLayoutConstraint?
    var leftContraints:NSLayoutConstraint?
    
    required  public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func setupView() {
        activityIndicatorView.hidesWhenStopped = true;
        self.normalText = self.titleLabel?.text
        self.addSubview(activityIndicatorView)
        setupPositionIndicator()
    }
    
    func realoadView() {
        if(loading){
            self.enabled = false
            activityIndicatorView.hidden = false;
            activityIndicatorView.startAnimating()
            if(self.loadingText != nil ){
                  self.setTitle(loadingText, forState: .Normal)
                
            }
        }else{
            self.enabled = true
            activityIndicatorView.stopAnimating()
            self.setTitle(normalText, forState: .Normal)
            
        }
      
    }
    
    func setupPositionIndicator()  {
        activityIndicatorView.translatesAutoresizingMaskIntoConstraints = false
        if(topContraints==nil){
            topContraints = NSLayoutConstraint(item: activityIndicatorView, attribute:
            .Top, relatedBy: .Equal, toItem: self,
                  attribute: NSLayoutAttribute.Top, multiplier: 1.0,
                  constant: 0)
        }
        
        if(bottomContraints==nil){
            bottomContraints = NSLayoutConstraint(item: activityIndicatorView, attribute:
            .Bottom, relatedBy: .Equal, toItem: self,
                     attribute: NSLayoutAttribute.Bottom, multiplier: 1.0,
                     constant: 0)
        }
        
        if(widthContraints==nil){
            widthContraints = NSLayoutConstraint(item: activityIndicatorView, attribute:
                .Width, relatedBy: .Equal, toItem: nil,
                        attribute: .Width, multiplier: 1.0,
                        constant: 30)
        }
        
        if(rightContraints==nil){
            rightContraints = NSLayoutConstraint(item: activityIndicatorView, attribute:
                .TrailingMargin, relatedBy: .Equal, toItem: self,
                                 attribute: .TrailingMargin, multiplier: 1.0,
                                 constant: 0)
        }
        
        if(leftContraints==nil){
            leftContraints = NSLayoutConstraint(item: activityIndicatorView, attribute:
                .Leading, relatedBy: .Equal, toItem: self,
                          attribute: .Leading, multiplier: 1.0,
                          constant: 0)
        }
        
        if(indicatorAlignment == .Right ){
            NSLayoutConstraint.deactivateConstraints([leftContraints!])
            NSLayoutConstraint.activateConstraints([topContraints!,rightContraints!,widthContraints!,bottomContraints!])
        }else{
            NSLayoutConstraint.deactivateConstraints([rightContraints!])
            NSLayoutConstraint.activateConstraints([topContraints!,leftContraints!,widthContraints!,bottomContraints!])

        }
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
