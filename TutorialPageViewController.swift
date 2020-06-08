//
//  iPadOSTutorialPageViewController.swift
//  SwiftUI Helper
//
//  Created by Kristhian De Oliveira on 5/25/20.
//  Copyright © 2020 Kristhian De Oliveira. All rights reserved.
//

import UIKit

class TutorialPageViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var descriptions: UILabel!
    @IBOutlet weak var SkipBTN: UIButton!
    @IBOutlet weak var NextBTN: UIButton!
    @IBOutlet weak var PrevBTN: UIButton!
    var step = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        steps(step: step)
       
    }
    @IBAction func Skip(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func Next(_ sender: Any) {
        step+=1
        steps(step: step)
        print(step)
    }
    @IBAction func Prev(_ sender: Any) {
            step = step - 1
             steps(step: step)
             print("Previous: \(step)")
    }
    //MARK - Catalyst
    let stepOneCatalyst = "Keep SwiftUI helper next to your XCode or Playgrounds window for optimal workflow."
    let stepTwoCatalyst = "Click a button to copy the code to your clipboard."
    let stepThreeCatalyst = "Then paste it in playgrounds or XCode."
    //MARK - iPadOS
    let stepOneiPad = "Open playgrounds in slideOver mode to use both apps side by side for an optimal workflow. "
    let stepTwoiPad = "Use SwiftUI Helper in full screen, and switch between SwiftUI Helper, and playgrounds. This workflow can be useful when you need the space for code in playgrounds. "
    let stepThreeiPad = "Tap a button to copy the code to your clipboard."
    let stepFouriPad = "Then paste it in playgrounds."
    func steps(step:Int) {
        switch step {
        case 0:
        #if targetEnvironment(macCatalyst)
            image.image = UIImage(named: "SBSCata")
            descriptions.text = stepOneCatalyst
        #else
            image.image = UIImage(named: "Split")
            descriptions.text = stepOneiPad
        #endif
        case 1:
            #if targetEnvironment(macCatalyst)
                image.image = UIImage(named: "CopyCata")
                descriptions.text = stepTwoCatalyst
            #else
            image.image = UIImage(named: "Full")
            descriptions.text = stepTwoiPad
            #endif
        case 2:
            #if targetEnvironment(macCatalyst)
                image.image = UIImage(named: "PasteCata")
                descriptions.text = stepThreeCatalyst
            #else
            image.image = UIImage(named: "copied")
            descriptions.text = stepThreeiPad
            #endif
        case 3:
            #if targetEnvironment(macCatalyst)
                dismiss(animated: true, completion: nil)
            #else
            image.image = UIImage(named: "paste")
            descriptions.text = stepFouriPad
            #endif
        default:
            dismiss(animated: true, completion: nil)
        }
    }
}
