import 'package:units_converter/units_converter.dart';

List<List<Map<String, dynamic>>> selectList = [
  lengthpairedArray,
  anglepairedArray,
  datapairedArray,
  fuelpairedArray,
  areapairedArray,
  powerpairedArray,
  pressurepairedArray,
  speedpairedArray,
  temperaturepairedArray,
  timepairedArray,
  volumepairedArray,
  weightpairedArray
];

List<Map<String, dynamic>> lengthpairedArray = [
  {'label': 'nm/Nanometers', 'Value': LENGTH.nanometers},
  {'label': 'μm/Micrometers', 'Value': LENGTH.micrometers},
  {'label': 'cm/Centimeters', 'Value': LENGTH.centimeters},
  {'label': 'in/Inches', 'Value': LENGTH.inches},
  {'label': 'm/Meters', 'Value': LENGTH.meters},
  {'label': 'mi/Miles', 'Value': LENGTH.miles},
  {'label': 'Km/Kilometers', 'Value': LENGTH.kilometers},
];
List<Map<String, dynamic>> anglepairedArray = [
  {'label': 's/Seconds', 'Value': ANGLE.seconds},
  {'label': 'μm/Minutes', 'Value': ANGLE.minutes},
  {'label': '°/Degree', 'Value': ANGLE.degree},
  {'label': 'rad/Radians', 'Value': ANGLE.radians},
];

List<Map<String, dynamic>> datapairedArray = [
  {'label': 'Binary', 'Value': NUMERAL_SYSTEMS.binary},
  {'label': 'Decimal', 'Value': NUMERAL_SYSTEMS.decimal},
  {'label': 'Octal', 'Value': NUMERAL_SYSTEMS.octal},
  {'label': 'Hexadecimal', 'Value': NUMERAL_SYSTEMS.hexadecimal},
];

List<Map<String, dynamic>> fuelpairedArray = [
  {'label': 'Kilometers/Liter', 'Value': FUEL_CONSUMPTION.kilometersPerLiter},
  {'label': 'Miles/Gallon', 'Value': FUEL_CONSUMPTION.milesPerImperialGallon},
  {'label': 'Miles/100km', 'Value': FUEL_CONSUMPTION.litersPer100km},
];

//area list
List<Map<String, dynamic>> areapairedArray = [
  {'label': '	ha/Hectares', 'Value': AREA.hectares},
  {'label': 'ft²/SquareFeet', 'Value': AREA.squareFeet},
  {'label': 'cm²/SquareCentimeters', 'Value': AREA.squareCentimeters},
  {'label': 'im²/SquareInches', 'Value': AREA.squareInches},
];

// power list
List<Map<String, dynamic>> powerpairedArray = [
  {'label': '	mW/Milli watt', 'Value': POWER.milliwatt},
  {'label': 'W/Watt', 'Value': POWER.watt},
  {'label': 'kW/Kilo watt', 'Value': POWER.kilowatt},
  {'label': 'MW/Mega watt', 'Value': POWER.megawatt},
  {'label': 'GW/Giga watt', 'Value': POWER.gigawatt},
];

//pressure list
List<Map<String, dynamic>> pressurepairedArray = [
  {'label': '	atm/Atmosphere', 'Value': PRESSURE.atmosphere},
  {'label': 'bar/Bar', 'Value': PRESSURE.bar},
  {'label': 'hPa/HectoPascal', 'Value': PRESSURE.hectoPascal},
  {'label': 'Pa/Pascal', 'Value': PRESSURE.pascal},
  {'label': 'psi/Psi', 'Value': PRESSURE.psi},
  {'label': 'torr/Torr', 'Value': PRESSURE.torr},
  {'label': 'in/Hg', 'Value': PRESSURE.inchOfMercury},
];

// speed list
List<Map<String, dynamic>> speedpairedArray = [
  {'label': '	ft/s', 'Value': SPEED.feetsPerSecond},
  {'label': 'km/h', 'Value': SPEED.kilometersPerHour},
  {'label': 'm/s', 'Value': SPEED.metersPerSecond},
  {'label': 'mi/h', 'Value': SPEED.milesPerHour},
  {'label': 'mi/km', 'Value': SPEED.minutesPerKilometer},
];

// temperature list
List<Map<String, dynamic>> temperaturepairedArray = [
  {'label': '	°C/Celsius', 'Value': TEMPERATURE.celsius},
  {'label': 'F/Fahrenheit', 'Value': TEMPERATURE.fahrenheit},
  {'label': 'K/Kelvin', 'Value': TEMPERATURE.kelvin},
  {'label': '°R/Rankine', 'Value': TEMPERATURE.rankine},
];

// temperature list
List<Map<String, dynamic>> timepairedArray = [
  {'label': '	c/Centuries', 'Value': TIME.centuries},
  {'label': 'd/Days', 'Value': TIME.days},
  {'label': 'dec/Decades', 'Value': TIME.decades},
  {'label': 'h/Hours', 'Value': TIME.hours},
  {'label': 'min/Minutes', 'Value': TIME.minutes},
  {'label': 's/Seconds', 'Value': TIME.seconds},
  {'label': 'w/Weeks', 'Value': TIME.weeks},
  {'label': 'y/Years', 'Value': TIME.years365},
];

// volume list
List<Map<String, dynamic>> volumepairedArray = [
  {'label': '	cl/Centiliters', 'Value': VOLUME.centiliters},
  {'label': 'cm3/CubicCentimeters', 'Value': VOLUME.cubicCentimeters},
  {'label': 'ft3/CubicFeet', 'Value': VOLUME.cubicFeet},
  {'label': 'in3/CubicInches', 'Value': VOLUME.cubicInches},
  {'label': 'm3/CubicMeters', 'Value': VOLUME.cubicMeters},
  {'label': 'mm3/CubicMillimeters', 'Value': VOLUME.cubicMillimeters},
];

// weight list
List<Map<String, dynamic>> weightpairedArray = [
  {'label': '	cg/Centigrams', 'Value': MASS.centigrams},
  {'label': 'dg/Decigrams', 'Value': MASS.decigrams},
  {'label': 'g/Grams', 'Value': MASS.grams},
  {'label': 'kg/Kilograms', 'Value': MASS.kilograms},
  {'label': 'μg/micrograms', 'Value': MASS.micrograms},
  {'label': 'mg/Milligrams', 'Value': MASS.milligrams},
  {'label': 'ng/nanograms', 'Value': MASS.nanograms},
];


