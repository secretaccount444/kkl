package {
    import flash.events.Event;
    import flash.events.EventDispatcher;
    import flash.filesystem.File;
    import flash.filesystem.FileStream;
    import flash.utils.ByteArray;

    import parameter.Tab_IEData1

    public class InvertIEData {
        public static var InverseIEMap: Object = null;

        public function InvertIEData() {}

        public static function getIECodes(tabName: String, property: String) : Array {
            if (InvertIEData.InverseIEMap === null) {
                InvertIEData.InverseIEMap = {};

                Tab_IEData1.IEGroup.forEach(function (group, group_idx) {
                    group.forEach(function (prefix) {
                        Tab_IEData1.IEData[prefix].forEach(function (pair, subcode_idx) {
                            var tab = pair[0];
                            var prop = pair[1];

                            if (!InvertIEData.InverseIEMap.hasOwnProperty(tab)) {
                                InvertIEData.InverseIEMap[tab] = {};
                            }

                            var tabData = InvertIEData.InverseIEMap[tab];
                            if (!tabData.hasOwnProperty(prop)) {
                                tabData[prop] = [];
                            }

                            tabData[prop].push({"group": group_idx, "prefix": prefix, "index": subcode_idx});
                        });
                    });
                });
            }

            if (InvertIEData.InverseIEMap[tabName] && InvertIEData.InverseIEMap[tabName].hasOwnProperty(property)) {
                return InvertIEData.InverseIEMap[tabName][property];
            } else {
                return [];
            }
        }

        public static function serializeCharacterData(character: Number, tabName: String) : Object {
            if (MenuClass.charaData[character] && MenuClass.charaData[character].hasOwnProperty(tabName)) {
                var cloneArray: ByteArray = new ByteArray();
                cloneArray.writeObject(MenuClass.charaData[character][tabName]);
                cloneArray.position = 0;
                
                var codeData = [];
                var tabData = cloneArray.readObject();
                var evData = {
                    "character": character,
                    "tab": tabName,
                    "raw": tabData
                };

                var prop: String;
                for (prop in tabData) {
                    var propSubcodes = getIECodes(tabName, prop);

                    propSubcodes.forEach(function (subcode_data) {
                        codeData.push({
                            "property": prop,
                            "group": subcode_data.group,
                            "prefix": subcode_data.prefix,
                            "index": subcode_data.index,
                            "value": tabData[prop]
                        });
                    });
                }

                evData["code_data"] = codeData;
                return evData;
            } else {
                return null;
            }
        }
    }
}