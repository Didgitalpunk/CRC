/*!
 * jQuery Raty - A Star Rating Plugin
 * ------------------------------------------------------------------
 *
 * jQuery Raty is a plugin that generates a customizable star rating.
 *
 * Licensed under The MIT License
 *
 * @version        2.5.2
 * @since          2010.06.11
 * @author         Washington Botelho
 * @documentation  wbotelhos.com/raty
 *
 * ------------------------------------------------------------------
 *
 *  <div id="star"></div>
 *
 *  $('#star').raty();
 *
 */
;(function(b){var a={init:function(c){return this.each(function(){a.destroy.call(this);this.opt=b.extend(true,{},b.fn.raty.defaults,c);var e=b(this),g=["number","readOnly","score","scoreName"];a._callback.call(this,g);if(this.opt.precision){a._adjustPrecision.call(this)}this.opt.number=a._between(this.opt.number,0,this.opt.numberMax);this.opt.path=this.opt.path||"";if(this.opt.path&&this.opt.path.slice(this.opt.path.length-1,this.opt.path.length)!=="/"){this.opt.path+="/"}this.stars=a._createStars.call(this);this.score=a._createScore.call(this);a._apply.call(this,this.opt.score);var f=this.opt.space?4:0,d=this.opt.width||(this.opt.number*this.opt.size+this.opt.number*f);if(this.opt.cancel){this.cancel=a._createCancel.call(this);d+=(this.opt.size+f)}if(this.opt.readOnly){a._lock.call(this)}else{e.css("cursor","pointer");a._binds.call(this)}if(this.opt.width!==false){e.css("width",d)}a._target.call(this,this.opt.score);e.data({settings:this.opt,raty:true})})},_adjustPrecision:function(){this.opt.targetType="score";this.opt.half=true},_apply:function(c){if(c&&c>0){c=a._between(c,0,this.opt.number);this.score.val(c)}a._fill.call(this,c);if(c){a._roundStars.call(this,c)}},_between:function(e,d,c){return Math.min(Math.max(parseFloat(e),d),c)},_binds:function(){if(this.cancel){a._bindCancel.call(this)}a._bindClick.call(this);a._bindOut.call(this);a._bindOver.call(this)},_bindCancel:function(){a._bindClickCancel.call(this);a._bindOutCancel.call(this);a._bindOverCancel.call(this)},_bindClick:function(){var c=this,d=b(c);c.stars.on("click.raty",function(e){c.score.val((c.opt.half||c.opt.precision)?d.data("score"):b(this).attr("alt"));if(c.opt.click){c.opt.click.call(c,parseFloat(c.score.val()),e)}})},_bindClickCancel:function(){var c=this;c.cancel.on("click.raty",function(d){c.score.removeAttr("value");if(c.opt.click){c.opt.click.call(c,null,d)}})},_bindOut:function(){var c=this;b(this).on("mouseleave.raty",function(d){var e=parseFloat(c.score.val())||undefined;a._apply.call(c,e);a._target.call(c,e,d);if(c.opt.mouseout){c.opt.mouseout.call(c,e,d)}})},_bindOutCancel:function(){var c=this;c.cancel.on("mouseleave.raty",function(d){b(this).attr("src",c.opt.path+c.opt.cancelOff);if(c.opt.mouseout){c.opt.mouseout.call(c,c.score.val()||null,d)}})},_bindOverCancel:function(){var c=this;c.cancel.on("mouseover.raty",function(d){b(this).attr("src",c.opt.path+c.opt.cancelOn);c.stars.removeClass();c.stars.addClass(c.opt.starOff);a._target.call(c,null,d);if(c.opt.mouseover){c.opt.mouseover.call(c,null)}})},_bindOver:function(){var c=this,d=b(c),e=c.opt.half?"mousemove.raty":"mouseover.raty";c.stars.on(e,function(g){var h=parseInt(b(this).attr("alt"),10);if(c.opt.half){var f=parseFloat((g.pageX-b(this).offset().left)/c.opt.size),j=(f>0.5)?1:0.5;h=h-1+j;a._fill.call(c,h);if(c.opt.precision){h=h-j+f}a._roundStars.call(c,h);d.data("score",h)}else{a._fill.call(c,h)}a._target.call(c,h,g);if(c.opt.mouseover){c.opt.mouseover.call(c,h,g)}})},_callback:function(c){for(i in c){if(typeof this.opt[c[i]]==="function"){this.opt[c[i]]=this.opt[c[i]].call(this)}}},_createCancel:function(){var e=b(this),c=this.opt.path+this.opt.cancelOff,d=b("<img />",{src:c,alt:"x",title:this.opt.cancelHint,"class":"raty-cancel"});if(this.opt.cancelPlace=="left"){e.prepend("&#160;").prepend(d)}else{e.append("&#160;").append(d)}return d},_createScore:function(){return b("<input />",{type:"hidden",name:this.opt.scoreName}).appendTo(this)},_createStars:function(){var e=b(this);for(var c=1;c<=this.opt.number;c++){var f=a._getHint.call(this,c),d=(this.opt.score&&this.opt.score>=c)?"starOn":"starOff";d=this.opt[d];b("<div />",{"class":d,alt:c}).appendTo(this);if(this.opt.space){e.append((c<this.opt.number)?"&#160;":"")}}return e.children("div")},_error:function(c){b(this).html(c);b.error(c)},_fill:function(d){var m=this,e=0;for(var f=1;f<=m.stars.length;f++){var g=m.stars.eq(f-1),l=m.opt.single?(f==d):(f<=d);if(m.opt.iconRange&&m.opt.iconRange.length>e){var j=m.opt.iconRange[e],h=j.on||m.opt.starOn,c=j.off||m.opt.starOff,k=l?h:c;if(f<=j.range){g.removeClass();g.addClass(k)}if(f==j.range){e++}}else{var k=l?"starOn":"starOff";g.removeClass();g.addClass(k)}}},_getHint:function(d){var c=this.opt.hints[d-1];return(c==="")?"":(c||d)},_lock:function(){var d=parseInt(this.score.val(),10),c=d?a._getHint.call(this,d):this.opt.noRatedMsg;b(this).data("readonly",true).css("cursor","").attr("title",c);this.score.attr("readonly","readonly");this.stars.attr("title",c);if(this.cancel){this.cancel.hide()}},_roundStars:function(e){var d=(e-Math.floor(e)).toFixed(2);if(d>this.opt.round.down){var c="starOn";if(this.opt.halfShow&&d<this.opt.round.up){c="starHalf"}else{if(d<this.opt.round.full){c="starOff"}}this.stars.eq(Math.ceil(e)-1).attr("src",this.opt.path+this.opt[c])}},_target:function(f,d){if(this.opt.target){var e=b(this.opt.target);if(e.length===0){a._error.call(this,"Target selector invalid or missing!")}if(this.opt.targetFormat.indexOf("{score}")<0){a._error.call(this,'Template "{score}" missing!')}var c=d&&d.type=="mouseover";if(f===undefined){f=this.opt.targetText}else{if(f===null){f=c?this.opt.cancelHint:this.opt.targetText}else{if(this.opt.targetType=="hint"){f=a._getHint.call(this,Math.ceil(f))}else{if(this.opt.precision){f=parseFloat(f).toFixed(1)}}if(!c&&!this.opt.targetKeep){f=this.opt.targetText}}}if(f){f=this.opt.targetFormat.toString().replace("{score}",f)}if(e.is(":input")){e.val(f)}else{e.html(f)}}},_unlock:function(){b(this).data("readonly",false).css("cursor","pointer").removeAttr("title");this.score.removeAttr("readonly","readonly");for(var c=0;c<this.opt.number;c++){this.stars.eq(c).attr("title",a._getHint.call(this,c+1))}if(this.cancel){this.cancel.css("display","")}},cancel:function(c){return this.each(function(){if(b(this).data("readonly")!==true){a[c?"click":"score"].call(this,null);this.score.removeAttr("value")}})},click:function(c){return b(this).each(function(){if(b(this).data("readonly")!==true){a._apply.call(this,c);if(!this.opt.click){a._error.call(this,'You must add the "click: function(score, evt) { }" callback.')}this.opt.click.call(this,c,{type:"click"});a._target.call(this,c)}})},destroy:function(){return b(this).each(function(){var d=b(this),c=d.data("raw");if(c){d.off(".raty").empty().css({cursor:c.style.cursor,width:c.style.width}).removeData("readonly")}else{d.data("raw",d.clone()[0])}})},getScore:function(){var d=[],c;b(this).each(function(){c=this.score.val();d.push(c?parseFloat(c):undefined)});return(d.length>1)?d:d[0]},readOnly:function(c){return this.each(function(){var d=b(this);if(d.data("readonly")!==c){if(c){d.off(".raty").children("div").off(".raty");a._lock.call(this)}else{a._binds.call(this);a._unlock.call(this)}d.data("readonly",c)}})},reload:function(){return a.set.call(this,{})},score:function(){return arguments.length?a.setScore.apply(this,arguments):a.getScore.call(this)},set:function(c){return this.each(function(){var e=b(this),f=e.data("settings"),d=b.extend({},f,c);e.raty(d)})},setScore:function(c){return b(this).each(function(){if(b(this).data("readonly")!==true){a._apply.call(this,c);a._target.call(this,c)}})}};b.fn.raty=function(c){if(a[c]){return a[c].apply(this,Array.prototype.slice.call(arguments,1))}else{if(typeof c==="object"||!c){return a.init.apply(this,arguments)}else{b.error("Method "+c+" does not exist!")}}};b.fn.raty.defaults={cancel:false,cancelHint:"Cancel this rating!",cancelOff:"cancel-off.png",cancelOn:"cancel-on.png",cancelPlace:"left",click:undefined,half:false,halfShow:true,hints:["bad","poor","regular","good","gorgeous"],iconRange:undefined,mouseout:undefined,mouseover:undefined,noRatedMsg:"Not rated yet!",number:5,numberMax:20,path:"",precision:false,readOnly:false,round:{down:0.25,full:0.6,up:0.76},score:undefined,scoreName:"score",single:false,size:16,space:false,starHalf:"star-half.png",starOff:"starOff",starOn:"starOn",target:undefined,targetFormat:"{score}",targetKeep:false,targetText:"",targetType:"hint",width:"inherit"}})(jQuery);var sc={"16":"at","15":"au","23":"befr","123":"benl","2":"ca","193":"ch","223":"cn","77":"de","186":"es","71":"fr","101":"it","146":"nl","3":"uk","0":"","203":"in","205":"ie","212":"pl","201":"hk","216":"sg","1":"","100":"","20":"","207":"my","211":"ph","210":"cafr","200":"gr","197":"cz","213":"pt","198":"dk","199":"fi","202":"hu","209":"no","215":"ru"};var pd={"16":"ebay.at","15":"ebay.com.au","23":"befr.ebay.be","123":"benl.ebay.be","2":"ebay.ca","193":"ebay.ch","223":"ebay.com.cn","77":"ebay.de","186":"ebay.es","71":"ebay.fr","101":"ebay.it","146":"ebay.nl","3":"ebay.co.uk","0":"ebay.com","203":"ebay.in","205":"ebay.ie","212":"ebay.pl","201":"ebay.com.hk","216":"ebay.com.sg","1":"ebay.com","100":"ebay.com","20":"ebay.com","207":"ebay.com.my","211":"ebay.ph","210":"cafr.ebay.ca","200":"ebay.gr","197":"ebay.cz","213":"ebay.pt","198":"ebay.dk","199":"ebay.fi","202":"ebay.hu","209":"ebay.no","215":"ebay.ru"};function cu(){this.res="&res="+screen.width+"x"+screen.height;this.scd="&scd="+screen.colorDepth;this.st=new Date();this.tz="&tz="+-(this.st.getTimezoneOffset()/60);this.ins="";var a=0;this.is;this.url="";this.bw="";this.bh="";this.browser="";this.getRefUrl=function(){if(document.referrer!=""){return"&ref="+encodeURIComponent(document.referrer)}else{return""}};this.gBW=function(){if(this.bw==""){if(typeof(window.innerWidth)=="number"){this.bw=window.innerWidth}else{if(document.documentElement&&(document.documentElement.clientWidth||document.documentElement.clientHeight)){this.bw=document.documentElement.clientWidth}else{if(document.body&&(document.body.clientWidth||document.body.clientHeight)){this.bw=document.body.clientWidth}}}}return(this.bw!=null&&this.bw!="")?"&bw="+this.bw:""};this.gBH=function(){if(this.bh==""){if(typeof(window.innerWidth)=="number"){this.bh=window.innerHeight}else{if(document.documentElement&&(document.documentElement.clientWidth||document.documentElement.clientHeight)){this.bh=document.documentElement.clientHeight}else{if(document.body&&(document.body.clientWidth||document.body.clientHeight)){this.bh=document.body.clientHeight}}}}return(this.bh!=null&&this.bh!="")?"&bh="+this.bh:""};String.prototype.startsWith=function(b){return(this.match("^"+b)==b)};this.gRIU=function(b,c){return this.ru(b,c)+"roverimp/0/0/14?"};this.gRCU=function(b,c){return this.ru(b,c)+"roverclk/0/0/14?"};this.ru=function(b,d){if(this.url==""){try{if((b!="")){this.url=(document.location.protocol=="https:"?"https":"http")+"://rover.";if(d.startsWith("fp")){if(sc[b]==""){this.url+=d+".qa.ebay.com/"}else{this.url+=sc[b]+"."+d+".qa.ebay.com/"}}else{if(d.startsWith("qa")){if(sc[b]==""){this.url+="qa.ebay.com/"}else{this.url+=sc[b]+".paradise.qa.ebay.com/"}}else{this.url+=pd[b]+"/"}}}}catch(c){return""}}return this.url};this.gSS=function(b){if((b!=null)&&(b!="")&&(b>0)){return"&ctb="+((new Date().getTime())-b)}else{return""}};this.gCB=function(){return"&mpt="+(new Date().getTime())};this.iAS=function(b){if(this.is==null){try{this.is=(CGuidHash.isInSampling(b))?true:false}catch(c){this.is=true}}return this.is};this.sT=function(l,c,g,b){g.src=c;var k=(new Date()).getTime();var j=(k-b)/1000;if(j==0){j=0.001}var f=Math.floor(((l*8)/(j))/1024);a=(f/1024).toFixed(2);if(a!=null&&a!=0){this.ins="&cc="+a;try{TaaSDynamicObj.writeCookie("cc",a)}catch(h){}}};this.gIS=function(){try{var h=null;try{h=TaaSDynamicObj.readCookie("cc")}catch(g){}if(h==undefined||h==null||h==""){var b=(new Date()).getTime();var c="https://pics.ebaystatic.com/aw/pics/sitespeed/testimg30kb.gif?random="+Math.random();var f=29735;var d=new Image();d.onload=this.sT(f,c,d,b)}else{this.ins="&cc="+h}}catch(g){}};this.getBrowser=function(){if(this.browser==""){var c=navigator.userAgent?navigator.userAgent.toLowerCase().replace(/-/g,""):"";var d=["chrome","firefox","safari","msie","opera"];hmb="unknown";for(i=0;i<d.length;i+=1){if(c.indexOf(d[i])!==-1){this.browser=d[i];break}}}};this.getBrowser()}var util=new cu();var ubt="1";var appId="";var s="0";var e="";var sR=100;var pi="";var mi="";var fi="";var rIU="";var st="";var isLV=0;var np=new Array();var vp=new Array();var ei=true;var ehm=false;isUBT=function(){return"UBT="+this.ubt};sAI=function(a){if(a!=null&&a!=""){this.appId="&ai="+a}};sSI=function(a){if(a!=null&&a!=""){this.s=a}};gSI=function(){return this.s};sE=function(a){if(a!=null&&a!=""){if(a.startsWith("fp")||a.startsWith("qa")||a.startsWith("prod")){this.e=a}else{this.e=""}}else{this.e="prod"}};gE=function(){return this.e};sPI=function(a){if(a!=null&&a!=""){this.pi=a}};gPI=function(){if(this.pi!=""){return"&cp="+this.pi}else{return this.pi}};sMI=function(a){if((a!=null)&&(a!="")){this.mi="&mi="+a}};sFI=function(a){if((a!=null)&&(a!="")){this.fi="&ifId="+a}};sSR=function(a){if((a!=null)&&(a!="")){if((a>=0)){this.sR=a}else{this.sR=0}}};gSR=function(){return this.sR};sST=function(a){this.st=a};sLV=function(a){if(a!=null&&a!=""&&a==1){this.isLV="&lv="+a}else{this.isLV=""}};gLV=function(){return this.isLV};addNvp=function(b){for(var a in b){this.np[np.length]=a;this.vp[vp.length]=b[a]}};getNvp=function(){var b="";if(this.np.length>0){for(var a=0;a<this.np.length;a++){b+="&"+this.np[a]+"="+encodeURIComponent(vp[a])}}return b};sEI=function(a){if(a===false||a===true){this.ei=a}};isEI=function(){if(this.ei==undefined){return true}else{return this.ei}};sEHM=function(a){if(a===false||a===true){this.ehm=a}};isEHM=function(){if(this.ehm==undefined){return false}else{return this.ehm}};vt=function(){return(util.iAS(sR)&&(sc[gSI()]!=undefined)&&(gE()!=""))};gUBTpi=function(){return"&imp=2051367"};tI=function(){if(vt()&&isEI()){rIU=util.gRIU(gSI(),gE())+isUBT()+gPI()+appId+mi+fi+isLV+util.gBH()+util.gBW()+util.getRefUrl()+util.gSS(st)+util.ins+util.res+util.tz+util.scd+getNvp()+util.gCB()+gUBTpi();var a=new Image();a.src=rIU}};function TQ(){var a=0;this.getLength=function(b){return(b.length-a)};this.isEmpty=function(b){return(b.length==0)};this.pop=function(c,g){var b=c.getLength(g);var d=0;for(d=0;d<b;d++){var f=g[d];if(f[0]=="tI"){tI()}else{if(f[0]=="tC"){tLC(f[1],f[2])}else{if(f[0]=="tM"){tMO(f[1],f[2],f[3])}else{if(f[0]=="tE"){tE(f[1],f[2],f[3],f[4],f[5])}else{sAI(f[0]);sPI(f[1]);sST(f[2]);sSR(f[3]);sMI(f[4]);sFI(f[5]);addNvp(f[6]);sE(f[7]);sSI(f[8]);sLV(f[9]);sEI(f[10]);sEHM(f[11])}}}}}g.splice(0,b)}}var q=window._tq;q.push(["tI"]);_taq=new TQ();_taq.pop(_taq,q);var hmD;var hmb;var svo=0;var sho=0;var ht;var bw;var bh;var cU=util.gRCU(gSI(),gE());var valueSeparator="&";var hmA=new Array();var mhmA=new Array();var cA=new Array();var aA=new Array();var lA=new Array();var ovA=new Array();var oiA=new Array();var ft=new Array();var ts=new Array();var lfe="";var tf="";if(vt()){pCO();if(isEHM()){iHM()}fT();if(util.browser=="chrome"||util.browser=="safari"){window.onbeforeunload=gCU}else{window.onunload=gCU}}function aE(g,f,b,h){var a=h?true:false;if(g.addEventListener){g.addEventListener(f,b,a);return true}else{if(g.attachEvent){var d=g.attachEvent("on"+f,b);return d}else{g["on"+f]=b}}}function iHM(){try{aE(document,"mousedown",cCH,false);var b=document.getElementsByTagName("img");for(i=0;i<b.length;i+=1){aE(b[i],"mouseover",cMH,false)}var a=document.getElementsByTagName("a");for(i=0;i<a.length;i+=1){aE(a[i],"mouseover",cMH,false)}aE(document,"scroll",cSH,false);hmD=document.documentElement&&document.documentElement.clientHeight!==0?document.documentElement:document.body;bw=util.gBW();bh=util.gBH()}catch(c){return true}}function pCO(){var c;var a;try{if(cO!==undefined&&cO!==null){for(i=0;i<cO.length;i++){c=cO[i];a=c.split("|");if(a.length==3&&a[0]!=undefined&&a[0]!=""&&a[1]!=undefined&&a[1]!=""&&a[2]!=undefined&&a[2]!=""){var b=document.getElementById(a[0]);if(b!=undefined&&b!=null){var d=function(f,g){return function(){q.push(["tC",f,g])}};b.onclick=d(a[1],a[2])}}}}}catch(b){return true}}function cCH(b){var a=cv(b);if(a!=true){hmA.push(a)}}function cMH(b){var a=cv(b);if(a!=true){mhmA.push(a)}}function cv(d){try{var l=d.clientX;var g=d.clientY;var k=window.pageXOffset===undefined?hmD.scrollLeft:window.pageXOffset;var j=window.pageYOffset===undefined?hmD.scrollTop:window.pageYOffset;var m=Math.max(hmD.scrollWidth,hmD.offsetWidth,bw);var a=Math.max(hmD.scrollHeight,hmD.offsetHeight,bh);if(l>bw||g>bh){return true}l+=k;g+=j;if(l<0||g<0||l>m||g>a){return true}var b=new Date();if(b.getTime()-ht<1000){return true}ht=b.getTime();return l+"|"+g}catch(c){return true}}function cSH(){var a=hmD.scrollTop;if(a>svo){svo=a}var b=hmD.scrollLeft;if(b>sho){sho=b}return true}function gCU(){_taq.pop(_taq,q);if(hmA.length!=0){cU=cU+"&cxy=";for(var a=0;a<hmA.length;a++){cU=cU+hmA[a];if(a!=hmA.length-1){cU=cU+","}}}if(mhmA.length!=0){cU=cU+"&mxy=";for(var a=0;a<mhmA.length;a++){cU=cU+mhmA[a];if(a!=mhmA.length-1){cU=cU+","}}}var c="";if(cA.length!=0){cU=cU+"&acat=";for(var a=0;a<cA.length;a++){c=c+cA[a];if(a!=cA.length-1){c=c+"|"}}cU=cU+encodeURIComponent(c)}c="";if(aA.length!=0){cU=cU+"&an=";for(var a=0;a<aA.length;a++){c=c+aA[a];if(a!=aA.length-1){c=c+"|"}}cU=cU+encodeURIComponent(c)}c="";if(lA.length!=0){cU=cU+"&av=";for(var a=0;a<lA.length;a++){c=c+lA[a];if(ovA[a]!=null&&ovA[a]!=""){c=c+","+ovA[a]}if(a!=lA.length-1){c=c+"|"}}cU=cU+encodeURIComponent(c)}c="";if(oiA.length!=0){cU=cU+"&ani=";for(var a=0;a<oiA.length;a++){c=c+oiA[a];if(a!=oiA.length-1){c=c+"|"}}cU=cU+encodeURIComponent(c)}c="";if(svo!=0){cU=cU+"&svo="+svo}if(sho!=0){cU=cU+"&sho="+sho}if(bw!=undefined&&bw!=""){cU=cU+bw}if(bh!=undefined&&bh!=""){cU=cU+bh}for(var b in ts){tf=tf+b+"|"+ts[b]+";"}if(tf!=""){tf=tf.substring(0,tf.length-1);cU=cU+"&tsf="+encodeURIComponent(tf)}if(lfe!=""){cU=cU+"&lfe="+encodeURIComponent(lfe)}cU=cU+"&"+isUBT()+gPI()+gLV();if(util.browser=="safari"||util.browser=="chrome"){fURLS()}else{fURL()}}function fURLS(){var a=new Image();a.src=cU}function fURL(){var a=false;if(window.XDomainRequest){a=new window.XDomainRequest()}if(window.XMLHttpRequest&&a==false){a=new window.XMLHttpRequest()}else{a=new ActiveXObject("Microsoft.XMLHTTP")}a.open("POST",cU,true);a.send("")}function tLC(a,b){if(util.is&&a!=null&&a.length>0&&b!=null&&b.length>0){tE("Clk",a,b,"",0)}}function tMO(b,a,c){if(b.ae==null){cMO(a,c);b.ae=true}}function cMO(a,b){if(util.is&&a!=null&&a.length>0&&b!=null&&b.length>0){tE("Mo",a,b,"",0)}}function tE(h,d,b,f,g){if(util.is&&vI(h,d,b)){cA.push(h.substring(0,25));aA.push(d.substring(0,25));lA.push(b.substring(0,100));ovA.push(f.substring(0,25));if(g==0||g==1){oiA.push(g)}else{oiA.push(0)}}}function vI(g,d,b){var f=false;if(g!=null&&g.length>0&&d!=null&&d.length>0&&b!=null&&b.length>0){f=true}return f}function aF(c){if(c===undefined){var c=window.event}var b=c.target||c.srcElement;var a=gFID(b);ft[a+":"+b.name]=new Date().getTime()}function gFID(d){var b;var c;var a=0;if(d!==undefined){while(a<10){b=d.parent||d.parentNode;if(b!==undefined&&b.tagName=="FORM"){break}a++}}if(b.id!==undefined&&b.id!=""){c=b.id}else{if(b.name!==undefined&&b.name!=""){c=b.name}}return c}function aB(d){if(d===undefined){var d=window.event}var c=d.target||d.srcElement;var f=gFID(c);lfe=f+":"+c.name;var b=ft[lfe];var a=new Date().getTime()-b;if(ts[lfe]!==undefined&&ts[lfe]!=null){ts[lfe]=ts[lfe]+a}else{ts[lfe]=a}}function fT(){var c=document.getElementsByTagName("form");if(c!==undefined){for(i=0;i<c.length;i++){if(c[i].className=="formTrack"){var b=c[i].elements;for(y=0;y<b.length;y++){var a=b[y];if(a.type!="submit"){aE(a,"focus",aF,false);aE(a,"blur",aB,false)}}}}}};/*! @JsDoNotOptimize */
(function(a){window.mt.ebayUIBubble=function(){var d={position:"absolute",width:250,ariaDesc:"This is bubble help",autoClose:true,closeIcon:false,fixed:true,buttons:[],offset:null,feedback:false},k=18,e=18,c="top",j="bottom",b="left",h="right",f="bottomrightarrow",m="toprightarrow",l={idx:1,html:'<div class="oly-h"></div><a href="javascript:;" class="oly-c" data-dismiss="olay" title="close translation layer"></a><div class="oly-b"></div><div class="oly-f"><div class="f-desc"></div><div class="f-rating"></div></div>'},g={};var i=function(q){var o=this,p=a.browser,n="oly_"+l.idx++;o.isIE78=p.msie&&(parseInt(p.version)<9);o.options=a.extend({},d,q||{});o.fixed=o.options.position==="absolute"?false:true;o.elem=a('<div id="'+n+'" class="oly bub oly-sm" tabindex="-1" role="alertdialog">'+l.html+"</div>").appendTo(document.body);o.elem.prepend('<div id="'+n+'-ariadesc" class="offscreen" />');o.elem.hide();o.title=a(".oly-h",o.elem);o.body=a(".oly-b",o.elem);o.footer=a(".oly-f",o.elem);if(mt.mtconfig.control.enableMTHoverFeedbackSystem&&mt.mtconfig.control.enableMTHoverFeedbackSystem===true){o.options.feedback=true}else{a(o.footer).remove()}o.ariaDesc=a("#"+n+"-ariadesc");o.elem.attr({"aria-describedby":n+"-ariadesc"});o.elem.wrap("<div class='mt'/>");o.mouseInsideLink=false;o.mouseInsidePanel=false;o.hidePanelTimer=null;o.showPanelTimer=null;o.delegate();if(!o.isIE78){o.elem.prepend('<div class="oly-arr" />')}else{k=0;e=0}};i.style=['<style type="text/css">',".mt .bub .oly-h{border:0;padding:0}",".mt .bub .oly-h a.oly-c{right:-15px;top:5px}",".mt .bub.oly-sm .oly-b{color:#333;font-size:.9em;font-family:Arial,Helvetica;line-height: 15px;word-wrap: break-word}",".mt .bub.oly-sm .oly-c{right:15px;top:15px}",".mt .oly.bub{overflow:visible}",'.mt .oly-sm .oly-arr{content:"";height:13px;width:13px;position:absolute;border-left:1px solid #ddd;border-bottom:1px solid #ddd;z-index:1;background-color:#FFF}',".mt .oly-sm.right .oly-arr{transform:rotate(45deg);-ms-transform:rotate(45deg);-webkit-transform:rotate(45deg);top:18px;left:-7px}",".mt .oly-sm.bottom .oly-arr{transform:rotate(135deg);-ms-transform:rotate(135deg);-webkit-transform:rotate(135deg);top:-7px;left:18px}",".mt .oly-sm.bottomrightarrow .oly-arr{transform:rotate(135deg);-ms-transform:rotate(135deg);-webkit-transform:rotate(135deg);top:-7px;right:18px}",".mt .oly-sm.left .oly-arr{transform:rotate(225deg);-ms-transform:rotate(225deg);-webkit-transform:rotate(225deg);top:18px;right:-7px;-moz-box-shadow:-10px 5px 6px rgba(0,0,0,.25);-webkit-box-shadow:-10px 5px 6px rgba(0,0,0,.25);box-shadow:-10px 5px 6px rgba(0,0,0,.25)}",".mt .oly-sm.top .oly-arr{transform:rotate(-45deg);-ms-transform:rotate(-45deg);-webkit-transform:rotate(-45deg);bottom:-7px;left:18px;-moz-box-shadow:-5px 5px 8px rgba(0,0,0,.3);-webkit-box-shadow:-5px 5px 8px rgba(0,0,0,.3);box-shadow:-5px 5px 8px rgba(0,0,0,.3)}",".mt .oly-sm.toprightarrow .oly-arr{transform:rotate(-45deg);-ms-transform:rotate(-45deg);-webkit-transform:rotate(-45deg);bottom:-7px;right:18px;-moz-box-shadow:-5px 5px 8px rgba(0,0,0,.3);-webkit-box-shadow:-5px 5px 8px rgba(0,0,0,.3);box-shadow:-5px 5px 8px rgba(0,0,0,.3)}",".mt .drag{cursor:move}",".mt .oly{position:absolute;padding: 12px 20px 15px;overflow:hidden;background-color:#fff;border:1px solid #ddd;z-index:2001;-webkit-border-radius:3px;-moz-border-radius:3px;border-radius:3px;-moz-box-shadow:6px 6px 10px rgba(0,0,0,.35);-webkit-box-shadow:6px 6px 10px rgba(0,0,0,.35);box-shadow:6px 6px 10px rgba(0,0,0,.35);-webkit-background-clip:padding-box;-moz-background-clip:padding-box;background-clip:padding-box;outline-style:none}",".mt .oly-m{position:fixed;right:0;top:0;bottom:0;left:0;z-index:2000;background-color:#000}",".mt .oly-h{position:relative;margin-bottom:5px}",".mt .oly-h h3{margin-bottom:10px;font: 12px trebuchet ms;color:#777;line-height: 0px;padding: 0 0 5px;margin-top:11px}",'.mt .oly a.oly-c{position:absolute;right:20px;top:25px;background:url("https://pics.ebaystatic.com/aw/pics/cmp/ds3/sprds3_17.png") no-repeat -340px -127px;width:13px;height:13px}',".mt .oly a.oly-c:hover{background-position:-356px -127px}",".mt .oly-f{text-align:left;padding-top:7px;margin-bottom:0;margin-top:11px;border-top:1px solid #d4d4d4;}",'.mt .oly-f:before,.oly-f:after{display:table;content:""}',".mt .oly-f:after{clear:both}",".mt .oly-f .btn{margin-left:5px;margin-bottom:0}",".mt .oly-f .closeLink{margin-left:28px;font-weight:700;font-size:.9em}",".mt .oly-f .f-desc {font-size:10px;font-family:Veranda,Helvetica;line-height: 15px; color:#999; word-wrap: break-word; float: left; width: 100px}",".mt .oly-f .f-rating {float: right; width : 110px}",'.mt .oly-f .f-rating .starOn{background:url("https://pics.ebaystatic.com/aw/pics/cmp/ds3/sprds3_17.png") no-repeat -232px -349px; width: 15px; height: 15px; float: left; margin-right: 7px;}','.mt .oly-f .f-rating .starOff{background:url("https://pics.ebaystatic.com/aw/pics/cmp/ds3/sprds3_17.png") no-repeat -249px -349px; width: 15px; height: 15px; float: left; margin-right:7px;}',".mt .offscreen{position:absolute;left:-300em;top:-300em}","</style>"].join("");a("body").append(i.style);i.prototype={getOffset:function(){var n=this,q=n.elem,o=n.getAnchorDetails(),p=n.getPlacement(o),t={},r,s;q.removeClass("top left bottom right bottomrightarrow toprightarrow").addClass(p);r=o.left+(n.tarEvent.pageX-o.left),s=o.top;switch(p){case j:t={top:s+o.height+10,left:r-5};break;case c:t={top:s-q.outerHeight()-10,left:(r-5)};break;case m:t={top:s-q.outerHeight()-10,left:(r-q.outerWidth()+10)};break;case f:t={top:s+o.height+10,left:(r-q.outerWidth()+5)};break;case h:t={top:s-e,left:(r+o.width+k/2)};break;case b:t={top:s-e,left:(r-q.outerWidth()-k)};break}return t},getAnchorDetails:function(){var n=this,o=n.anchor[0];return a.extend({},(typeof o.getBoundingClientRect=="function")?o.getBoundingClientRect():{width:o.offsetWidth,height:o.offsetHeight},n.anchor.offset())},getPlacement:function(w){var z=this,n=z.options;if(n.placement){return n.placement.toLowerCase()}var y=a(window),q=z.elem,r=y.width(),u=y.height(),t=q.outerWidth(),p=q.outerHeight(),o=y.scrollTop(),s=y.scrollLeft(),v=(u-(z.tarEvent.pageY-o)),x=(r-(z.tarEvent.pageX-s));if(v>p+20){if(x>t){return j}else{if(r>t){return f}else{return j}}}else{if(x>t){return c}else{if(r>t){return m}else{return c}}}return j},showBubble:function(n){this.show(a(n.currentTarget),n);return false},show:function(w,u){var z=this,r,x,y,o,s;z.anchor=w;z.tarEvent=mt.MTHover.anchorEventObj||u;if(mt.MTHover.anchorEventObj){mt.MTHover.anchorEventObj=null}var v=w.data("mtdes");if(!v){return}if(z.isShown){}x=mt.mtconfig.titleCurrentTranslationState=="original"?"translated":"original";y=mt.mtconfig.tracking.desLang||"";o=mt.mtconfig.tracking.uc||"";if(mt.mtconfig&&mt.mtconfig.cnt){r=mt.mtconfig.cnt[y+"_"+x]||mt.mtconfig.cnt[o+"_"+x]}var t={title:r,content:v},n=z.options,q=z.elem,p=q.attr("id")+"-title";z.triggerId=t.triggerId;z.isShown=true;t.title?z.title.html('<h3 id="'+p+'">'+t.title+"</h3>"):"";t.content?z.body.html(t.content):"";q.width(n.width);z.ariaDesc.html(n.ariaDesc);z.setHeader(t.title,p);q.show();s=mt.mtconfig.cnt[y+"_ratingdesc"]||mt.mtconfig.cnt[o+"_ratingdesc"];z.setFooter({desc:s});z.setPosition();a(document).not(z.elem).on("click",a.proxy(z.onDocClick,z));a(window).on("resize",a.proxy(z.setPosition,z))},setOptions:function(n){a.extend(this.options,n)},setPosition:function(){var n=this,o=n.options.offset||n.getOffset();n.elem.css({top:o.top,left:o.left,position:n.options.position==="absolute"?"absolute":"fixed"})},setHeader:function(r,q){var n=this,p=n.options,o=n.elem;if(!p.closeIcon){a(".oly-c",o).hide()}if(r&&r.length>0){o.attr({"aria-labelledby":q})}else{n.title.hide()}},onDocClick:function(p){var n=this,o=n.options,q=a(p.target),r=n.elem.attr("id"),s=n.triggerId?n.triggerId:(n.anchor?n.anchor.attr("id"):null);if(!n.isShown||q.attr("id")===s||q.attr("id")===r||q.parents("#"+r).length>0){return}if(o.autoClose){n.hide()}},hide:function(){var n=this;if(!n.isShown){return}n.isShown=false;n.hideOlay()},hideOlay:function(){var n=this;n.elem.hide()},delegate:function(){var n=this,o=n.options;if(o.selector){a(document).on("mouseenter mouseleave",o.selector,a.proxy(n.anchorHoverHandler,n))}n.elem.mouseenter(function(){n.mouseInsidePanel=true;n.startTime=new Date().getTime()});n.elem.mouseleave(function(){n.mouseInsidePanel=false;n.delayHidePanel()})},setFooter:function(s){var o=this,n=o.options.feedback;if(!n||n===false){return}var t=a(".f-desc",o.footer);if(s.desc&&t){a(t).text(s.desc)}var q=mt.mtconfig.mtdomainhandler({target:o.anchor});var p=g[""+q.itemId];g.current=false;var r=function(u,v){return function(x,w){u.current=true;u[""+v]=x}}(g,q.itemId);a(".f-rating",o.footer).raty({click:r,score:p})},anchorHoverHandler:function(o){var n=this,p=a(o.currentTarget);if(p.attr("title")){p.attr("title","")}if(p.css("cursor")!="pointer"){p.css({cursor:"pointer"})}if(o.type=="mouseenter"){if(n.currentFocusedElement&&(p.get(0)!=n.currentFocusedElement.get(0))){n.hide();n.mouseInsideLink=true;n.delayShowPanel(o)}n.currentFocusedElement=p;n.mouseInsideLink=true;if(n.showPanelTimer){clearTimeout(n.showPanelTimer);n.showPanelTimer=null}if(n.isShown){return}n.delayShowPanel(o)}else{n.mouseInsideLink=false;if(n.mouseInsidePanel){return}n.delayHidePanel()}},delayShowPanel:function(p){var o=this,n=a(p.currentTarget);o.showPanelTimer=setTimeout(function(){if(o.mouseInsideLink||o.mouseInsidePanel){o.showBubble(p)}o.startTime=new Date().getTime();o.showPanelTimer=null},(mt.mtconfig.control.hoverDelay||500))},delayHidePanel:function(o){var n=this;n.hidePanelTimer=setTimeout(function(){n.hidePanelTimer=null;if(n.mouseInsideLink||n.mouseInsidePanel){return}n.hide();n.endTime=new Date().getTime();n.trackingHandler()},(mt.mtconfig.control.hoverDelay||200))},trackingHandler:function(){if(typeof(cMO)!=="function"){return}var t=this,r,q,v=mt.mtconfig.tracking.uc,n=a(t.anchor).data("mtsrclang"),o=mt.mtconfig.mtdomainhandler({target:t.anchor}),p="_0";r=t.endTime-t.startTime-(mt.mtconfig.control.hoverDelay||500);if(r<10){return}if(t.options.feedback&&t.options.feedback===true){var u=t.getFeedback(o.itemId)||0;p="_"+u}q=v+"_"+mt.mtconfig.tracking.desLang;if(t.anchor&&t.anchor[0]){var s=q+"_"+r+p;cMO(o.itemId+"",s)}},getFeedback:function(o){try{if(g.current&&g.current===true){return g[""+o]}else{return undefined}}catch(n){}}};return i};window.mt.MTBubble=window.mt.ebayUIBubble();new mt.MTBubble({selector:"[data-mtdes]",trigger:"hover",width:215});if(mt.mtconfig.defer){if(document.body.removeEventListener){document.body.removeEventListener("mouseover",mt.MTHover.defercallback,false)}else{if(document.body.detachEvent){document.body.detachEvent("onmouseover",mt.MTHover.defercallback)}else{document.body.onmouseover=null}}a(mt.MTHover.anchor).attr("title","");a(mt.MTHover.anchor).trigger("mouseenter")}})(jQuery);