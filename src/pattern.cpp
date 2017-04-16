#include "noise.h"

#include <unistd.h>


class PatternGenerator {
  PerlinNoise noiseGenerator;
  std::mt19937 randomGenerator;

  std::vector<double> cutoffs;

  std::vector<char> symbols;

    char generateSymbol(double x) {
      for(std::vector<double>::iterator it = cutoffs.begin(); it != cutoffs.end(); ++it) {

        if (x < *it) {
            return symbols.at(std::distance(cutoffs.begin(), it));
        }
      }
      return ' ';
    }

  public:

    PatternGenerator(std::vector<double> cutoffs_) {
      cutoffs = std::vector<double>(cutoffs_);
      std::sort(cutoffs.begin(), cutoffs.end());
      char symbol = 33;
      for(double c: cutoffs) {
        symbols.push_back(symbol);
        symbol+= 2;
      }


    }

    char* makePattern(int width, int height) {
      char* pattern = new char[width * height];

      for (int row = 0; row < height; ++row) {
        for (int col = 0; col < width; ++col) {

          double x = (double) col / ((double) width);
          double y = (double) row / ((double) height);
          double noise = noiseGenerator.noise((double) x, (double) y);

          char symbol = generateSymbol(noise);
          pattern[(row * width) + col] = symbol;

        }

      }
      return pattern;
    }



};

int str_to_int(char *str_) {
  if(str_ == NULL) {
    return 0;
  }
  else {
    std::string str(str_);
    int value = 0;
    try {
      value = std::stoi(str);
    }
    catch(std::invalid_argument &e) {
      std::cout << "Argument " << str << " must be an integer";
      exit(1);
    }
    return value;
  }
}

int main(int argc, char **argv)
{
  std::vector <double> cutoffs = {-0.7, -0.5, -0.2, 0.0, 0.4, 0.7, 0.9};
  PatternGenerator pg(cutoffs);
  int w = 0;
  int h = 0;

  int c;
  while((c = getopt(argc, argv, "w:h:")) != -1) {
    switch(c) {
      case 'w':
        w = str_to_int(optarg);
        break;
      case 'h':
        h = str_to_int(optarg);
        break;
      case '?':
        if (optopt == 'w' || optopt == 'h') {
          std::cout << "Option " << optopt << " requires an argument";
        }
        else {
          std::cout << "Unknown option " << optopt << "\n";
        std::cout << "Usage: pattern -w WIDTH -h HEIGHT\n";
        }
      default:
        std::cout << "Usage: pattern -w WIDTH -h HEIGHT\n";
        break;
    }

  }
  char* pattern = pg.makePattern(w, h);
  for (int row = 0; row < h; ++row) {
    for (int col = 0; col < w; ++col) {
      std::cout << pattern[(row * w) + col];
    }
    std::cout << '\n';
  }
}
