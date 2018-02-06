//
//  ViewController.swift
//  HDR4KZapping
//
//  Created by Vitalij Dadaschjanz on 06.02.18.
//  Copyright © 2018 zattoo. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    var playerViewController = AVPlayerViewController()
    let urls = ["https://devstreaming-cdn.apple.com/videos/streaming/examples/img_bipbop_adv_example_fmp4/master.m3u8",
                "http://devstreaming.apple.com/videos/wwdc/2016/504m956dgg4hlw2uez9/504/hls_vod_mvp.m3u8"]
    var index = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(play))
        tapRecognizer.allowedPressTypes = [NSNumber(value: UIPressType.select.rawValue)]
        playerViewController.view.addGestureRecognizer(tapRecognizer)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        present(playerViewController, animated: false)
        play()
    }

    @objc func play() {
        guard let url = URL(string: urls[index]) else { return }
        let player = AVPlayer(url: url)
        playerViewController.player = player
        playerViewController.player!.play()
        index = index == 0 ? 1 : 0
    }
}
