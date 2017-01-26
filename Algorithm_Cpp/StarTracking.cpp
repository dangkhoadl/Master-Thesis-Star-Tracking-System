#include "InOut.h"
#include "Centroider.h"
#include "Algorithm.h"

//Initialize camera parameter
#define img_height 512
#define img_width 512
//#define pixelsize 7e-3
#define FOV 256
//sensor magnitude threshold 5M

//Initialize camera attitude 
//int RA=15;
//int DEC=45;
//int angle=450;

//SPD parameters
#define TSIZE 14
#define NUMBEROFENTRIES 1500

//Centroiding parameter
#define THRESHOLDINGLEVEL 77 
#define AREATHRESHOLD 1

int main(int agrc, char *argv[]) {
	if (agrc == 2) {
		/*________________ READ INPUT IMG ________________________________________________________________*/
		const std::string imgName(argv[1]);
		std::ifstream imgIn;
		imgIn.open(imgName);
		if (!imgIn) {
			std::cout << "\nIMG not exist";
			std::cout << std::endl;
			return 0;
		}
		
		//Input IMG
		std::vector<std::vector<int>> IMG(img_height, std::vector<int>(img_width));
		readIMG(imgIn, IMG);

		/*________________ CENTROIDING ________________________________________________________________*/
		int NumberOfStar=0;
		std::vector<Star> starList = centroider(IMG, THRESHOLDINGLEVEL, AREATHRESHOLD, NumberOfStar);

		/*________________ ALGORITHM ________________________________________________________________*/
		StarPattern starPattern = getStarPattern(starList, FOV);
	}



	return 0;
}