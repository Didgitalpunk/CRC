/*!
	Based on Wheelzoom 3.0.4 (http://www.jacklmoore.com/wheelzoom)
*/

(function($){

	$.fn.wz = function(opt){
		var options = {
			zoom: .1,
			bgColor: 'black',
			btnreset: $('.resetzoom'),
			titleBtnPrev: 'Previous image',
			titleBtnNext: 'Next image',
			titleBtnZoomIn: 'Zoom in',
			titleBtnZoomOut: 'Zoom out',
			titleBtnZoomFullscreen: 'Open in fullscreen'
		};
		
		var container = this;
		var mv = null,
			mvImg = null,
			mvImgWidth = 0,
			mvGalW = null,
			mvGal = null,
			mvUl = null;
			
		var elements = [];
		var current = 0;
		var width;
		var height;
		var bgWidth;
		var bgHeight;
		var bgPosX;
		var bgPosY;
		var previousEvent;
		var cachedDataUrl;
		var dimensions;
		
		var changeImg = function(e){
			e.preventDefault();
			var li = $(e.currentTarget);
			var i = li.closest('ul').find('li').index(li);
			
			if(i === current) reset();
			else setCurrent(i);
		};
		
		var setCurrent = function(i){
			current = i;
			mvImg.find('.controlbar .num span').html(current + 1);
			var li = mvUl.find('li');
			li.removeClass('active');
			$(li.get(current)).addClass('active');
			main();
			
			var ml = Math.abs(parseFloat(mvUl.css('margin-left'))),
				posR = ml + mvGal.width(),
				wLi = mvUl.find('li').width(),
				fml	= Math.abs(current * wLi);

			if(fml + wLi > posR || fml < ml) {
				slideToCurrent();
			}
		};
		
		var slideToCurrent = function(){
			var v = current * mvUl.find('li').width();
			slide('', -v);
		};
		
		var slide = function(d, v){
			if(v === undefined){
				var nb = Math.floor(mvGal.width() / mvUl.find('li').width());
				var v = (nb * mvUl.find('li').width()) + parseInt(mvUl.css('margin-left'), 10);
				if(d !== 'right'){
					var v = nb * mvUl.find('li').width() + parseInt(mvUl.css('margin-left'), 10);
					v = v > 0 ? 0 : v;
				} else { 
					if(mvGal.width() > mvUl.width()) return;
					
					var max = -1 * (mvUl.width() - mvGal.width());
					var v = -1 * (nb * mvUl.find('li').width()) + parseInt(mvUl.css('margin-left'), 10);
					v = v < max ? max : v;
				}
				mvUl.css('margin-left', v);
			} else {
				var max = -1 * (mvUl.width() - mvGal.width());
				v = v < max ? max : (v > 0 ? 0 : v);
				mvUl.css('margin-left', v);
			}
		};
		
		var slideImg = function(e){
			if($(e.currentTarget).hasClass('next')) slide('right');
			else slide('left');
		};
		
		var extractDelta = function(e){
			if(e.wheelDelta) return e.wheelDelta;
			if(e.originalEvent.detail) return e.originalEvent.detail * -40;
			if(e.originalEvent && e.originalEvent.wheelDelta) return e.originalEvent.wheelDelta;
		};
		
		var getRatio = function(){
			var rW = dimensions.width / mvImg.width();
			var rH = dimensions.height / mvImg.height();

			if(rW >= 1 && rW >= rH) return rW;
			else if(rH >= 1) return rH;
			return 1;
		};
		
		var getDimensions = function(width, height){
			dimensions = {width: width, height: height};
			var r = getRatio();
			var w = width / r;
			var h = height / r;
			dimensions = {width: width, height: height, w: w, h: h, ratio: r};
		};
		
		var resize = function(e){
			var old = dimensions;
			getDimensions(dimensions.width, dimensions.height);
			reset();
		};
		
		var resizEmbed = function(){
			if($('body').hasClass('embed')){
				var im = $('#infomedia');
				//$('#image').height($(window).height() - im.outerHeight());
				options.container.height($(window).height() - im.outerHeight());
			}
		};
		
		var reset = function(){
			bgWidth = dimensions.w;
			bgHeight = dimensions.h;
			bgPosX = (mvImg.width() - bgWidth) / 2;
			bgPosY = (mvImg.height() - bgHeight) / 2;
			updateBgStyle();
		};
		
		var onwheel = function(e){
			var deltaY = extractDelta(e);
			e.preventDefault();
			e = e.originalEvent;
			
			// As far as I know, there is no good cross-browser way to get the cursor position relative to the event target.
			// We have to calculate the target element's position relative to the document, and subtrack that from the
			// cursor's position relative to the document.
			var rect = mvImg[0].getBoundingClientRect();
			var offsetX = e.pageX - rect.left - window.pageXOffset;
			var offsetY = e.pageY - rect.top - window.pageYOffset;
			
			// Record the offset between the bg edge and cursor:
			var bgCursorX = offsetX - bgPosX;
			var bgCursorY = offsetY - bgPosY;
			
			// Use the previous offset to get the percent offset between the bg edge and cursor:
			var bgRatioX = bgCursorX/bgWidth;
			var bgRatioY = bgCursorY/bgHeight;

			// Update the bg size:
			if(deltaY > 0){
				bgWidth += bgWidth * options.zoom;
				bgHeight += bgHeight * options.zoom;
			} else {
				bgWidth -= bgWidth * options.zoom;
				bgHeight -= bgHeight * options.zoom;
			}

			// Take the percent offset and apply it to the new size:
			bgPosX = offsetX - (bgWidth * bgRatioX);
			bgPosY = offsetY - (bgHeight * bgRatioY);

			// Prevent zooming out beyond the starting size
			if(bgWidth <= dimensions.w || bgHeight <= dimensions.h){
				reset();
			} else { 
				updateBgStyle();
			}
		};
		
		var zoominout = function(e){
			var deltaY = 120;
			if($(e.currentTarget).hasClass('zoomout')){
				deltaY = -120;
			}

			var offset = mvImg.offset();
			e = { pageX: (offset.left + mvImg.width() / 2), pageY: (offset.top + mvImg.height() / 2) };
			
			// As far as I know, there is no good cross-browser way to get the cursor position relative to the event target.
			// We have to calculate the target element's position relative to the document, and subtrack that from the
			// cursor's position relative to the document.
			var rect = mvImg[0].getBoundingClientRect();
			var offsetX = e.pageX - rect.left - window.pageXOffset;
			var offsetY = e.pageY - rect.top - window.pageYOffset;
			
			// Record the offset between the bg edge and cursor:
			var bgCursorX = offsetX - bgPosX;
			var bgCursorY = offsetY - bgPosY;
			
			// Use the previous offset to get the percent offset between the bg edge and cursor:
			var bgRatioX = bgCursorX/bgWidth;
			var bgRatioY = bgCursorY/bgHeight;

			// Update the bg size:
			if(deltaY > 0){
				bgWidth += bgWidth * options.zoom;
				bgHeight += bgHeight * options.zoom;
			} else {
				bgWidth -= bgWidth * options.zoom;
				bgHeight -= bgHeight * options.zoom;
			}

			// Take the percent offset and apply it to the new size:
			bgPosX = offsetX - (bgWidth * bgRatioX);
			bgPosY = offsetY - (bgHeight * bgRatioY);
			
			// Prevent zooming out beyond the starting size
			if(bgWidth <= dimensions.w || bgHeight <= dimensions.h){
				reset();
			} else {
				updateBgStyle();
			}
		};
		
		var drag = function(e){
			e.preventDefault();

			bgPosX += (e.pageX - previousEvent.pageX);
			bgPosY += (e.pageY - previousEvent.pageY);
			
			previousEvent = e;
			
			e.data.addClass('notransition');
			updateBgStyle();
			e.data.removeClass('notransition');
		};
		
		var removeDrag = function(){
			$(document).off('mouseup', removeDrag);
			$(document).off('mousemove', drag);
		};

		// Make the background draggable
		var draggable = function(e){
			e.preventDefault();
			previousEvent = e;
			
			$(document).on('mousemove', $(e.currentTarget), drag);
			$(document).on('mouseup', removeDrag);
		};
		
		var touched = function(e){
			var src = $(e.currentTarget).css('background-image').replace(/^url|[\(\)]/g, '');
			src = src.replace(/^"(.+)"$/g, '$1'),
			window.open(src, '_blank');
		};
		
		var setSrcToBackground = function(){
			mvImg.css({
				backgroundImage: 'url('+ elements[current].target +')',
				backgroundRepeat: 'no-repeat',
				backgroundColor: options.bgColor
			});
			
			var canvas = $('<canvas/>');
			canvas.width(mvImg[0].naturalWidth);
			canvas.height(mvImg[0].naturalHeight);
			cachedDataUrl = canvas[0].toDataURL();
			mvImg.attr('data-src', cachedDataUrl);
			mvImgWidth = mvImg.width();
		};
		
		var updateBgStyle = function(){			
			mvImg.css({
				backgroundSize: bgWidth+'px '+bgHeight+'px',
				backgroundPosition: bgPosX+'px '+bgPosY+'px'
			});
		};
		
		var selectImg = function(_i){
			_i = _i.data ? _i.data : _i;
			
			var max = elements.length - 1;
			if(_i === true || _i === 'next'){
				_i = current + 1;
			} else if(_i === false || _i === 'previous' || _i === 'prev'){
				_i = current - 1;
			} else {
				_i = parseInt(_i);
			}
			
			if(_i < 0) _i = 0;
			if(_i > max) _i = max;

			mvUl.find('li:eq('+ _i +')').trigger('click');
		};
		
		var loaded = function(){
			var img = $(this);
			if(mvImg.attr('data-src') === cachedDataUrl) return;

			if(mvUl) mvUl.find('img').removeClass('active').eq(current).addClass('active');
			width = parseInt(img.css('width'), 10);
			height = parseInt(img.css('height'), 10);
			mvImg.find('img').remove();
			
			setSrcToBackground();
			getDimensions(width, height);
			reset();
			
			mvImg.on('reset.wz', reset);
			if(!$('body').hasClass('mobile-device')){
				mvImg.on('mousewheel.wz DOMMouseScroll.wz', onwheel);
				mvImg.on('mousedown.wz', draggable);
			}
		};
		
		var setFullscreen = function(){
			if(mvImg.find('.controlbar .fullscreen').length)
				mvImg.find('.controlbar .fullscreen').attr('href', window.location.href +'/embed/'+ mvUl.find('li:eq('+ current +') img').attr('alt'));
		};
		
		var main = function(){
			var c_elm = elements[current];
			if(c_elm.type === 'image'){
				mv.find('iframe').slideUp('fast');
				mvImg.slideDown('fast', function(){
					mvImg.attr('data-src', elements[current].target);
					mvImg.append($('<img />').attr('src', elements[current].target).on('load', loaded));
					setFullscreen();
				});
			} else if(c_elm.type === '3D'){
				mvImg.slideUp('fast');
				mv.find('iframe').slideDown('fast', function(){ $(this).css('display', 'block').attr('src', c_elm.target); });
			}
		};
		
		var installTpl = function(){
			mv = $('<div>').addClass('media-viewer');
			mv.append('<iframe src=""></iframe>');
			mvImg = $('<div>').addClass('img');
			var ctrlBar = $('<div>').addClass('controlbar');
			ctrlBar	.append($('<div>').addClass('num').html('<span>'+ (current + 1) +'</span> / '+ elements.length))
					.append($('<button>').addClass('prev').attr('title', options.titleBtnPrev).append('<span class="glyphicon glyphicon-chevron-left"></span>'))
					.append($('<button>').addClass('zoomin zoominout').attr('title', options.titleBtnZoomIn).append('<span class="icon-search-plus"></span>'))
					.append($('<button>').addClass('zoomout zoominout').attr('title', options.titleBtnZoomOut).append('<span class="icon-search-minus"></span>'))
					.append($('<a>').addClass('fullscreen').attr({title: options.titleBtnZoomFullscreen, target: '_blank'}).append('<span class="glyphicon glyphicon-fullscreen"></span>'))
					.append($('<button>').addClass('next').attr('title', options.titleBtnNext).append('<span class="glyphicon glyphicon-chevron-right"></span>'));
			mvImg.append(ctrlBar);
			mv.append(mvImg);
			mvGalW = $('<div>').addClass('gallery-wrapper');
			mvGal = $('<div>').addClass('gallery');
			mvUl = $('<ul>');
			mvGalW.append($('<button>').addClass('prev').attr('title', options.titleBtnPrev).append('<span class="glyphicon glyphicon-chevron-left"></span>'));
			
			$.each(elements, function(i){
				var li = $('<li>');
				if(i === current) li.addClass('active');
				mvUl.append(li.append(
					$('<a>').attr('href', '#').append(
						$('<img />').addClass('img-responsive').attr({alt: this.title, title: options.imgTitle, src: this.src, 'data-name': this.id})
					))
				);
			});
			
			mvGal.append(mvUl);
			mvGalW.append($('<button>').addClass('next').attr('title', options.titleBtnNext).append('<span class="glyphicon glyphicon-chevron-right"></span>'));
			mvGalW.append(mvGal);
			mv.append(mvGalW);
			
			container.append(mv);
			mvUl.width(mvUl.find('li a').outerWidth(true) * elements.length);
			
			$(window).on('resize.wz', resize);
			
			mvUl.on('click', 'li', changeImg);
			
			mvImg.find('.controlbar .zoominout').on('click', zoominout);
			mvImg.find('.controlbar').on('click', '.prev', 'prev', selectImg);
			mvImg.find('.controlbar').on('click', '.next', 'next', selectImg);
			
			mvGalW.find('button').on('click', slideImg);
			
			mv.slideDown('slow');
			return true;
		};
		
		var installTplEmbed = function(){
			mv = $('<div>').addClass('media-viewer');
			mvImg = $('<div>').addClass('img');
			mv.append(mvImg);
			mv.append('<button type="button" class="zoomin zoominout"><span class="glyphicon glyphicon-plus"></span></button>');
			mv.append('<button type="button" class="zoomout zoominout"><span class="glyphicon glyphicon-minus"></span></button>');
			mv.append('<button type="button" class="btn" id="resetzoom"><span class="glyphicon glyphicon-refresh"></span></button>');
			container.append(mv);
			
			container.find('.zoominout').on('click', zoominout);
			container.find('#resetzoom').on('click', reset);
			
			mv.fadeIn('fast');
			return true;
		};
		
		var loadOptions = function(){
			if(opt) $.extend(options, opt);
			
			$.each(container.find('img'), function(i){
				elements.push({num: i, title: $(this).attr('alt'), src: $(this).attr('src'), target: $(this).attr('data-src'), type: $(this).attr('data-type'), id: $(this).attr('data-name')});
				if($(this).hasClass('active')) current = i;
				$(this).remove();
			});
			
			if(elements.length === 0) return false;
			return $('body').hasClass('embed') ? installTplEmbed() : installTpl();
		};
		
		// Do nothing in IE8
		if(typeof window.getComputedStyle !== 'function'){
			return;
		} else{
			if(!loadOptions()) return;
			main();
			
			if('ontouchstart' in window){
				$('body').addClass('mobile-device');
			}
		}
	};

})(jQuery);

