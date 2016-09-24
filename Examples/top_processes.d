#!/usr/sbin/dtrace -s

#pragma D option quiet

profile:::tick-1001
{
	@counter[execname] = count();
}

profile:::tick-1sec
{
	trunc(@counter, 5);
	printf("\n");
	printa("%s --> %@d\n", @counter);
	trunc(@counter);
}
