#!/usr/bin/python3
import sys
sys.stdout = open('output.out', 'w')

IMG_HEIGHT = 1024
IMG_WIDTH = 1024
path = 'D:\\Dropbox\\DangKhoa\\CEE_Cache\\GitHub\\StarTrackingProject\\StarSimulation_Matlab\\TestPattern\\'

a = 1
a_ = 1
b = 1
b_ = 1

def readIMG(i, j):
    '''
    IMG_i_j
    '''
    Image = []
    with open(path + 'IMG_{}_{}.bin'.format(i, j), 'r') as inFile:
        for line in inFile:
            [Image.append(e) for e in [int(float(x)) for x in line.split()]]
    return Image


def writeOutput(i, j):
    img = readIMG(i, j)
    with open('Image.h', 'a') as outFile:
        outFile.write('\t{')
        for index, e in enumerate(img):
            outFile.write('{}, '.format(e)) if index != len(img)-1 else outFile.write('{}'.format(e))
        outFile.write('},\n') if (i != a_ or j != b_)  else outFile.write('}\n};')


def main():
    with open('Image.h', 'w') as outFile:
        total_files = (a_- a + 1) * (b_ - b + 1)
        outFile.write('#ifndef IMAGE_H_\n')
        outFile.write('#define IMAGE_H_\n')
        outFile.write('#define IMG_HEIGHT {}\n'.format(IMG_HEIGHT))
        outFile.write('#define IMG_WIDTH {}\n'.format(IMG_WIDTH))
        outFile.write('#define IMG_NUM {}\n'.format(total_files))
        outFile.write('unsigned inputIMGs[{}][IMG_HEIGHT * IMG_WIDTH] = {{\n'.format(total_files))

    # Read all images
    for i in range(a, a_+1):
        for j in range(b, b_+1):
            writeOutput(i, j)

    with open('Image.h', 'a') as outFile:
        outFile.write('\n\n#endif\n')


if __name__ == "__main__":
    main()

