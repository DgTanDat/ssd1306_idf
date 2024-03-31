# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Users/HP/esp/v5.2.1/esp-idf/components/bootloader/subproject"
  "D:/CE232_IDF/i2c_selftest/build/bootloader"
  "D:/CE232_IDF/i2c_selftest/build/bootloader-prefix"
  "D:/CE232_IDF/i2c_selftest/build/bootloader-prefix/tmp"
  "D:/CE232_IDF/i2c_selftest/build/bootloader-prefix/src/bootloader-stamp"
  "D:/CE232_IDF/i2c_selftest/build/bootloader-prefix/src"
  "D:/CE232_IDF/i2c_selftest/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "D:/CE232_IDF/i2c_selftest/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "D:/CE232_IDF/i2c_selftest/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
