raptor.defineClass("raptor.tracking.core.Tracker",function(e){var j=e.require("ebay.cookies"),m=function(a){var b=$trk=this;e.extend(b,b.config=a);b.image=$("<img/>").css("display","none");b.rover.sync&&b.image.attr("src",b.rover.sync);e.bind(b,document,"click",b.onBody);e.bind(b,document,"mousedown",b.onMouse);e.bind(b,document,"rover",b.onRover);e.bind(b,document,"track",b.onTrack);b.originalPSI=b.currentPSI=a.psi;$("body").bind("TRACKING_UPDATE_PSI",function(a,c){c&&c.psi&&(b.currentPSI=c.psi);
c&&(c.callback&&"function"==typeof c.callback)&&c.callback.call(b)});$("body").bind("ADD_LAYER_PSI",function(a,c){c&&(b.currentPSI+=c)});$("body").bind("CLEAR_LAYER_PSI",function(){b.currentPSI=b.originalPSI})};e.extend(m.prototype,{codes:"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxy-_!".split(""),sizes:{p:4,c:1,m:3,l:3},start:{p:1,c:5,m:6,l:9},target:function(a){return a.tagName?a:a.target},attrib:function(a,b){return a.getAttribute?a.getAttribute(b):null},valid:function(a,b){return b&&
0<b.indexOf(".ebay.")?a:null},trackable:function(a){a=a.tagName;return a.match(/^a$|area/i)?this.valid(a,a.href):a.match(/input/)&&a.type.match(/submit/i)&&a.form?this.valid(a,form.action):null},click:function(a){for(var a=this.target(a),b=null;a&&a.tagName;a=a.parentNode)if(b=b||this.trackable(a),this.attrib(a,"_sp"))return this.clickElement(a,b);this.pid&&this.track(this.pid)},clickElement:function(a,b){var d=this.attrib(a,"_sp");this.track(d.split(";")[0],b?this.attrib(b,"_l"):null)},track:function(a,
b){var d=a.split(".");a.match(/p\d+/)||d.push(this.pid);b&&d.push(b);for(var c=j.readCookie("ds2","sotr"),k=this.chars(c&&"b"==c.charAt(0)?c:"bzzzzzzzzzzz"),f=0,l=d.length;f<l;f++){var g=d[f].match(/([pcml])(\d+)/);if(null!=g)for(var h=g[1],c=this.sizes[h],h=this.start[h],g=this.chars(this.encode(g[2],c)),i=0;i<c;i++)k[h+i]=g[i]}f=0;l=k.length;for(c="";f<l;)c=c.concat(k[f++]);j.writeCookielet("ds2","sotr",c);e.log("debug","track",d.join("."),c)},chars:function(a){for(var b=0,d=a.length,c=[];b<d;)c.push(a.charAt(b++));
return c},encode:function(a,b){for(var d=this.codes,c="";64<=a;a=a/64|0)c=d[a%64]+c;c=(0<=a?d[a]:"")+c;return c.concat("zzzz").substring(0,b)},onBody:function(a){this.click(a)},onMouse:function(){j.writeCookielet("ebay","psi",this.currentPSI);e.log("debug","psi",this.currentPSI)},onTrack:function(a,b){var d=b.trksid;d&&this.track(d,b.trklid)},onRover:function(a,b){var d=b.imp,c=$uri(this.rover.uri+(d?this.rover.imp:this.rover.clk));d&&(c.params.imp=d);delete b.imp;c.params.trknvp=c.encodeParams(b);
c.params.ts=(new Date).valueOf().toString();$("<img/>").css("display","none").attr("src",c.getUrl(),c.params);e.log("debug",c.getUrl())}});return m});raptor.defineClass("raptor.tracking.idmap.IdMap",function(b){var d=b.require("ebay.cookies"),e=function(){};b.extend(e,{roverService:function(a){this.url=$uri(a||"");!this.url.protocol.match(/https/)&&!d.readCookie("dp1","idm")&&b.bind(this,window,"load",this.sendRequest)},sendRequest:function(){this.url.appendParam("cb","raptor.require('raptor.tracking.idmap.IdMap').handleResponse");$.ajax({url:this.url.getUrl(),dataType:"jsonp",jsonp:!1})},handleResponse:function(a){this.image=$("<img/>").css("display",
"none");for(var c=0,b=a.length-1;c<b;c++)a[c]&&this.image.attr("src",a[c]);b&&this.setCookieExpiration(a[b])},setCookieExpiration:function(a){"number"==typeof a&&0<a&&d.writeCookielet("dp1","idm","1",a/86400,"")}});return e});raptor.require("raptor.tracking.idmap.IdMap");