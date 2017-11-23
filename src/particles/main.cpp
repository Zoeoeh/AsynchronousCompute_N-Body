#include <iostream>
#include "nbody.h"

int main() {

	nbody simulation;

	try
	{
		simulation.run();
	}
	catch (const std::runtime_error& e)
	{
		std::cerr << e.what() << std::endl;
		return -1;
	}

	return 0;
}