$(function(){
	$('section.media #infomedia button.btn-link').click(function(e){
		var btn = $(e.currentTarget);
		var span = btn.find('span.glyphicon');
		var block = btn.closest('#infomedia').find('.dl-horizontal');
		
		if(btn.hasClass('close')){
			btn.removeClass('close');
			btn.prop('title', 'Voir les informations du média');
			block.slideUp('slow');
		} else {
			btn.addClass('close');
			btn.prop('title', 'Masquer les informations du média');
			block.slideDown('slow');
		}
	});
});
var semmprnt = {	
	beforePrint: function() {
		/*var slug = $(location).attr('href').match(/\/([A-Za-z0-9àáäâèéëêìíïîòóöôùúüû _%-]*)$/);
		if(slug === null || slug.length > 2){
			return;
		} else {
			slug = slug[1];
		}
		
		var media = $('.thumbnails li.active img').attr('data-name');
		
		$('body > nav.navbar').css('display', 'none');
		$('body > footer.footer').css('display', 'none');
		$('body > div.container').css('display', 'none');
		
		$.ajax({
			async: false,
			type: 'POST',
			url: '../print',
			data: 'r='+slug+'&m='+ media,
			dataType: 'html'
		})
		.done(function(r, status, obj){ // data, textStatus, jqXHR
			if(r !== ''){
				$('body')
					.addClass('print')
					.append('<div id="printcontent" class="row">'+ r +'</div>');
			} else {
				$('body > nav.navbar').css('display', 'block');
				$('body > footer.footer').css('display', 'block');
				$('body > div.container').css('display', 'block');
				$('.thumbnails li.active img').trigger('click');
			}
		})
		.fail(function(obj, status, err){// jqXHR, textStatus, errorThrown
			//console.log(err);
		});*/
		
		$('body > nav.navbar').css('display', 'none');
		$('body > footer.footer').css('display', 'none');
		$('body > div.container').css('display', 'none');
		$('#printcontent').css('display', 'block');
	},
		
	afterPrint: function() {
		/*$('body.print').removeClass('print');
		$('#printcontent').remove();
		$('body > nav.navbar').css('display', 'block');
		$('body > footer.footer').css('display', 'block');
		$('body > div.container').css('display', 'block');
		$('.thumbnails li.active img').trigger('click');*/
		
		$('body > nav.navbar').css('display', 'block');
		$('body > footer.footer').css('display', 'block');
		$('body > div.container').css('display', 'block');
		$('#printcontent').css('display', 'none');
		
		$('.thumbnails li.active img').trigger('click');
	},
		
	init: function(){
		if (window.matchMedia) {
			var mediaQueryList = window.matchMedia('print');
			mediaQueryList.addListener(function(mql) {
				if (mql.matches) {
					semmprnt.beforePrint();
				} else {
					semmprnt.afterPrint();
				}
			});
		}

		$(window).on('beforeprint', semmprnt.beforePrint);
		$(window).on('afterprint', semmprnt.afterPrint);
		
		$('#btnprint').click(function(){ semmprnt.beforePrint(); window.print(); });
	}
};

