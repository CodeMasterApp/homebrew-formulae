class CodemasterCli < Formula
    desc "A command-line-interface to open files/folders in CodeMaster.app"
    homepage "https://github.com/CodeMasterApp/CodeMasterCLI"
    # url "" # of tar.gz file
    # sha256 ""
    license "MIT"
  
    depends_on xcode: ["14.0", :build] # update to xcode 15
    depends_on :macos
    uses_from_macos "swift"
  
    def install
      system "make", "install", "prefix=#{prefix}"
    end
  
    test do
      assert_match "OVERVIEW", shell_output("#{bin}/codemaster --help")
    end
  end
