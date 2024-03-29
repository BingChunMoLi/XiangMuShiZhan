(function ($, window, document, undefined) {

	//定义Code的构造函数
	var Code = function (ele, opt) {
		this.$element = ele,
			this.defaults = {
				type: 1,
				figure: 100,	//位数，仅在type=2时生效
				arith: 0,	//算法，支持加减乘，0为随机，仅在type=2时生效
				width: '200px',
				height: '60px',
				fontSize: '30px',
				codeLength: 6,
				btnId: 'check-btn',
				ready: function () { },
				success: function () { },
				error: function () { }
			},
			this.options = $.extend({}, this.defaults, opt)
	};
	var _code_color1 = ['#fffff0', '#f0ffff', '#f0fff0', '#fff0f0'];
	var _code_color2 = ['#FF0033', '#006699', '#993366', '#FF9900', '#66CC66', '#FF33CC'];

	//定义Code的方法
	Code.prototype = {
		init: function () {
			var _this = this;
			this.loadDom();
			this.setCode();
			this.options.ready();
			this.$element[0].onselectstart = document.body.ondrag = function () {
				return false;
			};
			//点击验证码
			this.$element.find('.verify-code, .verify-change-code').on('click', function () {
				_this.setCode();
			});
			//确定的点击事件
			this.htmlDoms.code_btn.on('click', function () {
				_this.checkCode();
			})
		},

		//加载页面
		loadDom: function () {
			var panelHtml = '<div class="verify-code"></div><div class="verify-input-area"><input type="text" class="varify-input-code" /></div>';
			this.$element.append(panelHtml);
			this.htmlDoms = {
				code_btn: $('#' + this.options.btnId),
				code: this.$element.find('.verify-code'),
				code_area: this.$element.find('.verify-code-area'),
				code_input: this.$element.find('.varify-input-code'),
			};
			this.htmlDoms.code.css({ 'width': this.options.width, 'height': this.options.height, 'line-height': this.options.height, 'font-size': this.options.fontSize });
			this.htmlDoms.code_area.css({ 'width': this.options.width });
		},


		//设置验证码
		setCode: function () {

			var color1Num = Math.floor(Math.random() * 3);
			var color2Num = Math.floor(Math.random() * 5);

			this.htmlDoms.code.css({ 'background-color': _code_color1[color1Num], 'color': _code_color2[color2Num] });
			this.htmlDoms.code_input.val('');

			var code = '';
			this.code_chose = '';

			if (this.options.type == 1) {		//普通验证码
				for (var i = 0; i < this.options.codeLength; i++) {
					var charNum = Math.floor(Math.random() * 52);
					var tmpStyle = (charNum % 2 == 0) ? "font-style:italic;margin-right: 10px;" : "font-weight:bolder;";
					tmpStyle += (Math.floor(Math.random() * 2) == 1) ? "font-weight:bolder;" : "";

					this.code_chose += _code_chars[charNum];
					code += '<font style="' + tmpStyle + '">' + _code_chars[charNum] + '</font>';
				}
			} else {		//算法验证码
				var num1 = Math.floor(Math.random() * this.options.figure);
				var num2 = Math.floor(Math.random() * this.options.figure);
				if (this.options.arith == 0) {
					var tmparith = Math.floor(Math.random() * 3);
				}
				switch (tmparith) {
					case 1:
						this.code_chose = parseInt(num1) + parseInt(num2);
						code = num1 + ' + ' + num2 + ' = ?';
						break;
					case 2:
						if (parseInt(num1) < parseInt(num2)) {
							var tmpnum = num1;
							num1 = num2;
							num2 = tmpnum;
						}
						this.code_chose = parseInt(num1) - parseInt(num2);
						code = num1 + ' - ' + num2 + ' = ?';
						break;
					default:
						this.code_chose = parseInt(num1) * parseInt(num2);
						code = num1 + ' × ' + num2 + ' = ?';
						break;
				}
			}
			this.htmlDoms.code.html(code);
		},
		//比对验证码
		checkCode: function () {
			if (this.options.type == 1) {		//普通验证码
				var own_input = this.htmlDoms.code_input.val().toUpperCase();
				this.code_chose = this.code_chose.toUpperCase();
			} else {
				var own_input = this.htmlDoms.code_input.val();
			}

			if (own_input == this.code_chose) {
				this.options.success();
			} else {
				this.options.error();
				this.setCode();
			}
		}
	};
	//定义Slide的构造函数
	var Slide = function (ele, opt) {
		this.$element = ele,
			this.defaults = {

				type: 1,
				vOffset: 5,
				vSpace: 5,
				imgName: ['1.jpg', '2.jpg'],
				imgSize: {
					width: '400px',
					height: '200px',
				},
				blockSize: {
					width: '50px',
					height: '50px',
				},
				barSize: {
					width: '400px',
					height: '40px',
				},
				ready: function () { },
				success: function () { },
				error: function () { }
			},
			this.options = $.extend({}, this.defaults, opt)
	};

	//定义Points的构造函数
	var Points = function (ele, opt) {
		this.$element = ele,
			this.defaults = {
				defaultNum: 4,	//默认的文字数量
				checkNum: 3,	//校对的文字数量
				vSpace: 5,	//间隔
				imgName: ['1.jpg', '2.jpg'],
				imgSize: {
					width: '400px',
					height: '200px',
				},
				barSize: {
					width: '400px',
					height: '40px',
				},
				ready: function () { },
				success: function () { },
				error: function () { }
			},
			this.options = $.extend({}, this.defaults, opt)
	};

	//定义Points的方法
	Points.prototype = {
		init: function () {

			var _this = this;

			//加载页面
			_this.loadDom();

			_this.refresh();
			_this.options.ready();

			this.$element[0].onselectstart = document.body.ondrag = function () {
				return false;
			};

			//点击事件比对
			_this.$element.find('.verify-img-panel canvas').on('click', function (e) {

				_this.checkPosArr.push(_this.getMousePos(this, e));

				if (_this.num == _this.options.checkNum) {

					_this.num = _this.createPoint(_this.getMousePos(this, e));
					setTimeout(function () {
						var flag = _this.comparePos(_this.fontPos, _this.checkPosArr);

						if (flag == false) {	//验证失败

							_this.options.error();
							_this.$element.find('.verify-bar-area').css({ 'color': '#d9534f', 'border-color': '#d9534f' });
							_this.$element.find('.verify-msg').text('验证失败');

							setTimeout(function () {
								_this.$element.find('.verify-bar-area').css({ 'color': '#000', 'border-color': '#ddd' });
								_this.refresh();
							}, 400);

						} else {	//验证成功
							_this.$element.find('.verify-bar-area').css({ 'color': '#4cae4c', 'border-color': '#5cb85c' });
							_this.$element.find('.verify-msg').text('验证成功');
							_this.$element.find('.verify-refresh').hide();
							_this.$element.find('.verify-img-panel').unbind('click');
							_this.options.success();
						}
					}, 400);

				}

				if (_this.num < _this.options.checkNum) {
					_this.num = _this.createPoint(_this.getMousePos(this, e));
				}

			});

			//刷新
			_this.$element.find('.verify-refresh').on('click', function () {
				_this.refresh();
			});

		},
	};

	//在插件中使用codeVerify对象
	$.fn.codeVerify = function (options, callbacks) {
		var code = new Code(this, options);
		code.init();
	};

})(jQuery, window, document);
