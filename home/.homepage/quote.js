<script type="text/javascript">
//store the quotations in arrays
quotes = [];
authors = [];
quotes[0] = "I have a new philosophy. I'm only going to dread one day at a time.";
authors[0] = "Charles Schulz";
quotes[1] = "Reality is the leading cause of stress for those in touch with it.";
authors[1] = "Jack Wagner";
quotes[2] = "Few things are harder to put up with than the annoyance of a good example.";
authors[2] = "Mark Twain";
quotes[3] = "The pure and simple truth is rarely pure and never simple.";
authors[3] = "Oscar Wilde";
quotes[4] = "There's no business like show business, but there are several businesses like accounting.";
authors[4] = "David Letterman";
quotes[5] = "Man invented language to satisfy his deep need to complain.";
authors[5] = "Lily Tomlin";

//calculate a random index number
index = Math.floor(Math.random() * quotes.length);

//display the quotation
document.write("<DL>\n");
document.write("<DT>" + "\"" + quotes[index] + "\"</DT>\n");
document.write("<DD>" + "-- " + authors[index] + "</DT>\n");
document.write("</DL>\n");

//done
</script>
