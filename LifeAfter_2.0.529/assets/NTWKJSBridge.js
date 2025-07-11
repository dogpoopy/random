/* eslint-disable */
window.NTCallBackList = {};

window.UniSDKJSBridge = {
    postMsgToNative:postMsgToNative,
};

String.prototype.hashCode = function() {
    var hash = 0;
    if (this.length == 0) return hash;
    for (var index = 0; index < this.length; index++) {
        var charactor = this.charCodeAt(index);
        hash = ((hash << 5) - hash) + charactor;
        hash = hash & hash;
    }
    return hash;
};


window.UniSDKNativeCallback = function(identifier, respJSONString) {
	console.log("window.UniSDKNativeCallback, " + identifier + ", " + respJSONString);
    callBackDict = window.NTCallBackList[identifier];
    if (callBackDict) {
        //native to H5
        callBackDict.nativeCallback(respJSONString);
        window.NTCallBackList[identifier] = null;
        delete window.NTCallBackList[identifier];
    }
};


function postMsgToNative(bridgeObjc) {
    var dataString = encodeURIComponent(JSON.stringify(bridgeObjc.reqData));
    var timestamp = Date.parse(new Date());
    var identifier = (bridgeObjc.methodId + dataString + timestamp).hashCode().toString();
    if (identifier.length > 0)
    {
        window.NTCallBackList[identifier] = bridgeObjc.callback;
    }
    var paramJson = {"methodId":bridgeObjc.methodId, "reqData":bridgeObjc.reqData, "identifier":identifier};
    AndroidJSBridge.postMsgToNative(JSON.stringify(paramJson));
};

var NTCallBackMethodManager = {
    removeAllCallBacks: function(data){
        window.NTCallBackList = {};
    }
};
