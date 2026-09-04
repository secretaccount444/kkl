package {
    import menu.Huku_RibonSet;
    import menu.Hair_HairExSet;
    import menu.Add_LoadURL2;

    public class PartLayering {
        public static var groupKeys: Object = {
            "mune": {
                "hair": 99,
                "ribbon": 99,
                "imageLeft": null,
                "imageRight": null
            },
            "dou": {
                "hair": 98,
                "ribbon": 98,
                "imageLeft": null,
                "imageRight": null
            },
            "thigh": {
                "hair": 95,
                "ribbon": 95,
                "imageLeft": "LeftThighMod",
                "imageRight": "RightThighMod"
            },
            "leg": {
                "hair": 96,
                "ribbon": 96,
                "imageLeft": "LeftLegMod",
                "imageRight": "RightLegMod"
            },
            "foot": {
                "hair": 97,
                "ribbon": 97,
                "imageLeft": "LeftFootMod",
                "imageRight": "RightFootMod"
            },
            "upperArm": {
                "hair": 92,
                "ribbon": 92,
                "imageLeft": "LeftUpperArmMod",
                "imageRight": "RightUpperArmMod"
            },
            "lowerArm": {
                "hair": 93,
                "ribbon": 93,
                "imageLeft": "LeftLowerArmMod",
                "imageRight": "RightLowerArmMod"
            },
            "hand": {
                "hair": 94,
                "ribbon": 94,
                "imageLeft": "LeftHandMod",
                "imageRight": "RightHandMod"
            }
        };

        public function PartLayering() {}

        public static function pushSpritesToBottom(sprites: Array) {
            try {
                sprites.sort(sortFixupSprites);
            } catch (error: Error) {
                trace(error.getStackTrace());
            }

            for (var j = sprites.length - 1; j >= 0; j--) {
                try {
                    var parent = sprites[j][0].parent;
                    parent.setChildIndex(sprites[j][0], 0);
                } catch (error: Error) {
                    trace(error.getStackTrace());
                }
            }
        }

        public static function pushSpritesToTop(sprites: Array) {
            try {
                sprites.sort(sortFixupSprites);
            } catch (error: Error) {
                trace(error.getStackTrace());
            }

            for (var j = 0; j < sprites.length; j++) {
                try {
                    var parent = sprites[j][0].parent;
                    parent.setChildIndex(sprites[j][0], parent.numChildren - 1);
                } catch (error: Error) {
                    trace(error.getStackTrace());
                }
            }
        }

        private static function sortFixupSprites(a, b) {
            if (a[2] !== b[2]) {
                return a[2] - b[2]; /* depth */
            } else if (a[1] !== b[1]) {
                return a[1] - b[1]; /* type */
            } else if (a[3] !== b[3]) {
                return a[3] - b[3]; /* slot */
            } else {
                return 0;
            }
        }

        // public static function pushSpritesToName(spriteLists: Array, name: String) {
        //     spriteLists.sort(function (a, b) {
        //         var typeA = a[1];
        //         var typeB = b[1];

        //         if (a[1] !== b[1]) {
        //             return a[1] - b[1];
        //         } else if (a[2] !== b[2]) {
        //             return a[2] - b[2];
        //         } else if (a[3] !== b[3]) {
        //             return a[3] - b[3];
        //         } else {
        //             return 0;
        //         }
        //     });

        //     for (var j = sprites.length - 1; j >= 0; j--) {
        //         var parent = sprites[j].parent;
        //         parent.setChildIndex(sprites[j], parent.getChildIndex(parent[name]) + 1);
        //     }
        // }

        public static function fixup(character: int, attachPoints: Array) {
            /* shape: (attach point, depth, index) */
            try {
                var hairSprites = Hair_HairExSet.collectSpriteGroups(character);
                var ribbonSprites = Huku_RibonSet.collectSpriteGroups(character);
                var images = Add_LoadURL2.collectSpriteGroups(character);
            } catch (error: Error) {
                trace(error.getStackTrace());
                return;
            }

            for (var i = 0; i < attachPoints.length; i++) {
                try {
                    var attachPoint = attachPoints[i];

                    // trace("Fixing up sprites for character " + character + " modded attach point " + attachPoint);

                    var topSprites = [];
                    var bottomSprites = [];

                    if (ribbonSprites[groupKeys[attachPoint]["ribbon"]]) {
                        var key = groupKeys[attachPoint]["ribbon"];
                        var attachedRibbons = ribbonSprites[key];
                        for (var depth: Object in attachedRibbons) {
                            for (var j=0; j < attachedRibbons[depth].length; j++) {
                                var item = [attachedRibbons[depth][j][0], 0, depth, attachedRibbons[depth][j][1]];
                                if (key === 2 || key === 3 || depth > 1) {
                                    topSprites.push(item);
                                } else {
                                    bottomSprites.push(item);
                                }
                            }
                        }
                    }

                    if (hairSprites[groupKeys[attachPoint]["hair"]]) {
                        var attachedHair = hairSprites[groupKeys[attachPoint]["hair"]];
                        for (var depth: Object in attachedHair) {
                            for (var j=0; j < attachedHair[depth].length; j++) {
                                var item = [attachedHair[depth][j][0], 1, depth, attachedHair[depth][j][1]];
                                if (depth === 0) {
                                    bottomSprites.push(item);
                                } else {
                                    topSprites.push(item);
                                }
                            }
                        }
                    }

                    if (images[groupKeys[attachPoint]["imageLeft"]]) {
                        var attachedImages = images[groupKeys[attachPoint]["imageLeft"]];
                        for (var depth: Object in attachedImages) {
                            var tup = [attachedImages[depth], 2, depth];
                            for (var j=0; j < attachedImages[depth].length; j++) {
                                var item = [attachedImages[depth][j][0], 2, depth, attachedImages[depth][j][1]];
                                if (depth === 0) {
                                    bottomSprites.push(item);
                                } else {
                                    topSprites.push(item);
                                }
                            }
                        }
                    }

                    if (images[groupKeys[attachPoint]["imageRight"]]) {
                        var attachedImages = images[groupKeys[attachPoint]["imageRight"]];
                        for (var depth: Object in attachedImages) {
                            for (var j=0; j < attachedImages[depth].length; j++) {
                                var item = [attachedImages[depth][j][0], 2, depth, attachedImages[depth][j][1]];
                                if (depth === 0) {
                                    bottomSprites.push(item);
                                } else {
                                    topSprites.push(item);
                                }
                            }
                        }
                    }

                    pushSpritesToBottom(bottomSprites);
                    pushSpritesToTop(topSprites);

                    // if (attachPoint === "mune") {
                    //     pushSpritesToName(topLeftSprites, "Collar1");
                    //     pushSpritesToName(topRightSprites, "Collar1");
                    // } else if (attachPoint === "dou") {
                    //     pushSpritesToName(topLeftSprites, "ribonSwap");
                    //     pushSpritesToName(topRightSprites, "ribonSwap");
                    // } else {
                    //     pushSpritesToTop(topLeftSprites);
                    //     pushSpritesToTop(topRightSprites);
                    // }

                    // trace("Finished fixing up sprites for character " + character + " modded attach point " + attachPoint);

                } catch (error: Error) {
                    trace(error.getStackTrace());
                }
            }
        }

        public static function swapSprites(pairs: Array, i: int, j: int) {
            /* Swap both positions in pairs array and sprite depths. */
            var spriteA = pairs[i][0];
            var spriteB = pairs[j][0];

            var t = pairs[i];
            pairs[i] = pairs[j];
            pairs[j] = t;

            spriteA.parent.swapChildren(spriteA, spriteB);
        }

        public static function partitionSprites(pairs: Array, lo: int, hi: int) : Array {
            /* Pairs is an array of [sprite, layering index] pairs, in actual sprite depth order. */
            var i = lo - 1;
            var j = hi + 1;
            var pivot = pairs[(lo + hi) >>> 1][1];
            var swaps = 0;

            while (true) {
            do {
                i += 1;
            } while(pairs[i][1] < pivot);
            
            do {
                j -= 1;
            } while(pairs[j][1] > pivot);

            if (i >= j) {
                return [j, swaps];
            }

            swapSprites(pairs, i, j);
            swaps += 1;
            }

            return [j, swaps];
        }

        public static function quicksortSprites(pairs: Array, lo: int, hi: int): int {
            var len = (hi - lo) + 1;
            var mid = (lo + hi) >>> 1;
            var swaps = 0;
            
            if (len <= 1) {
            return 0;
            } else if (len == 2) {
            if (pairs[lo][1] > pairs[hi][1]) {
                swapSprites(pairs, lo, hi-1);
                return 1;
            } else {
                return 0;
            }
            }

            if (pairs[lo][1] > pairs[mid][1]) {
            swapSprites(pairs, lo, mid);
            swaps += 1;
            }

            if (pairs[lo][1] > pairs[hi][1]) {
            swapSprites(pairs, lo, hi);
            swaps += 1;
            }

            if (pairs[mid][1] > pairs[hi][1]) {
            swapSprites(pairs, mid, hi);
            swaps += 1;
            }

            if (len > 3) {
            var partitionRet = partitionSprites(pairs, lo, hi);
            var p = partitionRet[0];

            swaps += partitionRet[1];
            swaps += quicksortSprites(pairs, lo, p);
            swaps += quicksortSprites(pairs, p+1, hi);
            }

            return swaps;
        }

        public static function sortSpriteIndices(sprites : Array, trace_details: String) : void {
            /* `sprites` is an array of sprites, in ascending piece number order.
            * All sprites are assumed to have the same parent.
            */
            if (sprites.length <= 1) return;

            sprites.sort(function (a, b) {
                return a[1] - b[1];
            });

            var parent = sprites[0].parent;
            var swaps = 0;
            var pairs = [];
            for (var i = 0; i < sprites.length; i++) {
                pairs.push([sprites[i][0], i]);
            }

            try {
            pairs.sort(function (a, b) {
                return parent.getChildIndex(a[0]) - parent.getChildIndex(b[0]);
            });

            swaps = quicksortSprites(pairs, 0, pairs.length - 1);
            } catch(myError:Error) {
            Main.logError(myError, "while fixing up " + trace_details + " sprites");
            }

            /* This is a bubble sorting network; I don't think we can use a traditional sorting algorithm
            * since we don't have a contiguous list of child indices.
            */
            // try {
            //    for (var j = sprites.length-1; j > 0; j--) {
            //       for (var i = 0; i < j; i++) {
            //          var spriteA = sprites[i];
            //          var spriteB = sprites[i+1];

            //          var idxA = parent.getChildIndex(spriteA);
            //          var idxB = parent.getChildIndex(spriteB);

            //          if (idxB < idxA) {
            //             parent.swapChildren(spriteA, spriteB);
            //             swaps += 1;
            //          }
            //       }
            //    }
            // }
            // catch(myError:Error)
            // {
            //    Main.logError(myError, "while fixing up " + trace_details + " sprites");
            // }

            if (swaps > 0) {
            trace("Performed " + swaps + " swaps when fixing up " + trace_details + " sprites");
            }
        }
    }
}