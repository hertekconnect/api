# Hertek Connect API

Hi, and welcome to the Hertek Connect API project. 

_Note: we're in the process of writing this documentation. No rights can be derived from
this document; things will change without notice._

## What is Hertek Connect?

Hertek Connect is a digital safety platform linked to Penta fire panels, which enables you to monitor fire safety remotely.

The Hertek Connect platform consists of different applications, one of which is the Hertek Connect API. The Hertek
Connect API allows you to programmatically interface with real-time data from your fire panel. 

## How do I get access?

Please get in touch with your sales representative if you're interested in using Hertek Connect API. 

## Getting started

To get started _right now_ you can make use of a sample account on Hertek Connect. This will provide you with
realistic data while you develop your integration with Hertek Connect. 

TODO: Note sample key

## Safety concerns

Hertek Connect API provides you with real-time information about your fire panel. This does not impact the 
performance or effectiveness of your current fire panel setup. 

TODO: Add a note about relation fire panel <-> Hertek Connect

Due to safety concerns, the Hertek Connect API does not provide the option to control your fire panel remotely. 
For this, we want to refer you to Hertek Connect Control for iOS / Android or Hertek Connect Support.

## API Specification

There are two parts to Hertek Connect API

### Rest API

We offer a REST API that provides you with specific installation, zone, and element information. With your
bearer token, you can retrieve information about API-enabled installations. You can connect to our
API end-points using a secure HTTPS connection. Responses are sent in JSON format. 

Hertek Connect API supports the [OpenAPI 3.0 specification](https://swagger.io/specification/), which makes it 
straightforward to use and integrate with.

TODO: Link to OpenAPI docs and instruction on how to use the OpenAPI live documentation.

### Webhook notifications

In addition to a REST API to retrieve current installation status, we also offer webhook notifications. When elements
in your installation change to a non-normal status (e.g. a fire alarm or malfunction), you can be notified about 
this through a webhook. This allows you to respond to events in real-time.

They payload for our webhook, a HTTP POST request, is a simple JSON object with actual information about the changed element: 

_NOTE: This is just an example and will change in the future._

```
{
    "type": "notification",
    "installation": {
        "name": "Hertek Weert",
        "id": "372748",
        "status": "MALFUNCTION"
    },
    "zone": {
        "name": "1st Floor, West Wing",
        "number": "1",
        "id": "8473",
        "status": "MALFUNCTION"
    },
    "element: {
        "name": "Reception area",
        "address": {
            "node": 1,
            "loop": 1,
            "address": 63,
            "sub_address: "0"
        },
        status: "DEVICE MISSING",
        status_category: "MALFUNCTION"
    }
}
```

## Technical Support

If you have any further questions about the Hertek Connect API, feel free to get in touch.
