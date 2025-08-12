function cadenaLarga(cadena){
    let palabraLarga;
    let longitud = 0;
    cadena.split(' ').forEach(element => {
        if(element.length > longitud){
             palabraLarga = element;
             longitud = element.length;
        }
    });
    console.log('La palabra más larga es ' + palabraLarga); 
}

function parentesis(cadena){
    let contador = 0;
    for(let caracter of cadena){
        if(caracter === '(') contador ++;
        if(caracter === ')'){
            contador --;
            //Este se coloca debido a que puedo colocar )( y sin esto, me lo toma como true
            if(contador < 0) return false; 
        }
    }
    return contador === 0;
}

function frecuencias(cadena){
    let letras = {};
    for(let letter of cadena){
        letter = letter.toUpperCase();
        if(!(letter in letras))        
        letras[letter] = cadena.toUpperCase().split(letter).length -1;
    }
    console.log(letras);
}

function fizzBuzz(numero){
    if(numero < 0) return 'Ingresa un número positivo';
    for (let index = 1; index <= numero; index++) {
        if(index % 3 === 0 && index % 5 === 0){
            console.log('FizzBuzz');
        }else if(index % 3 === 0){
            console.log('Fizz');
        }else if(index % 5 === 0){
            console.log('Buzz');
        }else{
            console.log(index);
        }
         
    }
}

//Este lo hice de esta forma, ya que la pregunta da como para realizar un MER en DB pero como la sección dice en Javascript o PHP

// Lista de puntos de gestión
let puntos = [
  { id: 1, nombre: "Sede Principal", lat: 3.4042612, lon: -76.6174829 },
  { id: 2, nombre: "Unicentro Cali", lat: 3.3931283, lon: -76.5470147 },
  { id: 3, nombre: "Universidad Libre", lat: 3.4206321, lon: -76.5513077 }
];

// Lista de visitas
let visitas = [
  { id: 1, puntoId: 2, inicio: "2025-08-12T08:00:00", fin: "2025-08-12T08:30:00" },
  { id: 2, puntoId: 2, inicio: "2025-08-12T09:00:00", fin: "2025-08-12T10:10:00" },
  { id: 3, puntoId: 3, inicio: "2025-08-12T11:00:00", fin: "2025-08-12T11:45:00" },
  { id: 4, puntoId: 3, inicio: "2025-08-12T12:00:00", fin: "2025-08-12T13:20:00" }
];

//se tiene en cuenta la formula de Haversine
// d = 2 * R * arcsin(sqrt(sin²((lat2 - lat1) / 2) + cos(lat1) * cos(lat2) * sin²((lon2 - lon1) / 2)))
function distanciaKm(lat1, lon1, lat2, lon2) {
  const R = 6371;
  const dLat = (lat2 - lat1) * Math.PI / 180; //Diferencia de latitudes en radianes
  const dLon = (lon2 - lon1) * Math.PI / 180; //Diferencia de longitudes en radianes
  const a =
    Math.sin(dLat / 2) ** 2 + //sin²((lat2 - lat1) / 2)
    Math.cos(lat1 * Math.PI / 180) * // cos(lat1)
    Math.cos(lat2 * Math.PI / 180) * // cos(lat2)
    Math.sin(dLon / 2) ** 2; // sin²((lon2 - lon1) / 2)
  return R * (2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a)));
}

function distanciasDesde(idPunto) {
  let p1 = puntos.find(p => p.id === idPunto);
  return puntos
    .filter(p => p.id !== idPunto)
    .map(p => ({
      nombre: p.nombre,
      distancia: distanciaKm(p1.lat, p1.lon, p.lat, p.lon).toFixed(2) + " km"
    }));
}

function puntosMasVisitados() {
  let conteo = {};
  visitas.forEach(v => {
    conteo[v.puntoId] = (conteo[v.puntoId] || 0) + 1;
  });
  return Object.entries(conteo)
    .map(([puntoId, cantidad]) => ({
      punto: puntos.find(p => p.id == puntoId).nombre,
      cantidad
    }))
    .sort((a, b) => b.cantidad - a.cantidad);
}

function puntosMayorDuracion() {
  let tiempos = {};
  visitas.forEach(v => {
    let duracion = (new Date(v.fin) - new Date(v.inicio)) / 60000; // en minutos
    if (!tiempos[v.puntoId]) tiempos[v.puntoId] = [];
    tiempos[v.puntoId].push(duracion);
  });

  return Object.entries(tiempos)
    .map(([puntoId, duraciones]) => ({
      punto: puntos.find(p => p.id == puntoId).nombre,
      duracion: Math.max(...duraciones)
    }))
    .sort((a, b) => b.duracion - a.duracion);
}

function datos(){
    console.log("Visitas:", puntosMasVisitados());
    console.log("Mayor Duración en cada punto:", puntosMayorDuracion());
    console.log("Distancia con la sede principal:", distanciasDesde(1));
}
