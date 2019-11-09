class Banner {
  List<Banners> _banners;
  int _code;

  Banner({List<Banners> banners, int code}) {
    this._banners = banners;
    this._code = code;
  }

  List<Banners> get banners => _banners;

  set banners(List<Banners> banners) => _banners = banners;

  int get code => _code;

  set code(int code) => _code = code;

  Banner.fromJson(Map<String, dynamic> json) {
    if (json['banners'] != null) {
      _banners = new List<Banners>();
      json['banners'].forEach((v) {
        _banners.add(new Banners.fromJson(v));
      });
    }
    _code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._banners != null) {
      data['banners'] = this._banners.map((v) => v.toJson()).toList();
    }
    data['code'] = this._code;
    return data;
  }
}

class Banners {
  String _pic;
  int _targetId;
  Null _adid;
  int _targetType;
  String _titleColor;
  String _typeTitle;
  String _url;
  Null _adurlV2;
  bool _exclusive;
  Null _monitorImpress;
  Null _monitorClick;
  Null _monitorType;
  List<MonitorImpressList> _monitorImpressList;
  List<MonitorClickList> _monitorClickList;
  Null _monitorBlackList;
  Null _extMonitor;
  Null _extMonitorInfo;
  Null _adSource;
  Null _adLocation;
  String _encodeId;
  Null _program;
  Null _event;
  Null _video;
  Song _song;
  String _bannerId;
  Null _alg;
  String _scm;
  String _requestId;
  bool _showAdTag;
  Null _pid;
  Null _showContext;
  Null _adDispatchJson;

  Banners(
      {String pic,
      int targetId,
      Null adid,
      int targetType,
      String titleColor,
      String typeTitle,
      String url,
      Null adurlV2,
      bool exclusive,
      Null monitorImpress,
      Null monitorClick,
      Null monitorType,
      List<MonitorImpressList> monitorImpressList,
      List<MonitorClickList> monitorClickList,
      Null monitorBlackList,
      Null extMonitor,
      Null extMonitorInfo,
      Null adSource,
      Null adLocation,
      String encodeId,
      Null program,
      Null event,
      Null video,
      Song song,
      String bannerId,
      Null alg,
      String scm,
      String requestId,
      bool showAdTag,
      Null pid,
      Null showContext,
      Null adDispatchJson}) {
    this._pic = pic;
    this._targetId = targetId;
    this._adid = adid;
    this._targetType = targetType;
    this._titleColor = titleColor;
    this._typeTitle = typeTitle;
    this._url = url;
    this._adurlV2 = adurlV2;
    this._exclusive = exclusive;
    this._monitorImpress = monitorImpress;
    this._monitorClick = monitorClick;
    this._monitorType = monitorType;
    this._monitorImpressList = monitorImpressList;
    this._monitorClickList = monitorClickList;
    this._monitorBlackList = monitorBlackList;
    this._extMonitor = extMonitor;
    this._extMonitorInfo = extMonitorInfo;
    this._adSource = adSource;
    this._adLocation = adLocation;
    this._encodeId = encodeId;
    this._program = program;
    this._event = event;
    this._video = video;
    this._song = song;
    this._bannerId = bannerId;
    this._alg = alg;
    this._scm = scm;
    this._requestId = requestId;
    this._showAdTag = showAdTag;
    this._pid = pid;
    this._showContext = showContext;
    this._adDispatchJson = adDispatchJson;
  }

  String get pic => _pic;

  set pic(String pic) => _pic = pic;

  int get targetId => _targetId;

  set targetId(int targetId) => _targetId = targetId;

  Null get adid => _adid;

  set adid(Null adid) => _adid = adid;

  int get targetType => _targetType;

  set targetType(int targetType) => _targetType = targetType;

  String get titleColor => _titleColor;

  set titleColor(String titleColor) => _titleColor = titleColor;

  String get typeTitle => _typeTitle;

  set typeTitle(String typeTitle) => _typeTitle = typeTitle;

  String get url => _url;

  set url(String url) => _url = url;

  Null get adurlV2 => _adurlV2;

  set adurlV2(Null adurlV2) => _adurlV2 = adurlV2;

