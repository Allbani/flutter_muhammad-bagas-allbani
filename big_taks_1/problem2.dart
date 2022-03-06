// Azimuth and BackAzimuth
void main() {
  int azimuth = 180;
  if (azimuth > 180) {
    print(azimuth - 180);
  } else if (azimuth < 180) {
    print(azimuth + 180);
  } else if (azimuth == 180) {
    print(0);
  }
}
