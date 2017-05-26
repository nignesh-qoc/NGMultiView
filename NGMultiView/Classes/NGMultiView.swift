//
//  NGMultiView.swift
//  Pods
//
//  Created by Nignesh on 2017-05-26.
//
//

import UIKit

open class NGMultiView: UIViewController {

    var blinkingLabel : UILabel!;
    override open func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        blinkingLabel = UILabel(frame: CGRect(x: 10, y: 20, width: 200, height: 35))
        blinkingLabel.text = "Hello Pod!"
        blinkingLabel.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        self.startBlinking()
    }

    
    public func startBlinking() {
        
        UIView.animate(withDuration: 2.0, delay: 1.0, options: .repeat, animations: {
            
            self.blinkingLabel.alpha = 0
            
        }) { (Bool) in
            
            UIView.animate(withDuration: 2.0, delay: 1.0, options: .repeat, animations: {
                
                self.blinkingLabel.alpha = 1.0
                self.startBlinking()
            })
        }
    }
    
    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
