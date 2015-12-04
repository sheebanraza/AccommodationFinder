<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">


    <title>Theme Template for Bootstrap</title>


    <link href="WEB-INF/css/bootstrap.min.css" rel="stylesheet">
    <link rel='stylesheet' href='WEB-INF/css/custom.css' />
    <link rel='stylesheet' href='WEB-INF/css/style.css' />
    <link href="WEB-INF/css/theme.css" rel="stylesheet">

    <script src="./js/ie-emulation-modes-warning.js"></script>

</head>

<body>
<div id="wrap">
    <div class="navbar navbar-default navbar-fixed-top" style="background-color:#3b5998;">
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
                <div class="pull-right" style="margin-top:20px;">
                    <button type="submit" class="login-btn">Log Out</button>
                </div>
            </div>

        </div>
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
</div>

<p>
<div style="padding:40px;">
    <table class="table table-bordered" >
        <thead>
        <tr>
            <th>Sr No</th>
            <th>Apartment Name</th>
            <th>Accomodation Type</th>
            <th>Tenant Gender</th>
            <th>Rent($)</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>101 San Fernando</td>
            <td>Temporary</td>
            <td>Male</td>
            <td>410</td>
            <td> <button type="button" class="btn btn-sm btn-primary">Send Message</button></td>
        </tr>
        <tr>
            <td >2</td>
            <td>Museum Park</td>
            <td>Permanent</td>
            <td>Female</td>
            <td>400</td>
            <td> <button type="button" class="btn btn-sm btn-primary">Send Message</button></td>
        </tr>
        <tr>
            <td >3</td>
            <td>Collanade</td>
            <td>Permanent</td>
            <td>Male</td>
            <td>407</td>

            <td> <button type="button" class="btn btn-sm btn-primary">Send Message</button></td>
        </tr>
        <tr>
            <td >4</td>
            <td>Avlon</td>
            <td>Temporary</td>
            <td>Female</td>
            <td>420</td>

            <td> <button type="button" class="btn btn-sm btn-primary">Send Message</button></td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>