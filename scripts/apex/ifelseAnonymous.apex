RankHandler rh=new RankHandler();
string won =rh.rankPrize(2);
System.debug('for rank 2 prize '+won);

string won2 =rh.rankPrize(50);
System.debug(won2);

string won3 =rh.rankPrize(1);
System.debug(won3);

RankHandler r = new RankHandler();
system.debug(r.rankPrizeSwitch(1));
system.debug(r.rankPrizeSwitch(10));
system.debug(r.rankPrizeSwitch(100));