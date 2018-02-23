<!DOCTYPE html>
<html ng-app="gadgetapp">

  <head>
    <meta charset="utf-8" />
    <title>Ultra-Fast Gadgets</title>
    <script>document.write('<base href="' + document.location + '" />');</script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/fontawesome/4.5.0/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://mgcrea.github.io/angular-strap/styles/libs.min.css">
    <link rel="stylesheet" href="https://mgcrea.github.io/angular-strap/styles/docs.min.css">
    <script src="https://cdn.jsdelivr.net/angularjs/1.5.5/angular.min.js" data-semver="1.5.5"></script>
    <script src="https://cdn.jsdelivr.net/angularjs/1.5.5/angular-animate.min.js" data-semver="1.5.5"></script>
    <script src="https://cdn.jsdelivr.net/angularjs/1.5.5/angular-sanitize.min.js" data-semver="1.5.5"></script>
    <script src="https://mgcrea.github.io/angular-strap/dist/angular-strap.js" data-semver="v2.3.8"></script>
    <script src="https://mgcrea.github.io/angular-strap/dist/angular-strap.tpl.js" data-semver="v2.3.8"></script>
    <script src="https://mgcrea.github.io/angular-strap/docs/angular-strap.docs.tpl.js" data-semver="v2.3.8"></script>
    <script src="app/gadgetapp.js"></script>
  </head>

  <body ng-controller="MainCtrl">

    <div class="bs-docs-section" ng-controller="TypeaheadCtrl">

        <h2>Ultra-Fast Gadgets</h2>

        <form class="form-inline" role="form">
            <div class="form-group">
                <label><i class="fa fa-globe"></i> Gadgets</label>
                <input type="text" 
                    class="form-control" 
                    style="width:600px"
                    ng-model="selectedGadget" 
                    bs-options="gadget for gadget in gadgets" 
                    placeholder="search" 
                    bs-typeahead>
            </div>
        </form>

    </div>

</body>

</html>