  bool get exclusive => _exclusive;

  set exclusive(bool exclusive) => _exclusive = exclusive;

  Null get monitorImpress => _monitorImpress;

  set monitorImpress(Null monitorImpress) => _monitorImpress = monitorImpress;

  Null get monitorClick => _monitorClick;

  set monitorClick(Null monitorClick) => _monitorClick = monitorClick;

  Null get monitorType => _monitorType;

  set monitorType(Null monitorType) => _monitorType = monitorType;

  List<MonitorImpressList> get monitorImpressList => _monitorImpressList;

  set monitorImpressList(List<MonitorImpressList> monitorImpressList) =>
      _monitorImpressList = monitorImpressList;

  List<MonitorClickList> get monitorClickList => _monitorClickList;

  set monitorClickList(List<MonitorClickList> monitorClickList) =>
      _monitorClickList = monitorClickList;

  Null get monitorBlackList => _monitorBlackList;

  set monitorBlackList(Null monitorBlackList) =>
      _monitorBlackList = monitorBlackList;

  Null get extMonitor => _extMonitor;

  set extMonitor(Null extMonitor) => _extMonitor = extMonitor;

  Null get extMonitorInfo => _extMonitorInfo;

  set extMonitorInfo(Null extMonitorInfo) => _extMonitorInfo = extMonitorInfo;

  Null get adSource => _adSource;

  set adSource(Null adSource) => _adSource = adSource;

  Null get adLocation => _adLocation;

  set adLocation(Null adLocation) => _adLocation = adLocation;

  String get encodeId => _encodeId;

  set encodeId(String encodeId) => _encodeId = encodeId;

  Null get program => _program;

  set program(Null program) => _program = program;

  Null get event => _event;

  set event(Null event) => _event = event;

  Null get video => _video;

  set video(Null video) => _video = video;

  Song get song => _song;

  set song(Song song) => _song = song;

  String get bannerId => _bannerId;

  set bannerId(String bannerId) => _bannerId = bannerId;

  Null get alg => _alg;

  set alg(Null alg) => _alg = alg;

  String get scm => _scm;

  set scm(String scm) => _scm = scm;

  String get requestId => _requestId;

  set requestId(String requestId) => _requestId = requestId;

  bool get showAdTag => _showAdTag;

  set showAdTag(bool showAdTag) => _showAdTag = showAdTag;

  Null get pid => _pid;

  set pid(Null pid) => _pid = pid;

  Null get showContext => _showContext;

  set showContext(Null showContext) => _showContext = showContext;

  Null get adDispatchJson => _adDispatchJson;

  set adDispatchJson(Null adDispatchJson) => _adDispatchJson = adDispatchJson;

