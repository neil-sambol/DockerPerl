# Program OTG-logger

## Usage:

Runs as a daemon on the on-prem servers in 
the terminal data centers.  Used to provide an endpoint 
for Concierge application running on airport tablets 
to deposit their logs.

Used primarily for debugging purposes.

### Usage of ./pd.sh 
```
perl ./app.py
```

```
# To insert a row in the DB:
curl -X POST -d 'name=test' http://localhost:3200/log
```

```
# To view all rows in the DB:
http://localhost:3200/log/view/1
```

## Setting Up Environment:

```
!!! INFO FOR PETER OR HANSON:

# Network Requirement for on-premise iPad(s) to on-prem-logger's URL endpoint:
## The "iPad VLAN" containing the "iPad device" making the request calls to the endpoint 
## MUST have "VPN Site-To-Site" enabled at the network level (in Meraki).
```

## Config Options
```
# Version .12

# Currently used to keep DB at last X rows so it 
#   doesn't outgrow its container and the server.
$MAX_ROWS = 10000
```

## TO DO 

* Need to externalize MAX_ROWS as environment variable.
* Add ability to filter by ipad.


## Author

* Neil Sambol -- for OTG -- September, 2020
