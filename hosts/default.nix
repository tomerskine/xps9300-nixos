{ hostName, ... }:
{
  imports = [
    ./${hostName}
    ./internationalisation
  ];
}