  Banners.fromJson(Map<String, dynamic> json) {
    _pic = json['pic'];
    _targetId = json['targetId'];
    _adid = json['adid'];
    _targetType = json['targetType'];
    _titleColor = json['titleColor'];
    _typeTitle = json['typeTitle'];
    _url = json['url'];
    _adurlV2 = json['adurlV2'];
    _exclusive = json['exclusive'];
    _monitorImpress = json['monitorImpress'];
    _monitorClick = json['monitorClick'];
    _monitorType = json['monitorType'];
    if (json['monitorImpressList'] != null) {
      _monitorImpressList = new List<MonitorImpressList>();
      json['monitorImpressList'].forEach((v) {
        _monitorImpressList.add(new MonitorImpressList.fromJson(v));
      });
    }
    if (json['monitorClickList'] != null) {
      _monitorClickList = new List<MonitorClickList>();
      json['monitorClickList'].forEach((v) {
        _monitorClickList.add(new MonitorClickList.fromJson(v));
      });
    }
    _monitorBlackList = json['monitorBlackList'];
    _extMonitor = json['extMonitor'];
    _extMonitorInfo = json['extMonitorInfo'];
    _adSource = json['adSource'];
    _adLocation = json['adLocation'];
    _encodeId = json['encodeId'];
    _program = json['program'];
    _event = json['event'];
    _video = json['video'];
    _song = json['song'] != null ? new Song.fromJson(json['song']) : null;
    _bannerId = json['bannerId'];
    _alg = json['alg'];
    _scm = json['scm'];
    _requestId = json['requestId'];
    _showAdTag = json['showAdTag'];
    _pid = json['pid'];
    _showContext = json['showContext'];
    _adDispatchJson = json['adDispatchJson'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pic'] = this._pic;
    data['targetId'] = this._targetId;
    data['adid'] = this._adid;
    data['targetType'] = this._targetType;
    data['titleColor'] = this._titleColor;
    data['typeTitle'] = this._typeTitle;
    data['url'] = this._url;
    data['adurlV2'] = this._adurlV2;
    data['exclusive'] = this._exclusive;
    data['monitorImpress'] = this._monitorImpress;
    data['monitorClick'] = this._monitorClick;
    data['monitorType'] = this._monitorType;
    if (this._monitorImpressList != null) {
      data['monitorImpressList'] =
          this._monitorImpressList.map((v) => v.toJson()).toList();
    }
    if (this._monitorClickList != null) {
      data['monitorClickList'] =
          this._monitorClickList.map((v) => v.toJson()).toList();
    }
    data['monitorBlackList'] = this._monitorBlackList;
    data['extMonitor'] = this._extMonitor;
    data['extMonitorInfo'] = this._extMonitorInfo;
    data['adSource'] = this._adSource;
    data['adLocation'] = this._adLocation;
    data['encodeId'] = this._encodeId;
    data['program'] = this._program;
    data['event'] = this._event;
    data['video'] = this._video;
    if (this._song != null) {
      data['song'] = this._song.toJson();
    }
    data['bannerId'] = this._bannerId;
    data['alg'] = this._alg;
    data['scm'] = this._scm;
    data['requestId'] = this._requestId;
    data['showAdTag'] = this._showAdTag;
    data['pid'] = this._pid;
    data['showContext'] = this._showContext;
    data['adDispatchJson'] = this._adDispatchJson;
    return data;
  }
}

class MonitorImpressList {
  MonitorImpressList() {}

