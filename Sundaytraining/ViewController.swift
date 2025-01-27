import UIKit

class ViewController: UIViewController {

  
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

                
      
        
        
        
        
        
        
        
        
        
        view.backgroundColor = .black

        // Title Label
        let titleLabel = UILabel()
        titleLabel.text = " Bugün"
        titleLabel.textColor = .white
        titleLabel.font = .systemFont(ofSize: 30, weight: .heavy)
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 1
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)

        let dayButton = UIButton(type: .system)
        dayButton.setImage(UIImage(systemName: "arrowshape.right.fill"), for: .normal)
        dayButton.tintColor = .gray
        dayButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(dayButton)

        let contenView = UIView()
        contenView.backgroundColor = .darkGray
        contenView.layer.cornerRadius = 5
        contenView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(contenView)

        let labelContent = UILabel()
        labelContent.text = "Yeni Alışkanlık Oluştur"
        labelContent.textColor = .white
        labelContent.font = .systemFont(ofSize: 17, weight: .bold)
        labelContent.translatesAutoresizingMaskIntoConstraints = false
        labelContent.textAlignment = .left
        contenView.addSubview(labelContent)

        let plusButton = UIButton(type: .system)
        plusButton.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal)
        plusButton.tintColor = .gray
        plusButton.translatesAutoresizingMaskIntoConstraints = false
        contenView.addSubview(plusButton)

        // Add tap gesture
        contenView.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(contentTapped))
        contenView.addGestureRecognizer(tapGesture)

        // Constraints
        NSLayoutConstraint.activate([
            // Title Label
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 80),

            // Day Button
            dayButton.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 100),
            dayButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),

            // Content View
            contenView.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            contenView.heightAnchor.constraint(equalToConstant: 60),
            contenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            contenView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            // Label Content
            labelContent.leadingAnchor.constraint(equalTo: contenView.leadingAnchor, constant: 40),
            labelContent.centerYAnchor.constraint(equalTo: contenView.centerYAnchor),

            // Plus Button
            plusButton.leadingAnchor.constraint(equalTo: contenView.leadingAnchor, constant: 7.5),
            plusButton.centerYAnchor.constraint(equalTo: contenView.centerYAnchor),
            
          
            
            
            
        ])
    }

    @objc func contentTapped() {
        // Basit tıklama animasyonu
        guard let contentView = view.subviews.first(where: { $0.backgroundColor == .darkGray }) else { return }

        UIView.animate(withDuration: 0.1,
                       animations: {
            contentView.alpha = 0.5 // Tıklama sırasında biraz saydamlık ekle
        }) { _ in
            UIView.animate(withDuration: 0.1) {
                contentView.alpha = 1.0 // Orijinal duruma dön
            }
        }

        print("ContentView tıklandı!")
    }
}
