import 'dart:math';

class vocabulary {
  List<String> nameEN = [
    "Hello",
    "Nice",
    "Fine",
    "Introduce",
    "Too",
    "Meet",
    "From",
    "Stay",
    "Battery",
    "Telephone",
    "Signal",
    "Message",
    "Buy",
    "Bags",
    "Barcode",
    "Basket",
    "Boutique",
    "Customer",
    "Cashier",
    "Cheap",
    "Cash",
    "Counter",
    "Cheques",
    "Size",
    "Scale",
    "Receipt",
    "Refund",
    "Queue",
    "Shoes",
    "Jeans",
    "Trolley",
    "Manager",
    "Elevator",
    "Notes",
    "Bakery",
    "Boss",
    "Company",
    "Contract",
    "Colleague",
    "Director"
  ];
  List<String> nameTH = [
    "สวัสดี",
    "ดี",
    "สบายดี",
    "แนะนำ",
    "เช่นกัน",
    "เจอกัน",
    "จาก",
    "ยืนหยัด",
    "แบตเตอรี่",
    "โทรศัพท์",
    "สัญญาณ",
    "ข้อความ",
    "ซื้อ",
    "กระเป๋า",
    "รหัส",
    "ตะกร้า",
    "ร้านขายเสื้อผ้านำสมัย",
    "ลูกค้า",
    "พนักงานเก็บเงิน",
    "ถูก",
    "เงินสด",
    "เคาน์เตอร์",
    "เช็ค",
    "ขนาด",
    "เครื่องชั่ง",
    "ใบเสร็จ",
    "คืนเงิน",
    "คิว",
    "รองเท้า",
    "กางเกงยีน",
    "รถเข็น",
    "ผู้จัดการ",
    "ลิฟต์",
    "ธนบัตร",
    "ร้านขนมปัง",
    "เจ้านาย",
    "บริษัท",
    "สัญญา",
    "เพื่อนร่วมงาน",
    "ผู้อำนวยการ"
  ];

  int random1 = Random().nextInt(40);
  get ranEN => nameEN[random1];
  get ranTH => nameTH[random1];
  late int ranlge = ranEN.length;
  int random2 = Random().nextInt(40);
  get ranEN1 => nameEN[random2];
  get ranTH1 => nameTH[random2];
  late int ranlge1 = ranEN1.length;
  int random3 = Random().nextInt(40);
}

class Game {
  List<String> selectecd = [];
}
