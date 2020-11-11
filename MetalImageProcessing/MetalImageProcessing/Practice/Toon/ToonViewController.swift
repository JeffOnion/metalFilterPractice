//  ToonViewController.swift
//  MetalPracticeCW
//  Used toturial as coding reference

import UIKit

class ToonViewController: UIViewController {
    
    @IBOutlet weak var renderView: RenderView!
    
    var picture: PictureInput!
    var toonFilter: ToonFilter!
   
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        picture = PictureInput(image:UIImage(named:"rain.jpg")!)
        
        toonFilter = ToonFilter.init()
        
      
        
        
        
        picture --> toonFilter --> renderView
        picture.processImage()
    }
    
    @IBAction func magtolDidChange(_ sender: UISlider) {
        toonFilter.magtol = sender.value
        picture.processImage()
    }
    
    @IBAction func quantizeDidChange(_ sender: UISlider) {
        toonFilter.quantize = sender.value
        picture.processImage()
    }
    
  
    
}
