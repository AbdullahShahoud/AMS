import 'package:flutter/material.dart';
import 'package:playggound1/helper/Routing/rout.dart';
import 'package:playggound1/model/person.dart';
import 'package:playggound1/model/play_ground.dart';
import 'package:playggound1/model/presintion.dart';
import 'package:playggound1/model/requiset.dart';

import 'model/competition.dart';
import 'screen/select_persoin.dart';


List<Persoin> person = [
  Persoin(name: 'أحمد',
   degre: 'مبتدئ'
   ),
  Persoin(
    name: 'محمد',
    degre: 'مبتدئ',
  ),
  Persoin(
    name: 'يزبد',
    degre: 'مبتدئ',
  ),
  Persoin(
    name: 'براء',
    degre: 'مبتدئ',
  ),
  Persoin(
    name: 'زكريا',
    degre: 'مبتدئ',
  ),
  Persoin(name: 'عبدالسميع', degre: 'مبتدئ'),
  Persoin(
    name: 'عبدالله',
    degre: 'مبتدئ',
  ),
  Persoin(
    name: 'عبدالقادر',
    degre: 'مبتدئ',
  ),
  Persoin(
    name: 'عبدالرحمن',
    degre: 'مبتدئ',
  ),
  Persoin(
    name: 'عبدالرحيم',
    degre: 'مبتدئ',
  ),
];
List<Persoins> persons = [
  Persoins(name: 'أحمد',
   degre: 'مبتدئ',
   checked:false
   ),
  Persoins(
    name: 'محمد',
    degre: 'مبتدئ',
   checked:false

  ),
  Persoins(
    name: 'يزبد',
    degre: 'مبتدئ',
   checked:false

  ),
  Persoins(
    name: 'براء',
    degre: 'مبتدئ',
   checked:false

  ),
  Persoins(
    name: 'زكريا',
    degre: 'مبتدئ',
   checked:false

  ),
  Persoins(name: 'عبدالسميع', degre: 'مبتدئ',
   checked:false
  
  ),
  Persoins(
    name: 'عبدالله',
    degre: 'مبتدئ',
   checked:false

  ),
  Persoins(
    name: 'عبدالقادر',
    degre: 'مبتدئ',
   checked:false

  ),
  Persoins(
    name: 'عبدالرحمن',
    degre: 'مبتدئ',
   checked:false

  ),
  Persoins(
    name: 'عبدالرحيم',
    degre: 'مبتدئ',
   checked:false

  ),
];
List<PlayGround> playground = [
   PlayGround(
     id: 0,
    name: 'فراس',
     
    location: 'حمص',
     start: [
      true,
      true,
      true,
      true,
      true,
    ],
    image: 'images/photo_1_2023-10-21_22-44-53.jpg',
    price: 60000,
    size: '2km'
    
  ),
   PlayGround(
     id: 1,
    name: 'الخطيب',
     
    location: 'حمص',
     start: [
      true,
      true,
      true,
      true,
      true,
    ],
    image: 'images/photo_2_2023-10-21_22-44-53.jpg',
    price: 60000,
    size: '2km'
  ),
   PlayGround(
     id: 2,
    name: 'المهندسين',
     
    location: 'حمص....',
     start: [
      true,
      true,
      true,
      true,
      false,
    ],
    image: 'images/photo_6_2023-10-21_22-44-53.jpg',
    price: 50000,
    size: '2km'
  ),
   PlayGround(
     id: 3,
    name: 'العاصي',
     
    location: 'حمص....',
     start: [
      true,
      true,
      true,
      false,
      false,
    ],
    image: 'images/_20240502_001559.JPG',
    price: 70000,
    size: '2km'
  ),
   PlayGround(
     id: 4,
    name: 'البلدي',
     
    location: 'حمص....',
     start: [
      true,
      true,
      true,
      false,
      false,
    ],
    image: 'images/_20240502_002229.JPG',
    price: 55000,
    size: '2km'
  ),
   PlayGround(
     id: 5,
    name: 'الحمصي',
     
    location: 'حمص....',
     start: [
      true,
      true,
      true,
      false,
      false,
    ],
    image: 'images/_20240502_002229.JPG',
    price: 55000,
    size: '2km'
  ),
   PlayGround(
     id: 6,
    name: 'الاوراس',
     
    location: 'حمص....',
     start: [
      true,
      true,
      true,
      false,
      false,
    ],
    image: 'images/_20240502_002229.JPG',
    price: 55000,
    size: '2km'
  ),
   PlayGround(
     id: 7,
    name: 'البعث',
     
    location: 'حمص....',
     start: [
      true,
      true,
      true,
      false,
      false,
    ],
    image: 'images/_20240502_002229.JPG',
    price: 55000,
    size: '2km'
  ),
   PlayGround(
     id: 8,
    name: 'الحكمة',
     
    location: 'حمص....',
     start: [
      true,
      true,
      true,
      false,
      false,
    ],
    image: 'images/_20240502_002229.JPG',
    price: 55000,
    size: '2km'
  ),
];

