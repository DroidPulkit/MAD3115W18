//
//  VideoVC.swift
//  TabBarCollection
//
//  Created by Pulkit Kumar on 2018-03-02.
//

import UIKit
import AVKit

class VideoVC: UIViewController {
    
    var video = AVPlayer()
    var videoPlayer = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnPlayAction(_ sender: UIButton){
        if let path = Bundle.main.path(forResource: "Toronto", ofType: "mp4"){
            self.video = AVPlayer(url: URL(fileURLWithPath: path))
            self.videoPlayer = AVPlayerViewController()
            self.videoPlayer.player = video
            
            self.present(self.videoPlayer, animated: true, completion: {self.video.play()})
            
        }
    }
}
