// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-04-15T21:07:11.754Z

part of google_maps.panoramio;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PanoramioLayer
// **************************************************************************

@JsName('google.maps.panoramio.PanoramioLayer')
class PanoramioLayer extends MVCObject implements _PanoramioLayer {
  PanoramioLayer.created(JsObject o) : super.created(o);
  PanoramioLayer([PanoramioLayerOptions opts]) : this.created(new JsObject(
          getPath('google.maps.panoramio.PanoramioLayer'),
          [((e) => e == null ? null : asJsObject(e))(opts)]));

  GMap get map => _getMap();
  GMap _getMap() => ((e) => e == null ? null : new GMap.created(e))(
      asJsObject(this).callMethod('getMap'));
  String get tag => _getTag();
  String _getTag() => asJsObject(this).callMethod('getTag');
  String get userId => _getUserId();
  String _getUserId() => asJsObject(this).callMethod('getUserId');
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod(
        'setMap', [((e) => e == null ? null : asJsObject(e))(map)]);
  }
  void set options(PanoramioLayerOptions options) => _setOptions(options);
  void _setOptions(PanoramioLayerOptions options) {
    asJsObject(this).callMethod(
        'setOptions', [((e) => e == null ? null : asJsObject(e))(options)]);
  }
  void set tag(String tag) => _setTag(tag);
  void _setTag(String tag) {
    asJsObject(this).callMethod('setTag', [tag]);
  }
  void set userId(String userId) => _setUserId(userId);
  void _setUserId(String userId) {
    asJsObject(this).callMethod('setUserId', [userId]);
  }

  Stream<PanoramioMouseEvent> get onClick => getStream(this, #onClick, "click",
      (JsObject o) => new PanoramioMouseEvent.created(o));
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PanoramioLayerOptions
// **************************************************************************

@anonymous
class PanoramioLayerOptions extends JsInterface
    implements _PanoramioLayerOptions {
  PanoramioLayerOptions.created(JsObject o) : super.created(o);
  PanoramioLayerOptions() : this.created(new JsObject(context['Object']));

  void set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }
  bool get clickable => asJsObject(this)['clickable'];
  void set map(GMap _map) {
    asJsObject(this)['map'] = ((e) => e == null ? null : asJsObject(e))(_map);
  }
  GMap get map =>
      ((e) => e == null ? null : new GMap.created(e))(asJsObject(this)['map']);
  void set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }
  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
  void set tag(String _tag) {
    asJsObject(this)['tag'] = _tag;
  }
  String get tag => asJsObject(this)['tag'];
  void set userId(String _userId) {
    asJsObject(this)['userId'] = _userId;
  }
  String get userId => asJsObject(this)['userId'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PanoramioFeature
// **************************************************************************

@anonymous
class PanoramioFeature extends JsInterface implements _PanoramioFeature {
  PanoramioFeature.created(JsObject o) : super.created(o);
  PanoramioFeature() : this.created(new JsObject(context['Object']));

  void set author(String _author) {
    asJsObject(this)['author'] = _author;
  }
  String get author => asJsObject(this)['author'];
  void set photoId(String _photoId) {
    asJsObject(this)['photoId'] = _photoId;
  }
  String get photoId => asJsObject(this)['photoId'];
  void set title(String _title) {
    asJsObject(this)['title'] = _title;
  }
  String get title => asJsObject(this)['title'];
  void set url(String _url) {
    asJsObject(this)['url'] = _url;
  }
  String get url => asJsObject(this)['url'];
  void set userId(String _userId) {
    asJsObject(this)['userId'] = _userId;
  }
  String get userId => asJsObject(this)['userId'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PanoramioMouseEvent
// **************************************************************************

@anonymous
class PanoramioMouseEvent extends JsInterface implements _PanoramioMouseEvent {
  PanoramioMouseEvent.created(JsObject o) : super.created(o);
  PanoramioMouseEvent() : this.created(new JsObject(context['Object']));

  void set featureDetails(PanoramioFeature _featureDetails) {
    asJsObject(this)['featureDetails'] =
        ((e) => e == null ? null : asJsObject(e))(_featureDetails);
  }
  PanoramioFeature get featureDetails => ((e) => e == null
      ? null
      : new PanoramioFeature.created(e))(asJsObject(this)['featureDetails']);
  void set infoWindowHtml(String _infoWindowHtml) {
    asJsObject(this)['infoWindowHtml'] = _infoWindowHtml;
  }
  String get infoWindowHtml => asJsObject(this)['infoWindowHtml'];
  void set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] =
        ((e) => e == null ? null : asJsObject(e))(_latLng);
  }
  LatLng get latLng => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['latLng']);
  void set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] =
        ((e) => e == null ? null : asJsObject(e))(_pixelOffset);
  }
  Size get pixelOffset => ((e) => e == null ? null : new Size.created(e))(
      asJsObject(this)['pixelOffset']);
}
