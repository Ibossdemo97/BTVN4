//
//  main.swift
//  BTVN 2
//
//  Created by Luyện Hà Luyện on 8/7/22.
//

//import Swift
//import Foundation

class hocvien {
    var ten: String
    var tuoi: Int
    var sđt: String?
    
    init(ten: String, tuoi: Int, sđt: String) {
        self.ten = ten
        self.tuoi = tuoi
        self.sđt = sđt
    }
    func thayTen(tenMoi: String) {
        self.ten = tenMoi
    }
    func thongtinHV() -> String {
        var in4 = "HV \(self.ten) tuổi: \(self.tuoi)"
        if sđt == nil || sđt!.isEmpty {
            return in4
        }
        in4 += "sđt là: \(self.sđt ?? "")"
        return in4
    }
}
class lopIOS {
    var gvCN: String
    var danhsach: [hocvien]
    var name: String

    init(name: String, GV: String, danhsach: [hocvien]) {
        self.gvCN = GV
        self.name = name
        self.danhsach = danhsach
    }
    func timHV(by ten: String) -> [hocvien] {
        var hocvienIndex = [hocvien]()
        if danhsach.isEmpty {
            return []
        }
        for hocvien in danhsach {
            if hocvien.ten == ten {
                hocvienIndex.append(hocvien)
            }
        }
        return hocvienIndex
    }
    
    func thayHV(by ten: String, tenMoi: String) -> Int {
        var soHVthaydoi = 0
        for hocvien in danhsach {
            if hocvien.ten == ten {
                hocvien.thayTen(tenMoi: tenMoi)
                soHVthaydoi += 1
            }
        }
        return soHVthaydoi
    }
    func xoaHV(by name: String) -> Bool {
        if danhsach.isEmpty {
            return false
        }
        danhsach.removeAll {hocvien in
            return hocvien.ten == name
        }
        return true
    }
    func thongtinlop() -> String {
        let soHV = self.danhsach.count
        return "Lớp học \(self.name) chủ nhiệm bởi \(gvCN) có \(soHV) HV"
    }
    func thongtinHV() -> [String] {
        var in4 = [String] ()
        self.danhsach.forEach { hocvien in
            let info = hocvien.thongtinHV()
            in4.append(info)
        }
        return in4
    }
}
let lopIOS05 = lopIOS(name: "Lớp IOS 05", GV: "Quỳnh", danhsach: [])

lopIOS05.danhsach = [
    hocvien(ten: "Nam", tuoi: 16, sđt: ""),
    hocvien(ten: "Hoàng", tuoi: 12, sđt: "0900000002"),
    hocvien(ten: "Linh", tuoi: 18, sđt: ""),
    hocvien(ten: "Huyền", tuoi: 20, sđt: "0900000004"),
    hocvien(ten: "Đức", tuoi: 17, sđt: ""),
    hocvien(ten: "Dương", tuoi: 19, sđt: "0900000006"),
    hocvien(ten: "Tùng", tuoi: 21, sđt: ""),
    hocvien(ten: "Bằng", tuoi: 25, sđt: "0900000008"),
    hocvien(ten: "Bắc", tuoi: 16, sđt: ""),
    hocvien(ten: "Thanh", tuoi: 41, sđt: "0900000010"),
]
let tenHV = "Nam"
let tenHVmoi = "Đông"
let DSHVmoi = lopIOS05.timHV(by: tenHV)
if DSHVmoi.isEmpty {
    print("Không có HV tên: \(tenHV)")
} else {
    let soHVthaydoi = lopIOS05.thayHV(by: tenHV, tenMoi: tenHVmoi)
    print("Đã đổi \(soHVthaydoi) HV từ \(tenHV) -> \(tenHVmoi)")
}


let soHVtenDuc = lopIOS05.timHV(by: "Đức")
if soHVtenDuc.isEmpty {
    print("Không có  HV Đức")
} else {
    let ok = lopIOS05.xoaHV(by: "Đức")
    if ok {
        print("Xoá thành công HV Đức")
    } else {
        print("Xoá HV Đức thất bại")
    }
}

func xoaHVbatki(by ten: String)  {
    let soHVcanxoa = lopIOS05.timHV(by: ten)
    if soHVcanxoa.isEmpty {
        print("Không có sinh viên nào tên \(ten)")
    } else {
        let thanhcong = lopIOS05.xoaHV(by: ten)
        if thanhcong {
            print("Đã xoá \(ten)")
        } else {
            print("Xoá \(ten) thất bại")
        }
    }
}

xoaHVbatki(by: "Lan")
let layTTLop = lopIOS05.thongtinlop()
print(layTTLop)
let layTTHV = lopIOS05.thongtinHV()
//print(layTTHV)

for (index, hocvien) in layTTHV.enumerated() {
    print("HV \(index + 1): - \(hocvien)")
}
