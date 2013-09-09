<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="css/normalize.min.css" />
        <link rel="stylesheet" href="css/main.css">
        <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

        <div class="header-container">
            <header class="wrapper clearfix">
            <img src="img/logo.png" />
                <!--<h1 class="title">Coldfunctional</h1>
                
                 <nav>
                    <ul>
                        <li class="donate"><a href="#">
                        	Donate
                        </a></li>
                        <li class="aboutme"><a href="#">Me</a></li>
                    </ul>
                </nav>
               --->
            </header>
        </div>

        <div class="main-container">
            <div class="main wrapper clearfix">
                <aside>
                   <!-- <h3>aside</h3> -->
                    <p>
	                    <ul>
	                        <li class="donate">
	                        	<a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=VQDZJ7FC3CXNL">
	                        		Donate
	                        	</a>
	                        </li>
	                        <li class="github">
	                        	<a href="https://github.com/clitnak/coldfunctional">
	                        		Github
	                        	</a>
	                        </li>
	                        <li class="aboutme">
	                        	<a href="http://www.linkedin.com/profile/view?id=2315405">
	                        		About Me
	                        	</a>
	                        </li>
	                    </ul>
                    </p>
                </aside>
                <article>
                    <header>
                        <h1>What is it?</h1>
                        <p>
							ColdFunctional is a core language extension for Railo, inspired by Underscore, Ruby, 
							Scala, and Clojure. It adds more <em>functional</em> programming language support to the 
							coldfusion language, by providing more built-in higher-order functions. Just 
							install the extension and restart Railo and you can start using this new 
							functionality.
						</p>
                    </header>
                    <footer>
                    </footer>
                </article>

                <article id="collection-functions">
                    <header>
                        <h1>Collection Functions</h1>
                        <p>
							...ya know, for arrays, structs, and even queries.
							Each of these collection functions belongs to a function family. 
							All functions in a family has essentially the same functionality, but it may 
							have a more expressive name or different semantics. It may operate on 
							different data structures (array, structs, queries). Some 
							functions in a function family are already built into Railo. 
							This extension tries to fill in the gaps.
						</p>
                    </header>
<section>
<h2><code>Each</code> function family</h2>
<code>each</code> applies a function to each element in a collection.

<h5>Member Functions</h5>
<ul>
	<li> <code class="example"> array.each( function(value:any) { return void; } )</code> 
	<div class="builtin" /> </li>
	<li> <code class="example"> struct.each( function(value:any) { return void; } )</code> 
	<div class="builtin" /> </li>
	<li> <code class="example"> query.each( function(record:struct) { return void; } )</code> </li>
</ul>
<h5>Explicit Functions</h5>
<ul>
	<li> <code class="example"> ArrayEach( array, function )</code> 
	<div class="builtin" /> </li>
	<li> <code class="example"> StructEach( struct, function )</code> 
	<div class="builtin" /> </li>
	<li> <code class="example"> QueryEach( query, function )</code> </li>
</ul>
<h5>Implict Function</h5>
<ul>
	<li> <code class="example"> each( array, function )</code> 
	<div class="builtin" /> </li>
	<li> <code class="example"> each( struct, function )</code> 
	<div class="builtin" /> </li>
	<li> <code class="example"> each( query, function )</code> </li>
</ul>
</section>

<section>
<h2><code>Map</code> function family</h2>
<code>map</code> applies a given function element-wise to a collection of elements 
and returns a collection of results.
There are three ways to to use the </code>map</code>

<h5>Member Functions</h5>
<ul>
	<li> <code class="example"> array.map( function(value:any) { return newValue; } )</code> </li>
	<li> <code class="example"> struct.map( function(value:any) { return newValue; } )</code> </li>
	<li> <code class="example"> query.map( function(record:struct) { return newRecordStruct; } )</code> </li>
</ul>
<h5>Explicit Functions</h5>
<ul>
	<li> <code class="example"> ArrayMap( array, function )</code> </li>
	<li> <code class="example"> StructMap( struct, function )</code> </li>
	<li> <code class="example"> QueryMap( query, function )</code> </li>
