{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "irhoamaru";
  version = "1.0.0";
  src = fetchzip {
    url = "https://modi.jpn.org/download/MODI_irohamaru-mikami_2016_0914.zip";
    hash = "sha256-h+v8EDXb4zQJ/ybZzF7Lw9GX5a0Wf/CmeFKIZigZsVk=";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
