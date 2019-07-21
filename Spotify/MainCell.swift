

import UIKit

class MainCell: BaseCell<String>,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UICollectionViewDelegate {
    
    var _musicList = [Music]()
    
    @IBOutlet var collectionView: UICollectionView!
    
    
    
    override func SetupUI() {
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        let musicNib = UINib(nibName: "MusicCell", bundle: nil)
        collectionView.register(musicNib, forCellWithReuseIdentifier: "musicCell")
        
        Service().Get { (mm) in
            
            self._musicList = mm
            
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
            
        }
        
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return _musicList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "musicCell", for: indexPath) as! MusicCell
        
        cell.data = _musicList[indexPath.item]
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w = collectionView.frame.width
        let h = collectionView.frame.height
        
        return CGSize.init(width: 150, height: 200)
        
    }
    
    
    
    
}
