
//UIView.animate(withDuration: 1,
//                       // ~시간동안 애니메이션이 진행되구요...
//                       delay: 1,
//                       // ~시간이후에 애니메이션이 진행되요...
//                       usingSpringWithDamping: 0.6,
//                       // 그리구 0~1.0사이에 값을 지정할 수 있어요...
//                       // 요만큼 튕긴다?? 튕겨요...
//                       initialSpringVelocity: 1,
//                       // 이건 속도를 지정해주구요...
//                       options: [.curveEaseIn],
//                       // 이건 해당 애니메이션이 어떤 유형으로 움직이는지 보여줘요...
//                       // 아래에서 어떤게 있는지 한 번 알아볼게요...
//                       animations: {
//                       // 우리 animate는 이렇게 사용해요...
//                       // 우리 animate 잘 사용해주세요...
//                       // 마지막으로 self.를 지정해줘야해요...
//                       self.animateView.alpha = 1
//        })

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animateView: UIView!
    @IBOutlet weak var frameBtn: UIButton!
    @IBOutlet weak var boundsBtn: UIButton!
    @IBOutlet weak var centerBtn: UIButton!
    @IBOutlet weak var transformBtn: UIButton!
    @IBOutlet weak var alphaBtn: UIButton!
    @IBOutlet weak var backgroundBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //addTarget: control로 발생하는 이벤트로 target 오브젝트와 action 메서드를 이어주는 함수
        
        frameBtn.addTarget(self, action: #selector(frameAnimate), for: .touchUpInside)
        boundsBtn.addTarget(self, action: #selector(boundsAnimate), for: .touchUpInside)
        centerBtn.addTarget(self, action: #selector(centerAnimate), for: .touchUpInside)
        transformBtn.addTarget(self, action: #selector(transformAnimate), for: .touchUpInside)
        alphaBtn.addTarget(self, action: #selector(alphaAnimate), for: .touchUpInside)
        backgroundBtn.addTarget(self, action: #selector(backgroundColorAnimate), for: .touchUpInside)
        
    }


}

extension ViewController {
    @objc private func frameAnimate(){
        UIView.animate(withDuration: 2,
                       delay: 0,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 1,
                       options: [.curveEaseIn],
                       animations: {
                    
                        self.animateView.frame = .init(x: 0, y: 0, width: 100, height: 100)
        })

    }
    
    @objc private func boundsAnimate(){
        UIView.animate(withDuration: 2,
                       delay: 0,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 1,
                       options: [.curveEaseIn],
                       animations: {
                        self.animateView.bounds = .init(x: -100, y: -100, width: 100, height: 100)
        })

    }
    
    @objc private func centerAnimate(){
        UIView.animate(withDuration: 2,
                       delay: 0,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 1,
                       options: [.curveEaseIn],
                       animations: {
                        self.animateView.center = .init(x: 100, y: 100)
        })

    }
    
    @objc private func transformAnimate(){
        UIView.animate(withDuration: 2,
                       delay: 0,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 1,
                       options: [.curveEaseIn],
                       animations: {
                        self.animateView.transform = .init(translationX: -10, y: -10)
        })

    }
    
    @objc private func alphaAnimate(){
        UIView.animate(withDuration: 2,
                       delay: 0,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 1,
                       options: [.curveEaseIn],
                       animations: {
                        self.animateView.alpha = 0
        })

    }
    
    @objc private func backgroundColorAnimate(){
        UIView.animate(withDuration: 2,
                       delay: 0,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 1,
                       options: [.curveEaseIn],
                       animations: {
                        self.animateView.backgroundColor = .orange
        })
    }
}
