void main() {
  
  Map<String, dynamic> mapPerson = {
    "name": "luis",
    "edad": 35,
    "activities": {
      1: "work",
      2: "pray",
      3: "game"
    },
    "skills": <String>["MsSQL","C#","Vue.js"]

  };
  
  print(mapPerson);
  print('name: ${ mapPerson["name"] }');
  print('skills: ${ mapPerson["skills"] }');
  print('act1: ${ mapPerson["activities"][2] }');
  print('act2: ${ mapPerson["activities"][1] }');
  print('act3: ${ mapPerson["activities"][3] }');
  
}