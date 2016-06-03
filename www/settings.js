var exec = require("cordova/exec");

function NativeSettings() {
}

NativeSettings.prototype.open = function (settingName, onsucess, onfail) {
    exec(onsucess, onfail, "NativeSettings", "open", [settingName]);
};

NativeSettings.prototype.openSetting = function(settingName, onsucess, onfail) {
	exec(onsucess, onfail, "NativeSettings", settingName, []);
};

var NativeSettings = new NativeSettings();
module.exports = NativeSettings;
