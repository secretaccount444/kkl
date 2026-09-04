package parts
{
    import parameter.Dress_data;
    import menu.Chara_Class;
    import menu.Hair_HairExSet;
    import flash.display.MovieClip;

    public class Hairpiece extends Part {
        private static var _defaults: Object = {
            "": {
                "_menu":0,
                "_reversal2":0,
                "_depth":0,
                "_color0":[0],
                "_color1":[0],
                "_color2":[56],
                "_turn":0,
                "_shadow":1
            },
            "Add": {
                "_add0": 0
            },
            "ScaleX": {"_meter": 500},
            "ScaleY": {"_meter": 500},
            "ScaleB": {"_meter": 500},
            "Line": { "_menu":2},
            "Rotation":{"_meter":0},
            "RotationPlus":{"_meter":0},
            "X":{"_meter":620},
            "Y":{"_meter":660},
            "FineX":{"_meter":50},
            "FineY":{"_meter":50},
            "Alpha":{"_meter":100}
        };

        public static var _dressDefaults = {
            "": null
        };

        public static var _dressInit = {
            "": null
        };

        public static var codeProps: Array = [
            ["", "_menu"],
            ["", "_color0"],
            ["", "_color1"],
            ["", "_color2"],
            ["", "_reversal2"],
            ["", "_depth"],
            ["ScaleX", "_meter"],
            ["ScaleY", "_meter"],
            ["Rotation", "_meter"],
            ["X", "_meter"],
            ["Y", "_meter"],
            ["", "_turn"],
            ["Line", "_menu"],
            ["ScaleB", "_meter"],
            ["", "_shadow"],
            ["RotationPlus", "_meter"],
            ["Add", "_add0"],
            ["Alpha", "_meter"],
            ["FineX", "_meter"],
            ["FineY", "_meter"]
        ]

        public function Hairpiece(dataPrefix: String, exportPrefix: String, charIdx: int, slot: int, old: Boolean = false) {
            super(dataPrefix, exportPrefix, charIdx, slot, old);
        }

        public static function fromCharacter(charIdx: int, slot: int, old: Boolean = false) : Hairpiece {
            return new Hairpiece("HairEx", "r", charIdx, slot, old);
        }

        public static function getAllHairpieces(charIdx: int, old: Boolean = false) : Array {
            var dataSource = null;
            var prefix = null;


                prefix = "HairEx";
                if (old) {
                    dataSource = MenuClass.charaOldData[charIdx];
                } else {
                    dataSource = MenuClass.charaData[charIdx];
                }

            var ret = [];
            var visData = dataSource[prefix + "Plus"]["_visible"];

            for (var idx in visData) {
            	ret.push(Hairpiece.fromCharacter(charIdx, int(idx), old));
            }

            ret.sort(function (a, b) {
                return a.slot - b.slot;
            });

            return ret;
        }

        public static function getVisibleHairpieces(charIdx: int, old: Boolean = false) : Array {
            return getAllHairpieces(charIdx, old).filter(function (hairpiece) {
                return hairpiece.visible;
            });
        }

        override public function get defaults() : Object {
            return _defaults;
        }

        override public function get dressDefaults() : Object {
            return _dressDefaults;
        }
        
        override public function get dressInit() : Object {
            return _dressInit;
        }

        public function get attachPoint() : int {
            return int(this.getData("Add", "_add0"));
        }

        public function set attachPoint(value: int) : void {
            return this.setData("Add", "_add0", value);
        }

        public function get itemType() : int {
            return int(this.getData("", "_menu"));
        }

        public function set itemType(value: int) : void {
            return this.setData("", "_menu", value);
        }

        public function get reversal2() : int {
            return int(this.getData("", "_reversal2"));
        }

        public function set reversal2(value: int) : void {
            return this.setData("", "_reversal2", value);
        }

        public function get turn() : Boolean {
            return !!this.getData("", "_turn");
        }

        public function set turn(value: Boolean) : void {
            return this.setData("", "_turn", int(value));
        }

        public function get depth() : int {
            return int(this.getData("", "_depth"));
        }

        public function set depth(value: int): void {
            return this.setData("", "_depth", value);
        }

        public function get shadow() : Boolean {
            return !!this.getData("", "_shadow");
        }

        public function set shadow(value: Boolean) : void {
            return this.setData("", "_shadow", int(value));
        }

        public function get color0() : Array {
            return this.getData("", "_color0");
        }

        public function set color0(value: Array) : void {
            return this.setData("", "_color0", value);
        }

        public function get color1() : Array {
            return this.getData("", "_color1");
        }

        public function set color1(value: Array) : void {
            return this.setData("", "_color1", value);
        }

        public function get color2() : Array {
            return this.getData("", "_color2");
        }

        public function set color2(value: Array) : void {
            return this.setData("", "_color2", value);
        }

        public function get scaleX() : int {
            return int(this.getData("ScaleX", "_meter"));
        }

        public function set scaleX(value: int): void {
            return this.setData("ScaleX", "_meter", value);
        }

        public function get scaleY() : int {
            return int(this.getData("ScaleY", "_meter"));
        }

        public function set scaleY(value: int): void {
            return this.setData("ScaleY", "_meter", value);
        }

        public function get scaleB() : int {
            return int(this.getData("ScaleB", "_meter"));
        }

        public function set scaleB(value: int): void {
            return this.setData("ScaleB", "_meter", value);
        }

        public function get lineType() : int {
            return int(this.getData("Line", "_menu"));
        }

        public function set lineType(value: int): void {
            return this.setData("Line", "_menu", value);
        }

        public function get rotation() : int {
            return int(this.getData("Rotation", "_meter"));
        }

        public function set rotation(value: int): void {
            return this.setData("Rotation", "_meter", value);
        }

        public function get rotationPlus() : int {
            return int(this.getData("RotationPlus", "_meter"));
        }

        public function set rotationPlus(value: int): void {
            return this.setData("RotationPlus", "_meter", value);
        }

        public function get x() : int {
            return int(this.getData("X", "_meter"));
        }

        public function set x(value: int): void {
            return this.setData("X", "_meter", value);
        }

        public function get fineX() : int {
            return int(this.getData("FineX", "_meter"));
        }

        public function set fineX(value: int): void {
            return this.setData("FineX", "_meter", value);
        }

        public function get y() : int {
            return int(this.getData("Y", "_meter"));
        }

        public function set y(value: int): void {
            return this.setData("Y", "_meter", value);
        }

        public function get fineY() : int {
            return int(this.getData("FineY", "_meter"));
        }

        public function set fineY(value: int): void {
            return this.setData("FineY", "_meter", value);
        }

        public function get alpha() : int {
            return int(this.getData("Alpha", "_meter"));
        }

        public function set alpha(value: int): void {
            return this.setData("Alpha", "_meter", value);
        }

        public function getSpriteParent(side: int) : MovieClip {
            if (this.isSystem) {
                return this.spriteSource;
            } else {
                try {
                    switch (this.attachPoint) {
                    case 0:
                        return this.spriteSource;
                    case 1: 
                        return this.spriteSource.head;
                    case 2:
                        return this.spriteSource.head.Bangs;
                    case 3:
                        return this.spriteSource.HairBack.hairBack;
                    case 4:
                        return this.spriteSource.HairBack.hairBack;
                    case 91:
                        return this.spriteSource;
                    case 92:
                        return this.spriteSource["handm0_" + side].hand;
                    case 93:
                        return this.spriteSource["handm1_" + side].hand;
                    case 94:
                        return this.spriteSource["handm1_" + side].hand.arm0;
                    case 95:
                        return this.spriteSource["ashi" + side].thigh.actual.thigh;
                    case 96:
                        var base = this.spriteSource["ashi" + side];
                        if (base.leg != null && base.leg.actual.leg != null) {
                            return base.leg.actual.leg;
                        } else {
                            return null;
                        }
                    case 97:
                        return this.spriteSource["ashi" + side].foot.actual.foot;
                    case 98:
                        return this.spriteSource.dou;
                    case 99:
                        return this.spriteSource.mune;
                    default:
                        trace("Unknown attach point " + this.attachPoint + " for hairpiece " + this.slot + " on character " + this.character);
                        return null;
                    }
                } catch(err:Error) {
                    trace(err.getStackTrace());
                }
            }

            return null;
        }

        public function getSprite(side: int) : MovieClip {
            var parent = this.getSpriteParent(side);
            if (parent) {
                return parent["HairEx" + this.slot + "_" + side];
            } else {
                return null;
            }
        }

        public function setSprite(side: int, clip: MovieClip) : void {
            if (!this.isSystem) {
                Hair_HairExSet.deleteFc(this.character, this.slot, side);
            }

            var parent = this.getSpriteParent(side);
            if (!parent) {
                return;
            }

            if (clip) {
                parent.addChild(clip);
            }

            parent["HairEx" + this.slot + "_" + side] = clip;
        }

        public function get leftParent() : MovieClip {
            return this.getSpriteParent(0);
        }

        public function get rightParent() : MovieClip {
            return this.getSpriteParent(1);
        }

        public function get leftSprite() : MovieClip {
            return this.getSprite(0);
        }

        public function get rightSprite() : MovieClip {
            return this.getSprite(1);
        }

        public function set leftSprite(clip: MovieClip) : void {
            return this.setSprite(0, clip);
        }

        public function set rightSprite(clip: MovieClip) : void {
            return this.setSprite(1, clip);
        }

        public override function removeSprites() : void {
            this.leftSprite = null;
            this.rightSprite = null;
        }

        public static function loadData(charIdx: int, subcode: String, source: Array, importType: String) : Hairpiece {
            var slot = 0;
            var offset = 0;

            if (subcode.charAt(0) == "r") {
                slot = int(subcode.substring(1));
            } else if (subcode == "xr") {
                slot = int(source[0]);
                offset = 1;
            }

            if (isNaN(slot) || slot < 0 || slot > 999) {
                return null;
            }

            var hairpiece = fromCharacter(charIdx, slot);
            hairpiece.deserializeProperties(codeProps, source, offset, importType);

            return hairpiece;
        }

        public function exportData() : String {
            return this.serializeProperties(codeProps);
        }
    }
}