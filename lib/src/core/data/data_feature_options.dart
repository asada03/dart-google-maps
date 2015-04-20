// Copyright (c) 2015, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of google_maps;

@anonymous
abstract class _DataFeatureOptions implements JsInterface {
  external factory _DataFeatureOptions();

  dynamic _geometry;
  dynamic /*DataGeometry|LatLng*/ get geometry => (new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometry>((o) => new DataGeometry.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.Data.Geometry"))))
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
            (o) => o != null && o.instanceof(getPath("google.maps.LatLng")))))
      .decode(_geometry);
  void set geometry(dynamic /*DataGeometry|LatLng*/ geometry) {
    _geometry = (new ChainedCodec()
      ..add(new JsInterfaceCodec<DataGeometry>(
          (o) => new DataGeometry.created(o), (o) =>
              o != null && o.instanceof(getPath("google.maps.Data.Geometry"))))
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
              (o) => o != null && o.instanceof(getPath("google.maps.LatLng")))))
        .encode(geometry);
  }
  dynamic /*num|String*/ id;
  Object properties;
}
