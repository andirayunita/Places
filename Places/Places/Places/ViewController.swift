//
//  ViewController.swift
//  Places
//
//  Created by Andira Yunita on 10/04/22.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var cityImage: UIImageView!
  @IBOutlet weak var cityTitle: UILabel!
  @IBOutlet weak var contentLabel: UILabel!
  @IBOutlet weak var favorites: UIButton!
  @IBOutlet weak var numberOfLikes: UILabel!

  var content = [String]()
  var cities = [String]()
  var cityName = [String]()
  var numLikes = 0

  override func viewDidLoad() {
    super.viewDidLoad()

    cities += ["jkt", "nyc", "sf", "sg", "shanghai"]

    cityName += [
      "Bundaran HI, Jakarta",
      "Empire State, New York City",
      "Golden Gate Bridge, San Fransisco",
      "Marina Bay Sands, Singapore",
      "Shanghai Bund, Shanghai"
    ]

    content += [
            "Bundaran HI (Selamat Datang Monument) is a striking landmark that dominates Jakarta’s skyline. It’s also a popular social gathering point and a site for passive demonstrations. Unveiled in 1962, Bundaran HI served to welcome the sportspeople who competed in the Asian Games IV. It was one of several projects commissioned to improve and beautify Jakarta in advance of hosting the games.",
            "The Empire State Building is a 102-story Art Deco skyscraper in Midtown Manhattan in New York City, United States. It was designed by Shreve, Lamb & Harmon and built from 1930 to 1931. Its name is derived from 'Empire State', the nickname of the state of New York.",
            "The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean. The Golden Gate Bridge came to be recognized as a symbol of the power and progress of the United States, and it set a precedent for suspension-bridge design around the world.",
            "Marina Bay Sands is a destination for those who appreciate luxury. An integrated resort notable for transforming Singapore’s city skyline, it comprises three 55-storey towers of extravagant hotel rooms and luxury suites with personal butler services. In addition, its architecture is made complete with the Sands SkyPark which crowns the three towers.",
            "The Bund or Waitan is a waterfront area and a protected historical district in central Shanghai. The area centers on a section of Zhongshan Road within the former Shanghai International Settlement, which runs along the western bank of the Huangpu River in the eastern part of Huangpu District."
          ]

    contentLabel.text = "\(content[0])"
    contentLabel.isUserInteractionEnabled = true
    let tap = UITapGestureRecognizer(target: self, action: #selector(contentTapped))
    contentLabel.addGestureRecognizer(tap)
  }

  @IBAction func contentTapped(_ sender: UITapGestureRecognizer) {
    if contentLabel.numberOfLines == 3 {
      contentLabel.numberOfLines = 0
    } else {
      contentLabel.numberOfLines = 3
    }
  }
  
  @IBAction func likesTapped(_ sender: UIButton) {
    numLikes += 1
    numberOfLikes.text = "\(numLikes)"
  }

  @IBAction func refreshTapped(_ sender: UIButton) {
    let number = Int.random(in: 0...4)
    cityImage.image = UIImage(named: cities[number])
    cityTitle.text = "\(cityName[number])"
    contentLabel.text = "\(content[number])"
  }
}

