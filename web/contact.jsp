<html>
<head>
    <title>Login</title>
    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <meta content="utf-8" http-equiv="encoding">x
    <link rel='stylesheet' href='./css/bootstrap.min.css' />
    <link rel='stylesheet' href='./css/custom.css' />
    <link rel='stylesheet' href='./css/style.css' />
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
</head>
<body>
<div id="wrap">
    <div class="navbar navbar-default navbar-fixed-top" style="background-color: #137CAD;">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" >facebook</a>
            </div>
            <div class="collapse navbar-collapse">
                <form class="navbar-form navbar-right" id="header-form" role="form" action="/afterSignIn" method="post" >
                    <div class="lt-left">

                    </div>
                    <div class="lt-right">
                        <a href="FindHomes.html"><img src="facebook.jpg" alt="Home"  style="width:40px;height:40px;"></a>
                    </div>
                </form>
            </div>
        </div>
    </div>



    <div class="">
        <div class="col-md-5">
            <br/> <br/> <br/><br/>
            <h1> San Jose Apartments</h1><br/>
            <img alt="" src="WEB-INF/sj.jpg">
        </div>
        <div class="col-md-2">
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <h1> Roommate Finder </h1>
            The smart way to find a nearby apartment on rent
        </div>
    </div>

    <div class="">
        <div class="col-md-7"></div>
        <div class="col-md-6">
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <h1> Easy Access</h1><br/>
            <ul>
                <li>Search Apartment with ease
                <li>Find affordable apartment in your budget
                <li>Location Based Search
            </ul>

        </div>
    </div>
    <div class="col-md-4"></div>
    <div class="col-md-4">
        <h1>Roommate Finder</h1>
        <p>
            <input type="text" class="form-control" name="inputLocation" id="inputUsername" placeholder="Location"><br/><br/>
            <button type="button" class="btn btn-lg btn-success">Find Apartments</button>
            <br/>
            <br/>
            <br/>
        </p>
        <div id="footer">
            <div class="container">
            </div>
        </div>
        </div>
    </div>
</body>
</html>
