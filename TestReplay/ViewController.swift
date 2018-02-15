//
//  ViewController.swift
//  TestReplay
//
//  Created by Eric Winston on 08/02/18.
//  Copyright © 2018 Eric Winston. All rights reserved.
//

import UIKit
import ReplayKit

class ViewController: UIViewController, RPScreenRecorderDelegate, RPPreviewViewControllerDelegate{

    let recorder = RPScreenRecorder.shared()
    
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
       super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func startRecording(_ sender: Any) {
        
        if recorder.isAvailable == true{
            
            recorder.delegate = self
            recorder.isMicrophoneEnabled = true
            recorder.startRecording(handler:{(err) in

                
                if let error = err as NSError?{
                    if error.code == RPRecordingErrorCode.userDeclined.rawValue{
                        print("User decline app recording")
                    }else if error.code == RPRecordingErrorCode.insufficientStorage.rawValue{
                        print("Not enough space in the storage")
                    }else{
                        print("A error appears")
                    }
                    return
                }
                
                
            })
            
            print("Started recording")
            self.startButton.isEnabled = false
            self.stopButton.isEnabled = true
        }
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        
        if recorder.isAvailable == true{
            recorder.stopRecording(handler: { (previewVC, error) in
                previewVC?.previewControllerDelegate = self
                self.present(previewVC!, animated: true, completion: nil)
            })
            print("parando")
        }
    }
    
    func previewControllerDidFinish(_ previewController: RPPreviewViewController) {
        print("Finished the preview")
        dismiss(animated: true, completion: nil)
        startButton.isEnabled = true
        stopButton.isEnabled = false        
    }
    
    func previewController(_ previewController: RPPreviewViewController, didFinishWithActivityTypes activityTypes: Set<String>) {
        print("Preview finished activities \(activityTypes)")
    }
    
    func screenRecorderDidChangeAvailability(_ screenRecorder: RPScreenRecorder) {
        print("The avaliability has changed")
    }
    
    func screenRecorder(_ screenRecorder: RPScreenRecorder, didStopRecordingWith previewViewController: RPPreviewViewController?, error: Error?) {
        print("Screen record finished")
    }
}
