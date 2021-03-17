
/****************************************************
 **
 **   NAME     : functions
 **   TYPE     : methods
 **   VERSION  : 1.0
 **   FILE     : functions.pde
 **   SINCE    : 2021-03-02
 **   DATE     : 2021-03-16
 **   LANGUAGE : none
 **   AUTHOR   : Bastian Flügel (dev-fluegel@gmx.net)
 **   COMPILER : Processing 3.5.4
 **
 **   DESCRIPTION :
 **     // write here
 **
 **   USED :
 **     - none
 **
 ****************************************************/


int monthLength(int yearID, int monthID) {

	int month_length = -1;
	boolean leap_year = false;

	if(yearID < 2000) {	//
		println("OUT OF RANGE! year earlier than 2000");
	}

	if(yearID % 4 == 0) {
		leap_year = true;
	}

	if(yearID % 100 == 0) {
		leap_year = false;
	}

	if(yearID % 400 == 0) {
		leap_year = true;
	}


	switch (monthID) {
		case 1: // JAN
			month_length = 31;
			break;
		case 2: // FEB
			if(leap_year) {
				month_length = 29;}
			if(!leap_year) {
				month_length = 28;}
			break;
		case 3:	// MAR
			month_length = 31;
			break;
		case 4:	// APR
			month_length = 30;
			break;
		case 5:	// MAY
			month_length = 31;
			break;
		case 6:	// JUN
			month_length = 30;
			break;
		case 7:	// JUL
			month_length = 31;
			break;
		case 8:	// AUG
			month_length = 31;
			break;
		case 9:	// SEP
			month_length = 30;
			break;
		case 10: // OCT
			month_length = 31;
			break;
		case 11: // NOV
			month_length = 30;
			break;
		case 12: // DEC
			month_length = 31;
			break;
		default: // WRONG FORMAT
			println("ERROR! wrong month format. use 1-12.");
			break;
	}

	return month_length;
}



int dayPerMonth ( int year, int month, int startDay, int endDay ) {

  int counter = -1;
  int totalLength = monthLength(year, month);

  if ( startDay < 0 || startDay > totalLength ) {
    println("ERROR!!! @dayPerMonth.startDay:int >> out of range");
    return -99;
  }

  if ( endDay < 0 || endDay > totalLength ) {
    println("ERROR!!! @dayPerMonth.endDay:int >> out of range");
    return -99;
  }

  if ( endDay != 0 && endDay < startDay ) {
    println("ERROR!!! @dayPerMonth.endDay:int >>  endDay > startDay");
    return -99;
  }

  counter = totalLength;

  if ( startDay > 1 && startDay < totalLength ) {
    counter = totalLength - ( startDay - 1 );
  }

  if ( endDay > 1 && endDay > startDay && endDay < totalLength ) {
    counter = counter - ( totalLength - ( endDay ) );
  }

  return counter;

}