  MonitorImpressList.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class MonitorClickList {
  MonitorClickList() {}

  MonitorClickList.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class Song {
  String _name;
  int _id;
  int _pst;
  int _t;
  List<Ar> _ar;
  List<dynamic> _alia;
  int _pop;
  int _st;
  String _rt;
  int _fee;
  int _v;
  Null _crbt;
  String _cf;
  Al _al;
  int _dt;
  H _h;
  H _m;
  H _l;
  Null _a;
  String _cd;
  int _no;
  Null _rtUrl;
  int _ftype;
  List<dynamic> _rtUrls;
  int _djId;
  int _copyright;
  int _sId;
  int _mark;
  int _mst;
  Null _rurl;
  int _cp;
  int _rtype;
  int _mv;
  int _publishTime;
  Privilege _privilege;

  Song(
      {String name,
      int id,
      int pst,
      int t,
      List<Ar> ar,
      List<dynamic> alia,
      int pop,
      int st,
      String rt,
      int fee,
      int v,
      Null crbt,
      String cf,
      Al al,
      int dt,
      H h,
      H m,
      H l,
      Null a,
      String cd,
      int no,
      Null rtUrl,
      int ftype,
      List<dynamic> rtUrls,
      int djId,
      int copyright,
      int sId,
      int mark,
      int mst,
      Null rurl,
      int cp,
      int rtype,
      int mv,
      int publishTime,
      Privilege privilege}) {
    this._name = name;
    this._id = id;
    this._pst = pst;
    this._t = t;
    this._ar = ar;
    this._alia = alia;
    this._pop = pop;
    this._st = st;
    this._rt = rt;
    this._fee = fee;
    this._v = v;
    this._crbt = crbt;
    this._cf = cf;
    this._al = al;
    this._dt = dt;
    this._h = h;
    this._m = m;
    this._l = l;
    this._a = a;
    this._cd = cd;
    this._no = no;
    this._rtUrl = rtUrl;
    this._ftype = ftype;
    this._rtUrls = rtUrls;
    this._djId = djId;
    this._copyright = copyright;
    this._sId = sId;
    this._mark = mark;
    this._mst = mst;
    this._rurl = rurl;
    this._cp = cp;
    this._rtype = rtype;
    this._mv = mv;
    this._publishTime = publishTime;
    this._privilege = privilege;
  }

  String get name => _name;

  set name(String name) => _name = name;

  int get id => _id;

  set id(int id) => _id = id;

  int get pst => _pst;

  set pst(int pst) => _pst = pst;

  int get t => _t;

  set t(int t) => _t = t;

  List<Ar> get ar => _ar;

  set ar(List<Ar> ar) => _ar = ar;

  List<dynamic> get alia => _alia;

  set alia(List<dynamic> alia) => _alia = alia;

  int get pop => _pop;

  set pop(int pop) => _pop = pop;

  int get st => _st;

  set st(int st) => _st = st;

  String get rt => _rt;

  set rt(String rt) => _rt = rt;

  int get fee => _fee;

  set fee(int fee) => _fee = fee;

  int get v => _v;

  set v(int v) => _v = v;

  Null get crbt => _crbt;

  set crbt(Null crbt) => _crbt = crbt;

  String get cf => _cf;

  set cf(String cf) => _cf = cf;

  Al get al => _al;

  set al(Al al) => _al = al;

  int get dt => _dt;

  set dt(int dt) => _dt = dt;

  H get h => _h;

  set h(H h) => _h = h;

  H get m => _m;

  set m(H m) => _m = m;

  H get l => _l;

  set l(H l) => _l = l;

  Null get a => _a;

  set a(Null a) => _a = a;

  String get cd => _cd;

  set cd(String cd) => _cd = cd;

  int get no => _no;

  set no(int no) => _no = no;

  Null get rtUrl => _rtUrl;

  set rtUrl(Null rtUrl) => _rtUrl = rtUrl;

  int get ftype => _ftype;

  set ftype(int ftype) => _ftype = ftype;

  List<dynamic> get rtUrls => _rtUrls;

  set rtUrls(List<dynamic> rtUrls) => _rtUrls = rtUrls;

  int get djId => _djId;

  set djId(int djId) => _djId = djId;

  int get copyright => _copyright;

  set copyright(int copyright) => _copyright = copyright;

  int get sId => _sId;

  set sId(int sId) => _sId = sId;

  int get mark => _mark;

  set mark(int mark) => _mark = mark;

  int get mst => _mst;

  set mst(int mst) => _mst = mst;

  Null get rurl => _rurl;

  set rurl(Null rurl) => _rurl = rurl;

  int get cp => _cp;

  set cp(int cp) => _cp = cp;

  int get rtype => _rtype;

  set rtype(int rtype) => _rtype = rtype;

  int get mv => _mv;

  set mv(int mv) => _mv = mv;

  int get publishTime => _publishTime;

  set publishTime(int publishTime) => _publishTime = publishTime;

  Privilege get privilege => _privilege;

  set privilege(Privilege privilege) => _privilege = privilege;

  Song.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _id = json['id'];
    _pst = json['pst'];
    _t = json['t'];
    if (json['ar'] != null) {
      _ar = new List<Ar>();
      json['ar'].forEach((v) {
        _ar.add(new Ar.fromJson(v));
      });
    }
    if (json['alia'] != null) {
      _alia = new List<dynamic>();
      json['alia'].forEach((v) {});
    }
    _pop = json['pop'];
    _st = json['st'];
    _rt = json['rt'];
    _fee = json['fee'];
    _v = json['v'];
    _crbt = json['crbt'];
    _cf = json['cf'];
    _al = json['al'] != null ? new Al.fromJson(json['al']) : null;
    _dt = json['dt'];
    _h = json['h'] != null ? new H.fromJson(json['h']) : null;
    _m = json['m'] != null ? new H.fromJson(json['m']) : null;
    _l = json['l'] != null ? new H.fromJson(json['l']) : null;
    _a = json['a'];
    _cd = json['cd'];
    _no = json['no'];
    _rtUrl = json['rtUrl'];
    _ftype = json['ftype'];
    if (json['rtUrls'] != null) {
      _rtUrls = new List<dynamic>();
      json['rtUrls'].forEach((v) {});
    }
    _djId = json['djId'];
    _copyright = json['copyright'];
    _sId = json['s_id'];
    _mark = json['mark'];
    _mst = json['mst'];
    _rurl = json['rurl'];
    _cp = json['cp'];
    _rtype = json['rtype'];
    _mv = json['mv'];
    _publishTime = json['publishTime'];
    _privilege = json['privilege'] != null
        ? new Privilege.fromJson(json['privilege'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['id'] = this._id;
    data['pst'] = this._pst;
    data['t'] = this._t;
    if (this._ar != null) {
      data['ar'] = this._ar.map((v) => v.toJson()).toList();
    }
    if (this._alia != null) {
      data['alia'] = this._alia.map((v) => v.toJson()).toList();
    }
    data['pop'] = this._pop;
    data['st'] = this._st;
    data['rt'] = this._rt;
    data['fee'] = this._fee;
    data['v'] = this._v;
    data['crbt'] = this._crbt;
    data['cf'] = this._cf;
    if (this._al != null) {
      data['al'] = this._al.toJson();
    }
    data['dt'] = this._dt;
    if (this._h != null) {
      data['h'] = this._h.toJson();
    }
    if (this._m != null) {
      data['m'] = this._m.toJson();
    }
    if (this._l != null) {
      data['l'] = this._l.toJson();
    }
    data['a'] = this._a;
    data['cd'] = this._cd;
    data['no'] = this._no;
    data['rtUrl'] = this._rtUrl;
    data['ftype'] = this._ftype;
    if (this._rtUrls != null) {
      data['rtUrls'] = this._rtUrls.map((v) => v.toJson()).toList();
    }
    data['djId'] = this._djId;
    data['copyright'] = this._copyright;
    data['s_id'] = this._sId;
    data['mark'] = this._mark;
    data['mst'] = this._mst;
    data['rurl'] = this._rurl;
    data['cp'] = this._cp;
    data['rtype'] = this._rtype;
    data['mv'] = this._mv;
    data['publishTime'] = this._publishTime;
    if (this._privilege != null) {
      data['privilege'] = this._privilege.toJson();
    }
    return data;
  }
}

class Ar {
  int _id;
  String _name;
  List<dynamic> _tns;
  List<dynamic> _alias;

  Ar({int id, String name, List<dynamic> tns, List<dynamic> alias}) {
    this._id = id;
    this._name = name;
    this._tns = tns;
    this._alias = alias;
  }

  int get id => _id;

  set id(int id) => _id = id;

  String get name => _name;

  set name(String name) => _name = name;

  List<dynamic> get tns => _tns;

  set tns(List<dynamic> tns) => _tns = tns;

  List<dynamic> get alias => _alias;

  set alias(List<dynamic> alias) => _alias = alias;

  Ar.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    if (json['tns'] != null) {
      _tns = new List<dynamic>();
      json['tns'].forEach((v) {});
    }
    if (json['alias'] != null) {
      _alias = new List<dynamic>();
      json['alias'].forEach((v) {});
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    if (this._tns != null) {
      data['tns'] = this._tns.map((v) => v.toJson()).toList();
    }
    if (this._alias != null) {
      data['alias'] = this._alias.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Al {
  int _id;
  String _name;
  String _picUrl;
  List<dynamic> _tns;
  String _picStr;
  int _pic;

  Al(
      {int id,
      String name,
      String picUrl,
      List<dynamic> tns,
      String picStr,
      int pic}) {
    this._id = id;
    this._name = name;
    this._picUrl = picUrl;
    this._tns = tns;
    this._picStr = picStr;
    this._pic = pic;
  }

  int get id => _id;

  set id(int id) => _id = id;

  String get name => _name;

  set name(String name) => _name = name;

  String get picUrl => _picUrl;

  set picUrl(String picUrl) => _picUrl = picUrl;

  List<dynamic> get tns => _tns;

  set tns(List<dynamic> tns) => _tns = tns;

  String get picStr => _picStr;

  set picStr(String picStr) => _picStr = picStr;

  int get pic => _pic;

  set pic(int pic) => _pic = pic;

  Al.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _picUrl = json['picUrl'];
    if (json['tns'] != null) {
      _tns = new List<dynamic>();
      json['tns'].forEach((v) {});
    }
    _picStr = json['pic_str'];
    _pic = json['pic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['picUrl'] = this._picUrl;
    if (this._tns != null) {
      data['tns'] = this._tns.map((v) => v.toJson()).toList();
    }
    data['pic_str'] = this._picStr;
    data['pic'] = this._pic;
    return data;
  }
}

class H {
  int _br;
  int _fid;
  int _size;
  int _vd;

  H({int br, int fid, int size, int vd}) {
    this._br = br;
    this._fid = fid;
    this._size = size;
    this._vd = vd;
  }

  int get br => _br;

  set br(int br) => _br = br;

  int get fid => _fid;

  set fid(int fid) => _fid = fid;

  int get size => _size;

  set size(int size) => _size = size;

  int get vd => _vd;

  set vd(int vd) => _vd = vd;

  H.fromJson(Map<String, dynamic> json) {
    _br = json['br'];
    _fid = json['fid'];
    _size = json['size'];
    _vd = json['vd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['br'] = this._br;
    data['fid'] = this._fid;
    data['size'] = this._size;
    data['vd'] = this._vd;
    return data;
  }
}

class Privilege {
  int _id;
  int _fee;
  int _payed;
  int _st;
  int _pl;
  int _dl;
  int _sp;
  int _cp;
  int _subp;
  bool _cs;
  int _maxbr;
  int _fl;
  bool _toast;
  int _flag;
  bool _preSell;

  Privilege(
      {int id,
      int fee,
      int payed,
      int st,
      int pl,
      int dl,
      int sp,
      int cp,
      int subp,
      bool cs,
      int maxbr,
      int fl,
      bool toast,
      int flag,
      bool preSell}) {
    this._id = id;
    this._fee = fee;
    this._payed = payed;
    this._st = st;
    this._pl = pl;
    this._dl = dl;
    this._sp = sp;
    this._cp = cp;
    this._subp = subp;
    this._cs = cs;
    this._maxbr = maxbr;
    this._fl = fl;
    this._toast = toast;
    this._flag = flag;
    this._preSell = preSell;
  }

  int get id => _id;

  set id(int id) => _id = id;

  int get fee => _fee;

  set fee(int fee) => _fee = fee;

  int get payed => _payed;

  set payed(int payed) => _payed = payed;

  int get st => _st;

  set st(int st) => _st = st;

  int get pl => _pl;

  set pl(int pl) => _pl = pl;

  int get dl => _dl;

  set dl(int dl) => _dl = dl;

  int get sp => _sp;

  set sp(int sp) => _sp = sp;

  int get cp => _cp;

  set cp(int cp) => _cp = cp;

  int get subp => _subp;

  set subp(int subp) => _subp = subp;

  bool get cs => _cs;

  set cs(bool cs) => _cs = cs;

  int get maxbr => _maxbr;

  set maxbr(int maxbr) => _maxbr = maxbr;

  int get fl => _fl;

  set fl(int fl) => _fl = fl;

  bool get toast => _toast;

  set toast(bool toast) => _toast = toast;

  int get flag => _flag;

  set flag(int flag) => _flag = flag;

  bool get preSell => _preSell;

  set preSell(bool preSell) => _preSell = preSell;

  Privilege.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _fee = json['fee'];
    _payed = json['payed'];
    _st = json['st'];
    _pl = json['pl'];
    _dl = json['dl'];
    _sp = json['sp'];
    _cp = json['cp'];
    _subp = json['subp'];
    _cs = json['cs'];
    _maxbr = json['maxbr'];
    _fl = json['fl'];
    _toast = json['toast'];
    _flag = json['flag'];
    _preSell = json['preSell'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['fee'] = this._fee;
    data['payed'] = this._payed;
    data['st'] = this._st;
    data['pl'] = this._pl;
    data['dl'] = this._dl;
    data['sp'] = this._sp;
    data['cp'] = this._cp;
    data['subp'] = this._subp;
    data['cs'] = this._cs;
    data['maxbr'] = this._maxbr;
    data['fl'] = this._fl;
    data['toast'] = this._toast;
    data['flag'] = this._flag;
    data['preSell'] = this._preSell;
    return data;
  }
}
