class CodeMasterCli < Formula
  desc "A command-line-interface to open files/folders in CodeMaster.app"
  homepage "https://github.com/CodeMasterApp/CodeMasterCLI"
  url "https://github.com/CodeMasterApp/CodeMasterCLI/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "615ff7539eeccbcbba44ca4005d1d64c791c1c87cccad650c8fcf1915c4ef67d"
  license "MIT"
  
  depends_on xcode: ["15.0", :build] # downgrade to "14.0" if needed
  depends_on :macos
  uses_from_macos "swift"
  
  def install
    system "make", "install", "prefix=#{prefix}"
  end
  
  test do
    assert_match "OVERVIEW", shell_output("#{bin}/codemaster --help")
  end
end