</ul>
<h5>Implict Function</h5>
<ul>
	<li> <code class="example"> map( array, function )</code> </li>
	<li> <code class="example"> map( struct, function )</code> </li>
	<li> <code class="example"> map( query, function )</code> </li>
</ul>
</section>

<section>	
<h2><code>Filter</code> function family</h2>
<code>filter</code> selects all elements in the in a collection where element satisfies a 
predicate function.

<h5>Member Functions</h5>
<ul>
	<li> <code class="example"> array.filter( function(value:any) { return boolean; } )</code> 
	<div class="builtin" /> </li>
	<li> <code class="example"> struct.filter( function(value:any) { return boolean; } )</code> 
	<div class="builtin" /> </li>
	<li> <code class="example"> query.filter( function(record:struct) { return boolean; } )</code> </li>
</ul>
<h5>Explicit Functions</h5>
<ul>
	<li> <code class="example"> ArrayFilter( array, function )</code>
	<div class="builtin" /> </li>
	<li> <code class="example"> StructFilter( struct, function )</code> 
	<div class="builtin" /> </li>
	<li> <code class="example"> QueryFilter( query, function )</code> </li>
</ul>
<h5>Implict Function</h5>
<ul>
	<li> <code class="example"> filter( array, function )</code> </li>
	<li> <code class="example"> filter( struct, function )</code> </li>
	<li> <code class="example"> filter( query, function )</code> </li>
</ul>
</section>

<section>
<h2><code>Reduce</code> function family</h2>
<code>reduce</code> will reduce a collection to a single value, applying the provided reduce function. 

<h5>Member Functions</h5>
<ul>
	<li> <code class="example"> array.reduce( function(value:any, value:any) { return boolean; } )</code> </li>
	<li> <code class="example"> struct.reduce( function(value:any, value:any) { return boolean; } )</code> </li>
</ul>
<h5>Explicit Functions</h5>
<ul>
	<li> <code class="example"> ArrayReduce( array, function )</code> </li>
	<li> <code class="example"> StructReduce( struct, function )</code> </li>
</ul>
<h5>Implict Function</h5>
<ul>
	<li> <code class="example"> reduce( array, function )</code> </li>
	<li> <code class="example"> reduce( struct, function )</code> </li>
</ul>
NOTE:  <code>query.reduce</code> was not implemented, because it did not seem very useful 
to reduce a query to a single row. If you do think this would be useful, let me know.
</section>

<section>
<h2><code>Any</code> function family</h2>
<code>any</code> returns true if any element in the collection passes the test

<h5>Member Functions</h5>
<ul>
	<li> <code class="example"> array.any( function(value:any) { return boolean; } )</code> </li>
	<li> <code class="example"> struct.any( function(value:any) { return boolean; } )</code> </li>
	<li> <code class="example"> query.any( function(record:struct) { return boolean; } )</code> </li>
</ul>
<h5>Explicit Functions</h5>
<ul>
	<li> <code class="example"> ArrayAny( array, function )</code> </li>
	<li> <code class="example"> StructAny( struct, function )</code> </li>
	<li> <code class="example"> QueryAny( query, function )</code> </li>
</ul>
<h5>Implict Function</h5>
<ul>
	<li> <code class="example"> any( array, function )</code> </li>
	<li> <code class="example"> any( struct, function )</code> </li>
	<li> <code class="example"> any( query, function )</code> </li>
</ul>
</section>

                    <footer>
                        <h3>Future </h3>
           

						In the future this extension will provide many other higher order functions (check out scala, ruby, or clojure):
						<ul>
							<li> <code>groupBy</code> </li>
							<li> <code>uniq</code> </li>
							<li> <code>pluck</code> </li>
							<li> <code>compose</code> (or <code>comp</code> or <code>andThen</code>) </li>
							<li> <code>invoke</code> </li>
							<li> ...and more</li>
						</ul>
                    </footer>
                </article>



            </div> <!-- #main -->
        </div> <!-- #main-container -->

        <div class="footer-container">
            <footer class="wrapper">

            </footer>
        </div>

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.1.min.js"><\/script>')</script>

        <script src="js/main.js"></script>

        <script>
            var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
            (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
            g.src='//www.google-analytics.com/ga.js';
            s.parentNode.insertBefore(g,s)}(document,'script'));
        </script>
    </body>
</html>