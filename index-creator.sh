#!/usr/bin/env bash
root="1.2.0"
echo "<!DOCTYPE html>"
echo "<html>"
echo "<head>"
echo "    <meta name='view' content='width=device-width, initial-scale=1'>"
echo "    <style>"
echo "         .logo {"
echo "         max-width: 700px;"
echo "         margin: auto;"
echo "         text-align: center;"
echo "         margin-bottom: 50px;"
echo "         }"
echo "         .content {"
echo "         max-width: 700px;"
echo "         margin: auto;"
echo "         text-align: center;"
echo "         margin-bottom: 50px;"
echo "         }"
echo "         body {"
echo "         font-family: 'Lato', sans-serif;"
echo "         }"
echo "         /* Fixed sidenav, full height */"
echo "         .sidenav {"
echo "         height: 100%;"
echo "         width: 500px;"
echo "         position: fixed;"
echo "         overflow-x: hidden;"
echo "         padding-top: 20px;"
echo "         }"
echo "         /* Style the sidenav links and the dropdown button */"
echo "         .sidenav a, .dropdown-btn {"
echo "         padding: 6px 8px 6px 16px;"
echo "         text-decoration: none;"
echo "         font-size: 16px;"
echo "         color: black;"
echo "         display: block;"
echo "         border: none;"
echo "         background: none;"
echo "         width: 100%;"
echo "         text-align: left;"
echo "         cursor: pointer;"
echo "         outline: none;"
echo "         margin-left: 200px;"
echo "         }"
echo "         /* On mouse-over */"
echo "         .sidenav a:hover, .dropdown-btn:hover {"
echo "         }"
echo "         /* Main content */"
echo "         .main {"
echo "         margin-left: 1000px; /* Same as the width of the sidenav */"
echo "         font-size: 14px; /* Increased text to enable scrolling */"
echo "         padding: 0px 10px;"
echo "         }"
echo "         /* Add an active class to the active dropdown button */"
echo "         .active {"
echo "         color: black;"
echo "         }"
echo "         /* Dropdown container (hidden by default). Optional: add a lighter background color and some left padding to change the design of the dropdown content */"
echo "         .dropdown-container {"
echo "         display: none;"
echo "         padding-left: 8px;"
echo "         font-weight: 200;"
echo "         }"
echo "         /* Optional: Style the caret down icon */"
echo "         .fa-caret-down {"
echo "         float: right;"
echo "         padding-right: 8px;"
echo "         }"
echo "         /* Some media queries for responsiveness */"
echo "         @media screen and (max-height: 450px) {"
echo "         .sidenav {padding-top: 15px;}"
echo "         .sidenav a {font-size: 18px;}"
echo "         }"
echo "      </style>"
echo "</head>"
echo "<body>"
echo "<div class='logo'>"
echo "    <img src='https://mosip.github.io/mosip-helm/mosip_logo.png'>"
echo "    <h2 style='font-family:verdana;'>MOSIP API Documentation</h2>"
echo "</div>"
echo "<div class='content'>"
echo "    <p1>API Documentation for release 1.2.0</p1>"
echo "</div>"
echo "<div class='sidenav'>"
echo "    <button class='dropdown-btn'><b>MOSIP $1</b>"
echo "        <i class='fa fa-caret-down'></i>"
echo "    </button>"
#echo "        <a href="admin-service-openapi.html">admin-service</a>"
#echo "        <a href="hotlist-service-openapi.html">hotlist-service</a>"
#echo "        <a href="kernel-masterdata-service-openapi.html">kernel-masterdata-service</a>"
echo "    <div class='dropdown-container'>"
for file in $root/*; do
  parentpath=${file#*/}
  filename=${file##*/}
  name=${filename%-openapi*}
  if [[ "$filename" == "list.html" ]]; then
    continue
  fi
  echo "        <a href=\"$parentpath\">$name</a>"
done
echo "    </div>"
echo "</div>"
echo "<script>"
echo "         var dropdown = document.getElementsByClassName('dropdown-btn');"
echo "         var i;"
echo ""
echo "         for (i = 0; i < dropdown.length; i++) {"
echo "           dropdown[i].addEventListener('click', function() {"
echo "           this.classList.toggle('active');"
echo "           var dropdownContent = this.nextElementSibling;"
echo "           if (dropdownContent.style.display === 'block') {"
echo "           dropdownContent.style.display = 'none';"
echo "           } else {"
echo "           dropdownContent.style.display = 'block';"
echo "           }"
echo "           });"
echo "         }"
echo "      </script>"
echo "</body>"
echo "</html>"