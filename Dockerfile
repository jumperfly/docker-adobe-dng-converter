FROM jumperfly/wine:9c83462

RUN curl -O http://download.adobe.com/pub/adobe/dng/win/DNGConverter_12_4.exe &&\
  wine DNGConverter_12_4.exe /S &&\
  rm -f DNGConverter_*.exe
COPY adobe-dng-converter /usr/bin/
