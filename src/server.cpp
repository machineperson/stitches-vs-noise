#define ASIO_DISABLE_THREADS
#include <cxxhttp/httpd.h>
#include "generator.h"
#include <unistd.h>
#include <random>
#include <string>
using namespace cxxhttp;

static void hello(http::sessionData &session, std::smatch &) {
  session.reply(200, "Hello World!");
}

static std::string generatePattern(int width, int height) {
  std::vector <double> cutoffs = {-0.7, -0.5, -0.2, 0.0, 0.4, 0.7, 0.9};
  PatternGenerator pg(cutoffs);
  std::string pattern = std::string(pg.makePattern(width, height));
  std::stringstream out;
  for (int row = 0; row < height; ++row) {
    for (int col = 0; col < width; ++col) {
      out << pattern[(row * width) + col];
    }
    out << '\n';
  }
  return out.str();

}

static void makeRandomPattern(http::sessionData &session, std::smatch &) {

  std::random_device rd;     // only used once to initialise (seed) engine
  std::mt19937 rng(rd());    // random-number engine used (Mersenne-Twister in this case)
  std::uniform_int_distribution<int> uni(10,50); // guaranteed unbiased

  auto width = uni(rng);
  auto height = uni(rng);

  session.reply(200, generatePattern(width, height));

}


static void makePattern(http::sessionData &session, std::smatch &match) {
  std::cout << "hello ";
  auto width = std::stoi(match[1]);
  auto height = std::stoi(match[2]);

  session.reply(200, generatePattern(width, height));

}

static http::servlet pattern("/pattern/([0-9]+)x([0-9]+)", ::makePattern);
static http::servlet randomPattern("/pattern/random", ::makeRandomPattern);

int main(int argc, char *argv[]) {return cxxhttp::main(argc, argv); }
