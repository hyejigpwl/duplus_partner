


<head>
    <script src="https://sdk.paymentshub.com/pay-now.min.js"></script>
    <script src="/partner/js/ph.js"></script>
    <!--link rel="stylesheet" href="ph.css"-->
    <title>Checkout</title>
</head>

<body onload="initialize_sdk('3130034085094','221e1b92c7ca15485f355ce725200032')">



<form name="frm" id="frm" method="post"  action="https://proxy.payanywhere.com/auth" onsubmit="orderChk();return false; " >
    <label>Card Number:</label>
    <div id="card-number" class="form-field" >
        5387-2082-3456-1091
    </div>
    <label>CVV:</label>
    <div id="card-cvv" class="form-field" >
        973
    </div>
    <!-- comment out or remove the below section if you do not want the customer to enter their billing street and zip for AVS -->
    <label>Street:</label>
    <div id="address" class="form-field" >
        3130 WILSHIRE BLVD LOS ANGELES, CA
    </div>
    <label>Zip:</label>
    <div id="zipFirst5" class="form-field" >
        90010
    </div>
    <label>Zip+4:</label>
    <div id="zipPlus4" class="form-field" >
        1277
    </div>
    <input type="hidden" id="avs-fields-data" />
    <!-- end of AVS section -->
    <input type="hidden" id="card-token" />
    <input type="button" onclick="getToken()" name="tokenize_and_pay" value="Submit Payment" />

</form>


</body>