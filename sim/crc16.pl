 # Functional style

  use Digest::CRC qw(crc64 crc32 crc16 crcccitt crc crc8 crcopenpgparmor);
  $crc = crcccitt("1234");
  
  printf "%x\n", $crc;