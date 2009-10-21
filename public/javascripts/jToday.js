// jToday a simple jQuery date display plugin by Donavon West
// Copyright 2009 Donavon West. All rights reserved

(function($, document) {
//--------------------
$.fn.jToday = function(p_date) {

	var jTodayData = "jTodayData", div = "div", match, data, months = "Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec".split(" ");

	// ------------------------
	// set the class and inner HTML
	function setStuff(p_el, p_class, p_str) {
		p_el.innerHTML = p_str;
		p_el.className = p_class + " " + p_class + p_str;
	}
	
	// ------------------------
	//constructor code

	return this.each(function() {
		data = $.data(this, jTodayData);
		if (!data) { //only done once per element
			data = {};
			
			//does innerHTML contain a date string? (i.e. YYYY-MM-DD)
			match = this.innerHTML.match(/^(\d\d\d\d)-(\d\d)-(\d\d)( |$|T)/);
			if (match) {
				data.date = new Date(match[1], parseInt(match[2],10)-1, match[3]); //yes, use it
			} else {
				data.date = p_date ? p_date : new Date(); //use the date passed in (or default to today)
			}

			//create the sub elements
			this.innerHTML = "";
			data.yearEl = document.createElement(div);
			this.appendChild(data.yearEl);
			data.monthEl = document.createElement(div);
			this.appendChild(data.monthEl);
			data.dayEl = document.createElement(div);
			this.appendChild(data.dayEl);
			$.data(this, jTodayData, data); //save it for next time
		} else {
			data.date = p_date ? p_date : data.date; //use the date passed in (or the old value if undefined)
		}

		setStuff(data.yearEl, "year", data.date.getFullYear().toString() );
		setStuff(data.monthEl, "month", months[data.date.getMonth()] );
		setStuff(data.dayEl, "day", (data.date.getDate()).toString() );
	});

};

//--------------------
})(jQuery, document); //minify trick, plus don't EVER assume that $ is the jQuery object. it's just bad