#!/usr/bin/perl
if (!$::Driver) { use FindBin; exec("./driver.pl", @ARGV, $0); die; }
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# Copyright 2003 by Wilson Snyder. This program is free software; you can
# redistribute it and/or modify it under the terms of either the GNU
# General Public License or the Perl Artistic License.

top_filename("t/t_sys_file_basic.v");

compile (
	 v_flags2 => ['+incdir+../include',
		      '+define+AUTOFLUSH'],
	 verilator_flags2 => ['--autoflush'],
	 );

execute (
	 check_finished=>1,
     );

ok(1);
1;