#include <iostream>
#include <SDL3/SDL.h>

int main()
{
	std::cout << "Hello, World!";

	SDL_CreateWindow("Space Invaders", 600, 600, 0);

	SDL_Delay(3000);

	return 0;
}
