import 'package:dmcampus/features/subjects/models/subject.dart';
import 'package:dmcampus/features/categories/data/categories_data.dart';

// final subjects = [
//   Subject(code: 'BSC101', name: 'English Language 1', hours: 2),
//   Subject(code: 'BSC102', name: 'Mathematics 1', hours: 3),
// ];

final level1FirstSemesterSubjects = <Subject>[
  Subject(code: 'BSC101', name: 'English Language 1', hours: 2, categories: english1Categories),
  Subject(code: 'BSC102', name: 'Mathematics 1', hours: 3, categories: emptyCategories),
  Subject(code: 'BSC103', name: 'Chemistry', hours: 2, categories: emptyCategories),
  Subject(
    code: 'UNV101',
    name: 'Industrial Safety and Environment',
    hours: 1,
    categories: emptyCategories,
  ),
  Subject(
    code: 'CIV109',
    name: 'Materials Properties and Testing',
    hours: 2,
    categories: emptyCategories,
  ),
  Subject(code: 'ENE101', name: 'Electrical Drawing', hours: 2, categories: emptyCategories),
  Subject(
    code: 'ENE102',
    name: 'Electrical Circuit Analysis 1',
    hours: 3,
    categories: emptyCategories,
  ),
];

final level1SecondSemesterSubjects = <Subject>[
  Subject(code: 'BSC104', name: 'English Language 2', hours: 2, categories: emptyCategories),
  Subject(code: 'BSC105', name: 'Mathematics 2', hours: 3, categories: emptyCategories),
  Subject(code: 'BSC106', name: 'Physics', hours: 3, categories: emptyCategories),
  Subject(code: 'BSC107', name: 'Quality Management', hours: 1, categories: emptyCategories),
  Subject(code: 'PRD102', name: 'European Technology', hours: 1, categories: emptyCategories),
  Subject(code: 'ELC101', name: 'Analog Electronics', hours: 3, categories: emptyCategories),
  Subject(
    code: 'ENE103',
    name: 'Electrical Circuit Analysis 2',
    hours: 3,
    categories: emptyCategories,
  ),
];

final level2FirstSemesterSubjects = <Subject>[
  Subject(code: 'BSC201', name: 'English Language 3', hours: 2, categories: emptyCategories),
  Subject(code: 'BSC202', name: 'Statistics', hours: 2, categories: emptyCategories),
  Subject(
    code: 'REF201',
    name: 'Fluid Mechanics and Hydraulics',
    hours: 3,
    categories: emptyCategories,
  ),
  Subject(code: 'ELC201', name: 'Digital Electronics', hours: 2, categories: emptyCategories),
  Subject(code: 'ELC202', name: 'Computer Aided Design', hours: 2, categories: emptyCategories),
  Subject(
    code: 'ENE201',
    name: 'Energy Conversion Principles',
    hours: 3,
    categories: emptyCategories,
  ),
  Subject(code: 'ENE202', name: 'Materials Science', hours: 2, categories: emptyCategories),
];

final level2SecondSemesterSubjects = <Subject>[
  Subject(
    code: 'BSC203',
    name: 'Technical Reports',
    hours: 3,
    categories: technicalReportsCategories,
  ),
  Subject(code: 'BSC204', name: 'Leadership Skills', hours: 1, categories: emptyCategories),
  Subject(code: 'ENE203', name: 'Electrical Installations', hours: 3, categories: emptyCategories),
  Subject(code: 'ENE204', name: 'Electrical Machines 1', hours: 3, categories: emptyCategories),
  Subject(code: 'ENE205', name: 'Energy Economics', hours: 2, categories: emptyCategories),
  Subject(
    code: 'ENE206',
    name: 'Measurements and Instrumentation',
    hours: 3,
    categories: emptyCategories,
  ),
  Subject(
    code: 'ENE207',
    name: 'Power Electronics Fundamentals',
    hours: 3,
    categories: emptyCategories,
  ),
];

