# Regular Expressions

### Regex Operators
m{PATTERN}modifiers # search a string for pattern match ; returns true or false  
/PATTERN/modifiers 

s|PATTERN|REPLACEMENT|modifiers #searching and replacing 
/PATTERN/REPLACEMENT/modifiers

$var = qr/PATTERN/modifiers; # precompile a search pattern 

$var =~ m/PATTERN/modifiers; # =~ binding(match) operator, binds a var or regex to a regex ; Used for match and replace operations ; Returns true if the match is found and vice versa.  
$var !~ m/PATTERN/modifiers; # match operator, negated version  
@array = $var =~ m/PATTERN/modifiers; # returns a list of the matched parts 


### Wildcards
/w.sh/ wish wash  
/wa*sh/ wash waaash wsh  #matches zero or more instances of char
/bo+k/ book bok  
/^w/ # matches 'w' at the beginning  
/w$/ # anchors 'w' at the end

### Modifiers
* changes behaviors of regex  
/word/i #ignores cases
/g #global modifier
/s #treats the string as a single line  
/m #treats the string as multiple lines  
/x #allows descriptive white spaces within the regex

## Extracting Matches
'''perl  
my $s = "This is a line of text";  

if( $s =~ /(..is).*(..ne).(..)/ ) {  
	say "match #1 is: $1;  
    say "match #2 is: $2;  
    say "match #3 is: $3;  
} else {  
	say 'No match.';  
}  
'''  
output:  
  match #1 is: This  
  match #2 is: line  
  match #3 is: of  

### List of Matches
'''perl  
my $s = "This is a line of text";
my @array = $s =~ /i(.)/g; #match operator in a list context; ()specifies what is returned at each element in the list  
say foreach @array; #foreach $s =~ /i(.)/g  
'''  
output:  
  s  
  s  
  n  

## Simple Matches
'''perl  
my $s = "This is aaaaaa line of text";  

if ( $s =~ /({3,5})/ ) {  
	say 'Match is: $1';  
} else {  
	say 'False';  
}  
'''  
	output: aaaaa 

## Matching Wildcards
* greedy naturally  
* ? 
	* used with wild cards  
		* lazy, matches as few as characters as possible
    * used with characters
    	* /(lin?e)/ #makes 'n' optional,i.e. matches zero or one occurrence

'''perl  
my $s = "This is a line of text";  

if ( $s =~ /(l.*e)/ ) {  
	say 'Match is: $1';  
} else {  
	say 'False';  
}  
'''  
output:  
	Match is: line of te  

## Matching Classes of Characters
* space  
	* \s #matches white space,i.e. spaces, tabs, new lines & vertical tabs  
	* \S #anything that is not a white space
* digits
	* \d
	* \D  
* word
	* \w
* custom class
    * []
'''perl  
my $s = "This is a 12345 of text";  

if ( my @a = $s =~ /([a-zA-Z0-9]+)/g ) { #^negated range  
	say 'Match is: ';  
    say foreach @a;
} else {  
	say 'False';  
}  
'''  
output:  
Match is:  
<pre>
This 
is
a
12345
line
of
text
</pre>

## Matching Metacharacters
* meta char
	* {}[]()^$.|*+?\
* escape character \

'''perl  
my $s = "This is (a line) of text";  

if ( $s =~ /(\(.*\))/ ) {  
	say 'Match is: $1';  
} else {  
	say 'False';  
}  
'''  
output:  
<pre>
(a line)
</pre>

## Search and Replace 
* I don't understand.
'''perl  
my $s = "This is a line of text";  

$s =~ s/(l\w+)/$1 $1 $1 $1;
say $s;
'''  
output:  
<pre>
This is a line line line line of text  
</pre>

## Splitting Strings

'''perl  
my $s = "This is a line of text";  

my @a = split(/\s+/, $s);
say foreach @a;
'''  