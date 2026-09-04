package {
    import flash.filesystem.File;
    import flash.filesystem.FileStream;

    public class DefaultChanGenerator {
        private var fragments: Array = [];
        private var templates: Array = [];

        public function DefaultChanGenerator() {
            var fragments_dir: File = File.applicationDirectory.resolvePath("default_fragments");
            if (fragments_dir.exists) {
                var folders: Array = fragments_dir.getDirectoryListing();

                folders.sort(function (a: File, b: File) : int {
                    var ap: String = sliceFilePath(a);
                    var bp: String = sliceFilePath(b);

                    if (ap < bp) {
                        return -1;
                    } else if (ap > bp) {
                        return 1;
                    } else {
                        return 0;
                    }
                });

                for (var i: uint = 0; i < folders.length; i++) {
                    var f: File = folders[i];
                    
                    if (!f.isDirectory) {
                        continue;
                    }

                    var contents: Array = readFragmentFolder(f);
                    if (contents.length == 0) {
                        continue;
                    }

                    fragments.push(contents);
                }
            }

            /*
            var templates_dir: File = File.applicationDirectory.resolvePath("default_templates");
            if (templates_dir.exists) {
                var files: Array = templates_dir.getDirectoryListing();

                for (var i: uint = 0; i < files.length; i++) {
                    var f: File = files[i];

                    if (f.isDirectory || f.extension != "txt") {
                        continue;
                    }

                    var fdata: * = null;
                    var fstream:FileStream = new FileStream();
                    
                    fstream.open(f,"read");
                    fdata = fstream.readUTFBytes(f.size);
                    fstream.close();
                    
                    if (fdata.length == 0 || fdata.indexOf('***') != -1) {
                        continue;
                    }

                    templates.push(fdata);
                }
            }
            */
        }

        private function sliceFilePath(a: File) : String {
            var p = a.nativePath;
            var i = p.lastIndexOf(File.separator);
            return p.substr(i+1);
        }

        private function readFragmentFolder(folder: File) : Array
        {
            var files: Array = folder.getDirectoryListing();
            var out: Array = [];

            for (var i: uint = 0; i < files.length; i++) {
                var f: File = files[i];

                if (f.isDirectory || f.extension != "txt") {
                    continue;
                }

                var fstream:FileStream = new FileStream();
                var cleaned: String = "";
                
                fstream.open(f,"read");
                cleaned = fstream.readUTFBytes(f.size);
                fstream.close();
                
                if (cleaned.indexOf("#/]") != -1) {
                    cleaned = cleaned.substring(0, cleaned.indexOf("#/]"));
                }

                if (cleaned.indexOf("/#]") != -1) {
                    cleaned = cleaned.substring(0, cleaned.indexOf("/#]"));
                }

                cleaned = cleaned.substring(cleaned.indexOf('**')+2);
                if (cleaned.charAt(0) == '*' || cleaned.length == 0) {
                    continue;
                }

                out.push(cleaned);
            }

            return out;
        }

        public function haveFragments() : Boolean {
            return (fragments.length > 0);
        }

        public function generateFromFragments() : String {
            var out: String = Main.version.toString() + "**";

            for (var i: uint = 0; i < fragments.length; i++) {
                var box: Array = fragments[i];
                var frag: String = box[Math.floor(Math.random() * box.length)];

                if (i != 0) {
                    out = out + "_";
                }
                out = out + frag;
            }

            return out;
        }

        public function generateFromTemplates() : String {
            if (templates.length == 0) {
                return "";
            }

            return templates[Math.floor(Math.random() * templates.length)];
        }

        public function generate() : String {
            return generateFromFragments();
            
            /*
            if (templates.length == 0) {
                return generateFromFragments();
            } else if (fragments.length == 0) {
                return generateFromTemplates();
            }

            if (Math.floor(Math.random() * 2) == 0) {
                return generateFromTemplates();
            } else {
                return generateFromFragments();
            }
            */
        }
    }
}