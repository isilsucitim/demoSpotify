

import UIKit

class AnaSayfaController: UIViewController {
    
    var _musicsList = [Title]()
    
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainNib = UINib(nibName: "MainCell", bundle: nil)
        collectionView.register(mainNib, forCellWithReuseIdentifier: "cell")
        let titleNib = UINib(nibName: "TitleHeaderCell", bundle: nil)
        collectionView.register(titleNib, forCellWithReuseIdentifier: "titleCell")
        let subTitle = UINib(nibName: "SubTitleHeaderCell", bundle: nil)
        collectionView.register(subTitle, forCellWithReuseIdentifier: "subtitleCell")
        
        _musicsList.append(Title.init(Title: "Yakında Çalınanlar", SubTitle: ""))
        _musicsList.append(Title.init(Title: "En çok dinlenen podcastler", SubTitle: "En çok dinlenen podcastler"))
        _musicsList.append(Title.init(Title: "Eskiler", SubTitle: ""))
        _musicsList.append(Title.init(Title: "Nasıl bir Pazar istersin", SubTitle: ""))
        _musicsList.append(Title.init(Title: "Son günlerde en çok dinlediklerin", SubTitle: "Son günlerde en çok dinlediklerin"))
    }
}

extension AnaSayfaController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return _musicsList.count*2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item % 2 == 0{
            
            let tt = _musicsList[indexPath.item/2]
            
            if tt.SubTitle != ""{
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "subtitleCell", for: indexPath) as! SubTitleHeaderCell
                
                cell.data = tt
                return cell
            }
            else{
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "titleCell", for: indexPath) as! TitleHeaderCell
                
                cell.data = tt
                return cell
            }
            
           
        }
            
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MainCell
            
            cell.data = ""
            
            return cell
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w = collectionView.frame.width
        let h = collectionView.frame.height
         if indexPath.item % 2 == 0{
            
            let tt = _musicsList[indexPath.item/2]
            
            if tt.SubTitle != ""{
                return CGSize(width: w, height: 50)
            }
            else{
                return CGSize(width: w, height: 30)
            }
            
            
            
        }
        
        return CGSize(width: w, height: 200)
    }
    
    
    
}
