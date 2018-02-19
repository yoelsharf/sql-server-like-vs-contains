/***** 

	Script Created by: Yoel Sharf
	The experiment
	 
*****/

use PerfDemo;

Select * from Table_1 where text like '%happened%' -- Takes 7s

Select * from Table_1 where text = 'adding that we all know what would have happened if she said the same thing about Islam' -- Takes 0s

Select * from Table_1 where contains( Text,'happened') -- Takes 0s