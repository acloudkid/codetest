curl -X GET "https://api.openweathermap.org/data/2.5/weather?id=5368381&appid=63052f58770e34a2bc0836670f2dbf8d&units=imperial" |
    sed -e 's/[{}]/''/g' | 
    awk -v k="text" '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' |
    grep -A 26 coord > /usr/share/nginx/html/weather.json