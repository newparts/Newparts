import Foundation

func citire()->(Float, Float, Float)
{
    print("a=")
    let s = readLine()
    if let sa = s{
        let x = Float(sa)
        if let _a = x{
            print("b=")
            let s = readLine()
            if let sa = s{
                let x = Float(sa)
                if let _b = x{
                    print("c=")
                    let s = readLine()
                    if let sa = s{
                        let x = Float(sa)
                        if let _c = x{
                            return (_a, _b, _c)
                        }
                        else{
                            return (1, 1, 2)
                        }
                    }
                    else{
                        return (1, 1, 2)
                    }        
                    
                }
                else{
                    return (1, 1, 2)
                }
            }
            else{
                return (1, 1, 2)
            }        
        }
        else{
            return (1, 1, 2)
        }
    }
    else{
        return (1, 1, 2)
    }
}
//---------------------------------------------------------
func rezolva(coef: (Float, Float, Float))->((Float, Float), (Float, Float)) 
{
    print("a = \(coef.0), b = \(coef.1), c= \(coef.2)")
    
    let delta = coef.1 * coef.1 - 4 * coef.0 * coef.2
    
    if delta >= 0{
        let x1_re = (-coef.1 - sqrt(delta)) / (2 * coef.0)
        let x2_re = (-coef.1 + sqrt(delta)) / (2 * coef.0)
        let x1_im = Float(0.0)
        let x2_im = Float(0.0)
        return ((x1_re, x1_im), (x2_re, x2_im))
    }
    else{
        let x1_re = (-coef.1) / (2 * coef.0) 
        let x2_re = (-coef.1) / (2 * coef.0)
        let x1_im = -sqrt(-delta) / (2 * coef.0)
        let x2_im = sqrt(-delta) / (2 * coef.0)
        return ((x1_re, x1_im), (x2_re, x2_im))
    }
}
//---------------------------------------------------------
func tipareste(x1: (re:Float, im: Float), x2:(re: Float, im: Float))
{
    print("x1 = \(x1.re) + \(x1.im)")
    print("x2 = \(x2.re) + \(x2.im)")
}
//---------------------------------------------------------
var x1, x2: (Float, Float)


let coef = citire()
(x1, x2) = rezolva(coef: coef)
tipareste(x1: x1, x2: x2)
