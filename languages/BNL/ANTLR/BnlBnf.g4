grammar BnlBnf;
@header {package org.softlang.bnl;}

number 	: bits rest WS? EOF;
bits 	: bit | bits bit;
bit 	: '0' | '1';
rest 	: | '.' bits;
WS : [ \t\n\r]+ ;