final level3FirstSemesterSubjects = <Subject>[
  Subject(
    code: 'BSC301',
    name: 'Creative Thinking and Social Behavior',
    hours: 1,
    categories: emptyCategories,
  ),
  Subject(
    code: 'BSC302',
    name: 'Marketing and Project Management',
    hours: 1,
    categories: emptyCategories,
  ),
  Subject(code: 'ENE301', name: 'Power Electronics', hours: 3, categories: emptyCategories),
  Subject(
    code: 'ENE302',
    name: 'Microprocessor Applications',
    hours: 3,
    categories: emptyCategories,
  ),
  Subject(code: 'ENE303', name: 'Electrical Machines 2', hours: 3, categories: emptyCategories),
  Subject(code: 'ENE304', name: 'Renewable Energy Sources', hours: 3, categories: emptyCategories),
  Subject(
    code: 'ENE305',
    name: 'Electrical Power Systems 1',
    hours: 3,
    categories: emptyCategories,
  ),
];

final level3SecondSemesterSubjects = <Subject>[
  Subject(
    code: 'BSC303',
    name: 'Thinking Innovation and Entrepreneurship',
    hours: 1,
    categories: emptyCategories,
  ),
  Subject(code: 'BSC304', name: 'Industrial Planning', hours: 1, categories: emptyCategories),
  Subject(
    code: 'ENE306',
    name: 'Electrical Power Systems 2',
    hours: 3,
    categories: emptyCategories,
  ),
  Subject(code: 'ENE307', name: 'Control Systems 1', hours: 3, categories: emptyCategories),
  Subject(
    code: 'ENE308',
    name: 'Wind Energy and Applications',
    hours: 3,
    categories: emptyCategories,
  ),
  Subject(
    code: 'ENE309',
    name: 'Generation, Transmission and Distribution',
    hours: 3,
    categories: emptyCategories,
  ),
  Subject(code: 'ENE310', name: 'Power System Protection', hours: 3, categories: emptyCategories),
  Subject(code: 'ENE390', name: 'Field Training 2', hours: 3, categories: emptyCategories),
];

final level4FirstSemesterSubjects = <Subject>[
  Subject(
    code: 'BSC401',
    name: 'Human Rights and Labor Law',
    hours: 1,
    categories: emptyCategories,
  ),
  Subject(
    code: 'BSC402',
    name: 'Environmental Engineering and Occupational Safety',
    hours: 1,
    categories: emptyCategories,
  ),
  Subject(code: 'ENE401', name: 'Control Systems 2', hours: 3, categories: emptyCategories),
  Subject(
    code: 'ENE402',
    name: 'Distributed Electrical Installations',
    hours: 3,
    categories: emptyCategories,
  ),
  Subject(code: 'ENE403', name: 'Electrical Faults', hours: 3, categories: emptyCategories),
  Subject(
    code: 'ENE404',
    name: 'Electrical System Protection',
    hours: 3,
    categories: emptyCategories,
  ),
  Subject(code: 'ENE405', name: 'Graduation Project 1', hours: 2, categories: emptyCategories),
];

final level4SecondSemesterSubjects = <Subject>[
  Subject(
    code: 'UNV102',
    name: 'Human Rights and Anti-Corruption',
    hours: 2,
    categories: emptyCategories,
  ),
  Subject(code: 'ENE406', name: 'Smart Grid Technology', hours: 3, categories: emptyCategories),
  Subject(
    code: 'ENE407',
    name: 'Building Management Systems',
    hours: 2,
    categories: emptyCategories,
  ),
  Subject(
    code: 'ENE408',
    name: 'Installation and Maintenance of Small Renewable Energy Systems',
    hours: 3,
    categories: emptyCategories,
  ),
  Subject(code: 'ENE409', name: 'Electrical Traction', hours: 3, categories: emptyCategories),
  Subject(code: 'ENE410', name: 'Graduation Project 2', hours: 2, categories: emptyCategories),
];
