package {
    import flash.display.Sprite;
    import flash.display.Graphics;
    import flash.display.GraphicsBitmapFill;
    import flash.display.GraphicsEndFill;
    import flash.display.GraphicsGradientFill;
    import flash.display.GraphicsPath;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.geom.Matrix;
    import flash.utils.getQualifiedClassName;
    import flash.utils.Timer;
    import mx.utils.StringUtil;

    public class GraphicsDataExporter {
        private var src: Graphics;
        private var cur_exported: Array= [];

        public function GraphicsDataExporter(src: Graphics) {
            this.src = src;
        }

        public function exportAll() : Array {
            var ret: Array = [];
            var data = this.src.readGraphicsData();
            data.forEach(function (item) {
                ret.push(exportSubObject(item));
            });
            return ret;
        }

        public function exportJSON() : String {
            return JSON.stringify(this.exportAll());
        }

        private static function exportMatrix(matrix: Matrix) : Object {
            return {
                "a": matrix.a,
                "b": matrix.b,
                "c": matrix.c,
                "d": matrix.d,
                "tx": matrix.tx,
                "ty": matrix.ty
            };
        }

        private static function exportBitmapFill(obj: GraphicsBitmapFill) : Object {
            return {
                "type": "bitmap_fill",
                "matrix": exportMatrix(obj.matrix),
                "repeat": obj.repeat,
                "smooth": obj.smooth
            };
        }

        private static function exportEndFill(obj: GraphicsEndFill) : Object {
            return { "type": "end_fill" };
        }

        private static function exportGradientFill(obj: GraphicsGradientFill) : Object {
            return {
                "type": "gradient_fill",
                "alphas": obj.alphas,
                "colors": obj.colors,
                "ratios": obj.ratios,
                "focal_point_ratio": obj.focalPointRatio,
                "interpolation_method": obj.interpolationMethod,
                "matrix": exportMatrix(obj.matrix),
                "spread_method": obj.spreadMethod,
                "gradient_type": obj.type
            };
        }

        private static function exportPath(obj: GraphicsPath) : Object {
            var cmds: Array = [];
            var data: Array = [];

            obj.commands.forEach(function (v) { cmds.push(v); });
            obj.data.forEach(function (v) { data.push(v); });
            return {
                "type": "path",
                "commands": cmds,
                "data": data,
                "winding": obj.winding
            };
        }

        private static function exportSolidFill(obj: GraphicsSolidFill) : Object {
            return {
                "type": "solid_fill",
                "alpha": obj.alpha,
                "color": obj.color
            };
        }

        private static function exportStroke(obj: GraphicsStroke) : Object {
            return {
                "type": "stroke",
                "caps": obj.caps,
                "joints": obj.joints,
                "miter_imit": obj.miterLimit,
                "pixel_hinting": obj.pixelHinting,
                "scale_mode": obj.scaleMode,
                "thickness": obj.thickness,
                "fill": exportSubObject(obj.fill)
            };
        }

        private static function exportSubObject(obj: Object) : Object {
            var fullName: String = getQualifiedClassName(obj);
            var lastDot: Number = fullName.lastIndexOf("::");
            var className: String = fullName;
            if (lastDot >= 0) {
                className = fullName.substring(lastDot + 2);
            }

            var lowerName: String = className.toLowerCase();
            if (lowerName == "matrix") {
                return exportMatrix(obj as Matrix);
            } else if (lowerName == "graphicsbitmapfill") {
                return exportBitmapFill(obj as GraphicsBitmapFill);
            } else if (lowerName == "graphicsendfill") {
                return exportEndFill(obj as GraphicsEndFill);
            } else if (lowerName == "graphicsgradientfill") {
                return exportGradientFill(obj as GraphicsGradientFill);
            } else if (lowerName == "graphicspath") {
                return exportPath(obj as GraphicsPath);
            } else if (lowerName == "graphicssolidfill") {
                return exportSolidFill(obj as GraphicsSolidFill);
            } else if (lowerName == "graphicsstroke") {
                return exportStroke(obj as GraphicsStroke);
            } else {
                trace("Unknown graphics data object type: " + className);
                return null;
            }
        }
    }
}