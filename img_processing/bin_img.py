import cv2

input_img = cv2.imread('nike_logo.jpg', cv2.IMREAD_GRAYSCALE)
img = cv2.resize(input_img, (128, 64))
ret, bw_img = cv2.threshold(img, 127, 255, cv2.THRESH_BINARY)

# binstring = ""
# for row in bw_img:
#     for pixel in row:
#         binstring += '1' if pixel > 0 else '0'
#     binstring += '\n'

for i in range(0, 64):
    for j in range(0, 128):
        if bw_img[i][j] > 0:
            bw_img[i][j] = 1

binary_string = ""
for i in range(0, 64-7, 8):
    binary_string += '{'
    for j in range(0, 128):
        temp = 0
        for k in range(0, 8):
            temp |= bw_img[i+k][j]<<k
        hex_num = hex(temp)
        binary_string += hex_num
        if j != 127: 
            binary_string += ','
    binary_string += '}'
    binary_string += ','
    binary_string += '\n'

with open('binary_image.txt', 'w') as f:
    f.write(binary_string)

# with open('binnormal.txt', 'w') as f:
#     f.write(binstring)

