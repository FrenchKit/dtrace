#!/usr/sbin/dtrace -s

#pragma D option quiet

dtrace:::BEGIN
{
	printf("Hello World!\n");
	exit(0);
}
