line_width = 30
title = 'Table of Contents'
contents =	 {
			'Chapter 1: Getting Started' => 'page1',
			'Chapter 2: Numbers'=> 'page 9',
			'Chapter 3:' => 'page 33'
		}
puts title.center(line_width)
contents.each{|k,v| puts k.ljust(line_width) + v.rjust(line_width)}

