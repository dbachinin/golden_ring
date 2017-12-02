//<!-- START OF SmartSource Data Collector TAG Copyright (c) 1996-2011 WebTrends Inc.  All rights reserved. -->
//<!-- Version: 10.0.0 : Tag Builder Version: NA : Created: NA -->
//<script type="text/javascript">

//---------------------------
// Site Configuration section
//---------------------------
window.webtrendsAsyncInit = function () {

    this.filterString = null;
    var wtMasterConfig = ({
        dcsid: dcsid,
        timezone: -5,
        fpcdom: fpcdom,
//customization here to populate onsite domainss list
        onsitedoms : (function () {
return (window.RegExp ? new RegExp("javascript|.*hilton.com|.*hiltonworldwide.com|.*hiltonhhonors.com", "i") : "");
    })(),
        downloadtypes: "xls,doc,pdf,txt,csv,zip,docx,xlsx",
        navigationtag: "div,table",
        trackevents: true,
        trimoffsiteparams: true,
        pageEvents: ["Offsite"]
    });

    var dcs = new Webtrends.dcs().init(wtMasterConfig).track();
};

//---------------------------
// Async code load section
//---------------------------
// load the tracking code into the document namespace
(function () {
    var s = document.createElement('script');
    s.async = true;
    s.type = "text/javascript";
    s.src = 'http://www3.hilton.com/skins/common/js/tracking/webtrends/webtrends.js';   
    var s2 = document.getElementsByTagName("script")[0];
    s2.parentNode.insertBefore(s, s2);
}());


//------------------------------
// Site specific tracking code
//------------------------------
window.webtrendsAsyncLoad = function (_tag) {
    
    //Required Hilton Parameters, metatags will override these values
    _tag.WT.z_brand = 'Hilton';
    _tag.WT.pn_sku = sku;
    _tag.WT.z_sitetype = 'L';   
    _tag.WT.tx_e = 'v'
    _tag.WT.tx_u = '1';
}