(function() {
    var a = window.Xmeb || {};
    a = {
        _INSTALL: function() {
            window.Xmeb = a;
        },
        Base: {},
        UI: {},
        App: {},
        Page: {}
    };
    a.App = {
        getBLength: function(b) {
            return $.trim(b).replace(/[^\x00-\xff]/g, "**").length;
        },
        getWLength: function(b) {
            return Math.ceil($.trim(b).replace(/[^\x00-\xff]/g, "**").length / 2);
        },
        lazyload: function(e) {
            var d = {
                defObj: null,
                defHeight: 0
            };
            d = $.extend(d, e || {});
            var c = d.defHeight,
            h = (typeof d.defObj == "object") ? d.defObj.find("img") : $(d.defObj).find("img");
            var b = function() {
                var i = document,
                j = (navigator.userAgent.toLowerCase().match(/iPad/i) == "ipad") ? window.pageYOffset: Math.max(i.documentElement.scrollTop, i.body.scrollTop);
                if (navigator.userAgent.toLowerCase().match(/iPad/i) == "ipad") {
                    d.defHeight = 0;
                }
                return i.documentElement.clientHeight + j - d.defHeight;
            };
            var f = function(j) {
                var i = j.attr("src2");
                if (i) {
                    j.css({
                        opacity: "0.3"
                    }).attr("src", i).removeAttr("src2").animate({
                        opacity: "1"
                    });
                }
            };
            var g = function() {
                h.each(function() {
                    if (navigator.userAgent.toLowerCase().match(/iPad/i) == "ipad") {
                        f($(this));
                    } else {
                        if ($(this).offset().top <= b()) {
                            f($(this));
                        }
                    }
                });
            };
            g();
            $(window).bind("scroll",
            function() {
                g();
            });
        },
        xmFocus: {
            init: function(d, c) {
                var e = this;
                this._obj = d;
                this.mlength = this._obj.find("a").length;
                this.setOptions(c);
                this.mwidth = this.options.mwidth;
                this.mtime1 = this.options.mtime1;
                this.mtime2 = this.options.mtime2;
                this.autoWidth = this.options.autoWidth;
                if (this.mlength != 1) {
                    this.ul = this._obj.find("ul");
                    this.build(this.ul, this.mlength);
                    var b = (parseInt(this._obj.find("li").eq(0).width()) + 8) * this.mlength;
                    //this.ul.css({
                    //    width: b
                    //});
                    this.ul.css("width", b );
                    if (this.autoWidth) {
                        //this.ul.css({
                        //    right: "50%",
                        //    "margin-right": "-465px"
                        //});
                        this.ul.css("right","50%").css("margin-right","-465px");
                        /*this._obj.find("a").css({
                            display: "inline-block",
                            width: "960",
                            height: "430"
                        });*/
                        this._obj.find("a").css( "display", "inline-block" ).css( "width", "960" ).css("height", "430");
                    }
                    e.options.AllowAutoSlide = true;
                    this._obj.find("a").mouseenter(function() {
                        e.options.AllowAutoSlide = false;
                    }).mouseleave(function() {
                        e.options.AllowAutoSlide = true;
                    });
                    this.ul.find("li").mouseenter(function(f) {
                        e.options.AllowAutoSlide = false;
                        e.slideTo(this);
                    }).mouseleave(function() {
                        e.options.AllowAutoSlide = true;
                    });
                    setInterval(function() {
                        if (e.options.AllowAutoSlide) {
                            e.slideDown();
                        }
                    },
                    e.mtime1);
                }
                /*this._obj.css({
                    width: this.mwidth
                });*/
                this._obj.css("width", this.mwidth );
            },
            setOptions: function(b) {
                this.options = {
                    mwidth: 1024,
                    mtime1: 7000,
                    mtime2: 500,
                    autoWidth: false,
                    AllowAutoSlide: false
                };
                for (var c in b) {
                    this.options[c] = b[c];
                }
            },
            build: function(d, c) {
                this.tmp = "";
                for (var b = 0; b < c; b++) {
                    this.tmp += "<li index=" + (c - b) + "></li>";
                }
                d.html(this.tmp);
                d.find("li").last().addClass("on");
                this.ulWidth = d.width();
            },
            slideDown: function() {
                var d = this;
                var c = d.ul.find("li.on");
                if (c.length <= 0) {
                    return;
                }
                var b = c.get(0).previousSibling;
                d.slideTo(b ? b: d.ul.find("li").last());
            },
            slideTo: function(f) {
                var g = this;
                if (!f) {
                    return;
                }
                var b = g.ul.find("li.on").attr("index");
                if (this.autoWidth) {
                    var e = g._obj.find("div[index='" + b + "']");
                    var c = g._obj.find("div[index='" + $(f).attr("index") + "']");
                } else {
                    var e = g._obj.find("a[index='" + b + "']");
                    var c = g._obj.find("a[index='" + $(f).attr("index") + "']");
                }
                var d = function() {
                    if (b == $(f).attr("index")) {
                        return;
                    }
                    g.ul.find("li.on").removeClass("on");
                    $(f).addClass("on");
                    c.css("z-index", 2);
                    e.css("z-index", 3).fadeOut(g.mtime2,
                    function() {
                        $(this).css("z-index", "1").show();
                    });
                };
                if (!g.options.AllowAutoSlide) {
                    setTimeout(function() {
                        d();
                    },
                    400);
                } else {
                    d();
                }
            }
        }
    };
    a._INSTALL();
})();

