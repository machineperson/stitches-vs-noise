#include <algorithm>
#include <numeric>
#include <map>
#include <iostream>

class PerlinNoise {
  // permutation vector
  std::vector<int> p;
  std::default_random_engine generator;

  double fade(double t) {
    // Fade function as defined by Ken Perlin
    // 6t^5 - 15t^4 + 10t^3
    return t * t * t * (t * (t * 6 - 15) + 10);
  }

  double lerp(double t, double a, double b) {
      return a + t * (b - a);
  }

  double grad(int hash, double x, double y) {
    // we pick only the 4 directions from the center of the cell
    // to its corners (in analogy to the 3d case)
    std::cerr << "x, y = " << x << ", " << y << '\n';
    double result = 0.00;
    switch (hash & 0x3) {
      case 0x0: {

        return x + y;
      }
      case 0x1: {

        return  (double) -x + y;
      }
      case 0x2: {

        return  (double) x - y;
      }
      case 0x3: {

        return (double) -x - y;
      }
      default: {

        return 0;
      }
    }
  }
public:
  PerlinNoise() {
    std::random_device rd;
    std::default_random_engine generator(rd());
    p.resize(64);

    std::iota(p.begin(), p.end(), 64);
    std::shuffle(p.begin(), p.end(), generator);


    // duplicate the permutation vector,
    // to avoid buffer overflow later on (?)
    p.insert(p.end(), p.begin(), p.end());
  }


  void reshuffle() {
    std::shuffle(p.begin(), p.end(), generator);
  }

  // for 2d
  double noise(double x, double y) {


    // coordinates of the unit cell that
    // our coordinate is in.
    int x0 = (int) x & 63;
    int y0 = (int) y & 63;

    // location of our vector inside the unit cube
    double xf = x - std::floor(x);
    double yf = y - std::floor(y);

    double u = fade(xf);
    double v = fade(yf);


    // gradient vectors
    int g0, g1, g2, g3;
    g0 = p[p[x0] + y0];
    g1 = p[p[x0] + y0 + 1];
    g2 = p[p[x0 + 1] + y0];
    g3 = p[p[x0 + 1] + y0 + 1];

    // dot products,
    // where (x0, y0) is the top left corner,
    // and g0, d0 correspond to
    double x1, x2, y1;

    x1 = lerp(u,
              grad(g0, xf, yf),
              grad(g2, xf-1, yf));

    x2 = lerp(u,
              grad(g1, xf, yf-1),
              grad(g3, xf-1, yf-1));

    y1 = lerp(v, x1, x2);

    return y1;

  }
};
