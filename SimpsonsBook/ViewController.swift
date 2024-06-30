//
//  ViewController.swift
//  SimpsonsBook
//
//  Created by Kemal Özyön on 30.06.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   

    @IBOutlet weak var tableView: UITableView!
    var myList = [Simpsons] ()
    var name = ""
    var age = 0
    var image = UIImage()
    var job = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        let homerSimpson = Simpsons(image: UIImage(named: "homer")!, name: "Homer Simpson", age: 40, job: "Nuclear Security")
        let bartSimpson = Simpsons(image: UIImage(named: "bart")!, name: "Bart Simpson", age: 16, job: "Student")
        let maggieSimpson = Simpsons(image: UIImage(named: "maggie")!, name: "Maggie Simpson", age: 20, job: "Student")
        let margeSimpson = Simpsons(image: UIImage(named: "marge")!, name: "Marge Simpson", age: 35, job: "House Wife")
        let lisaSimpson = Simpsons(image: UIImage(named: "lisa")!, name: "Lisa Simpson", age: 6, job: "No Job")
        
        myList.append(homerSimpson)
        myList.append(margeSimpson)
        myList.append(maggieSimpson)
        myList.append(bartSimpson)
        myList.append(lisaSimpson)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = myList[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.image = myList[indexPath.row].image
        self.name = myList[indexPath.row].name
        self.age = myList[indexPath.row].age
        self.job = myList[indexPath.row].job
        performSegue(withIdentifier: "goToInformation", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier ==  "goToInformation"{
            let destinationVC = segue.destination as! InformationViewController
            destinationVC.age1 = self.age
            destinationVC.image1 = self.image
            destinationVC.job1 = self.job
            destinationVC.name1 = self.name
        }
    }

}