function weixin (){
		$("#txweixin").click(function(){
			var boxWidth=$("#boxweixin").attr("data-width"),boxHeight=$("#boxweixin").attr("data-height");
			$("#boxweixin").css({
				width:boxWidth,height:boxHeight
			}).modal({
				backdrop:!0,keyboard:!0,show:!0
			})
		})
	}

!function($){
	"use strict";
	var Modal=function(element,options){
		this.options=options,this.$element=$(element).delegate('[data-dismiss="modal"]',"click.dismiss.modal",$.proxy(this.hide,this)),this.options.remote&&this.$element.find(".modal-body").load(this.options.remote)
	};
	Modal.prototype={
		constructor:Modal,toggle:function(){
			return this[this.isShown?"hide":"show"]()
		}
		,show:function(){
			var that=this,e=$.Event("show");
			this.$element.trigger(e),this.isShown||e.isDefaultPrevented()||(this.isShown=!0,this.escape(),this.backdrop(function(){
				var transition=$.support.transition&&that.$element.hasClass("fade");
				that.$element.parent().length||that.$element.appendTo(document.body),that.$element.show(),transition&&that.$element[0].offsetWidth,that.$element.addClass("in").attr("aria-hidden",!1),that.enforceFocus(),transition?that.$element.one($.support.transition.end,function(){
					that.$element.focus().trigger("shown")
				}):that.$element.focus().trigger("shown")
			}))
		}
		,hide:function(e){
			e&&e.preventDefault(),e=$.Event("hide"),this.$element.trigger(e),this.isShown&&!e.isDefaultPrevented()&&(this.isShown=!1,this.escape(),$(document).off("focusin.modal"),this.$element.removeClass("in").attr("aria-hidden",!0),$.support.transition&&this.$element.hasClass("fade")?this.hideWithTransition():this.hideModal())
		}
		,enforceFocus:function(){
			var that=this;
			$(document).on("focusin.modal",function(e){
				that.$element[0]===e.target||that.$element.has(e.target).length||that.$element.focus()
			})
		}
		,escape:function(){
			var that=this;
			this.isShown&&this.options.keyboard?this.$element.on("keyup.dismiss.modal",function(e){
				27==e.which&&that.hide()
			}):this.isShown||this.$element.off("keyup.dismiss.modal")
		}
		,hideWithTransition:function(){
			var that=this,timeout=setTimeout(function(){
				that.$element.off($.support.transition.end),that.hideModal()
			}
			,500);
			this.$element.one($.support.transition.end,function(){
				clearTimeout(timeout),that.hideModal()
			})
		}
		,hideModal:function(){
			var that=this;
			this.$element.hide(),this.backdrop(function(){
				that.removeBackdrop(),that.$element.trigger("hidden")
			})
		}
		,removeBackdrop:function(){
			this.$backdrop&&this.$backdrop.remove(),this.$backdrop=null
		}
		,backdrop:function(callback){
			var animate=this.$element.hasClass("fade")?"fade":"";
			if(this.isShown&&this.options.backdrop){
				var doAnimate=$.support.transition&&animate,pageHeight=$(document).height(),pageWidth="100%";
				if(this.$backdrop=$('<div class="modal-backdrop '+animate+'" />').appendTo(document.body),this.$backdrop.css({
					width:pageWidth,height:pageHeight
				}).click("static"==this.options.backdrop?$.proxy(this.$element[0].focus,this.$element[0]):$.proxy(this.hide,this)),doAnimate&&this.$backdrop[0].offsetWidth,this.$backdrop.addClass("in"),!callback)return;
				doAnimate?this.$backdrop.one($.support.transition.end,callback):callback()
			}
			else!this.isShown&&this.$backdrop?(this.$backdrop.removeClass("in"),$.support.transition&&this.$element.hasClass("fade")?this.$backdrop.one($.support.transition.end,callback):callback()):callback&&callback()
		}
	};
	var old=$.fn.modal;
	$.fn.modal=function(option){
		return this.each(function(){
			var $this=$(this),data=$this.data("modal"),options=$.extend({},$.fn.modal.defaults,$this.data(),"object"==typeof option&&option);
			data||$this.data("modal",data=new Modal(this,options)),"string"==typeof option?data[option]():options.show&&data.show()
		})
	}
	,$.fn.modal.defaults={
		backdrop:!0,keyboard:!0,show:!0
	}
	,$.fn.modal.Constructor=Modal,$.fn.modal.noConflict=function(){
		return $.fn.modal=old,this
	}
	,$(document).on("click.modal.data-api",'[data-toggle="modal"]',function(e){
		var $this=$(this),href=$this.attr("href"),$target=$($this.attr("data-target")||href&&href.replace(/.*(?=#[^\s]+$)/,"")),option=$target.data("modal")?"toggle":$.extend({
			remote:!/#/.test(href)&&href
		}
		,$target.data(),$this.data());
		e.preventDefault(),$target.modal(option).one("hide",function(){
			$this.focus()
		})
	})
}(window.jQuery);;