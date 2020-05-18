add_cus_dep( 'glo', 'gls', 0, 'makeglossaries' );
add_cus_dep( 'greek_symbols-glo', 'greek_symbols-gls', 0, 'makeglossaries' );
add_cus_dep( 'latin_symbols-glo', 'latin_symbols-gls', 0, 'makeglossaries' );
add_cus_dep( 'indices-glo', 'indices-gls', 0, 'makeglossaries' );
add_cus_dep( 'akronym-glo', 'akronym-gls', 0, 'makeglossaries' );

$clean_ext .= "xdy slo glsdefs run.xml glo gls glg akronym-glo akronym-gls akronym-glg greek_symbols-glo greek_symbols-glg greek_symbols-gls latin_symbols-glo latin_symbols-glg latin_symbols-gls indices-glo indices-glg indices-gls";
   
sub makeglossaries {
      if ( $silent ) {
		print "$_[0]";
		system "makeglossaries -d build -q thesis";
	  }
	  else {
		print "$_[0]";
		system "makeglossaries -d build thesis";
	  };
	if ( -z "$_[0].glo" ) {
		print "Latexmk: Empty glo file, I am making dummy gls file\n";
		open GLS, ">$_[0].gls";
		close GLS;
	}
}
