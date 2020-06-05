# Licensed under the terms of the GNU GPL License version 2
	if (!$ignore_perl_version) {
		exit(1);
	}
			__init_refok|
	(?:__)?(?:u|s|be|le)(?:8|16|32|64)_t|
	(?:$Storage\s+)?${Type}\s+uninitialized_var\s*\(
	my $status = `perl $root/scripts/get_maintainer.pl --status --nom --nol --nogit --nogit-fallback -f $filename 2>&1`;
	return $status =~ /obsolete/i;
		my $git_last_include_commit = `git log --no-merges --pretty=format:"%h%n" -1 -- include`;
		$files = `git ls-files "include/*.h"`;
	my $output = `git log --no-color --format='%H %s' -1 $commit 2>&1`;
	if ($lines[0] =~ /^error: short SHA1 $commit is ambiguous\./) {
		my $lines = `git log --no-color --no-merges --pretty=format:'%H %s' $git_range`;
	if ($^V lt 5.10.0) {
      An upgrade to at least perl v5.10.0 is suggested.
		$formatted_email =~ s/$address.*$//;
		# Comments we are wacking completly including the begin
# Check for old stable address
		if ($line =~ /^\s*cc:\s*.*<?\bstable\@kernel\.org\b>?.*$/i) {
			ERROR("STABLE_ADDRESS",
			      "The 'stable' address should be 'stable\@vger.kernel.org'\n" . $herecurr);
		}

		     $line =~ /^\s*\[\<[0-9a-fA-F]{8,}\>\]/)) {
					# stack dump address
		    $line =~ /^\+\s*config\s+/) {
				if ($lines[$ln - 1] =~ /^\+\s*(?:bool|tristate)\s*\"/) {
				} elsif ($lines[$ln - 1] =~ /^\+\s*(?:---)?help(?:---)?$/) {
				if ($f =~ /^\s*config\s/) {
			# EFI_GUID is another special case
			} elsif ($line =~ /^\+.*\bEFI_GUID\s*\(/) {
# Blackfin: use hi/lo macros
		if ($realfile =~ m@arch/blackfin/.*\.S$@) {
			if ($line =~ /\.[lL][[:space:]]*=.*&[[:space:]]*0x[fF][fF][fF][fF]/) {
				my $herevet = "$here\n" . cat_vet($line) . "\n";
				ERROR("LO_MACRO",
				      "use the LO() macro, not (... & 0xFFFF)\n" . $herevet);
			}
			if ($line =~ /\.[hH][[:space:]]*=.*>>[[:space:]]*16/) {
				my $herevet = "$here\n" . cat_vet($line) . "\n";
				ERROR("HI_MACRO",
				      "use the HI() macro, not (... >> 16)\n" . $herevet);
			}
		}

		if ($^V && $^V ge 5.10.0 &&
		    $sline =~ /^\+\t+( +)(?:$c90_Keywords\b|\{\s*$|\}\s*(?:else\b|while\b|\s*$))/) {
		if ($^V && $^V ge 5.10.0 &&
		      $sline =~ /^\+\s+(?:union|struct|enum|typedef)\b/ ||
# Blackfin: don't use __builtin_bfin_[cs]sync
		if ($line =~ /__builtin_bfin_csync/) {
			my $herevet = "$here\n" . cat_vet($line) . "\n";
			ERROR("CSYNC",
			      "use the CSYNC() macro in asm/blackfin.h\n" . $herevet);
		}
		if ($line =~ /__builtin_bfin_ssync/) {
			my $herevet = "$here\n" . cat_vet($line) . "\n";
			ERROR("SSYNC",
			      "use the SSYNC() macro in asm/blackfin.h\n" . $herevet);
		}

		if ($line =~ /(.*)\b((?:if|while|for|switch|(?:[a-z_]+|)for_each[a-z_]+)\s*\(|do\b|else\b)/ && $line !~ /^.\s*\#/) {
		if ($line =~ /\b(?:(?:if|while|for|(?:[a-z_]+|)for_each[a-z_]+)\s*\(|(?:do|else)\b)/ && $line !~ /^.\s*#/ && $line !~ /\}\s*while\s*/) {
               }
               }
# printk should use KERN_* levels.  Note that follow on printk's on the
# same line do not need a level, so we use the current block context
# to try and find and validate the current printk.  In summary the current
# printk includes all preceding printk's which have no newline on the end.
# we assume the first bad printk is the one to report.
		if ($line =~ /\bprintk\((?!KERN_)\s*"/) {
			my $ok = 0;
			for (my $ln = $linenr - 1; $ln >= $first_line; $ln--) {
				#print "CHECK<$lines[$ln - 1]\n";
				# we have a preceding printk if it ends
				# with "\n" ignore it, else it is to blame
				if ($lines[$ln - 1] =~ m{\bprintk\(}) {
					if ($rawlines[$ln - 1] !~ m{\\n"}) {
						$ok = 1;
					}
					last;
				}
			}
			if ($ok == 0) {
				WARN("PRINTK_WITHOUT_KERN_LEVEL",
				     "printk() should include KERN_ facility level\n" . $herecurr);
			}
		if ($line =~ /\bpr_warning\s*\(/) {
			if (WARN("PREFER_PR_LEVEL",
				 "Prefer pr_warn(... to pr_warning(...\n" . $herecurr) &&
			    $fix) {
				$fixed[$fixlinenr] =~
				    s/\bpr_warning\b/pr_warn/;
			}
		}

		if (($line=~/$Type\s*$Ident\(.*\).*\s*{/) and
		    !($line=~/\#\s*define.*do\s\{/) and !($line=~/}/)) {
				  "open brace '{' following function declarations go on the next line\n" . $herecurr) &&
			    $prefix !~ /[{,]\s+$/ &&
		    $line =~ /do\{/) {
				$fixed[$fixlinenr] =~ s/^(\+.*(?:do|\)))\{/$1 {/;
		if ($line =~ /}(?!(?:,|;|\)))\S/) {
		if ($^V && $^V ge 5.10.0 && defined($stat) &&
			if ($^V && $^V ge 5.10.0 &&
		if ($^V && $^V ge 5.10.0 &&
		if ($^V && $^V ge 5.10.0 &&
#gcc binary extension
			if ($var =~ /^$Binary$/) {
				if (WARN("GCC_BINARY_CONSTANT",
					 "Avoid gcc v4.3+ binary constant extension: <$var>\n" . $herecurr) &&
				    $fix) {
					my $hexval = sprintf("0x%x", oct($var));
					$fixed[$fixlinenr] =~
					    s/\b$var\b/$hexval/;
				}
			}

#Ignore SI style variants like nS, mV and dB (ie: max_uV, regulator_min_uA_show)
			    $var !~ /^(?:[a-z_]*?)_?[a-z][A-Z](?:_[a-z_]+)?$/ &&
			my $herectx = $here . "\n";

			for (my $n = 0; $n < $stmt_cnt; $n++) {
				$herectx .= raw_line($linenr, $n) . "\n";
			}
				$tmp_stmt =~ s/\b(typeof|__typeof__|__builtin\w+|typecheck\s*\(\s*$Type\s*,|\#+)\s*\(*\s*$arg\s*\)*\b//g;
				my $use_cnt = $tmp_stmt =~ s/\b$arg\b//g;
				my $herectx = $here . "\n";
				for (my $n = 0; $n < $cnt; $n++) {
					$herectx .= raw_line($linenr, $n) . "\n";
				}
		if ($^V && $^V ge 5.10.0 &&
				my $herectx = $here . "\n";

				for (my $n = 0; $n < $cnt; $n++) {
					$herectx .= raw_line($linenr, $n) . "\n";
				}
				my $herectx = $here . "\n";

				for (my $n = 0; $n < $cnt; $n++) {
					$herectx .= raw_line($linenr, $n) . "\n";
				}
# make sure symbols are always wrapped with VMLINUX_SYMBOL() ...
# all assignments may have only one of the following with an assignment:
#	.
#	ALIGN(...)
#	VMLINUX_SYMBOL(...)
		if ($realfile eq 'vmlinux.lds.h' && $line =~ /(?:(?:^|\s)$Ident\s*=|=\s*$Ident(?:\s|$))/) {
			WARN("MISSING_VMLINUX_SYMBOL",
			     "vmlinux.lds.h needs VMLINUX_SYMBOL() around C-visible symbols\n" . $herecurr);
		}

				my $herectx = $here . "\n";

				for (my $n = 0; $n < $cnt; $n++) {
					$herectx .= raw_line($linenr, $n) . "\n";
				}
		if ($line =~ /$String[A-Z_]/ || $line =~ /[A-Za-z0-9_]$String/) {
			CHK("CONCATENATED_STRING",
			    "Concatenated strings should use spaces between elements\n" . $herecurr);
			WARN("STRING_FRAGMENTS",
			     "Consecutive strings are generally better as a single string\n" . $herecurr);
		if ($rawline =~ /\\$/ && $rawline =~ tr/"/"/ % 2) {
			CHK("REDUNDANT_CODE",
			    "if this code is redundant consider removing it\n" .
				$herecurr);
			if ($s =~ /(?:^|\n)[ \+]\s*(?:$Type\s*)?\Q$testval\E\s*=\s*(?:\([^\)]*\)\s*)?\s*(?:devm_)?(?:[kv][czm]alloc(?:_node|_array)?\b|kstrdup|kmemdup|(?:dev_)?alloc_skb)/) {
		if ($^V && $^V ge 5.10.0 &&
		if ($^V && $^V ge 5.10.0) {
				    "usleep_range is preferred over udelay; see Documentation/timers/timers-howto.txt\n" . $herecurr);
				     "msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.txt\n" . $herecurr);
		if ($^V && $^V ge 5.10.0 &&
# check for c99 types like uint8_t
		if ($line =~ /\b($Declare)\s*$Ident\s*[=;,\[]/) {
				$kernel_type .= $1.'_t';
				WARN("PREFER_KERNEL_TYPES",
					"Prefer kernel type '$kernel_type' over '$type'\n" . $herecurr)
		# check for vsprintf extension %p<foo> misuses
		if ($^V && $^V ge 5.10.0 &&
			my $bad_extension = "";
				if ($fmt =~ /(\%[\*\d\.]*p(?![\WFfSsBKRraEhMmIiUDdgVCbGNO]).)/) {
					$bad_extension = $1;
					last;
			}
			if ($bad_extension ne "") {
				my $stat_real = raw_line($linenr, 0);
				for (my $count = $linenr + 1; $count <= $lc; $count++) {
					$stat_real = $stat_real . "\n" . raw_line($count, 0);
				WARN("VSPRINTF_POINTER_EXTENSION",
				     "Invalid vsprintf pointer extension '$bad_extension'\n" . "$here\n$stat_real\n");
		if ($^V && $^V ge 5.10.0 &&
#		if ($^V && $^V ge 5.10.0 &&
#		if ($^V && $^V ge 5.10.0 &&
#		if ($^V && $^V ge 5.10.0 &&
		if ($^V && $^V ge 5.10.0 &&
		if ($^V && $^V ge 5.10.0 &&
				     "usleep_range should not use min == max args; see Documentation/timers/timers-howto.txt\n" . "$here\n$stat\n");
				     "usleep_range args reversed, use min then max; see Documentation/timers/timers-howto.txt\n" . "$here\n$stat\n");
		if ($^V && $^V ge 5.10.0 &&
			my $stat_real = raw_line($linenr, 0);
		        for (my $count = $linenr + 1; $count <= $lc; $count++) {
				$stat_real = $stat_real . "\n" . raw_line($count, 0);
			}
		if ($^V && $^V ge 5.10.0 &&
			my $stat_real = raw_line($linenr, 0);
		        for (my $count = $linenr + 1; $count <= $lc; $count++) {
				$stat_real = $stat_real . "\n" . raw_line($count, 0);
			}
		    $stat =~ /^.\s*(?:extern\s+)?$Type\s*$Ident\s*\(\s*([^{]+)\s*\)\s*;/s &&
		if ($^V && $^V ge 5.10.0 &&
# check for pointless casting of kmalloc return
		if ($line =~ /\*\s*\)\s*[kv][czm]alloc(_node){0,1}\b/) {
		if ($^V && $^V ge 5.10.0 &&
		    $line =~ /\b($Lval)\s*\=\s*(?:$balanced_parens)?\s*([kv][mz]alloc(?:_node)?)\s*\(\s*(sizeof\s*\(\s*struct\s+$Lval\s*\))/) {
		if ($^V && $^V ge 5.10.0 &&
				my $ctx = '';
				my $herectx = $here . "\n";
				for (my $n = 0; $n < $cnt; $n++) {
					$herectx .= raw_line($linenr, $n) . "\n";
				}
		if ($^V && $^V ge 5.10.0 &&
		    $line =~ /\b($Lval)\s*\=\s*(?:$balanced_parens)?\s*krealloc\s*\(\s*\1\s*,/) {
				$has_break = 1 if ($fline =~ /\bswitch\b|\b(?:break\s*;[\s$;]*$|return\b|goto\b|continue\b)/);
		if ($^V && $^V ge 5.10.0 &&
			my $ctx = '';
			my $herectx = $here . "\n";
			for (my $n = 0; $n < $cnt; $n++) {
				$herectx .= raw_line($linenr, $n) . "\n";
			}
		if ($^V && $^V ge 5.10.0 &&
# whine about ACCESS_ONCE
		if ($^V && $^V ge 5.10.0 &&
		    $line =~ /\bACCESS_ONCE\s*$balanced_parens\s*(=(?!=))?\s*($FuncArg)?/) {
			my $par = $1;
			my $eq = $2;
			my $fun = $3;
			$par =~ s/^\(\s*(.*)\s*\)$/$1/;
			if (defined($eq)) {
				if (WARN("PREFER_WRITE_ONCE",
					 "Prefer WRITE_ONCE(<FOO>, <BAR>) over ACCESS_ONCE(<FOO>) = <BAR>\n" . $herecurr) &&
				    $fix) {
					$fixed[$fixlinenr] =~ s/\bACCESS_ONCE\s*\(\s*\Q$par\E\s*\)\s*$eq\s*\Q$fun\E/WRITE_ONCE($par, $fun)/;
				}
			} else {
				if (WARN("PREFER_READ_ONCE",
					 "Prefer READ_ONCE(<FOO>) over ACCESS_ONCE(<FOO>)\n" . $herecurr) &&
				    $fix) {
					$fixed[$fixlinenr] =~ s/\bACCESS_ONCE\s*\(\s*\Q$par\E\s*\)/READ_ONCE($par)/;
				}
			}
		}

		if ($^V && $^V ge 5.10.0 &&
				my $stat_real = raw_line($linenr, 0);
				for (my $count = $linenr + 1; $count <= $lc; $count++) {
					$stat_real = $stat_real . "\n" . raw_line($count, 0);
				}
					if (($val =~ /^$Int$/ && $val !~ /^$Octal$/) ||
					    ($val =~ /^$Octal$/ && length($val) ne 4)) {
		if ($line =~ /\b$mode_perms_string_search\b/) {
			my $val = "";
			my $oval = "";
			my $to = 0;
			my $curpos = 0;
			my $lastpos = 0;
			while ($line =~ /\b(($mode_perms_string_search)\b(?:\s*\|\s*)?\s*)/g) {
				$curpos = pos($line);
				my $match = $2;
				my $omatch = $1;
				last if ($lastpos > 0 && ($curpos - length($omatch) != $lastpos));
				$lastpos = $curpos;
				$to |= $mode_permission_string_types{$match};
				$val .= '\s*\|\s*' if ($val ne "");
				$val .= $match;
				$oval .= $omatch;
			}
			$oval =~ s/^\s*\|\s*//;
			$oval =~ s/\s*\|\s*$//;
			my $octal = sprintf("%04o", $to);
				$fixed[$fixlinenr] =~ s/$val/$octal/;
	if (!$is_patch && $file !~ /cover-letter\.patch$/) {
	if ($is_patch && $has_commit_log && $chk_signoff && $signoff == 0) {
		ERROR("MISSING_SIGN_OFF",
		      "Missing Signed-off-by: line(s)\n");