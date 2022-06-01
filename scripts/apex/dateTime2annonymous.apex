DateTimeMethodsDemo2 dtm=new DateTimeMethodsDemo2();
date newDate=date.today();
date newDate2= date.newInstance(2020,2,2);

boolean newDateLPcheck= dtm.leapYearCheck(newDate);

System.debug(newDateLPcheck);
boolean newDateLPcheck2= dtm.leapYearCheck(newDate2);

System.debug(newDateLPcheck2);