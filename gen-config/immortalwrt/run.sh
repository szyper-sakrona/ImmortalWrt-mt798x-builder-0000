sudo docker run \
    -it --rm \
    --name immortalwrt-build \
    -h keving \
    -p 10022:22 \
    -v /home/aj782/services/immortalwrt/volumes/deconfig/:/home/user/immortalwrt-mt798x/deconfig/ \
    keving/immortalwrt-build
