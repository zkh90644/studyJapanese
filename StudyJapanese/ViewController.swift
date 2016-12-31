//
//  ViewController.swift
//  StudyJapanese
//
//  Created by zkhCreator on 30/12/2016.
//  Copyright © 2016 zkhCreator. All rights reserved.
//

import UIKit

let arr = ["あ","い","う","え","お",
           "か","き","く","け","こ",
           "さ","ぃ","す","せ","そ",
           "た","ち","す","て","と",
           "な","に","ぬ","ね","の",
           "は","ひ","ふ","へ","ほ",
           "ま","み","む","め","も",
           "や","い","ゆ","え","よ",
           "ら","り","る","れ","ろ",
           "わ","い","う","え","を",
           "ん"];
let arr2 = ["ア","イ","ウ","エ","オ",
            "カ","キ","ク","ケ","コ",
            "サ","シ","ス","セ","ソ",
            "タ","チ","ツ","テ","ト",
            "ナ","ニ","ヌ","ネ","ノ",
            "ハ","ヒ","フ","ヘ","ホ",
            "マ","ミ","ム","メ","モ",
            "ヤ","イ","ユ","エ","ヨ",
            "ラ","リ","ル","レ","ロ",
            "ワ","イ","ウ","エ","ヲ",
            "ン"];

let arr3 = ["a","i","u","e","o",
            "ka","ki","ku","ke","ko",
            "sa","shi","su","se","so",
            "ta","chi","tsu","te","to",
            "na","ni","nu","ne","no",
            "ha","hi","hu","he","ho",
            "ma","mi","mu","me","mo",
            "ya","i","yu","e","yo",
            "ra","ri","ru","re","ro",
            "wa","i","u","e","wo",
            "n"];


class ViewController: UIViewController {
    
    @IBOutlet weak var japaneseLabel: UILabel!
    @IBOutlet weak var romanLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //创建默认文字
        
        let rand:Int = (Int)(arc4random() % 51);

        japaneseLabel.text = arr[rand];
        romanLabel.text = arr3[rand];
        romanLabel.isHidden = true;
        
    }

    func refreshTheView() {
        let rand = (Int)(arc4random() % 51);
        
        japaneseLabel.text = arr[rand];
        romanLabel.text = arr3[rand];
        romanLabel.isHidden = true;
        
        
    }
    
    @IBAction func clickIKnow(_ sender: UIButton) {
        
        self.refreshTheView()
    }
    
    @IBAction func clickIDontKnow(_ sender: UIButton) {
        
        if romanLabel.isHidden == true {
            romanLabel.isHidden = false
        } else {
            self.refreshTheView()
        }
    }


}

