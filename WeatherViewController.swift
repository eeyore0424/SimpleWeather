//
//  WeatherViewController.swift
//  SimpleWeather
//
//  Created by YongUn Jeon on 2022/09/20.
//

import UIKit

class WeatherViewController: UIViewController {
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var changeButtonTapped: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    

    
    
    @IBAction func changeButtonTapped(_ sender: Any) {
            
        reload()
        

        }

    func reload(){
        let cities = ["Seoul", "Tokyo", "LA", "Seattle"]
        let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]
        cityLabel.text = cities.randomElement()!
        let imageName = weathers.randomElement()!
        
        weatherImageView.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        
        let randomTemp = Int.random(in: 10..<30)
        temperatureLabel.text="\(randomTemp)°"
    }
        

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
