import 'package:flutter/material.dart';

const List<Map<String, Object>> categories = [
  {'title': 'SALE NỬA GIÁ', 'imgAsset': 'assets/images/IMG_E7094.JPG'},
  {'title': 'FOR MAN', 'imgAsset': 'assets/images/IMG_E7148.JPG'},
  {'title': 'FOR WOMAN', 'imgAsset': 'assets/images/IMG_E7147.JPG'},
  {'title': 'HELIANTHUS', 'imgAsset': 'assets/images/IMG_E7095.JPG'},
];

const List<Map<String, Object>> recommends = [
  {
    'title': 'Great Life Tee',
    'price': '64.500 đ',
    'imgAssets': 'assets/images/a1.JPG',
    'addcolor': '+10 màu'
  },
  {
    'title': 'Hen Dress',
    'price': '199.500 đ',
    'imgAssets': 'assets/images/a2.JPG',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Sunflower Big Tee',
    'price': '399.000 đ',
    'imgAssets': 'assets/images/a3.JPG',
    'addcolor': '+10 màu'
  },
  {
    'title': 'Great Life Tee/Her',
    'price': '64.500 đ',
    'imgAssets': 'assets/images/a4.JPG',
    'addcolor': '+6 màu'
  },
  {
    'title': 'Smart Pants',
    'price': '419.000 đ',
    'imgAssets': 'assets/images/a5.JPG',
    'addcolor': '+4 màu'
  },
  {
    'title': 'Unum Tank',
    'price': '299.000 đ',
    'imgAssets': 'assets/images/a6.JPG',
    'addcolor': '+1 màu'
  },
  {
    'title': 'Pocket Mini Skirt',
    'price': '349.000 đ',
    'imgAssets': 'assets/images/a7.JPG',
    'addcolor': '+2 màu'
  },
  {
    'title': 'Wash Polo',
    'price': '419.000 đ',
    'imgAssets': 'assets/images/a8.JPG',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Sss. Soft Boxer',
    'price': '99.000 đ',
    'imgAssets': 'assets/images/a9.JPG',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Fit Pants',
    'price': '499.000 đ',
    'imgAssets': 'assets/images/a10.JPG',
    'addcolor': '+7 màu'
  }
];
const List<String> slider = [
  'assets/images/bia1.jpeg',
  'assets/images/bia2.jpeg',
  'assets/images/bia3.jpeg',
  'assets/images/bia4.jpeg',
];

const List<Map<String, Object>> viewed = [
  {
    'title': 'Sunflower Polo Tee',
    'price': '399.000 đ',
    'imgAssets': 'assets/images/v1.jpeg',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Surfer Trousers',
    'price': '499.000 đ',
    'imgAssets': 'assets/images/v2.jpeg',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Le Trousers',
    'price': '449.000 đ',
    'imgAssets': 'assets/images/v3.jpeg',
    'addcolor': '+5 màu'
  },
  {
    'title': 'Red Gingham Dress',
    'price': '199.500 đ',
    'imgAssets': 'assets/images/v4.jpeg',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Layer Skirt',
    'price': '199.500 đ',
    'imgAssets': 'assets/images/v5.jpeg',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Bei Linen Shirt',
    'price': '429.000 đ',
    'imgAssets': 'assets/images/v6.jpeg',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Blank BackPack',
    'price': '209.300 đ',
    'imgAssets': 'assets/images/v7.jpeg',
    'addcolor': '+1 màu'
  },
  {
    'title': 'GodFather Shirt',
    'price': '449.000 đ',
    'imgAssets': 'assets/images/v8.jpeg',
    'addcolor': '+4 màu'
  },
  {
    'title': 'Form Jeans-II',
    'price': '499.000 đ',
    'imgAssets': 'assets/images/v10.jpeg',
    'addcolor': '+2 màu'
  },
  {
    'title': 'David Jacket',
    'price': '399.000 đ',
    'imgAssets': 'assets/images/v9.jpeg',
    'addcolor': '+3 màu'
  },
];

