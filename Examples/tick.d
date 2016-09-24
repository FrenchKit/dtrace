#!/usr/sbin/dtrace -s

#pragma D option quiet

profile:::tick-1sec
{
	printf("on cpu %d: execname is %s\n", cpu, execname);
	@[execname] = count()
}