List<String> listIformation = [
  'عددالساعات',
  'الطلبات',
  'التكلفة',
  'تم الحجز ب',
  'رقم المواصلات',
];
List<Reguist> food = [
  Reguist(name: 'شاورما', image: 'images/FB_IMG_1700084420640.jpg',restornt:'السيف',price:5000),
  Reguist(name: 'بيتزا', image: 'images/FB_IMG_1700082516863.jpg',restornt:'باربيكيو',price:5000),
  Reguist(name: 'مناقيش', image: 'images/FB_IMG_1700082541953.jpg',restornt:'سبايسي',price:5000),
  Reguist(name: 'بطاطا ', image: 'images/FB_IMG_1700083528452.jpg',restornt:'الشعار',price:5000),
  Reguist(name: 'صفائح ', image: 'images/FB_IMG_1700083313076.jpg',restornt:'الزين',price:5000),
  Reguist(name: 'كباب ', image: 'images/FB_IMG_1700084290510.jpg',restornt:'الكورنيش',price:5000),
];
List<Presintion> cros = [
   Presintion(rout: Routers.news, image: 'images/_20240502_001559.JPG' ),
   Presintion(rout: Routers.competition, image: 'images/__20240502_002143.JPG' ),
   Presintion(rout: Routers.news, image: 'images/_20240502_002229.JPG' ),
   Presintion(rout: Routers.competition, image: 'images/pngtree-gradient-color-football-game-matters-poster-png-image_6643843.jpg' ),
];
List <Servies>servies=[
  Servies(name:'شبكة' ,icon:Icons.wifi),
  Servies(name:'مياه' ,icon:Icons.water),
  Servies(name:'كرات' ,icon:Icons.sports_soccer_rounded),
  Servies(name:'نقل' ,icon:Icons.bus_alert_sharp),

];

class Servies{
  String name;
  IconData icon;
  Servies( {required this.name, required this.icon});
}
List<Competition> competition = [
   Competition(
    date: '24/4/5',
     id: 0,
    name: 'أشبال',
     
    location: 'حمص',
    image: 'images/photo_2_2023-10-21_22-44-53.jpg',
    price: 60000,
     age: '12-16'
    
  ),
   Competition(
     id: 1,
    name: 'ناشئين',
    date: '24/4/5',
     
    location: 'حمص',
     
    image: 'images/photo_2_2023-10-21_22-44-53.jpg',
    price: 60000,
     age: '17-21'
  ),
   Competition(
     id: 2,
    name: 'أطفال',
     
    location: 'حمص....',
    date: '24/4/5',
    
    image: 'images/photo_6_2023-10-21_22-44-53.jpg',
    price: 50000,
     age: '7-11'
  ),
   Competition(
     id: 3,
    name: 'أحياء',
    date: '24/4/5',
     
    location: 'حمص....',
    
    image:'images/photo_2_2023-10-21_22-44-53.jpg',
    price: 70000,
     age: '18-26'
  ),
   Competition(
     id: 4,
    name: 'أكاديميات',
     
    location: 'حمص....',
    date: '24/4/5',
   
    image: 'images/_20240502_002229.JPG',
    price: 55000,
     age: '14-17'
  ),
   Competition(
     id: 5,
    name: 'جامعات',
     
    location: 'حمص....',
    date: '24/4/5',
   
    image: 'images/_20240502_002229.JPG',
    price: 55000,
     age: '19-26'
  ),
   Competition(
     id: 6,
    name: 'مدارس',
     
    location: 'حمص....',
    date: '24/4/5',
 
    image: 'images/_20240502_002229.JPG',
    price: 55000,
     age: '12-18'
  ),
   Competition(
     id: 7,
    name: 'أبطال',
     
    location: 'حمص....',
    date: '24/4/5',
  
    image: 'images/_20240502_002229.JPG',
    price: 55000,
     age: '7-12'
  ),
   Competition(
     id: 8,
    name: 'الذهبية',
    date: '24/4/5',
     
    location: 'حمص....',
  
    image: 'images/_20240502_002229.JPG',
    price: 55000,
     age: '18-22'
  ),
];