const List<Map<String, Object>> allProduct = [
  {
    'title': 'Sunflower Polo Tee', //so mi nam
    'price': '399.000 đ',
    'imgAssets': 'assets/images/v1.jpeg',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Surfer Trousers', // quan nam
    'price': '499.000 đ',
    'imgAssets': 'assets/images/v2.jpeg',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Le Trousers', // quan nam
    'price': '449.000 đ',
    'imgAssets': 'assets/images/v3.jpeg',
    'addcolor': '+5 màu'
  },
  {
    'title': 'Red Gingham Dress', // dam nu
    'price': '199.500 đ',
    'imgAssets': 'assets/images/v4.jpeg',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Layer Skirt', // chan vay
    'price': '199.500 đ',
    'imgAssets': 'assets/images/v5.jpeg',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Bei Linen Shirt', // so mi nam
    'price': '429.000 đ',
    'imgAssets': 'assets/images/v6.jpeg',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Blank BackPack', //tui nam
    'price': '209.300 đ',
    'imgAssets': 'assets/images/v7.jpeg',
    'addcolor': '+1 màu'
  },
  {
    'title': 'GodFather Shirt', // so mi nam
    'price': '449.000 đ',
    'imgAssets': 'assets/images/v8.jpeg',
    'addcolor': '+4 màu'
  },
  {
    'title': 'Form Jeans-II', //quan bo nam
    'price': '499.000 đ',
    'imgAssets': 'assets/images/v10.jpeg',
    'addcolor': '+2 màu'
  },
  {
    'title': 'David Jacket', // ao blazer nam
    'price': '399.000 đ',
    'imgAssets': 'assets/images/v9.jpeg',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Great Life Tee', //ao thun nam
    'price': '64.500 đ',
    'imgAssets': 'assets/images/a1.JPG',
    'addcolor': '+10 màu'
  },
  {
    'title': 'Hen Dress', //dam nu
    'price': '199.500 đ',
    'imgAssets': 'assets/images/a2.JPG',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Sunflower Big Tee', //ao thun nam
    'price': '399.000 đ',
    'imgAssets': 'assets/images/a3.JPG',
    'addcolor': '+10 màu'
  },
  {
    'title': 'Great Life Tee/Her', // ao thun nu
    'price': '64.500 đ',
    'imgAssets': 'assets/images/a4.JPG',
    'addcolor': '+6 màu'
  },
  {
    'title': 'Smart Pants', //quan nam
    'price': '419.000 đ',
    'imgAssets': 'assets/images/a5.JPG',
    'addcolor': '+4 màu'
  },
  {
    'title': 'Unum Tank', // an thun nu
    'price': '299.000 đ',
    'imgAssets': 'assets/images/a6.JPG',
    'addcolor': '+1 màu'
  },
  {
    'title': 'Pocket Mini Skirt', //chan vay
    'price': '349.000 đ',
    'imgAssets': 'assets/images/a7.JPG',
    'addcolor': '+2 màu'
  },
  {
    'title': 'Wash Polo', // ao thun nam
    'price': '419.000 đ',
    'imgAssets': 'assets/images/a8.JPG',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Sss. Soft Boxer', // phu kien nam
    'price': '99.000 đ',
    'imgAssets': 'assets/images/a9.JPG',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Fit Pants', // quan nam
    'price': '499.000 đ',
    'imgAssets': 'assets/images/a10.JPG',
    'addcolor': '+7 màu'
  }
];

const textColor = Color(0xFF535353);
const textLightColor = Color(0xFFACACAC);
const defaultPadding = 20.0;
const textColorTabs = Color.fromARGB(255, 0, 0, 0);
const List<Map<String, Object>> aoSoMiNam = [
  {
    'title': 'Bei Linen Shirt', // so mi nam
    'price': '429.000 đ',
    'imgAssets': 'assets/images/v6.jpeg',
    'addcolor': '+3 màu'
  },
  {
    'title': 'GodFather Shirt', // so mi nam
    'price': '449.000 đ',
    'imgAssets': 'assets/images/v8.jpeg',
    'addcolor': '+4 màu'
  },
  {
    'title': 'Sunflower Polo Tee', //so mi nam
    'price': '399.000 đ',
    'imgAssets': 'assets/images/v1.jpeg',
    'addcolor': '+3 màu'
  },
];
const List<Map<String, Object>> aoThun = [
  {
    'title': 'Great Life Tee', //ao thun nam
    'price': '64.500 đ',
    'imgAssets': 'assets/images/a1.JPG',
    'addcolor': '+10 màu'
  },
  {
    'title': 'Sunflower Big Tee', //ao thun nam
    'price': '399.000 đ',
    'imgAssets': 'assets/images/a3.JPG',
    'addcolor': '+10 màu'
  },
  {
    'title': 'Wash Polo', // ao thun nam
    'price': '419.000 đ',
    'imgAssets': 'assets/images/a8.JPG',
    'addcolor': '+3 màu'
  },
];
const List<Map<String, Object>> quan = [
  {
    'title': 'Fit Pants', // quan nam
    'price': '499.000 đ',
    'imgAssets': 'assets/images/a10.JPG',
    'addcolor': '+7 màu'
  },
  {
    'title': 'Smart Pants', //quan nam
    'price': '419.000 đ',
    'imgAssets': 'assets/images/a5.JPG',
    'addcolor': '+4 màu'
  },
  {
    'title': 'Surfer Trousers', // quan nam
    'price': '499.000 đ',
    'imgAssets': 'assets/images/v2.jpeg',
    'addcolor': '+3 màu'
  },
  {
    'title': 'Le Trousers', // quan nam
    'price': '449.000 đ',
    'imgAssets': 'assets/images/v3.jpeg',
    'addcolor': '+5 màu'
  },
];
const List<Map<String, Object>> aoBlazerNam = [
  {
    'title': 'David Jacket', // ao blazer nam
    'price': '399.000 đ',
    'imgAssets': 'assets/images/v9.jpeg',
    'addcolor': '+3 màu'
  },
];
const List<Map<String, Object>> phuKienNam = [
  {
    'title': 'Sss. Soft Boxer', // phu kien nam
    'price': '99.000 đ',
    'imgAssets': 'assets/images/a9.JPG',
    'addcolor': '+3 màu'
  },
];
const List<Map<String, Object>> aoThunNam = [
  {
    'title': 'Great Life Tee', //ao thun nam
    'price': '64.500 đ',
    'imgAssets': 'assets/images/a1.JPG',
    'addcolor': '+10 màu'
  },
  {
    'title': 'Sunflower Big Tee', //ao thun nam
    'price': '399.000 đ',
    'imgAssets': 'assets/images/a3.JPG',
    'addcolor': '+10 màu'
  },
];
const List<Map<String, Object>> tuiNam = [
  {
    'title': 'Blank BackPack', //tui nam
    'price': '209.300 đ',
    'imgAssets': 'assets/images/v7.jpeg',
    'addcolor': '+1 màu'
  },
];
const List<Map<String, Object>> quanBoNam = [
  {
    'title': 'Form Jeans-II', //quan bo nam
    'price': '499.000 đ',
    'imgAssets': 'assets/images/v10.jpeg',
    'addcolor': '+2 màu'
  },
];
