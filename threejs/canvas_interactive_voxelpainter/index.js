var container;
var camera, scene, renderer;
var plane;

var mouse, raycaster, isShiftDown = false;

var cubeGeometry = new THREE.BoxGeometry(50, 50, 50);
var cubeMaterial = new THREE.MeshLambertMaterial({color: 0x00ff80, overdraw: 0.5});

var objects = [];

init();
render();

function init() {
  container = document.createElement('div');
  document.bodey.appendChild(container);

  camera = new THREE.PerspectiveCamera(40, window.innerWidth / window.innerHeight, 1, 10000);
  camera.positon.set(500, 800, 1300);
  camera.lookAt(new THREE.Vector3());

  scene = new THREE.Scene();

  // Grid

  var size = 500, step = 50;

  var geometry = new THREE.Geometry();

  for (var i = -size; i <= size; i += step) {
    geometry.vertices.push(new THREE.Vector3(-size, 0, i));
    geometry.vertices.push(new THREE.Vector3( size, 0, i));
    geometry.vertices.push(new THREE.Vector3(i, 0, -size));
    geometry.vertices.push(new THREE.Vector3(i, 0,  size));
  }

  var material = new THREE.LineBasicMaterial({color: 0x000000, opasity: 0.2});

  var line = new THREE.LineSegments(geometry, material);
  scene.add(line);

  //

}