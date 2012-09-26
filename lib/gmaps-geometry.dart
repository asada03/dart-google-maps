#library('gmaps-geometry');

#import('jsni.dart', prefix:'js');
#import('gmaps.dart');
#source('utils.dart');

class Encoding {
  static const TYPE_NAME = "google.maps.geometry.encoding";

  static List<LatLng> decodePath(String encodedPath) => js.jsWindow.$.call("${TYPE_NAME}.decodePath", [encodedPath], (js.JsRef jsRef) => new js.JsList<LatLng>.fromJsRef(jsRef, LatLng.INSTANCIATOR));
  static String encodePath(Object path) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      return js.jsWindow.$.call("${TYPE_NAME}.encodePath", [path]);
    } else {
      throw new IllegalArgumentException(path);
    }
  }
}

class Spherical {
  static const TYPE_NAME = "google.maps.geometry.spherical";

  static num computeArea(Object path, [num radius]) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      return js.jsWindow.$.call("${TYPE_NAME}.computeArea", [path, radius]);
    } else {
      throw new IllegalArgumentException(path);
    }
  }
  static num computeDistanceBetween(LatLng from, LatLng to, [num radius]) => js.jsWindow.$.call("${TYPE_NAME}.computeDistanceBetween", [from, to, radius]);
  static num computeHeading(LatLng from, LatLng to) => js.jsWindow.$.call("${TYPE_NAME}.computeHeading", [from, to]);
  static num computeLength(Object path, [num radius]) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      return js.jsWindow.$.call("${TYPE_NAME}.computeLength", [path, radius]);
    } else {
      throw new IllegalArgumentException(path);
    }
  }
  static LatLng computeOffset(LatLng from, num distance, num heading, [num radius]) => js.jsWindow.$.call("${TYPE_NAME}.computeOffset", [from, distance, heading, radius], LatLng.INSTANCIATOR);
  static num computeSignedArea(Object loop, [num radius]) {
    if (loop is MVCArray<LatLng> || loop is List<LatLng>) {
      return js.jsWindow.$.call("${TYPE_NAME}.computeSignedArea", [loop, radius]);
    } else {
      throw new IllegalArgumentException(loop);
    }
  }
  static LatLng interpolate(LatLng from, LatLng to, num fraction) => js.jsWindow.$.call("${TYPE_NAME}.interpolate", [from, to, fraction], LatLng.INSTANCIATOR);
}

class Poly {
  static const TYPE_NAME = "google.maps.geometry.poly";

  static bool containsLocation(LatLng point, Polygon polygon) => js.jsWindow.$.call("${TYPE_NAME}.containsLocation", [point, polygon]);
  static bool isLocationOnEdge(LatLng point, Object poly, [num tolerance]) {
    if (poly is Polygon || poly is Polyline) {
      return js.jsWindow.$.call("${TYPE_NAME}.isLocationOnEdge", [point, poly, tolerance]);
    } else {
      throw new IllegalArgumentException(poly);
    }
  }
}