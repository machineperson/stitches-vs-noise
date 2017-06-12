#include "noise.h"

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