$(function(){
	//semmprnt.init();
	semmprnt.init();
});
/**
 * jQuery CSS Customizable Scrollbar
 *
 * Copyright 2015, Yuriy Khabarov
 * Dual licensed under the MIT or GPL Version 2 licenses.
 *
 * If you found bug, please contact me via email <13real008@gmail.com>
 *
 * Compressed by http://jscompress.com/
 *
 * @author Yuriy Khabarov aka Gromo
 * @version 0.2.10
 * @url https://github.com/gromo/jquery.scrollbar/
 *
 */
!function(l,e){"function"==typeof define&&define.amd?define(["jquery"],e):e(l.jQuery)}(this,function(l){"use strict";function e(e){if(t.webkit&&!e)return{height:0,width:0};if(!t.data.outer){var o={border:"none","box-sizing":"content-box",height:"200px",margin:"0",padding:"0",width:"200px"};t.data.inner=l("<div>").css(l.extend({},o)),t.data.outer=l("<div>").css(l.extend({left:"-1000px",overflow:"scroll",position:"absolute",top:"-1000px"},o)).append(t.data.inner).appendTo("body")}return t.data.outer.scrollLeft(1e3).scrollTop(1e3),{height:Math.ceil(t.data.outer.offset().top-t.data.inner.offset().top||0),width:Math.ceil(t.data.outer.offset().left-t.data.inner.offset().left||0)}}function o(){var l=e(!0);return!(l.height||l.width)}function s(l){var e=l.originalEvent;return e.axis&&e.axis===e.HORIZONTAL_AXIS?!1:e.wheelDeltaX?!1:!0}var r=!1,t={data:{index:0,name:"scrollbar"},macosx:/mac/i.test(navigator.platform),mobile:/android|webos|iphone|ipad|ipod|blackberry/i.test(navigator.userAgent),overlay:null,scroll:null,scrolls:[],webkit:/webkit/i.test(navigator.userAgent)&&!/edge\/\d+/i.test(navigator.userAgent)};t.scrolls.add=function(l){this.remove(l).push(l)},t.scrolls.remove=function(e){for(;l.inArray(e,this)>=0;)this.splice(l.inArray(e,this),1);return this};var i={autoScrollSize:!0,autoUpdate:!0,debug:!1,disableBodyScroll:!1,duration:200,ignoreMobile:!1,ignoreOverlay:!1,scrollStep:30,showArrows:!1,stepScrolling:!0,scrollx:null,scrolly:null,onDestroy:null,onInit:null,onScroll:null,onUpdate:null},n=function(s){t.scroll||(t.overlay=o(),t.scroll=e(),a(),l(window).resize(function(){var l=!1;if(t.scroll&&(t.scroll.height||t.scroll.width)){var o=e();(o.height!==t.scroll.height||o.width!==t.scroll.width)&&(t.scroll=o,l=!0)}a(l)})),this.container=s,this.namespace=".scrollbar_"+t.data.index++,this.options=l.extend({},i,window.jQueryScrollbarOptions||{}),this.scrollTo=null,this.scrollx={},this.scrolly={},s.data(t.data.name,this),t.scrolls.add(this)};n.prototype={destroy:function(){if(this.wrapper){this.container.removeData(t.data.name),t.scrolls.remove(this);var e=this.container.scrollLeft(),o=this.container.scrollTop();this.container.insertBefore(this.wrapper).css({height:"",margin:"","max-height":""}).removeClass("scroll-content scroll-scrollx_visible scroll-scrolly_visible").off(this.namespace).scrollLeft(e).scrollTop(o),this.scrollx.scroll.removeClass("scroll-scrollx_visible").find("div").andSelf().off(this.namespace),this.scrolly.scroll.removeClass("scroll-scrolly_visible").find("div").andSelf().off(this.namespace),this.wrapper.remove(),l(document).add("body").off(this.namespace),l.isFunction(this.options.onDestroy)&&this.options.onDestroy.apply(this,[this.container])}},init:function(e){var o=this,r=this.container,i=this.containerWrapper||r,n=this.namespace,c=l.extend(this.options,e||{}),a={x:this.scrollx,y:this.scrolly},d=this.wrapper,h={scrollLeft:r.scrollLeft(),scrollTop:r.scrollTop()};if(t.mobile&&c.ignoreMobile||t.overlay&&c.ignoreOverlay||t.macosx&&!t.webkit)return!1;if(d)i.css({height:"auto","margin-bottom":-1*t.scroll.height+"px","margin-right":-1*t.scroll.width+"px","max-height":""});else{if(this.wrapper=d=l("<div>").addClass("scroll-wrapper").addClass(r.attr("class")).css("position","absolute"==r.css("position")?"absolute":"relative").insertBefore(r).append(r),r.is("textarea")&&(this.containerWrapper=i=l("<div>").insertBefore(r).append(r),d.addClass("scroll-textarea")),i.addClass("scroll-content").css({height:"auto","margin-bottom":-1*t.scroll.height+"px","margin-right":-1*t.scroll.width+"px","max-height":""}),r.on("scroll"+n,function(e){l.isFunction(c.onScroll)&&c.onScroll.call(o,{maxScroll:a.y.maxScrollOffset,scroll:r.scrollTop(),size:a.y.size,visible:a.y.visible},{maxScroll:a.x.maxScrollOffset,scroll:r.scrollLeft(),size:a.x.size,visible:a.x.visible}),a.x.isVisible&&a.x.scroll.bar.css("left",r.scrollLeft()*a.x.kx+"px"),a.y.isVisible&&a.y.scroll.bar.css("top",r.scrollTop()*a.y.kx+"px")}),d.on("scroll"+n,function(){d.scrollTop(0).scrollLeft(0)}),c.disableBodyScroll){var p=function(l){s(l)?a.y.isVisible&&a.y.mousewheel(l):a.x.isVisible&&a.x.mousewheel(l)};d.on("MozMousePixelScroll"+n,p),d.on("mousewheel"+n,p),t.mobile&&d.on("touchstart"+n,function(e){var o=e.originalEvent.touches&&e.originalEvent.touches[0]||e,s={pageX:o.pageX,pageY:o.pageY},t={left:r.scrollLeft(),top:r.scrollTop()};l(document).on("touchmove"+n,function(l){var e=l.originalEvent.targetTouches&&l.originalEvent.targetTouches[0]||l;r.scrollLeft(t.left+s.pageX-e.pageX),r.scrollTop(t.top+s.pageY-e.pageY),l.preventDefault()}),l(document).on("touchend"+n,function(){l(document).off(n)})})}l.isFunction(c.onInit)&&c.onInit.apply(this,[r])}l.each(a,function(e,t){var i=null,d=1,h="x"===e?"scrollLeft":"scrollTop",p=c.scrollStep,u=function(){var l=r[h]();r[h](l+p),1==d&&l+p>=f&&(l=r[h]()),-1==d&&f>=l+p&&(l=r[h]()),r[h]()==l&&i&&i()},f=0;t.scroll||(t.scroll=o._getScroll(c["scroll"+e]).addClass("scroll-"+e),c.showArrows&&t.scroll.addClass("scroll-element_arrows_visible"),t.mousewheel=function(l){if(!t.isVisible||"x"===e&&s(l))return!0;if("y"===e&&!s(l))return a.x.mousewheel(l),!0;var i=-1*l.originalEvent.wheelDelta||l.originalEvent.detail,n=t.size-t.visible-t.offset;return(i>0&&n>f||0>i&&f>0)&&(f+=i,0>f&&(f=0),f>n&&(f=n),o.scrollTo=o.scrollTo||{},o.scrollTo[h]=f,setTimeout(function(){o.scrollTo&&(r.stop().animate(o.scrollTo,240,"linear",function(){f=r[h]()}),o.scrollTo=null)},1)),l.preventDefault(),!1},t.scroll.on("MozMousePixelScroll"+n,t.mousewheel).on("mousewheel"+n,t.mousewheel).on("mouseenter"+n,function(){f=r[h]()}),t.scroll.find(".scroll-arrow, .scroll-element_track").on("mousedown"+n,function(s){if(1!=s.which)return!0;d=1;var n={eventOffset:s["x"===e?"pageX":"pageY"],maxScrollValue:t.size-t.visible-t.offset,scrollbarOffset:t.scroll.bar.offset()["x"===e?"left":"top"],scrollbarSize:t.scroll.bar["x"===e?"outerWidth":"outerHeight"]()},a=0,v=0;return l(this).hasClass("scroll-arrow")?(d=l(this).hasClass("scroll-arrow_more")?1:-1,p=c.scrollStep*d,f=d>0?n.maxScrollValue:0):(d=n.eventOffset>n.scrollbarOffset+n.scrollbarSize?1:n.eventOffset<n.scrollbarOffset?-1:0,p=Math.round(.75*t.visible)*d,f=n.eventOffset-n.scrollbarOffset-(c.stepScrolling?1==d?n.scrollbarSize:0:Math.round(n.scrollbarSize/2)),f=r[h]()+f/t.kx),o.scrollTo=o.scrollTo||{},o.scrollTo[h]=c.stepScrolling?r[h]()+p:f,c.stepScrolling&&(i=function(){f=r[h](),clearInterval(v),clearTimeout(a),a=0,v=0},a=setTimeout(function(){v=setInterval(u,40)},c.duration+100)),setTimeout(function(){o.scrollTo&&(r.animate(o.scrollTo,c.duration),o.scrollTo=null)},1),o._handleMouseDown(i,s)}),t.scroll.bar.on("mousedown"+n,function(s){if(1!=s.which)return!0;var i=s["x"===e?"pageX":"pageY"],c=r[h]();return t.scroll.addClass("scroll-draggable"),l(document).on("mousemove"+n,function(l){var o=parseInt((l["x"===e?"pageX":"pageY"]-i)/t.kx,10);r[h](c+o)}),o._handleMouseDown(function(){t.scroll.removeClass("scroll-draggable"),f=r[h]()},s)}))}),l.each(a,function(l,e){var o="scroll-scroll"+l+"_visible",s="x"==l?a.y:a.x;e.scroll.removeClass(o),s.scroll.removeClass(o),i.removeClass(o)}),l.each(a,function(e,o){l.extend(o,"x"==e?{offset:parseInt(r.css("left"),10)||0,size:r.prop("scrollWidth"),visible:d.width()}:{offset:parseInt(r.css("top"),10)||0,size:r.prop("scrollHeight"),visible:d.height()})}),this._updateScroll("x",this.scrollx),this._updateScroll("y",this.scrolly),l.isFunction(c.onUpdate)&&c.onUpdate.apply(this,[r]),l.each(a,function(l,e){var o="x"===l?"left":"top",s="x"===l?"outerWidth":"outerHeight",t="x"===l?"width":"height",i=parseInt(r.css(o),10)||0,n=e.size,a=e.visible+i,d=e.scroll.size[s]()+(parseInt(e.scroll.size.css(o),10)||0);c.autoScrollSize&&(e.scrollbarSize=parseInt(d*a/n,10),e.scroll.bar.css(t,e.scrollbarSize+"px")),e.scrollbarSize=e.scroll.bar[s](),e.kx=(d-e.scrollbarSize)/(n-a)||1,e.maxScrollOffset=n-a}),r.scrollLeft(h.scrollLeft).scrollTop(h.scrollTop).trigger("scroll")},_getScroll:function(e){var o={advanced:['<div class="scroll-element">','<div class="scroll-element_corner"></div>','<div class="scroll-arrow scroll-arrow_less"></div>','<div class="scroll-arrow scroll-arrow_more"></div>','<div class="scroll-element_outer">','<div class="scroll-element_size"></div>','<div class="scroll-element_inner-wrapper">','<div class="scroll-element_inner scroll-element_track">','<div class="scroll-element_inner-bottom"></div>',"</div>","</div>",'<div class="scroll-bar">','<div class="scroll-bar_body">','<div class="scroll-bar_body-inner"></div>',"</div>",'<div class="scroll-bar_bottom"></div>','<div class="scroll-bar_center"></div>',"</div>","</div>","</div>"].join(""),simple:['<div class="scroll-element">','<div class="scroll-element_outer">','<div class="scroll-element_size"></div>','<div class="scroll-element_track"></div>','<div class="scroll-bar"></div>',"</div>","</div>"].join("")};return o[e]&&(e=o[e]),e||(e=o.simple),e="string"==typeof e?l(e).appendTo(this.wrapper):l(e),l.extend(e,{bar:e.find(".scroll-bar"),size:e.find(".scroll-element_size"),track:e.find(".scroll-element_track")}),e},_handleMouseDown:function(e,o){var s=this.namespace;return l(document).on("blur"+s,function(){l(document).add("body").off(s),e&&e()}),l(document).on("dragstart"+s,function(l){return l.preventDefault(),!1}),l(document).on("mouseup"+s,function(){l(document).add("body").off(s),e&&e()}),l("body").on("selectstart"+s,function(l){return l.preventDefault(),!1}),o&&o.preventDefault(),!1},_updateScroll:function(e,o){var s=this.container,r=this.containerWrapper||s,i="scroll-scroll"+e+"_visible",n="x"===e?this.scrolly:this.scrollx,c=parseInt(this.container.css("x"===e?"left":"top"),10)||0,a=this.wrapper,d=o.size,h=o.visible+c;o.isVisible=d-h>1,o.isVisible?(o.scroll.addClass(i),n.scroll.addClass(i),r.addClass(i)):(o.scroll.removeClass(i),n.scroll.removeClass(i),r.removeClass(i)),"y"===e&&(s.is("textarea")||h>d?r.css({height:h+t.scroll.height+"px","max-height":"none"}):r.css({"max-height":h+t.scroll.height+"px"})),(o.size!=s.prop("scrollWidth")||n.size!=s.prop("scrollHeight")||o.visible!=a.width()||n.visible!=a.height()||o.offset!=(parseInt(s.css("left"),10)||0)||n.offset!=(parseInt(s.css("top"),10)||0))&&(l.extend(this.scrollx,{offset:parseInt(s.css("left"),10)||0,size:s.prop("scrollWidth"),visible:a.width()}),l.extend(this.scrolly,{offset:parseInt(s.css("top"),10)||0,size:this.container.prop("scrollHeight"),visible:a.height()}),this._updateScroll("x"===e?"y":"x",n))}};var c=n;l.fn.scrollbar=function(e,o){return"string"!=typeof e&&(o=e,e="init"),"undefined"==typeof o&&(o=[]),l.isArray(o)||(o=[o]),this.not("body, .scroll-wrapper").each(function(){var s=l(this),r=s.data(t.data.name);(r||"init"===e)&&(r||(r=new c(s)),r[e]&&r[e].apply(r,o))}),this},l.fn.scrollbar.options=i;var a=function(){var l=0,e=0;return function(o){var s,i,n,c,d,h,p;for(s=0;s<t.scrolls.length;s++)c=t.scrolls[s],i=c.container,n=c.options,d=c.wrapper,h=c.scrollx,p=c.scrolly,(o||n.autoUpdate&&d&&d.is(":visible")&&(i.prop("scrollWidth")!=h.size||i.prop("scrollHeight")!=p.size||d.width()!=h.visible||d.height()!=p.visible))&&(c.init(),n.debug&&(window.console&&console.log({scrollHeight:i.prop("scrollHeight")+":"+c.scrolly.size,scrollWidth:i.prop("scrollWidth")+":"+c.scrollx.size,visibleHeight:d.height()+":"+c.scrolly.visible,visibleWidth:d.width()+":"+c.scrollx.visible},!0),e++));r&&e>10?(window.console&&console.log("Scroll updates exceed 10"),a=function(){}):(clearTimeout(l),l=setTimeout(a,300))}}();window.angular&&!function(l){l.module("jQueryScrollbar",[]).provider("jQueryScrollbar",function(){var e=i;return{setOptions:function(o){l.extend(e,o)},$get:function(){return{options:l.copy(e)}}}}).directive("jqueryScrollbar",["jQueryScrollbar","$parse",function(l,e){return{restrict:"AC",link:function(o,s,r){var t=e(r.jqueryScrollbar),i=t(o);s.scrollbar(i||l.options).on("$destroy",function(){s.scrollbar("destroy")})}}}])}(window.angular)});