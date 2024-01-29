{ wfvm, fetchtorrent, callPackage }:
{ ... }@args: (wfvm.lib.makeWindowsImage {
  windowsImage = (fetchtorrent {
    url = "https://archive.org/download/windows11_20220930/windows11_20220930_archive.torrent";
    hash = "sha256-vym/dL3zwQDvPRmdvLSEeO/8toIEeCqfpyrmeEOnldo=";
  }) + "/Win11_22H2_English_x64v1.iso";
} // args).overrideAttrs (_: { passthru.runScript = callPackage ./run.nix {}; })
